extends Control

const FantasyDataRef = preload("res://scripts/fantasy_data.gd")
const PLACEHOLDER_TEX = preload("res://assets/monsters/image.png")
const LOGO_TEX = preload("res://assets/monsters/logo.png")
const MONSTER_IMAGE_DIR := "res://assets/monsters/"
const MONSTER_IMAGE_ALIASES := {
	"mind_flayer": "mind-flyer"
}

const PAGE_HOME := "home"
const PAGE_EXPLORE := "explore"
const PAGE_CATEGORY := "category"
const PAGE_ARTICLE := "article"
const PAGE_PATH := "path"
const PAGE_FAVORITES := "favorites"
const PAGE_SETTINGS := "settings"
const FAVORITES_PATH := "user://favorites.cfg"

var current_page: String = PAGE_HOME
var current_category: String = ""
var current_article_id: String = ""
var history: Array[Dictionary] = []
var favorites: Array[String] = []

var background_gradient: TextureRect
var glow_top: PanelContainer
var glow_bottom: PanelContainer
var ornament_layer: Control
var ornaments: Array[Label] = []
var safe_area: MarginContainer
var main_column: VBoxContainer
var header_bar: HBoxContainer
var back_button: Button
var title_label: Label
var content_panel: PanelContainer
var content_scroll: ScrollContainer
var content_box: VBoxContainer
var bottom_bar: PanelContainer
var nav_buttons: Dictionary = {}
var monster_texture_cache: Dictionary = {}


func _ready() -> void:
	_build_ui()
	_load_favorites()
	_open_root_page(PAGE_HOME)


func _build_ui() -> void:
	set_anchors_preset(Control.PRESET_FULL_RECT)

	background_gradient = TextureRect.new()
	background_gradient.set_anchors_preset(Control.PRESET_FULL_RECT)
	background_gradient.expand_mode = TextureRect.EXPAND_IGNORE_SIZE
	background_gradient.stretch_mode = TextureRect.STRETCH_SCALE
	add_child(background_gradient)

	glow_top = PanelContainer.new()
	glow_top.position = Vector2(-48, 118)
	glow_top.custom_minimum_size = Vector2(190, 190)
	glow_top.mouse_filter = Control.MOUSE_FILTER_IGNORE
	add_child(glow_top)

	glow_bottom = PanelContainer.new()
	glow_bottom.anchor_left = 1.0
	glow_bottom.anchor_top = 1.0
	glow_bottom.anchor_right = 1.0
	glow_bottom.anchor_bottom = 1.0
	glow_bottom.offset_left = -180
	glow_bottom.offset_top = -340
	glow_bottom.offset_right = -20
	glow_bottom.offset_bottom = -180
	glow_bottom.mouse_filter = Control.MOUSE_FILTER_IGNORE
	add_child(glow_bottom)

	ornament_layer = Control.new()
	ornament_layer.set_anchors_preset(Control.PRESET_FULL_RECT)
	ornament_layer.mouse_filter = Control.MOUSE_FILTER_IGNORE
	add_child(ornament_layer)
	_create_ornaments()

	safe_area = MarginContainer.new()
	safe_area.set_anchors_preset(Control.PRESET_FULL_RECT)
	safe_area.add_theme_constant_override("margin_left", 16)
	safe_area.add_theme_constant_override("margin_top", 16)
	safe_area.add_theme_constant_override("margin_right", 16)
	safe_area.add_theme_constant_override("margin_bottom", 10)
	add_child(safe_area)

	main_column = VBoxContainer.new()
	main_column.set_anchors_preset(Control.PRESET_FULL_RECT)
	main_column.size_flags_horizontal = Control.SIZE_EXPAND_FILL
	main_column.size_flags_vertical = Control.SIZE_EXPAND_FILL
	main_column.add_theme_constant_override("separation", 6)
	safe_area.add_child(main_column)

	header_bar = HBoxContainer.new()
	header_bar.custom_minimum_size = Vector2(0, 46)
	header_bar.alignment = BoxContainer.ALIGNMENT_CENTER
	main_column.add_child(header_bar)

	back_button = Button.new()
	back_button.text = "‹ Back"
	back_button.custom_minimum_size = Vector2(82, 38)
	back_button.focus_mode = Control.FOCUS_NONE
	back_button.pressed.connect(_go_back)
	header_bar.add_child(back_button)

	title_label = _make_label("", 20, Color.WHITE, HORIZONTAL_ALIGNMENT_CENTER)
	title_label.size_flags_horizontal = Control.SIZE_EXPAND_FILL
	title_label.vertical_alignment = VERTICAL_ALIGNMENT_CENTER
	header_bar.add_child(title_label)

	var spacer := Control.new()
	spacer.custom_minimum_size = Vector2(82, 1)
	header_bar.add_child(spacer)

	content_panel = PanelContainer.new()
	content_panel.size_flags_horizontal = Control.SIZE_EXPAND_FILL
	content_panel.size_flags_vertical = Control.SIZE_EXPAND_FILL
	main_column.add_child(content_panel)

	var content_margin := MarginContainer.new()
	content_margin.size_flags_horizontal = Control.SIZE_EXPAND_FILL
	content_margin.size_flags_vertical = Control.SIZE_EXPAND_FILL
	content_margin.add_theme_constant_override("margin_left", 2)
	content_margin.add_theme_constant_override("margin_top", 2)
	content_margin.add_theme_constant_override("margin_right", 2)
	content_margin.add_theme_constant_override("margin_bottom", 2)
	content_panel.add_child(content_margin)

	content_scroll = ScrollContainer.new()
	content_scroll.size_flags_horizontal = Control.SIZE_EXPAND_FILL
	content_scroll.size_flags_vertical = Control.SIZE_EXPAND_FILL
	content_margin.add_child(content_scroll)

	content_box = VBoxContainer.new()
	content_box.custom_minimum_size = Vector2(0, 1)
	content_box.size_flags_horizontal = Control.SIZE_EXPAND_FILL
	content_box.add_theme_constant_override("separation", 14)
	content_scroll.add_child(content_box)

	bottom_bar = PanelContainer.new()
	bottom_bar.custom_minimum_size = Vector2(0, 74)
	main_column.add_child(bottom_bar)

	var nav_margin := MarginContainer.new()
	nav_margin.add_theme_constant_override("margin_left", 6)
	nav_margin.add_theme_constant_override("margin_top", 6)
	nav_margin.add_theme_constant_override("margin_right", 6)
	nav_margin.add_theme_constant_override("margin_bottom", 6)
	bottom_bar.add_child(nav_margin)

	var nav_row := HBoxContainer.new()
	nav_row.size_flags_horizontal = Control.SIZE_EXPAND_FILL
	nav_row.add_theme_constant_override("separation", 4)
	nav_margin.add_child(nav_row)

	nav_row.add_child(_create_nav_button("⌂", "Home", PAGE_HOME))
	nav_row.add_child(_create_nav_button("✦", "Explore", PAGE_EXPLORE))
	nav_row.add_child(_create_nav_button("✧", "Path", PAGE_PATH))
	nav_row.add_child(_create_nav_button("♥", "Favorites", PAGE_FAVORITES))
	nav_row.add_child(_create_nav_button("⚙", "Settings", PAGE_SETTINGS))


func _create_ornaments() -> void:
	var positions := [
		Vector2(32, 98),
		Vector2(284, 146),
		Vector2(344, 212),
		Vector2(96, 388),
		Vector2(332, 476),
		Vector2(54, 618),
		Vector2(286, 694),
		Vector2(122, 782)
	]
	var glyphs := ["·", "✦", "·", "✦", "·", "✦", "·", "·"]
	for index in positions.size():
		var ornament := Label.new()
		ornament.text = glyphs[index]
		ornament.position = positions[index]
		ornament.add_theme_font_size_override("font_size", 18)
		ornament_layer.add_child(ornament)
		ornaments.append(ornament)


func _create_nav_button(symbol: String, caption: String, target_page: String) -> Button:
	var button := Button.new()
	button.flat = true
	button.focus_mode = Control.FOCUS_NONE
	button.size_flags_horizontal = Control.SIZE_EXPAND_FILL
	button.custom_minimum_size = Vector2(0, 62)
	button.pressed.connect(_open_root_page.bind(target_page))

	var margin := MarginContainer.new()
	margin.set_anchors_preset(Control.PRESET_FULL_RECT)
	margin.mouse_filter = Control.MOUSE_FILTER_IGNORE
	margin.add_theme_constant_override("margin_left", 6)
	margin.add_theme_constant_override("margin_top", 4)
	margin.add_theme_constant_override("margin_right", 6)
	margin.add_theme_constant_override("margin_bottom", 4)
	button.add_child(margin)

	var stack := VBoxContainer.new()
	stack.alignment = BoxContainer.ALIGNMENT_CENTER
	stack.mouse_filter = Control.MOUSE_FILTER_IGNORE
	stack.add_theme_constant_override("separation", 0)
	margin.add_child(stack)

	var icon_label := _make_label(symbol, 30, Color.WHITE, HORIZONTAL_ALIGNMENT_CENTER)
	var text_label := _make_label(caption, 12, Color.WHITE, HORIZONTAL_ALIGNMENT_CENTER)
	stack.add_child(icon_label)
	stack.add_child(text_label)

	nav_buttons[target_page] = {
		"button": button,
		"icon": icon_label,
		"label": text_label
	}
	return button


func _open_root_page(page: String) -> void:
	if page == PAGE_HOME:
		history.clear()
	else:
		history = [{"page": PAGE_HOME, "category": "", "article_id": ""}]
	_apply_state({"page": page, "category": "", "article_id": ""})


func _open_category(category_key: String) -> void:
	_push_history()
	_apply_state({"page": PAGE_CATEGORY, "category": category_key, "article_id": ""})


func _open_article(category_key: String, article_id: String) -> void:
	_push_history()
	_apply_state({"page": PAGE_ARTICLE, "category": category_key, "article_id": article_id})


func _go_back() -> void:
	if history.is_empty():
		_open_root_page(PAGE_HOME)
		return
	var previous_state: Dictionary = history.pop_back()
	_apply_state(previous_state)


func _push_history() -> void:
	history.append({
		"page": current_page,
		"category": current_category,
		"article_id": current_article_id
	})


func _apply_state(state: Dictionary) -> void:
	current_page = str(state.get("page", PAGE_HOME))
	current_category = str(state.get("category", ""))
	current_article_id = str(state.get("article_id", ""))
	_render_page()
	_update_chrome()
	content_scroll.scroll_vertical = 0


func _render_page() -> void:
	for child in content_box.get_children():
		child.queue_free()

	match current_page:
		PAGE_HOME:
			_render_home_page()
		PAGE_EXPLORE:
			_render_explore_page()
		PAGE_CATEGORY:
			_render_category_page()
		PAGE_ARTICLE:
			_render_article_page()
		PAGE_PATH:
			_render_path_page()
		PAGE_FAVORITES:
			_render_favorites_page()
		PAGE_SETTINGS:
			_render_settings_page()
		_:
			_render_home_page()


func _render_home_page() -> void:
	content_box.add_child(_create_home_hero())

	var section_row := HBoxContainer.new()
	section_row.add_theme_constant_override("separation", 8)
	content_box.add_child(section_row)
	var section_title := _make_label("☾  Today's Mysteries", 20, _theme_color("text"), HORIZONTAL_ALIGNMENT_LEFT)
	section_title.size_flags_horizontal = Control.SIZE_EXPAND_FILL
	section_row.add_child(section_title)

	for raw_article in FantasyDataRef.get_featured_articles(3):
		var article: Dictionary = raw_article
		var category_id: String = str(article.get("category_id", ""))
		content_box.add_child(_create_feature_card(article, category_id))

	var bottom_spacer := Control.new()
	bottom_spacer.custom_minimum_size = Vector2(0, 8)
	content_box.add_child(bottom_spacer)


func _render_explore_page() -> void:
	var page_title := _make_label("Explore", 34, _theme_color("text"), HORIZONTAL_ALIGNMENT_LEFT)
	content_box.add_child(page_title)
	content_box.add_child(_make_label("Discover monsters, spirits, tribes, and deathless lore.", 15, _theme_color("muted"), HORIZONTAL_ALIGNMENT_LEFT))

	var spacer_top := Control.new()
	spacer_top.custom_minimum_size = Vector2(0, 4)
	content_box.add_child(spacer_top)

	var count_str := str(FantasyDataRef.get_category_order().size()) + " categories to explore"
	content_box.add_child(_make_label("All Categories", 20, _theme_color("text"), HORIZONTAL_ALIGNMENT_LEFT))
	content_box.add_child(_make_label(count_str, 14, _theme_color("muted"), HORIZONTAL_ALIGNMENT_LEFT))

	var grid := GridContainer.new()
	grid.columns = 2
	grid.add_theme_constant_override("h_separation", 12)
	grid.add_theme_constant_override("v_separation", 12)
	content_box.add_child(grid)

	for raw_category in FantasyDataRef.get_categories():
		var category: Dictionary = raw_category
		grid.add_child(_create_category_grid_card(category))

	var bottom_spacer := Control.new()
	bottom_spacer.custom_minimum_size = Vector2(0, 8)
	content_box.add_child(bottom_spacer)


func _render_category_page() -> void:
	var category: Dictionary = FantasyDataRef.get_category(current_category)
	content_box.add_child(_create_category_hero(category))

	var articles: Array = FantasyDataRef.get_articles(current_category)
	var article_count: int = articles.size()
	content_box.add_child(_make_section_header("Entries", str(article_count) + " articles in this theme"))

	for raw_article in articles:
		var article: Dictionary = raw_article
		content_box.add_child(_create_article_list_card(article, current_category))

	var bottom_spacer := Control.new()
	bottom_spacer.custom_minimum_size = Vector2(0, 8)
	content_box.add_child(bottom_spacer)


func _render_article_page() -> void:
	var article: Dictionary = FantasyDataRef.get_article(current_category, current_article_id)
	if article.is_empty():
		content_box.add_child(_create_message_panel("This article could not be found."))
		return

	content_box.add_child(_create_article_hero(article, current_category))

	var favorite_caption := "♥  Add to Favorites"
	if _is_favorite(current_category, current_article_id):
		favorite_caption = "♥  Remove from Favorites"

	content_box.add_child(_make_section_header("Field Notes", "Collected observations and lore fragments."))
	for paragraph in article.get("content", []):
		content_box.add_child(_create_paragraph_card(str(paragraph)))

	content_box.add_child(_create_action_button(favorite_caption, _toggle_favorite.bind(current_category, current_article_id)))

	var bottom_spacer := Control.new()
	bottom_spacer.custom_minimum_size = Vector2(0, 8)
	content_box.add_child(bottom_spacer)


func _render_path_page() -> void:
	var page_title := _make_label("Path", 34, _theme_color("text"), HORIZONTAL_ALIGNMENT_LEFT)
	content_box.add_child(page_title)
	content_box.add_child(_make_label("Your journey through the realms.", 15, _theme_color("muted"), HORIZONTAL_ALIGNMENT_LEFT))
	content_box.add_child(_create_message_panel("Achievements and progression will live here."))


func _render_favorites_page() -> void:
	var page_title := _make_label("Favorites", 34, _theme_color("text"), HORIZONTAL_ALIGNMENT_LEFT)
	content_box.add_child(page_title)
	content_box.add_child(_make_label("Saved articles for quick return visits.", 15, _theme_color("muted"), HORIZONTAL_ALIGNMENT_LEFT))

	if favorites.is_empty():
		content_box.add_child(_create_empty_state("No favorites yet", "Open any entry and tap the heart to save it here."))
		return

	var spacer_top := Control.new()
	spacer_top.custom_minimum_size = Vector2(0, 2)
	content_box.add_child(spacer_top)

	content_box.add_child(_make_label("Saved Entries", 20, _theme_color("text"), HORIZONTAL_ALIGNMENT_LEFT))
	content_box.add_child(_make_label(str(favorites.size()) + " articles saved", 14, _theme_color("muted"), HORIZONTAL_ALIGNMENT_LEFT))

	for favorite_key in favorites:
		var parts: PackedStringArray = favorite_key.split(":")
		if parts.size() != 2:
			continue
		var category_key: String = parts[0]
		var article_id: String = parts[1]
		var article: Dictionary = FantasyDataRef.get_article(category_key, article_id)
		if article.is_empty():
			continue
		content_box.add_child(_create_article_list_card(article, category_key))

	var bottom_spacer := Control.new()
	bottom_spacer.custom_minimum_size = Vector2(0, 8)
	content_box.add_child(bottom_spacer)


func _render_settings_page() -> void:
	var page_title := _make_label("Settings", 34, _theme_color("text"), HORIZONTAL_ALIGNMENT_LEFT)
	content_box.add_child(page_title)
	content_box.add_child(_make_label("Configure your experience.", 15, _theme_color("muted"), HORIZONTAL_ALIGNMENT_LEFT))
	content_box.add_child(_create_message_panel("Settings will be available here soon."))


func _create_home_hero() -> PanelContainer:
	var panel := PanelContainer.new()
	panel.custom_minimum_size = Vector2(0, 310)
	panel.add_theme_stylebox_override("panel", _panel_style(_surface_alt_color(0.92), _border_color(0.45), 28, 1))

	var margin := _margin_box(22, 28, 22, 28)
	panel.add_child(margin)

	var stack := VBoxContainer.new()
	stack.alignment = BoxContainer.ALIGNMENT_CENTER
	stack.add_theme_constant_override("separation", 8)
	margin.add_child(stack)

	var logo_img := TextureRect.new()
	logo_img.texture = LOGO_TEX
	logo_img.expand_mode = TextureRect.EXPAND_FIT_WIDTH_PROPORTIONAL
	logo_img.stretch_mode = TextureRect.STRETCH_KEEP_ASPECT_CENTERED
	logo_img.custom_minimum_size = Vector2(140, 140)
	logo_img.size_flags_horizontal = Control.SIZE_SHRINK_CENTER
	stack.add_child(logo_img)

	stack.add_child(_make_spaced_label("FANTASY", 30, _theme_color("text"), HORIZONTAL_ALIGNMENT_CENTER))
	stack.add_child(_make_spaced_label("ENCYCLOPEDIA", 18, _theme_color("text"), HORIZONTAL_ALIGNMENT_CENTER))
	stack.add_child(_make_label("────", 16, _theme_color("muted"), HORIZONTAL_ALIGNMENT_CENTER))
	stack.add_child(_make_label("✦  Explore the Realms  ✦", 15, _theme_color("muted"), HORIZONTAL_ALIGNMENT_CENTER))
	return panel


func _create_category_hero(category: Dictionary) -> PanelContainer:
	var panel := PanelContainer.new()
	panel.custom_minimum_size = Vector2(0, 230)
	panel.add_theme_stylebox_override("panel", _panel_style(_surface_alt_color(0.88), _border_color(0.45), 26, 1))

	var margin := _margin_box(20, 22, 20, 22)
	panel.add_child(margin)

	var stack := VBoxContainer.new()
	stack.add_theme_constant_override("separation", 10)
	margin.add_child(stack)

	var img := _create_placeholder_image(64, 64)
	stack.add_child(img)

	stack.add_child(_make_label(str(category.get("name", "Category")), 28, _theme_color("text"), HORIZONTAL_ALIGNMENT_LEFT))
	stack.add_child(_make_label(str(category.get("tagline", "")), 15, _theme_color("muted"), HORIZONTAL_ALIGNMENT_LEFT))

	return panel


func _create_article_hero(article: Dictionary, _category_key: String) -> PanelContainer:
	var panel := PanelContainer.new()
	panel.add_theme_stylebox_override("panel", _panel_style(_surface_alt_color(0.88), _border_color(0.45), 26, 1))

	var margin := _margin_box(20, 20, 20, 20)
	panel.add_child(margin)

	var stack := VBoxContainer.new()
	stack.add_theme_constant_override("separation", 12)
	margin.add_child(stack)

	var image_wrapper := CenterContainer.new()
	stack.add_child(image_wrapper)

	var image_panel := PanelContainer.new()
	image_panel.custom_minimum_size = Vector2(140, 140)
	image_panel.add_theme_stylebox_override("panel", _panel_style(_surface_color(0.5), _border_color(0.3), 20, 1))
	image_wrapper.add_child(image_panel)

	var image_center := CenterContainer.new()
	image_panel.add_child(image_center)
	var img := _create_article_image(str(article.get("id", "")), 72, 72)
	image_center.add_child(img)

	stack.add_child(_make_label(str(article.get("name", "Article")), 28, _theme_color("text"), HORIZONTAL_ALIGNMENT_LEFT))
	stack.add_child(_make_label(str(article.get("summary", "")), 15, _theme_color("muted"), HORIZONTAL_ALIGNMENT_LEFT))
	return panel


func _create_feature_card(article: Dictionary, category_key: String) -> PanelContainer:
	var panel := PanelContainer.new()
	panel.size_flags_horizontal = Control.SIZE_EXPAND_FILL
	panel.add_theme_stylebox_override("panel", _panel_style(_surface_color(0.78), _border_color(0.35), 22, 1))

	var margin := _margin_box(14, 14, 14, 14)
	panel.add_child(margin)

	var row := HBoxContainer.new()
	row.add_theme_constant_override("separation", 14)
	margin.add_child(row)

	var img := _create_article_image(str(article.get("id", "")), 52, 52)
	row.add_child(img)

	var body := VBoxContainer.new()
	body.size_flags_horizontal = Control.SIZE_EXPAND_FILL
	body.add_theme_constant_override("separation", 4)
	row.add_child(body)

	var tag_label := _make_label(str(article.get("category_name", "")), 11, _theme_color("accent"), HORIZONTAL_ALIGNMENT_LEFT)
	tag_label.uppercase = true
	body.add_child(tag_label)
	body.add_child(_make_label(str(article.get("name", "")), 20, _theme_color("text"), HORIZONTAL_ALIGNMENT_LEFT))
	body.add_child(_make_label(str(article.get("summary", "")), 13, _theme_color("muted"), HORIZONTAL_ALIGNMENT_LEFT))

	var hit := Button.new()
	hit.flat = true
	hit.focus_mode = Control.FOCUS_NONE
	hit.set_anchors_preset(Control.PRESET_FULL_RECT)
	hit.pressed.connect(_open_article.bind(category_key, str(article.get("id", ""))))
	panel.add_child(hit)
	return panel


func _create_category_grid_card(category: Dictionary) -> Button:
	var category_theme: Dictionary = Dictionary(category.get("theme", {}))
	var accent: Color = Color(category_theme.get("accent", _theme_color("accent")))
	var surface: Color = Color(category_theme.get("surface", _theme_color("surface")))
	var fill: Color = Color(category_theme.get("surface_alt", _theme_color("surface_alt")))
	var text_color: Color = Color(category_theme.get("text", _theme_color("text")))

	var button := Button.new()
	button.focus_mode = Control.FOCUS_NONE
	button.custom_minimum_size = Vector2(0, 168)
	button.size_flags_horizontal = Control.SIZE_EXPAND_FILL
	button.pressed.connect(_open_category.bind(str(category.get("id", ""))))
	button.add_theme_stylebox_override("normal", _panel_style(fill, _alpha(accent, 0.35), 22, 1))
	button.add_theme_stylebox_override("hover", _panel_style(fill.lightened(0.08), _alpha(accent, 0.55), 22, 1))
	button.add_theme_stylebox_override("pressed", _panel_style(surface, _alpha(accent, 0.65), 22, 1))
	button.add_theme_stylebox_override("focus", _panel_style(Color(0, 0, 0, 0), Color(0, 0, 0, 0), 0, 0))

	var margin := _margin_box(14, 18, 14, 14)
	margin.set_anchors_preset(Control.PRESET_FULL_RECT)
	margin.mouse_filter = Control.MOUSE_FILTER_IGNORE
	button.add_child(margin)

	var stack := VBoxContainer.new()
	stack.alignment = BoxContainer.ALIGNMENT_CENTER
	stack.mouse_filter = Control.MOUSE_FILTER_IGNORE
	stack.add_theme_constant_override("separation", 10)
	margin.add_child(stack)

	stack.add_spacer(false)

	var img := _create_placeholder_image(56, 56)
	img.size_flags_horizontal = Control.SIZE_SHRINK_CENTER
	stack.add_child(img)

	stack.add_child(_make_label(str(category.get("name", "")), 18, text_color, HORIZONTAL_ALIGNMENT_CENTER))
	stack.add_spacer(false)
	return button


func _create_article_list_card(article: Dictionary, category_key: String) -> PanelContainer:
	var panel := PanelContainer.new()
	panel.size_flags_horizontal = Control.SIZE_EXPAND_FILL
	panel.add_theme_stylebox_override("panel", _panel_style(_surface_color(0.78), _border_color(0.32), 20, 1))

	var margin := _margin_box(14, 12, 14, 12)
	panel.add_child(margin)

	var row := HBoxContainer.new()
	row.add_theme_constant_override("separation", 14)
	margin.add_child(row)

	var img := _create_article_image(str(article.get("id", "")), 52, 52)
	row.add_child(img)

	var body := VBoxContainer.new()
	body.size_flags_horizontal = Control.SIZE_EXPAND_FILL
	body.add_theme_constant_override("separation", 3)
	row.add_child(body)

	var cat_label := _make_label(str(FantasyDataRef.get_category(category_key).get("name", "")), 11, _theme_color("accent"), HORIZONTAL_ALIGNMENT_LEFT)
	cat_label.uppercase = true
	body.add_child(cat_label)
	body.add_child(_make_label(str(article.get("name", "")), 19, _theme_color("text"), HORIZONTAL_ALIGNMENT_LEFT))
	body.add_child(_make_label(str(article.get("summary", "")), 13, _theme_color("muted"), HORIZONTAL_ALIGNMENT_LEFT))

	var hit := Button.new()
	hit.flat = true
	hit.focus_mode = Control.FOCUS_NONE
	hit.set_anchors_preset(Control.PRESET_FULL_RECT)
	hit.pressed.connect(_open_article.bind(category_key, str(article.get("id", ""))))
	panel.add_child(hit)
	return panel


func _create_paragraph_card(text: String) -> PanelContainer:
	var panel := PanelContainer.new()
	panel.add_theme_stylebox_override("panel", _panel_style(_surface_color(0.72), _border_color(0.25), 18, 1))
	var margin := _margin_box(16, 14, 16, 14)
	panel.add_child(margin)
	margin.add_child(_make_label(text, 15, _theme_color("text"), HORIZONTAL_ALIGNMENT_LEFT))
	return panel


func _create_message_panel(text: String) -> PanelContainer:
	var panel := PanelContainer.new()
	panel.add_theme_stylebox_override("panel", _panel_style(_surface_color(0.65), _border_color(0.22), 20, 1))
	var margin := _margin_box(18, 18, 18, 18)
	panel.add_child(margin)
	margin.add_child(_make_label(text, 16, _theme_color("muted"), HORIZONTAL_ALIGNMENT_LEFT))
	return panel


func _create_empty_state(title_text: String, body_text: String) -> PanelContainer:
	var panel := PanelContainer.new()
	panel.custom_minimum_size = Vector2(0, 160)
	panel.add_theme_stylebox_override("panel", _panel_style(_surface_color(0.55), _border_color(0.2), 22, 1))
	var margin := _margin_box(22, 28, 22, 28)
	panel.add_child(margin)
	var stack := VBoxContainer.new()
	stack.alignment = BoxContainer.ALIGNMENT_CENTER
	stack.add_theme_constant_override("separation", 10)
	margin.add_child(stack)
	stack.add_child(_make_label("♥", 36, _theme_color("muted"), HORIZONTAL_ALIGNMENT_CENTER))
	stack.add_child(_make_label(title_text, 20, _theme_color("text"), HORIZONTAL_ALIGNMENT_CENTER))
	stack.add_child(_make_label(body_text, 14, _theme_color("muted"), HORIZONTAL_ALIGNMENT_CENTER))
	return panel


func _create_action_button(caption: String, callback: Callable) -> Button:
	var button := Button.new()
	button.text = caption
	button.custom_minimum_size = Vector2(0, 46)
	button.focus_mode = Control.FOCUS_NONE
	button.add_theme_font_size_override("font_size", 15)
	button.add_theme_color_override("font_color", _theme_color("text"))
	button.add_theme_stylebox_override("normal", _panel_style(_surface_alt_color(0.92), _border_color(0.48), 16, 1))
	button.add_theme_stylebox_override("hover", _panel_style(_surface_alt_color(1.0), _border_color(0.62), 16, 1))
	button.add_theme_stylebox_override("pressed", _panel_style(_surface_color(0.88), _border_color(0.72), 16, 1))
	button.pressed.connect(callback)
	return button


func _create_chip(text: String) -> PanelContainer:
	var chip := PanelContainer.new()
	chip.size_flags_horizontal = Control.SIZE_SHRINK_CENTER
	chip.add_theme_stylebox_override("panel", _panel_style(_surface_color(0.65), _border_color(0.32), 14, 1))
	var margin := _margin_box(12, 6, 12, 6)
	chip.add_child(margin)
	margin.add_child(_make_label(text, 12, _theme_color("muted"), HORIZONTAL_ALIGNMENT_CENTER))
	return chip


func _create_article_image(article_id: String, w: int, h: int) -> TextureRect:
	var img := TextureRect.new()
	img.texture = _get_article_texture(article_id)
	img.expand_mode = TextureRect.EXPAND_IGNORE_SIZE
	img.stretch_mode = TextureRect.STRETCH_KEEP_ASPECT_CENTERED
	img.custom_minimum_size = Vector2(w, h)
	return img


func _get_article_texture(article_id: String) -> Texture2D:
	var texture_key := _get_article_texture_key(article_id)
	if texture_key.is_empty():
		return PLACEHOLDER_TEX

	var texture_path := MONSTER_IMAGE_DIR + texture_key + ".png"
	if monster_texture_cache.has(texture_path):
		return monster_texture_cache[texture_path]

	if not FileAccess.file_exists(texture_path):
		return PLACEHOLDER_TEX

	var texture := load(texture_path) as Texture2D
	if texture == null:
		return PLACEHOLDER_TEX

	monster_texture_cache[texture_path] = texture
	return texture


func _get_article_texture_key(article_id: String) -> String:
	var candidates := [
		str(MONSTER_IMAGE_ALIASES.get(article_id, "")),
		article_id,
		article_id.replace("_", "-")
	]
	var seen := {}
	for candidate in candidates:
		if candidate.is_empty() or seen.has(candidate):
			continue
		seen[candidate] = true
		if FileAccess.file_exists(MONSTER_IMAGE_DIR + candidate + ".png"):
			return candidate
	return ""


func _create_placeholder_image(w: int, h: int) -> TextureRect:
	var img := TextureRect.new()
	img.texture = PLACEHOLDER_TEX
	img.expand_mode = TextureRect.EXPAND_IGNORE_SIZE
	img.stretch_mode = TextureRect.STRETCH_KEEP_ASPECT_CENTERED
	img.custom_minimum_size = Vector2(w, h)
	return img


func _make_section_header(title_text: String, subtitle_text: String) -> VBoxContainer:
	var box := VBoxContainer.new()
	box.add_theme_constant_override("separation", 4)
	box.add_child(_make_label(title_text, 20, _theme_color("text"), HORIZONTAL_ALIGNMENT_LEFT))
	box.add_child(_make_label(subtitle_text, 14, _theme_color("muted"), HORIZONTAL_ALIGNMENT_LEFT))
	return box


func _margin_box(left: int, top: int, right: int, bottom: int) -> MarginContainer:
	var margin := MarginContainer.new()
	margin.add_theme_constant_override("margin_left", left)
	margin.add_theme_constant_override("margin_top", top)
	margin.add_theme_constant_override("margin_right", right)
	margin.add_theme_constant_override("margin_bottom", bottom)
	return margin


func _make_label(text: String, font_size: int, font_color: Color, alignment: HorizontalAlignment) -> Label:
	var label := Label.new()
	label.text = text
	label.horizontal_alignment = alignment
	label.autowrap_mode = TextServer.AUTOWRAP_WORD_SMART
	label.add_theme_font_size_override("font_size", font_size)
	label.add_theme_color_override("font_color", font_color)
	return label


func _make_spaced_label(text: String, font_size: int, font_color: Color, alignment: HorizontalAlignment) -> Label:
	var spaced := ""
	for i in text.length():
		if i > 0:
			spaced += "  "
		spaced += text[i]
	var label := Label.new()
	label.text = spaced
	label.horizontal_alignment = alignment
	label.autowrap_mode = TextServer.AUTOWRAP_WORD_SMART
	label.add_theme_font_size_override("font_size", font_size)
	label.add_theme_color_override("font_color", font_color)
	return label


func _update_chrome() -> void:
	_update_background()
	title_label.text = _page_title()
	title_label.add_theme_color_override("font_color", _theme_color("text"))
	var is_inner_page: bool = current_page == PAGE_CATEGORY or current_page == PAGE_ARTICLE
	header_bar.visible = is_inner_page
	back_button.visible = is_inner_page
	back_button.add_theme_color_override("font_color", _theme_color("text"))
	back_button.add_theme_font_size_override("font_size", 15)
	back_button.add_theme_stylebox_override("normal", _panel_style(_surface_color(0.65), _border_color(0.35), 14, 1))
	back_button.add_theme_stylebox_override("hover", _panel_style(_surface_alt_color(0.8), _border_color(0.5), 14, 1))
	back_button.add_theme_stylebox_override("pressed", _panel_style(_surface_alt_color(0.95), _border_color(0.65), 14, 1))
	content_panel.add_theme_stylebox_override("panel", _panel_style(Color(0, 0, 0, 0), Color(0, 0, 0, 0), 0, 0))
	bottom_bar.add_theme_stylebox_override("panel", _panel_style(_surface_color(0.72), _border_color(0.22), 26, 1))
	_update_nav_styles()
	_update_ornaments()


func _update_background() -> void:
	background_gradient.texture = _make_gradient_texture(_theme_color("background_top"), _theme_color("background_bottom"))
	glow_top.add_theme_stylebox_override("panel", _panel_style(_alpha(_theme_color("glow"), 0.16), Color(0, 0, 0, 0), 96, 0))
	glow_bottom.add_theme_stylebox_override("panel", _panel_style(_alpha(_theme_color("accent"), 0.12), Color(0, 0, 0, 0), 96, 0))


func _update_ornaments() -> void:
	var dot_color: Color = _alpha(_theme_color("text"), 0.42)
	var star_color: Color = _alpha(_theme_color("accent"), 0.76)
	for ornament in ornaments:
		if ornament.text == "✦":
			ornament.add_theme_color_override("font_color", star_color)
		else:
			ornament.add_theme_color_override("font_color", dot_color)


func _update_nav_styles() -> void:
	var active_nav := _nav_active_page()
	for key in nav_buttons.keys():
		var page: String = str(key)
		var is_active: bool = page == active_nav
		var button: Button = nav_buttons[key]["button"]
		var icon_label: Label = nav_buttons[key]["icon"]
		var text_label: Label = nav_buttons[key]["label"]
		var fill: Color = Color(0, 0, 0, 0)
		var border: Color = Color(0, 0, 0, 0)
		if is_active:
			fill = _surface_alt_color(0.95)
			border = _border_color(0.5)
		button.add_theme_stylebox_override("normal", _panel_style(fill, border, 18, 1 if is_active else 0))
		button.add_theme_stylebox_override("hover", _panel_style(_surface_alt_color(0.8) if not is_active else _surface_alt_color(1.0), _border_color(0.35), 18, 1))
		button.add_theme_stylebox_override("pressed", _panel_style(_surface_alt_color(1.0), _border_color(0.55), 18, 1))
		var text_color: Color = _theme_color("text") if is_active else _theme_color("muted")
		icon_label.add_theme_color_override("font_color", text_color)
		text_label.add_theme_color_override("font_color", text_color)


func _nav_active_page() -> String:
	if current_page == PAGE_CATEGORY or current_page == PAGE_ARTICLE:
		return PAGE_EXPLORE
	return current_page


func _page_title() -> String:
	match current_page:
		PAGE_CATEGORY:
			return str(FantasyDataRef.get_category(current_category).get("name", "Category"))
		PAGE_ARTICLE:
			return str(FantasyDataRef.get_article(current_category, current_article_id).get("name", "Article"))
		_:
			return ""


func _theme() -> Dictionary:
	return FantasyDataRef.get_theme_for_page(current_page, current_category)


func _theme_color(key: String) -> Color:
	return Color(_theme().get(key, Color.WHITE))


func _surface_color(alpha_value: float) -> Color:
	return _alpha(_theme_color("surface"), alpha_value)


func _surface_alt_color(alpha_value: float) -> Color:
	return _alpha(_theme_color("surface_alt"), alpha_value)


func _border_color(alpha_value: float) -> Color:
	return _alpha(_theme_color("accent"), alpha_value)


func _alpha(color: Color, alpha_value: float) -> Color:
	return Color(color.r, color.g, color.b, alpha_value)


func _panel_style(fill_color: Color, border_color: Color, radius: int, border_width: int) -> StyleBoxFlat:
	var style := StyleBoxFlat.new()
	style.bg_color = fill_color
	style.border_color = border_color
	style.set_corner_radius_all(radius)
	style.set_border_width_all(border_width)
	return style


func _make_gradient_texture(top_color: Color, bottom_color: Color) -> GradientTexture2D:
	var gradient := Gradient.new()
	gradient.colors = PackedColorArray([top_color, bottom_color])
	var texture := GradientTexture2D.new()
	texture.gradient = gradient
	texture.fill = GradientTexture2D.FILL_LINEAR
	texture.fill_from = Vector2(0.0, 0.0)
	texture.fill_to = Vector2(0.0, 1.0)
	texture.width = 1
	texture.height = 1024
	return texture


func _favorite_key(category_key: String, article_id: String) -> String:
	return category_key + ":" + article_id


func _is_favorite(category_key: String, article_id: String) -> bool:
	return favorites.has(_favorite_key(category_key, article_id))


func _toggle_favorite(category_key: String, article_id: String) -> void:
	var key := _favorite_key(category_key, article_id)
	if favorites.has(key):
		favorites.erase(key)
	else:
		favorites.append(key)
	_save_favorites()
	_render_page()
	_update_chrome()


func _load_favorites() -> void:
	var config := ConfigFile.new()
	if config.load(FAVORITES_PATH) == OK:
		var loaded_items: Variant = config.get_value("favorites", "items", [])
		if loaded_items is Array:
			favorites.clear()
			for item in loaded_items:
				favorites.append(str(item))


func _save_favorites() -> void:
	var config := ConfigFile.new()
	config.set_value("favorites", "items", favorites)
	config.save(FAVORITES_PATH)