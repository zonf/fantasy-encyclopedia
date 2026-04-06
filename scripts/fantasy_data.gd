class_name FantasyData
extends RefCounted

static var ROOT_THEME := {
	"background_top": Color("12071f"),
	"background_bottom": Color("2a1244"),
	"surface": Color("2f1748"),
	"surface_alt": Color("4d2676"),
	"accent": Color("a66cff"),
	"accent_soft": Color("6e3cb0"),
	"text": Color("f6ecff"),
	"muted": Color("c9b3df"),
	"glow": Color("904cff")
}

static var CATEGORY_ORDER := ["demons", "ghosts", "goblins", "undead", "ogres", "trolls", "elves", "dwarves", "orcs"]

static var CATEGORIES := {
	"demons": {
		"name": "Demons",
		"icon": "✹",
		"tagline": "Infernal pacts, abyssal courts, and firebound warlords.",
		"description": "Demon lore leans into heat, ambition, and the politics of the abyss. Their stories are about temptation as much as raw force.",
		"theme": {
			"background_top": Color("1d0910"),
			"background_bottom": Color("451624"),
			"surface": Color("381523"),
			"surface_alt": Color("5e2333"),
			"accent": Color("ff7b63"),
			"accent_soft": Color("98384b"),
			"text": Color("fff0eb"),
			"muted": Color("efb7aa"),
			"glow": Color("ff7459")
		}
	},
	"ghosts": {
		"name": "Ghosts",
		"icon": "☾",
		"tagline": "Whispers, hauntings, and promises that refuse to fade.",
		"description": "Ghostly tales are quieter and more mournful. Their power often comes from memory, regret, or places that refuse to forget.",
		"theme": {
			"background_top": Color("091223"),
			"background_bottom": Color("19395b"),
			"surface": Color("152b47"),
			"surface_alt": Color("1d4672"),
			"accent": Color("7fd9ff"),
			"accent_soft": Color("2b6f99"),
			"text": Color("eef9ff"),
			"muted": Color("b7d5e6"),
			"glow": Color("55c6ff")
		}
	},
	"goblins": {
		"name": "Goblins",
		"icon": "✦",
		"tagline": "Scrap-kingdoms, tunnel clans, and quick hands in the dark.",
		"description": "Goblin stories focus on wit, survival, and unruly societies built from scraps, tunnels, and audacious plans.",
		"theme": {
			"background_top": Color("0d180e"),
			"background_bottom": Color("224327"),
			"surface": Color("1b311e"),
			"surface_alt": Color("2f5630"),
			"accent": Color("9ce36b"),
			"accent_soft": Color("4f8d37"),
			"text": Color("effbe7"),
			"muted": Color("c7dfbb"),
			"glow": Color("77d24e")
		}
	},
	"undead": {
		"name": "Undead",
		"icon": "☠",
		"tagline": "Bone legions, deathless sorcery, and tombs that never sleep.",
		"description": "Undead entries have a colder, older feel. They are tied to ruin, ritual, and the stubborn refusal of death to stay final.",
		"theme": {
			"background_top": Color("121118"),
			"background_bottom": Color("32263f"),
			"surface": Color("26202f"),
			"surface_alt": Color("443652"),
			"accent": Color("d8dfd2"),
			"accent_soft": Color("7d8b7b"),
			"text": Color("f2f0f5"),
			"muted": Color("cbc8d0"),
			"glow": Color("c8d0bf")
		}
	},
	"ogres": {
		"name": "Ogres",
		"icon": "⬢",
		"tagline": "Hill tyrants, bog-eaters, and brute kingdoms built on fear.",
		"description": "Ogre lore centers on appetite, muscle, and the harsh landscapes that shape monstrous strength into distinct kinds of regional terror.",
		"theme": {
			"background_top": Color("1b120c"),
			"background_bottom": Color("4b2f1c"),
			"surface": Color("382317"),
			"surface_alt": Color("694128"),
			"accent": Color("f0a45a"),
			"accent_soft": Color("9c5f2f"),
			"text": Color("fff4e9"),
			"muted": Color("e2c4ac"),
			"glow": Color("ffb168")
		}
	},
	"trolls": {
		"name": "Trolls",
		"icon": "⟁",
		"tagline": "Regenerating horrors shaped by forest rot, glacial night, and ancient stone.",
		"description": "Troll stories are about adaptation through ugliness. Each land grows its own troll, and each troll reflects the violence of that land.",
		"theme": {
			"background_top": Color("081711"),
			"background_bottom": Color("184235"),
			"surface": Color("133126"),
			"surface_alt": Color("235543"),
			"accent": Color("84d8a2"),
			"accent_soft": Color("327957"),
			"text": Color("ecfff5"),
			"muted": Color("b8dfc9"),
			"glow": Color("6fe3a0")
		}
	},
	"elves": {
		"name": "Elves",
		"icon": "✧",
		"tagline": "Ancient courts, moonlit roads, and civilizations sharpened by memory.",
		"description": "Elven entries lean into grace, longevity, and the cultural weight of peoples who remember centuries the way others remember childhood.",
		"theme": {
			"background_top": Color("0a1420"),
			"background_bottom": Color("1f3d4b"),
			"surface": Color("14303a"),
			"surface_alt": Color("245161"),
			"accent": Color("a8f0d8"),
			"accent_soft": Color("4b8f82"),
			"text": Color("effff9"),
			"muted": Color("bfded7"),
			"glow": Color("8de7ca")
		}
	},
	"dwarves": {
		"name": "Dwarves",
		"icon": "⛏",
		"tagline": "Deep halls, oath-forged clans, and craft that outlives empires.",
		"description": "Dwarven lore emphasizes endurance, labor, kinship, and the belief that stone, steel, and sworn word should all be made to last.",
		"theme": {
			"background_top": Color("15120f"),
			"background_bottom": Color("3b2d23"),
			"surface": Color("2b231d"),
			"surface_alt": Color("544236"),
			"accent": Color("e7b872"),
			"accent_soft": Color("9b6a35"),
			"text": Color("fff7ef"),
			"muted": Color("dcc8b4"),
			"glow": Color("efc17b")
		}
	},
	"orcs": {
		"name": "Orcs",
		"icon": "⚔",
		"tagline": "Warbands, iron law, and peoples forged where survival is never gentle.",
		"description": "Orc traditions focus on strength, kinship, and harsh codes of honor, but different tribes turn those pressures into very different societies.",
		"theme": {
			"background_top": Color("180b0b"),
			"background_bottom": Color("431a1a"),
			"surface": Color("331515"),
			"surface_alt": Color("5a2626"),
			"accent": Color("e76c5d"),
			"accent_soft": Color("8e3d37"),
			"text": Color("fff0ee"),
			"muted": Color("dfb7b1"),
			"glow": Color("f37c6b")
		}
	}
}

static var ARTICLES := {
	"demons": [
		{
			"id": "imp",
			"icon": "✶",
			"name": "Imp",
			"summary": "A cunning lesser demon no taller than a child, the imp thrives on mischief, sabotage, and whispered bad ideas, serving as the first scouts of infernal influence in the mortal world.",
			"content": [
				"Imps are among the lowest-ranking demons in the infernal hierarchy, yet they are often the most commonly encountered. They are small fiends, rarely standing taller than two feet, with leathery wings, barbed tails, and sharp features that shift between unsettling and almost comically grotesque. Their eyes burn with a dim, knowing light, and their grins carry the weight of secrets they should not possess. Despite their diminutive stature, no experienced adventurer dismisses an imp lightly.",
				"Their appearance varies across traditions but almost always includes bat-like wings, clawed hands, and skin that ranges from deep red to charcoal grey. Some imps sprout small horns; others have forked tongues or vestigial spines running down their backs. They are built for stealth and speed rather than confrontation, capable of perching unseen on rafters, slipping through cracked windows, and vanishing into shadow at the first hint of discovery.",
				"Imps are most known for their role as familiars, spies, and tempters. A warlock who strikes a pact with a greater fiend may receive an imp as both a servant and a monitor, a creature that obeys commands while quietly reporting back to its true master. In settlements, imps sow discord by whispering suggestions to the already frustrated, nudging grudges toward violence and suspicion toward betrayal. They do not create conflict so much as accelerate what was already simmering.",
				"From an imp's point of view, the mortal world is an endless game of leverage. They live to gather information, identify weakness, and trade favors. Their existence in the infernal courts is precarious; they survive by being useful to demons far more powerful than themselves. An imp that fails its patron may be devoured, unmade, or reassigned to some forgotten corner of the abyss. This pressure makes them resourceful, paranoid, and deeply opportunistic.",
				"Their greatest struggle is irrelevance. Imps are easily overlooked, easily replaced, and rarely respected by the greater fiends they serve. They compensate with cunning, hoarding secrets as currency and playing rival demons against one another when they can. An imp that manages to corrupt a mortal soul or engineer a significant betrayal may earn a promotion in the infernal ranks, but most spend centuries in thankless service.",
				"What makes imps dangerous is not power but persistence. They watch, they learn routines, and they strike where a household, a guild, or a warband is already vulnerable. Their strengths lie in invisibility, patience, and an almost supernatural talent for finding the exact words that will push a wavering person over the edge.",
				"Imps have no single nemesis, but they fear celestial agents, particularly minor angels and temple guardians tasked with detecting infernal corruption. Holy wards, consecrated ground, and priests trained in exorcism can all drive an imp out or destroy it. They also clash with fey tricksters, whose chaotic magic often disrupts the careful schemes imps spend weeks constructing.",
				"When an imp appears in a region, it is rarely an isolated event. Their presence signals that a greater infernal power has taken an interest. A pact has been struck, a curse has been laid, or a gate between worlds is thinning. Wise communities treat an imp sighting the way sailors treat a drop in pressure before a storm: not as the danger itself, but as proof that the real danger is already on its way."
			]
		},
		{
			"id": "balor",
			"icon": "⚔",
			"name": "Balor",
			"summary": "A towering war-demon wreathed in living flame, the balor commands infernal legions with an iron will and a molten blade, arriving only when a conflict is meant to end in total devastation.",
			"content": [
				"Balors are the supreme generals of the infernal armies, entities of such raw destructive power that their very names are often sealed away in protected texts. They are not mere demons; they are living siege engines, beings whose existence is defined by conquest, annihilation, and the absolute dominion of the strong over the weak. When a balor takes the field, the nature of a war changes from a contest into a catastrophe.",
				"In appearance, a balor is terrifying beyond measure. They stand between twelve and twenty feet tall, with bodies of dense, scorched muscle wrapped in skin that cracks and glows like cooling magma. Enormous bat-like wings spread wide enough to blot out torchlight, and their faces are crowned with swept-back horns that glow white-hot at the tips. They wield weapons forged in the deepest pits of the abyss: a multi-tailed whip of living fire in one hand and a greatsword of black iron that drips molten slag in the other. The air around a balor shimmers with heat, and lesser creatures that stand too close may simply ignite.",
				"Balors are most known for their role as battlefield commanders and agents of total war. They do not skulk, negotiate, or infiltrate. They arrive when an infernal lord has decided that a mortal stronghold, a celestial outpost, or a rival demon's territory must be ground to ash. Their tactical intelligence is fearsome; despite their appearance as brutes, balors understand formations, supply lines, morale, and the psychology of fear. They break enemy lines not just with fire but with precision.",
				"A balor's worldview is built on a rigid hierarchy of violence. Strength earns command; weakness earns destruction. They respect nothing except power demonstrated through action, and they despise cowardice, hesitation, and compromise in equal measure. Among their own legions, discipline is absolute. A balor's subordinates obey instantly or are made into examples. This is not cruelty for its own sake but a philosophy: in the abyss, mercy is a flaw that rivals will exploit.",
				"Their struggles are political as much as physical. Balors serve demon lords, and those lords are capricious, paranoid, and prone to punishing success as readily as failure. A balor that wins too many victories may be seen as a threat to its master's authority. One that loses may be tortured, stripped of rank, or banished to a dead layer of the abyss. Navigating the infernal court requires a balor to be as calculating as it is ferocious, always proving its value without outshining the lord it serves.",
				"Their strengths are nearly limitless in the physical realm. Fire resistance, immense physical power, flight, an aura of dread that shatters the morale of trained soldiers, and the ability to summon lesser demons to reinforce their legions. A balor's death is itself a weapon; when slain, many balors detonate in a violent explosion of hellfire that can level a fortress or incinerate an entire battalion.",
				"Balors consider celestial champions, archangels, and paladins of extraordinary conviction to be their true nemeses. These are the few beings capable of matching a balor's power while resisting its aura of terror. Ancient myths tell of duels between balors and solar angels that lasted for days and reshaped the landscapes where they fought.",
				"When a balor appears on a battlefield, the conflict has entered its final, most brutal phase. Walls crack, siege towers burn, and the defenders know that retreat, not victory, is the best outcome they can hope for. Entire kingdoms have fallen not because a balor destroyed them directly, but because the knowledge of its approach caused garrisons to desert and alliances to dissolve before the first blow was even struck."
			]
		},
		{
			"id": "succubus",
			"icon": "❦",
			"name": "Succubus",
			"summary": "A fiend of devastating beauty and sharper intellect, the succubus operates through seduction, emotional manipulation, and the slow corruption of trust, making her the most patient and insidious predator in the infernal ranks.",
			"content": [
				"The succubus occupies a unique and deeply unsettling place among demonkind. Where other fiends rely on claws, fire, or raw magical force, a succubus weaponizes intimacy. She is a predator that hunts through desire, trust, and the quiet vulnerabilities people reveal only to those they believe care about them. Her danger lies not in what she can destroy but in what she can make a person willingly surrender.",
				"A succubus can assume any pleasing form, but her true appearance is both alluring and faintly wrong. Flawless skin carries an unnatural warmth. Eyes that seem to shift color hold an attention that feels too precise, too studied. Small bat-like wings, curving horns, and a slender tail may appear in her natural state, though she rarely allows anyone to see it. Every detail of her chosen disguise is calculated; she becomes whatever her target's loneliness, ambition, or grief needs her to be.",
				"Succubi are most known for their ability to drain life force through physical contact and emotional dependency. A victim may not realize anything is wrong for weeks or months. They simply feel tired, distracted, increasingly unable to focus on anything except the succubus and the comfort she provides. By the time the trap is visible, the victim has already alienated allies, broken oaths, or handed over secrets that cannot be taken back.",
				"From a succubus's perspective, mortals are fascinating, fragile puzzles. She studies a target the way a scholar studies a text: reading habits, insecurities, unspoken desires, old wounds that never fully healed. Her work is not rushed. A succubus may spend months building a relationship before extracting anything of value. She takes genuine pleasure in the craft of manipulation, and some accounts suggest that certain succubi develop a complicated, possessive attachment to their most interesting targets.",
				"Their greatest struggle is the contempt they face within infernal society. Despite their effectiveness, succubi are often dismissed by martial demons as weak, decadent, or beneath serious consideration. Balors and pit fiends view seduction as a lesser art compared to open warfare. This prejudice forces succubi to work harder to prove their worth, often by delivering results that brute force alone could never achieve: toppled kingdoms, shattered alliances, holy champions fallen from grace.",
				"A succubus's strengths are her adaptability, her patience, and her near-perfect ability to read people. She can shift her shape, charm weak-willed individuals with a glance, resist most physical attacks, and teleport away from danger. But her most potent weapon is information. A succubus who has spent months inside a royal court knows every secret affair, every buried scandal, every loyalty that exists only on the surface.",
				"Her natural enemies are clerics and paladins whose divine insight can pierce her disguises, and warlocks or wizards skilled enough to detect charm effects. Celestial beings, particularly angels devoted to truth and revelation, are her most dangerous nemeses. A succubus will go to extraordinary lengths to avoid a direct confrontation with such opponents, preferring to undermine them through their mortal allies instead.",
				"When a succubus has been operating in a community, the signs are subtle but devastating. Key leaders make inexplicable decisions. Old friendships dissolve into suspicion. A once-stable court begins to fracture along lines of jealousy and paranoia. By the time her presence is discovered, the damage is structural, woven into relationships and decisions that cannot simply be undone by banishing her. The corruption she leaves behind often outlasts her by generations."
			]
		}
	],
	"ghosts": [
		{
			"id": "banshee",
			"icon": "☾",
			"name": "Banshee",
			"summary": "A mourning spirit bound to ancient bloodlines, the banshee's piercing wail heralds inevitable loss, serving as both a harbinger of death and a tragic reminder of grief that refuses to let go.",
			"content": [
				"The banshee is one of the most deeply rooted spirits in fantasy and folklore, a figure whose name alone has become synonymous with doom. She is not a random haunting or a restless shade; she is tied to lineage, to old families, and to promises that were broken so profoundly that grief itself took form and refused to dissipate. A banshee does not choose her victims at random. She appears because blood demands it.",
				"In appearance, a banshee is harrowing. She manifests as a gaunt, pale woman with hollow eyes that weep tears of silver or black ichor. Her hair is long, wild, and often described as moving on its own, as though caught in a wind that touches nothing else. She wears tattered robes or burial shrouds, and her mouth, when opened for the wail, stretches far wider than any living jaw should allow. Some accounts describe her as beautiful in a ruined way, as though she was once radiant before centuries of mourning consumed her from within.",
				"Banshees are most known for their fatal cry, a sound that is not merely loud but existentially wrong. It bypasses armor, wards, and even courage. Those who hear it at full force do not simply die from shock; something deeper collapses, as though the wail severs the will to continue living. Weaker versions of the cry cause paralysis, despair, or a haunting sadness that lingers for days. Even those who survive an encounter often report nightmares and an inability to feel joy for weeks afterward.",
				"A banshee's existence is defined by duty and sorrow. She haunts because she must, bound to a family line by love, betrayal, or a death oath that predates living memory. Some banshees were mothers who lost children, lovers who were abandoned, or matriarchs who watched their houses fall to ruin. They do not kill out of malice; they announce what fate has already decided. In their own tragic worldview, they are messengers, not murderers.",
				"Their struggle is eternal and unresolvable. A banshee cannot move on because the grief that created her has no remedy. The family she mourns may have died out centuries ago, yet she continues to wail at the ruins of their ancestral home. Some banshees are dimly aware that their vigil is pointless, which only deepens their anguish. They are trapped in a cycle of loss that has no ending, no forgiveness, and no peace.",
				"Despite their sorrowful nature, banshees possess formidable supernatural strengths. Their wail can kill or incapacitate, they can pass through solid walls, they are immune to most physical weapons, and their presence chills the air and dims light sources. Some banshees can also project visions of past tragedies into the minds of the living, forcing intruders to experience the grief that created the spirit in the first place.",
				"Banshees are opposed by priests and exorcists who specialize in ancestral hauntings, and by celestial spirits tasked with guiding the dead to rest. Certain fey beings, particularly those tied to healing and renewal, are also counted among their nemeses, as their magic can sometimes soothe the grief that sustains a banshee's existence. Breaking the cycle usually requires resolving the original tragedy, fulfilling a forgotten promise, or reuniting the banshee with whatever she lost.",
				"When a banshee's wail echoes through a valley or a crumbling estate, the message is unmistakable: someone connected to her bloodline is about to die, or already has. Communities near banshee-haunted sites learn to read the signs. Dogs howl without cause, candles gutter in still air, and a bone-deep cold settles over the landscape. Those who hear the wail and survive carry the knowledge that death passed close enough to touch them, and that the grief of the dead is a force as real and enduring as stone."
			]
		},
		{
			"id": "poltergeist",
			"icon": "✷",
			"name": "Poltergeist",
			"summary": "A volatile, invisible haunting that expresses buried rage and unresolved anguish through violent telekinetic outbursts, turning any inhabited space into a chaotic and dangerous battleground.",
			"content": [
				"Poltergeists are among the most disruptive and misunderstood spirits in the supernatural world. Unlike solemn ghosts that drift through corridors or banshees that wail from a distance, a poltergeist makes its presence known through action. Doors slam without warning. Plates launch themselves from shelves. Furniture rearranges itself or stacks into impossible towers. A poltergeist does not haunt quietly; it erupts, turning a home, an inn, or a barracks into an unpredictable and often terrifying environment.",
				"Poltergeists are rarely seen directly, which makes them uniquely frightening. They are invisible forces, known only by their effects. Occasionally, witnesses report flickering shapes, a distortion in the air like heat shimmer, or a brief glimpse of a twisted face pressed against a wall or reflected in shattered glass. Some poltergeists can produce sounds: laughter, screaming, the repetition of a phrase or name associated with their origin. But their primary language is violence against objects and the space around them.",
				"They are most known for their raw telekinetic power and their complete unpredictability. A poltergeist can be dormant for days, then explode into a frenzy that lasts hours. Kitchen knives fly across rooms, heavy wardrobes topple, and fires ignite in fireplaces that were cold moments before. The intensity often escalates over time; early signs might be as subtle as a misplaced book or a drawer that will not stay closed, but left unchecked, a poltergeist can make a building genuinely uninhabitable.",
				"The origin of a poltergeist is debated even among experts. Some traditions hold that they are the ghosts of people who died in sudden violence or profound frustration, souls so consumed by rage that they cannot form a coherent apparition and instead lash out blindly. Others believe poltergeists are not ghosts at all but psychic disturbances generated by a living person under extreme emotional stress, particularly adolescents, prisoners, or the recently bereaved. Both explanations carry weight, and the truth may vary from case to case.",
				"A poltergeist's deepest struggle is expression. If it was once a person, it has lost the ability to communicate in any way except destruction. It cannot speak its name, explain its grievance, or ask for help. All of its anguish, confusion, and fury is channeled into the only action still available to it: breaking things. This makes poltergeists pitiable as well as dangerous, spirits trapped in a scream they cannot shape into words.",
				"Their strength lies in their invisibility, their relentless energy, and their ability to weaponize any environment. A poltergeist in a kitchen is surrounded by knives and hot liquids. One in a library can bury intruders under cascading shelves. One in a smithy can hurl white-hot iron. They are also extremely difficult to banish because they often lack a clear anchor, no grave, no object, no unfinished business that can be neatly resolved.",
				"Poltergeists are countered by exorcists, psychic mediums, and clerics trained in spirit pacification. Their nemeses include calm, empathic presences that can absorb emotional turmoil without reflecting it back. Aggressive confrontation often makes a poltergeist worse; the most effective approach is usually to identify the emotional source, whether a restless spirit or a living person in crisis, and address the underlying pain.",
				"When a poltergeist takes hold of a location, the effects ripple outward. Neighbors hear crashes at odd hours. Visitors leave shaken and refuse to return. The inhabitants themselves may become paranoid, sleep-deprived, and increasingly unstable, which in turn feeds the poltergeist's energy. Left unresolved, a poltergeist haunting can drive families apart, collapse businesses, and leave buildings abandoned for decades, marked in local memory as places where the walls themselves turned hostile."
			]
		},
		{
			"id": "wraith",
			"icon": "⬖",
			"name": "Wraith",
			"summary": "A malevolent spirit forged from violent death and sustained by hatred, the wraith drains warmth, hope, and life force from the living, existing as a shadow of pure negation that corrupts everything it touches.",
			"content": [
				"Wraiths represent what happens when a soul is denied rest for so long that everything human about it erodes away. What remains is hunger, malice, and a darkness so concentrated that it seems to have physical weight. A wraith is not a ghost with unfinished business or a spirit mourning its former life. It is the end stage of spiritual decay, a being that has forgotten who it was and now exists only to extinguish the vitality it can no longer possess.",
				"A wraith's appearance is a silhouette of absence. It manifests as a hooded or cloaked figure composed entirely of shadow, deeper and darker than natural darkness. Within the cowl, there may be the suggestion of a face, hollow eyes that burn with cold light, a mouth that opens but produces no sound. Its body trails off into wisps of black mist at the edges, and it moves by gliding, never touching the ground. Light dims in its presence, fires shrink, and breath clouds in the air even on warm nights. Looking directly at a wraith often produces a nauseating sense of vertigo, as though staring into a void that stares back.",
				"Wraiths are most known for their life-draining touch. Physical contact with a wraith does not wound in the conventional sense; instead, it siphons vitality directly from the victim's essence. Survivors describe the sensation as a sudden, crushing despair accompanied by intense cold, as though years of their life were pulled out through their chest. Prolonged exposure can age a person visibly, and those killed by a wraith often rise as lesser undead spirits, perpetuating a cycle of corruption.",
				"A wraith's existence is defined by negation. It does not build, communicate, or create. It drifts through places where death was concentrated: ancient battlefields, plague roads, execution grounds, and forgotten prisons. It is drawn to expressions of life, laughter, firelight, warmth, and love, because these are the things it has been permanently severed from. A wraith does not attack out of strategy or purpose; it attacks because the presence of the living is an unbearable reminder of what it has lost.",
				"The wraith's deepest struggle is its own emptiness. Unlike a ghost that retains fragments of identity, a wraith has been hollowed out. It cannot remember its name, its loved ones, or the circumstances of its death. It exists in a state of perpetual, formless anguish, unable to articulate what it needs or understand why it continues. Some scholars theorize that wraiths are in constant pain, and that their aggression toward the living is less predatory and more the reflexive lashing out of a creature that knows nothing except suffering.",
				"Their strengths make them among the most feared incorporeal undead. Wraiths are immune to non-magical weapons, resistant to most elemental magic, and capable of passing through solid matter at will. They can suppress light sources, create zones of unnatural cold, and their touch can weaken even the hardiest warriors. Perhaps most dangerously, wraiths can create spawn; mortals slain by a wraith's drain may rise within hours as lesser wraiths bound to their killer, building a pack of shadow predators that grows with every victim.",
				"Wraiths are opposed by radiant magic, divine power, and artifacts specifically consecrated to combat undead. Paladins, sun clerics, and celestial beings are their primary nemeses. Sunlight does not destroy most wraiths outright but weakens them significantly and restricts their movement. Powerful turn undead abilities can scatter or temporarily banish them, and the most potent holy relics can sever the dark energy that sustains them entirely.",
				"When a wraith appears in a region, the signs are unmistakable. Livestock die without visible cause. Travelers on night roads are found drained and aged beyond recognition. Fires burn lower each evening, and a pervasive, irrational dread settles over the populace. If the wraith is not dealt with quickly, it will create spawn, and a single wraith becomes a plague of shadows that can depopulate a village, a fort, or an entire stretch of countryside in a matter of weeks."
			]
		}
	],
	"goblins": [
		{
			"id": "goblin",
			"icon": "✦",
			"name": "Goblin",
			"summary": "A small, green-skinned scavenger and raider with a genius for traps, improvisation, and survival against odds that would crush larger, prouder creatures, forming chaotic but resilient communities in the margins of civilization.",
			"content": [
				"The common goblin is one of fantasy's most versatile and enduring creatures, appearing in nearly every tradition from Tolkien-inspired high fantasy to grimdark survival worlds. They are small, rarely taller than three or four feet, with wiry frames built for speed rather than strength. Goblins are survivors above all else, creatures that have been beaten, scattered, and pushed to the edges of every map, yet somehow always persist.",
				"Goblins are immediately recognizable. They have large, pointed ears, wide eyes that see well in darkness, sharp teeth in mouths that seem too wide for their faces, and skin that ranges from pale green to a muddy ochre. Their posture is hunched and alert, always scanning for threats or opportunities. They dress in scavenged armor, mismatched leather, stolen tabards, and helmets that rarely fit. Every goblin carries at least one improvised weapon or tool, often cobbled together from materials that should not work but somehow do.",
				"They are most known for their traps, their numbers, and their sheer audacity. A goblin war party attacks in waves, using noise, fire, and confusion to overwhelm targets before defenders can organize. Their lairs are mazes of pitfalls, tripwires, collapsing tunnels, and cages designed to separate intruders from each other. What goblins lack in individual combat prowess, they compensate for with cunning, coordination, and a willingness to fight dirty that would make a seasoned mercenary uncomfortable.",
				"Goblin society is chaotic but functional. Tribes are led by the loudest, cleverest, or most ruthless member, and leadership changes frequently through challenges, betrayals, or simple shouting matches. Despite the apparent disorder, goblin communities maintain a rough economy of barter, a system of lookouts and warning drums, and oral traditions passed down through frantic, exaggerated storytelling. They value resourcefulness above all else; a goblin who can turn a broken cart wheel into a shield or brew a passable poison from cave moss earns genuine respect.",
				"Their greatest struggle is the contempt of the larger world. Goblins are treated as vermin by most civilized races, hunted for bounties, driven from fertile land, and denied any recognition of their culture or intelligence. This constant pressure shapes their worldview into deep suspicion of outsiders and a fierce, often desperate loyalty to their own tribe. Many goblins believe, not without reason, that the bigger races will never see them as anything more than pests to be exterminated.",
				"Goblin strengths are numerous despite their small stature. Their darkvision gives them an advantage underground and at night. They breed quickly, recover from setbacks faster than almost any other species, and their tolerance for squalid conditions means they can thrive in environments that would defeat larger creatures. They are also remarkably adaptable, picking up new skills and technologies by observing and stealing from others rather than inventing from scratch.",
				"Goblins have many nemeses, including adventurers seeking easy bounties, dwarves whose underground territories they encroach upon, and the hobgoblins who view common goblins as expendable foot soldiers to be conscripted and disciplined. Wolves, hawks, and other predators also take a steady toll on goblin populations, particularly on scouts and foraging parties.",
				"When goblins appear near a settlement, it usually means the surrounding wilderness has shifted. A goblin tribe moves into an area either because something worse has pushed them out of their old territory, or because they have grown large enough to need new resources. Either way, border villages learn to read the signs: livestock going missing, crude warning totems appearing at crossroads, and the distant sound of drums echoing from caves that were silent last season. Ignoring these signs is rarely wise, because a goblin tribe left unchecked will grow bolder, more organized, and far more difficult to dislodge."
			]
		},
		{
			"id": "hobgoblin",
			"icon": "⛨",
			"name": "Hobgoblin",
			"summary": "A disciplined, militaristic goblinoid soldier forged by rigid hierarchy and relentless training, the hobgoblin transforms the chaotic potential of goblin-kind into organized, methodical campaigns of conquest and territorial expansion.",
			"content": [
				"Hobgoblins are what happens when goblinoid cunning is refined by iron discipline and martial tradition. They are larger than common goblins, standing between five and six feet tall, with broader shoulders, thicker limbs, and a bearing that communicates authority. Where goblins swarm and scatter, hobgoblins march. Where goblins improvise, hobgoblins drill. They represent the organized, military face of goblinoid civilization, and they are far more dangerous than their smaller cousins precisely because they are patient, strategic, and relentless.",
				"In appearance, hobgoblins are imposing and utilitarian. Their skin tones range from dark orange to a deep, bruised red. Their features are flat and hard, with heavy brows, prominent jaw muscles, and eyes that assess everything with tactical precision. They keep their gear in excellent condition, armor is maintained, weapons are sharpened, and ranks are marked by standardized insignia. A hobgoblin camp is immediately distinguishable from a goblin warren by its order: straight tent lines, posted sentries, designated latrine areas, and a command tent at the center.",
				"Hobgoblins are most known for their military efficiency and their ability to wage sustained campaigns. They do not raid and retreat like goblins; they advance, hold territory, build fortifications, and press further. Their armies include specialized units: archers, pike lines, cavalry mounted on worgs or war beasts, and engineering corps capable of constructing siege equipment in the field. A single hobgoblin legion can control a mountain pass, a river crossing, or a stretch of frontier for years.",
				"Hobgoblin culture is built on a code of martial honor that outsiders often mistake for simple brutality. They respect competence, endurance, and sacrifice for the unit above all personal ambition. Officers earn their rank through a combination of combat trial and demonstrated leadership, and they are expected to lead from the front. Cowardice is punished by death, but so is reckless bravery that wastes soldiers' lives. Every decision is measured against the question: does this serve the legion?",
				"Their deepest struggle is the tension between expansion and sustainability. Hobgoblin empires tend to grow aggressively, absorbing territory and conscripting goblin and bugbear populations as auxiliary forces. But their rigid hierarchy struggles to govern diverse populations over long periods. Rebellions, supply line failures, and the sheer administrative burden of holding conquered land have toppled more hobgoblin warlords than enemy armies ever have. They are brilliant at taking territory and often mediocre at keeping it.",
				"Hobgoblin strengths include exceptional physical conditioning, lifetime martial training, strategic intelligence, and a logistical system that keeps armies fed and equipped over long marches. They are also resistant to fear and morale breaks, trained from childhood to treat panic as a choice that can be refused. In battle, hobgoblin units maintain formation under conditions that would scatter less disciplined forces.",
				"Their traditional nemeses are dwarven kingdoms, which match their discipline and exceed their fortification skills, and elven forces, whose magical superiority and mobility neutralize hobgoblin's advantages in set-piece battles. Human kingdoms that invest in professional standing armies are also serious threats, as they can match hobgoblin organization while fielding more diverse forces.",
				"When a hobgoblin legion enters a region, the change is not subtle. Scouts map every road and water source. Patrols begin intercepting travelers. Border villages receive ultimatums: submit and pay tribute, or be besieged. Within weeks, a disciplined occupation transforms the landscape. Farms produce for the legion, smithies forge hobgoblin weapons, and the local population discovers that their new rulers are not interested in cruelty for its own sake, only in absolute, efficient control."
			]
		},
		{
			"id": "bugbear",
			"icon": "⬟",
			"name": "Bugbear",
			"summary": "A hulking goblinoid ambush predator that combines alarming physical power with unnatural stealth, lurking in shadows and high places with the patience of a hunting cat before striking with devastating, calculated violence.",
			"content": [
				"Bugbears occupy the unsettling intersection between brute force and stealth, a combination that should not work but does with terrifying effectiveness. They are the largest of the common goblinoid races, standing over six feet tall with thick, muscular builds that look built for open combat. Yet a bugbear's preferred method is the ambush: waiting in shadow, in tree canopies, or in the rafters of a ruined building until a target passes below, then dropping with crushing, silent precision.",
				"A bugbear's appearance reinforces this contradiction. They are covered in coarse, dark fur that ranges from tawny brown to deep black, which helps them blend into forested or dimly lit environments. Their faces are broad and somewhat flat, with wide-set eyes that reflect light like a predator's and oversized ears that track sound with remarkable sensitivity. Their hands are enormous, with thick fingers that can crush bone or manipulate a lock with equal ease. Despite their bulk, they move with a deliberate, almost feline grace that unsettles anyone who watches them closely.",
				"Bugbears are most known for their ambush tactics and their ability to remain hidden despite their size. They can hold perfectly still for hours, controlling their breathing and blending into terrain that should not conceal a creature their size. When they strike, it is sudden and overwhelming. A bugbear attack typically begins and ends before the target fully understands what happened: a massive arm around the throat, a club to the back of the skull, a body dragged silently into darkness.",
				"Bugbear culture, such as it exists, revolves around the hunt. They live in small bands rather than large tribes, preferring loose hierarchies where the most successful hunter leads. They are not territorial in the way hobgoblins are; instead, they follow prey and opportunity, establishing temporary camps in caves, ruins, or dense forest before moving on. Their worldview is deeply pragmatic. They eat what they kill, take what they need, and see no value in accumulating what cannot be carried.",
				"Their greatest struggle is isolation. Bugbears are too independent for hobgoblin legions, too violent for goblin tribes, and too feared by most other races to form lasting alliances. They exist on the margins of goblinoid society, called upon as shock troops or assassins when needed and otherwise left alone. Some bugbears embrace this solitude, becoming genuinely reclusive hunters who avoid contact with all other creatures. Others resent it, dimly aware that their nature makes belonging to any community nearly impossible.",
				"A bugbear's strengths are formidable. Their physical power exceeds most humanoids of similar size, their stealth is supernaturally effective, and they can deliver devastating ambush strikes that end fights before they begin. They are also surprisingly durable, shrugging off wounds that would incapacitate smaller creatures, and their night vision is excellent. In tight quarters, caves, narrow corridors, or dense undergrowth, a bugbear is among the most dangerous opponents any adventurer can face.",
				"Bugbears are opposed primarily by rangers, druids, and trackers who know the wild well enough to recognize their signs: oversized footprints that appear and vanish impossibly, claw marks on tree trunks at unusual heights, and kill sites where prey was dispatched with a single, clean blow. Elven scouts, with their sharp senses and familiarity with forest environments, are traditional bugbear nemeses. Hobgoblin commanders also view uncontrolled bugbears as liabilities and sometimes hunt down bands that refuse conscription.",
				"When bugbears move into a territory, the first sign is usually silence. Game animals become scarce. Birdsong stops in certain stretches of forest. Woodcutters and hunters begin finding tracks they cannot identify and experiencing the persistent, animal certainty that something is watching them. Livestock vanishes overnight without a sound. By the time a community realizes bugbears have arrived, they have already mapped every path, identified every routine, and chosen their first targets."
			]
		},
		{
			"id": "nilbog",
			"icon": "⟲",
			"name": "Nilbog",
			"summary": "A chaos-haunted goblin trickster possessed by a spirit of inversion and absurdity, the nilbog warps reality around itself, turning punishment into reward, combat into farce, and every attempt at order into slapstick catastrophe.",
			"content": [
				"The nilbog is one of the strangest and most frustrating entities in goblinoid lore, a creature that defies the rules that every other monster follows. It appears as an ordinary goblin, perhaps a little more wild-eyed, a little more unpredictable, but otherwise indistinguishable from its kin. The difference is inside. A nilbog is inhabited by a spirit of reversal, an entity that inverts cause and effect, turning the expected outcome of any action into its opposite. Fighting a nilbog does not work the way fighting anything else does, and that is precisely the point.",
				"Visually, a nilbog looks like any other goblin, though its behavior quickly sets it apart. It wears its clothing backward or inside out. It laughs when struck and winces when praised. It walks in zigzag patterns, speaks in contradictions, and decorates itself with objects that have no logical connection: a crown made of fish bones, a belt of broken hourglasses, a cape stitched from opponents' wanted posters. Its eyes carry a manic, gleeful intensity that makes even other goblins uncomfortable.",
				"Nilbogs are most known for the inversion effect that surrounds them. Healing spells deal damage. Attacks restore hit points. Insults boost morale. An adventurer who swings a sword at a nilbog may find the goblin growing stronger with each hit while cackling with delight. This effect is not under the nilbog's conscious control; it is the nature of the possessing spirit. Everything around a nilbog tends toward absurdity, reversal, and the humiliation of anyone who relies on brute force or rigid logic.",
				"The nilbog spirit is ancient and poorly understood. Some scholars believe it is a fragment of a trickster god that shattered long ago, its pieces drifting through the world and occasionally settling into goblin hosts. Others think it is a form of wild magic, a reality glitch that manifests in creatures chaotic enough to contain it without being destroyed. The goblin host is usually unaware that it has been possessed; it simply feels luckier, funnier, and more important than every goblin around it. The tribe, for its part, treats the nilbog with a mix of reverence and dread.",
				"A nilbog's struggle is paradox itself. It cannot be defeated by conventional means, but it also cannot fully control its own power. The spirit of inversion does not distinguish between enemies and allies, which means the nilbog's own tribe sometimes suffers from reversed effects. Food tastes wrong, fires freeze instead of burning, and attempts to fortify a camp may result in walls that collapse inward. The nilbog is powerful but inherently destabilizing, a living contradiction that makes everything around it unreliable.",
				"The nilbog's strengths are entirely unconventional. It is effectively impervious to direct attacks, immune to intimidation, and capable of turning any confrontation into chaos. It can force opponents to act against their own interests, compelling them to praise and reward it through magical suggestion. The spirit also grants a kind of supernatural luck; events bend around the nilbog in absurd ways, traps miss, ambushes go wrong, and carefully laid plans unravel into slapstick.",
				"Nilbogs have no nemeses in the traditional sense, but they are vulnerable to opponents who embrace the absurdity rather than fighting it. Clever adventurers learn that treating the nilbog with mock reverence, showering it with sarcastic compliments, or simply refusing to engage in combat can short-circuit its inversion magic. Fey creatures, particularly those aligned with deeper and more deliberate forms of trickery, sometimes view nilbogs as crude competitors and work to neutralize them. Certain anti-magic effects can also suppress the possessing spirit, temporarily making the nilbog an ordinary, very confused goblin.",
				"When a nilbog appears in a goblin tribe, the effects are immediate and destabilizing. The tribe becomes unpredictable, launching raids that make no tactical sense but somehow succeed through sheer improbability. Defenders find their strategies reversed: reinforced gates swing open on their own, fire arrows extinguish themselves in flight, and elite soldiers trip over their own boots. Dealing with a nilbog-possessed tribe requires abandoning conventional military thinking entirely, which is precisely the challenge that makes them so dangerous."
			]
		}
	],
	"undead": [
		{
			"id": "skeleton",
			"icon": "☠",
			"name": "Skeleton",
			"summary": "The most fundamental and iconic undead servant, a framework of animated bone stripped of flesh and identity, driven by necromantic command to serve as tireless soldiers, guardians, and grim reminders of death's reach.",
			"content": [
				"Skeletons are the foundation upon which all undead lore is built. They are death in its most stripped-down, elemental form: a human body reduced to its structural minimum, then forced back into motion by magic, curse, or the sheer refusal of the grave to hold what was buried. Every fantasy world that includes the undead eventually arrives at the skeleton, because no other creature communicates the violation of death's natural order with such stark, immediate clarity.",
				"A skeleton's appearance needs little embellishment to be effective. Bare bone, hollow eye sockets, and the silent clatter of joints moving without muscle or tendon. Some skeletons retain fragments of their former lives: rusted armor still strapped to ribcages, broken weapons fused to finger bones, or heraldic tabards hanging in tatters from shoulder blades. Others are stripped clean, anonymous, reduced to a universal symbol of mortality. The most unnerving detail is often the jaw, hanging loose or fixed in a permanent, mirthless grin.",
				"Skeletons are most known for their role as the foot soldiers of necromancy. They are the first creatures a novice necromancer learns to raise and the last ones a lich sends into expendable situations. They follow orders with mechanical precision, feeling no pain, no fear, and no hesitation. A skeleton will march into fire, walk off a cliff, or stand motionless in a corridor for centuries, waiting for an intruder that may never come. This obedience makes them invaluable and deeply unsettling in equal measure.",
				"A skeleton has no point of view in the traditional sense. Most are entirely mindless, puppets of the magic that sustains them. However, some settings introduce skeletons that retain faint echoes of their former lives, a soldier skeleton that still salutes, a musician skeleton whose finger bones tap rhythms on its femur, a guard skeleton that patrols the same route it walked in life. These remnants are not consciousness but muscle memory etched into bone, and they are often more disturbing than outright malice would be.",
				"The skeleton's struggle, if it can be called that, is existential. It is a body without a self, an action without a will. In settings where the soul persists after death, the skeleton raises uncomfortable questions: is the original soul aware that its bones are being used? Does it suffer? Is the skeleton a desecration or merely recycling? These questions give the skeleton thematic weight far beyond its simple appearance and make it a lens for exploring how a world treats death, burial, and the boundaries between person and property.",
				"Skeleton strengths are practical rather than spectacular. They do not tire, do not eat, do not sleep, and do not fear. They can function in environments lethal to the living: underwater, in toxic gas, in total darkness, and in extreme cold. They are resistant to piercing weapons, which pass between bones, and to mind-affecting magic, which has nothing to target. In large numbers, they can overwhelm defenders through sheer attrition, fighting until physically broken apart.",
				"Skeletons are opposed by divine magic, which disrupts the necromantic energy sustaining them, and by bludgeoning weapons, which shatter bone far more effectively than blades do. Clerics and paladins are their primary nemeses, capable of turning or destroying skeletons with channeled holy power. Fire can also be effective against dry bone, and particularly old skeletons may be brittle enough to crumble from a single solid impact.",
				"When skeletons rise in a region, it signals a fundamental failure in the boundary between life and death. Graveyards erupt. Ancient battlefields stir. The dead emerge from cairns, barrows, and mass graves, assembling silently in the darkness. Communities near such events face not just a military threat but a spiritual crisis: the knowledge that their ancestors, their fallen soldiers, their buried loved ones have been stripped of rest and turned into weapons. Few things erode a society's morale faster than fighting an army made from its own dead."
			]
		},
		{
			"id": "lich",
			"icon": "✠",
			"name": "Lich",
			"summary": "A sorcerer who deliberately embraced undeath through forbidden ritual, preserving intellect, magical power, and obsessive purpose at the cost of humanity, becoming an immortal architect of ruin whose plans span centuries.",
			"content": [
				"The lich stands apart from all other undead because it chose this fate. Where zombies are victims and skeletons are tools, a lich is a scholar who looked at death, found it unacceptable, and spent decades mastering the darkest arts to circumvent it. The transformation is deliberate, calculated, and irreversible. A lich is not a monster that happened; it is a monument to the idea that knowledge and power matter more than mortality, empathy, or the natural order of the world.",
				"A lich's appearance reflects the centuries of undeath it has endured. The body is desiccated and skeletal, skin stretched thin as parchment over angular bones, eye sockets burning with points of cold light that shift color with the lich's mood: icy blue during contemplation, furious green during spellcasting, and a deep, arterial red when truly enraged. Most liches wear the robes and regalia of their living days, now faded and rotted but maintained through preservation magic. Rings of power crowd their bony fingers, and the air around them hums with barely contained arcane energy.",
				"Liches are most known for the phylactery, a soul vessel that makes them effectively immortal. When a lich's body is destroyed, its consciousness retreats to the phylactery and regenerates a new form over days or weeks. The only way to permanently destroy a lich is to find and destroy the phylactery first, a task that liches make astronomically difficult. Phylacteries are hidden in trapped vaults, pocket dimensions, the bellies of constructs, or locations so remote and hostile that reaching them is itself a legendary undertaking.",
				"A lich's worldview is defined by the obsession that drove it to seek immortality in the first place. Some liches were researchers pursuing a theorem they knew would take centuries to solve. Others were rulers who refused to relinquish power, or lovers who could not accept loss, or zealots who believed their vision was too important to die with them. Whatever the original motivation, undeath warps it into something absolute and unyielding. A lich does not compromise, does not reconsider, and does not grow. It pursues its goal with the inhuman patience of a creature that has literally all the time in the world.",
				"The lich's deepest struggle is the slow erosion of everything that once made it human. Emotions fade first: joy, compassion, humor, love. Then memories go, not the factual kind but the felt kind, the warmth of a friendship, the weight of a loss. Over centuries, a lich becomes a shell of intellect and will surrounding an emptiness where a person used to be. Some liches are dimly aware of this loss and mourn it in their own detached way. Most have simply forgotten that they ever felt anything at all.",
				"A lich's strengths are staggering. Centuries of uninterrupted study make them among the most powerful spellcasters in existence. They command vast libraries of spells, create custom enchantments, engineer magical traps of extraordinary complexity, and raise undead armies with a gesture. Their intellect is enhanced by the perfect recall that undeath provides; a lich remembers every spell it has ever learned, every conversation it has ever had, and every mistake it has ever witnessed. Combined with the strategic patience of immortality, this makes them opponents that can plan campaigns spanning generations.",
				"Liches are opposed by the most powerful forces of good in any setting: archmages, high priests, celestial champions, and the rare mortal heroes whose conviction and skill are extraordinary enough to pierce a lich's defenses. Ancient dragons, who share the lich's longevity and resent competition for territory, are also natural rivals. Some liches maintain long-running feuds with other liches, particularly those whose research goals conflict or whose territories overlap.",
				"When a lich's influence becomes apparent in a region, the signs are subtle at first but escalate rapidly. Magical anomalies appear: rivers flowing backward, crops growing in geometric patterns, weather that obeys no season. Scholars disappear. Ancient tombs are found broken open from the inside. Then the undead come, not in ragged hordes but in organized formations, led by death knights and commanded with strategic precision. By the time a kingdom realizes it is facing a lich, the lich has been preparing for this confrontation for decades, and every possible response has already been anticipated and countered."
			]
		},
		{
			"id": "ghoul",
			"icon": "⚉",
			"name": "Ghoul",
			"summary": "A ravenous undead predator driven by an insatiable hunger for the flesh of the dead and the living alike, the ghoul haunts graveyards, battlefields, and catacombs, spreading contagion and desecrating everything sacred about death and burial.",
			"content": [
				"Ghouls collapse the comfortable distance that civilized people maintain between the living and the dead. They are not silent haunts or obedient servants; they are hungry, active, and disturbingly intelligent predators that emerge from graves, crawl through charnel houses, and lurk at the edges of battlefields waiting for night to fall. A ghoul's existence is defined by a single, overwhelming drive: the need to feed on dead flesh, and when the dead are unavailable, the living will do.",
				"A ghoul's appearance is a grotesque parody of the person it once was. The body is gaunt and elongated, joints bending at wrong angles, spine curved into a permanent predatory crouch. The skin is pallid grey or a sickly, mottled green, stretched tight over visible tendons and bones. Fingers end in claws hardened to the density of iron, capable of tearing through coffin wood and packed earth. The face is the worst part: sunken cheeks, lips pulled back to expose teeth that have grown longer and sharper in death, and eyes that gleam with a feral, knowing intelligence that no mindless undead possesses.",
				"Ghouls are most known for their paralyzing touch and their desecration of burial sites. A ghoul's claws carry a supernatural venom that locks the victim's muscles rigid, leaving them fully conscious but completely unable to move. The paralysis can last minutes or hours, during which the victim is helplessly aware of what the ghoul is doing. Graveyards near ghoul-infested areas are found torn open, coffins splintered from above, and burial shrouds scattered like discarded wrapping. The systematic violation of funeral rites is often more traumatizing to communities than the physical danger.",
				"Unlike most undead, ghouls possess genuine cunning. They remember enough from life to set simple ambushes, avoid traps, and target isolated individuals rather than attacking groups. Some ghouls hunt in packs, coordinating to separate a victim from companions before closing in. They communicate through a guttural, clicking language that living scholars have struggled to translate, and they maintain crude hierarchies led by the oldest and most powerful among them, creatures sometimes called ghasts, whose stench alone can incapacitate.",
				"A ghoul's struggle is its appetite. The hunger is constant, gnawing, and impossible to satisfy for more than brief periods. Eating provides temporary relief but never fullness, driving ghouls into increasingly desperate and reckless behavior as starvation builds. Some ghouls try to resist the compulsion, particularly those recently turned who still retain strong memories of their former lives. These tragic figures haunt the edges of their old communities, simultaneously craving and horrified by the flesh of people they once knew.",
				"Ghoul strengths include their speed, their paralytic touch, their ability to dig through earth and stone with alarming efficiency, and their resistance to most mundane weapons. They are also remarkably durable; injuries that would be fatal to a living creature merely slow a ghoul down. Their intelligence distinguishes them from zombies and skeletons, making them unpredictable and adaptable opponents. In underground environments, catacombs, sewers, and natural cave systems, ghouls are supremely dangerous because they know every tunnel and crevice.",
				"Ghouls are opposed by clerics whose divine power can sear undead flesh, by paladins whose courage and holy weapons make them effective ghoul hunters, and by the rare individuals immune to paralysis. Elves, notably, are traditionally resistant to ghoul paralysis, which makes elven rangers valuable allies in ghoul-infested territories. Fire is also effective, as ghouls' dry, leathery bodies burn readily.",
				"When ghouls establish a presence near a settlement, the signs follow an escalating pattern. First, graves are disturbed, initially old ones, then increasingly recent burials. Pets and livestock disappear. Then travelers fail to arrive, found later in ditches with telltale claw marks and expressions of frozen terror. The community begins to fear its own cemetery, a profound psychological wound in cultures that honor their dead. If the ghoul population is not eliminated quickly, their numbers grow with every victim they claim, turning a local problem into a regional catastrophe that can empty whole districts of the living."
			]
		},
		{
			"id": "zombie",
			"icon": "◫",
			"name": "Zombie",
			"summary": "A corpse animated into relentless, shambling motion by plague, curse, or dark command, the zombie represents death's most terrifying quality: inevitability, arriving not with power or cunning but with numbers that simply never stop coming.",
			"content": [
				"The zombie is the most primal fear in undead lore: the dead getting back up. Not as spirits, not as skeletal frameworks, but as the recognizable remains of the person they were, bloated, rotting, and still moving. A zombie is a body that has forgotten how to stop, driven forward by magic, plague, or a curse that overrides the finality of death. Its horror is not in what it can do, which is limited, but in what it represents: the collapse of the boundary everyone depends on to feel safe.",
				"Zombies are immediately and viscerally disturbing to look at. They are corpses in various stages of decomposition: swollen, discolored, and leaking. Wounds sustained before or after death remain visible and open, gaping slashes, broken bones protruding through skin, missing limbs that do not stop the body from lurching forward. Their movements are stiff and graceless, a parody of walking that emphasizes how fundamentally wrong a moving corpse is. The smell precedes them, a thick, sweet rot that survivors describe as unforgettable.",
				"Zombies are most known for two things: their relentlessness and their numbers. A single zombie is a manageable threat for any armed and prepared individual. But zombies rarely appear alone. They come in groups, in waves, in tides of rotting flesh that press forward without regard for casualties, obstacles, or self-preservation. They do not flinch from fire, do not retreat from superior force, and do not stop until they are physically dismembered beyond the ability to move. This tireless advance is what makes them genuinely dangerous; they win not through strength but through the attrition of defenders who eventually tire, run out of arrows, or simply break under the psychological pressure.",
				"A zombie has no worldview, no culture, and no inner life. It is a body executing a simple directive: move toward the living and attack. Some zombies are controlled by a necromancer who issues specific commands; these are marginally more effective, used as guards, laborers, or expendable siege troops. Others are products of plague or curse, mindless and purposeless, wandering in the direction of the nearest sound or movement. In both cases, there is nothing left of the original person. The body is a tool; the will behind it belongs to whatever force raised it.",
				"If zombies have a struggle, it belongs to the living who must face them. The psychological toll of fighting zombies is staggering, especially when the zombies are recognizable. Soldiers cutting down shambling corpses that wear the faces of fallen comrades, a widow barricading her door against her husband's animated remains, a healer recognizing a patient they lost last week now clawing at the infirmary window. Zombies weaponize grief and attachment, turning love into a vulnerability and memory into torment.",
				"Zombie strengths are straightforward: they feel no pain, fear nothing, require no food, water, or rest, and they persist until physically destroyed. Headshots or decapitation are often effective, but settings vary on this point. In plague-origin scenarios, zombies also carry contagion; a bite or scratch can infect a living person, who will weaken, die, and rise again within hours or days. This exponential spread is what transforms a local incident into a civilization-ending event.",
				"Zombies are countered by fire, bludgeoning weapons, divine magic, and disciplined defensive formations that prevent them from overwhelming a position. Clerics and paladins can turn or destroy them with channeled holy energy. Their nemeses in a broader sense are the forces of order, sanitation, and community preparedness: walls, quarantines, burn protocols, and the willingness to make brutal decisions before infection can spread.",
				"When zombies appear in numbers, the transformation of a region is rapid and devastating. Roads become impassable. Outlying farms and villages fall silent. Refugees stream toward walled cities, carrying panic and sometimes infection with them. Markets collapse, temples overflow, and political authority fractures as leaders disagree on strategy. The zombie horde does not negotiate, does not tire, and does not stop growing. Every defender who falls is not just a loss but a reinforcement for the enemy. This grinding mathematics is a zombie apocalypse's true weapon: the certainty that time is not on your side."
			]
		}
	],
	"ogres": [
		{
			"id": "cave_ogre",
			"icon": "⛏",
			"name": "Cave Ogre",
			"summary": "A hulking subterranean brute with lantern-pale eyes and a miner's instinct for stone, the cave ogre rules lightless tunnels through ambush, echoing roars, and territorial violence.",
			"content": [
				"Cave ogres are the ogres of collapsed mines, dripping caverns, and underhalls abandoned by wiser peoples. They are not merely ogres who happen to live underground; over generations, the dark reshapes them into creatures that treat stone the way sailors treat weather, reading it, fearing it, and weaponizing it. In frontier lore, they are remembered as the thing deeper tunnels eventually become about.",
				"A cave ogre is broad even by ogre standards, with pale grey skin roughened like limestone and shoulders scarred by decades of squeezing through rock that should not accommodate something so large. Their eyes shine faintly in darkness, not with magic but with an animal sheen adapted to the black. Teeth are blunted from gnawing marrow and cave fungus as often as flesh, and their voices roll through chambers with enough force to shake dust from ceilings.",
				"They are most known for fighting by sound and terrain. A cave ogre will strike lanterns first, hurl loose stone from ledges above, and use tunnels too narrow for organized defenders to maneuver. Miners tell stories of hearing slow breathing in a shaft for hours before realizing the shaft itself was occupied by something waiting for the light to come closer.",
				"Cave ogres live like solitary tyrants or in small family pits clustered around water and fungus beds. They memorize tunnel networks with startling precision and often steal tools from dwarves, goblins, or desperate prospectors, not because they understand craftsmanship but because they understand utility. Their worldview is simple and territorial: the deep is hungry, and whoever can hold a chamber against that hunger deserves to keep it.",
				"Their greatest struggle is the same darkness that protects them. Cave ogres are sensitive to open sunlight, disoriented by wide horizons, and often half-blind on the surface. Cave-ins, bad air, and the scarcity of meat underground also keep them in a constant cycle of hunger, making them crueler and more volatile than surface ogres that can simply roam for prey.",
				"Their strengths are overwhelming in close quarters. They can see and hear well enough underground to track intruders through stone resonance, tear support beams apart with raw force, and fight through injuries that would cripple a human miner. In tunnels, a cave ogre's mass becomes an advantage; it turns corridors into choke points and uses its own body as a moving barricade.",
				"Dwarven delvers, veteran miners, and battle mages who specialize in light and force are their natural enemies. Fire alone is useful only if it can be kept burning long enough to deny the ogre darkness, but collapsing a ceiling or sealing a tunnel is often more effective than trying to duel one on its own ground. Burrowing monsters such as purple worms also keep cave ogre populations unstable by destroying dens without warning.",
				"When a cave ogre settles beneath a region, shafts go silent first. Pack mules refuse to descend, tools vanish from storage, and fresh stonefall appears where tunnels were sound the day before. If the problem is ignored, mining camps collapse, trade in ore and salt dries up, and whole settlements discover too late that the wealth beneath them now belongs to something stronger than law."
			]
		},
		{
			"id": "swamp_ogre",
			"icon": "☍",
			"name": "Swamp Ogre",
			"summary": "A mire-born giant swaddled in reeds, mud, and rot, the swamp ogre is an ambush hunter whose patience is as dangerous as its strength.",
			"content": [
				"Swamp ogres belong to marshes where the land itself resists trespass. They are creatures of black water, drowned timber, and warm fog, growing massive on fish, carrion, and anything foolish enough to pole a boat too far into the reeds. In folklore they are treated less like raiders and more like natural disasters with appetites.",
				"Their bodies are long-limbed and heavy-bellied, with skin the color of river mud and moss growing in old scars like a second pelt. Swamp ogres often braid reeds, bones, and bits of rivercraft into their hair, giving them the appearance of walking islands at a distance. Their smell is unforgettable: stagnant water, sour vegetation, and the copper hint of old blood.",
				"They are most known for rising out of water without warning. A swamp ogre can remain submerged with only its nostrils and eyes exposed, drifting like debris until prey is within reach. Ferrymen fear the sudden hand from the cattails, the pole that jerks sideways, and the sound of a flat-bottomed boat being cracked in half like dry bark.",
				"These ogres live in reed forts, mud mounds, or ruined watchtowers swallowed by marsh growth. They hoard practical things that survive wetness, nets, chains, hooks, cauldrons, and lengths of rope, and they understand the paths through a bog with a tracker’s intimacy. Their worldview is less territorial than opportunistic: the swamp feeds those willing to sink into it long enough.",
				"Their struggle is the instability of their own home. Floods drown food stores, insects bring fever, and even an ogre can be dragged under by deep peat or the jaws of older swamp predators. Hunger is constant in the marsh, and the swamp ogre's brutality comes partly from knowing that one bad season can turn it from hunter to carcass.",
				"Swamp ogres are strong swimmers, terrifying grapplers, and nearly impossible to track once they choose to vanish into mire. They throw logs instead of stones, can wade through ground that traps horses to the belly, and use the swamp's concealment better than many creatures use walls. Even a wounded swamp ogre remains dangerous because the terrain around it keeps favoring escape and counterattack.",
				"Rangers, marsh druids, and communities that know how to burn dry channels through wetlands are their best counters. Alchemical fire, elevated walkways, and scouts willing to read water movement can neutralize some of a swamp ogre's advantages. Crocodilian monsters and swamp witches also compete with them, and those rivalries can turn a marsh into a war zone of unseen predators.",
				"When a swamp ogre claims a bog, travel changes immediately. Barges start arriving late or not at all, fishing huts are found flattened into muck, and locals begin speaking of places on the water where even insects seem to go quiet. Leave it long enough, and a trade marsh becomes a dead marsh, mapped not by routes but by where boats disappear."
			]
		},
		{
			"id": "war_ogre",
			"icon": "⚒",
			"name": "War Ogre",
			"summary": "A siege-bred giant drilled for conquest rather than simple hunger, the war ogre turns brute force into battlefield doctrine under the command of tyrants, kings, and monster generals.",
			"content": [
				"War ogres are what happen when ogre strength is disciplined instead of merely feared. They are raised or broken into military service by ambitious chiefs, hobgoblin legions, cruel emperors, and any power arrogant enough to believe it can point a living battering ram in the right direction. Unlike wild ogres, they are remembered not for where they lair but for which walls they brought down.",
				"A war ogre is scarred, branded, and equipped for sustained violence. They wear fitted plates of scavenged iron, layered leather, and chain thick enough to turn arrows, often with helmets or face guards designed more to intimidate than protect. Their bodies carry the marks of training, whip scars, ritual cuts, and old fractures that healed crooked under the expectation that the ogre would be sent back to battle regardless.",
				"They are most known for siege work and shock assaults. War ogres drag towers, uproot stakes, wrench gates from hinges, and smash breaches wide enough for infantry to flood through. Veteran soldiers know the real terror is not the first impact but the discipline afterward, the way a war ogre keeps advancing through spears because someone behind it has taught it that stopping means punishment.",
				"Their lives are built around command structure. Some serve willingly in exchange for plunder, status, and regular food; others are enslaved, collared, or bound by oath magic. In either case, a war ogre learns the language of marching orders, drum signals, and battlefield hierarchy, understanding itself as part of an army rather than a solitary predator.",
				"Their deepest struggle is disposability. Commanders prize war ogres for their usefulness but rarely for their survival, sending them first into arrow storms and last away from collapsing fronts. Even successful war ogres age into masses of scar tissue and pain, and many eventually revolt because they realize too late that conquest enriches everyone around them more than it ever enriches them.",
				"Their strengths are obvious and practical: immense endurance, tolerance for pain, and training that makes them far more dangerous than ordinary ogres in formation warfare. They can wield beam-sized clubs, overturn cavalry, and continue functioning despite wounds that would kill lesser soldiers. Some armies further enhance them with stimulants, battle prayers, or crude armor enchantments.",
				"Pikemen, engineers, and disciplined mages are the classic answers to war ogres. Trenches, caltrops, kill corridors, and concentrated volleys work better than heroic duels. Their other enemies are political, commanders who fear an ogre becoming too popular with the rank and file often arrange convenient deaths before that strength can turn into rebellion.",
				"When war ogres appear in a campaign, everyone understands the scale of the conflict has changed. Villages on the frontier empty before the army arrives, forts double their gate braces, and rumors spread faster than scouts can ride. A host marching with war ogres is not planning to threaten a border; it is planning to erase one."
			]
		},
		{
			"id": "mountain_ogre",
			"icon": "△",
			"name": "Mountain Ogre",
			"summary": "A highland titan adapted to cliff, avalanche, and thin cold air, the mountain ogre rules passes and ledges through immense strength, brutal endurance, and a shepherd's knowledge of stone.",
			"content": [
				"Mountain ogres live above the tree line, where slopes are steep, weather is merciless, and ordinary armies lose strength before reaching the battlefield. They are the ogres of broken passes and snow-fed valleys, infamous for demanding tribute from caravans or simply taking it in the confidence that few survivors can climb back up for revenge. To many border realms, they are less a species than a permanent problem of altitude.",
				"They are thick-limbed and broad-chested, built to breathe thin air and keep footing on dangerous stone. Their skin ranges from weathered tan to granite grey, and their hair grows coarse and heavy like mountain goat wool. Most wear furs, chains of carved horn, and slabs of hide layered against the wind, giving them the silhouette of moving boulders wrapped in winter.",
				"Mountain ogres are most known for controlling high routes. They roll stones with terrifying precision, stage ambushes from ridgelines, and use the threat of avalanche as both weapon and warning. Traders speak of the silence before a mountain ogre attack, when even the wind seems to wait and every loose rock suddenly feels intentional.",
				"Unlike some ogres, these often keep family clans rather than purely solitary dens. A mountain ogre clan may hold caves, shepherd stolen herds across high meadows, and treat a pass as inherited property defended with ancestral stubbornness. Their worldview values toughness above all; to survive the heights is, in their minds, proof that the heights belong to them.",
				"Their struggle is the mountain itself. Winters starve whole clans, landslides erase paths they relied on for years, and territorial feuds can become lethal when every mistake happens beside a cliff. They also suffer from long memory; insults, killings, and blood debts are remembered across generations because mountain communities, even monstrous ones, have little else to forget.",
				"A mountain ogre's strengths are tied to terrain. They climb faster than their size should permit, can carry impossible loads over narrow paths, and shrug off cold that would kill pack animals overnight. In combat they hurl rock, use elevation mercilessly, and exploit defenders who are already exhausted by ascent before the fight begins.",
				"Dwarven road-builders, griffon riders, and alpine rangers are their traditional adversaries. Fire has limited value in the open heights, but rope discipline, missile superiority, and patience can break a mountain ogre's control of a pass. Giants also feud with them from time to time, especially when the ogres trespass onto even older highland territories.",
				"When mountain ogres become active, the effect spreads far beyond a single peak. Caravans reroute, salt and metal prices jump in the lowlands, and isolated villages find winter stores suddenly harder to secure. What begins as one raided pass can become a regional shortage, because in mountain country the loss of a road is almost the loss of a season."
			]
		}
	],
	"trolls": [
		{
			"id": "forest_troll",
			"icon": "☘",
			"name": "Forest Troll",
			"summary": "A moss-draped predator of ancient woods, the forest troll combines obscene regeneration with a hunter's patience, making every shadowed trail feel one misstep from slaughter.",
			"content": [
				"Forest trolls are the embodiment of the old woodland fear that something larger than a bear is watching from just beyond the tree line. They grow where forests are wet, deep, and unlogged, especially in places where roots split old graves or ruins. Unlike civilized hunters, they do not pass through the woods; they become part of them, a recurring shape in the same dark places century after century.",
				"They are lanky and massive at once, with long arms, knotted backs, and skin in shades of green, brown, and fungus-grey. Moss clings to their shoulders, mushrooms sprout from old wounds, and bark splinters embed in scar tissue until troll and woodland seem fused together. Their mouths open too wide, revealing teeth made for tearing game apart in handfuls rather than bites.",
				"Forest trolls are most known for regeneration. Wounds close while the fight is still happening, severed fingers twitch toward the hand they left, and injuries that should end a battle merely make the troll angrier. Hunters who do not bring flame or acid often learn the lesson in the worst possible way: the thing they thought they killed stands back up before they finish breathing hard.",
				"A forest troll lives like an apex ambush predator with a crude but effective understanding of territory. It marks trees, revisits game trails, and learns the habits of villages at the forest edge with unsettling care. Some keep caches of stolen tools, iron pots, and children's toys in root-hollows, less as treasure than as evidence of how long they have been studying the people nearby.",
				"Its greatest struggle is hunger sharpened by healing. A body that rebuilds itself so quickly demands constant meat, and long lean seasons drive forest trolls into increasingly reckless raids. Fire also terrifies them at an instinctive level, creating a contradiction at the center of their existence: they are difficult to kill, but they know exactly how vulnerable they are to the right kind of pain.",
				"Their strengths are brutal. They move quietly for creatures their size, see well in gloom, and can continue fighting while bones reset under their skin. In the forest they weaponize roots, fallen trunks, and dense undergrowth, turning a battlefield into a maze that favors something tall enough to move through brush while its prey is caught in it.",
				"Rangers, woodsmen, fire mages, and druids willing to choose people over wilderness are the natural enemies of forest trolls. Iron traps can hold them briefly, but only sustained burning reliably finishes the job. Rival monsters such as giant spiders and territorial leshens sometimes keep them in check, though that usually leaves nearby communities with a different problem rather than a solution.",
				"When a forest troll claims a wood, the signs spread by absence. Hunters stop finding deer in familiar places, then stop returning from those places themselves. Tree trunks are found split open at shoulder height, campfires are discovered stomped into mud, and villages begin cutting timber in frightened groups. A forest with a troll in it becomes smaller, not on maps, but in how much of it people dare use."
			]
		},
		{
			"id": "ice_troll",
			"icon": "❄",
			"name": "Ice Troll",
			"summary": "A glacial horror of blue-white flesh and predatory patience, the ice troll hunts in blizzard country where cold hides its approach and preserves its monstrous strength.",
			"content": [
				"Ice trolls come from the far north, from glacier caves, frozen coasts, and wind-carved valleys where most civilized people can only survive by preparation and luck. They are not simply forest trolls in colder weather; the polar world has made them harder, quieter, and crueler. In winter folklore they are treated as proof that hunger itself can evolve teeth.",
				"An ice troll's body is pale blue, chalk white, or the translucent grey of old ice shot through with dark veins. Frost crusts their brows and shoulders, and their breath spills in sheets thick enough to resemble smoke. Their claws are long and glassy, and when sunlight catches them they glitter in a way that makes the violence they cause feel almost offensively beautiful.",
				"They are most known for combining regeneration with cold mastery. An ice troll can vanish into a snow squall, endure temperatures that freeze steel to skin, and return from wounds that would fell other monsters. Some are said to exhale a freezing gust when enraged, not true dragon breath but a blast of killing winter strong enough to numb limbs and blind exposed eyes.",
				"Ice trolls live in loose family packs or solitary wandering circuits that follow herds, seal rookeries, and remote outposts. They are patient, saving scraps in snow pits and stalking prey for days when weather favors them. Their worldview is shaped by scarcity: mercy is foolish, abundance is temporary, and anything weaker than the cold is ultimately food.",
				"Their struggle is competition with the very land they rule. Blizzards hide them but also bury dens, sea ice breaks without warning, and starvation is always one failed hunt away. Fire represents terror and insult to them, not only because it halts regeneration but because in the arctic any wielder of fire becomes a challenger to winter's authority.",
				"Ice trolls are brutally strong, difficult to track, and almost impossible to exhaust in freezing weather. They climb icy faces with ease, travel through storms others cannot navigate, and use visibility loss as a weapon. Against poorly equipped opponents they hardly need tactics; the environment kills half the resistance before the troll reaches it.",
				"Their nemeses are fire keepers, northern shamans, disciplined polar hunters, and any people skilled at denying them weather advantage. Oil, resin, explosive alchemy, and radiant magic are all effective. White dragons and frost giants sometimes slaughter ice trolls as rivals, though that usually means the region was dangerous long before the troll arrived.",
				"When an ice troll moves near a settlement, winter starts feeling intelligent. Sled teams panic for no visible reason, fishing parties vanish in blowing snow close to home, and carcasses appear half-buried with enormous bites taken from frozen flesh. Communities respond by tightening watch rotations, rationing fuel, and praying the storm outside is only weather."
			]
		},
		{
			"id": "swamp_troll",
			"icon": "♒",
			"name": "Swamp Troll",
			"summary": "A reeking, regenerative terror of bog and fen, the swamp troll turns stagnant water into cover, trap, and feeding ground for its endless appetite.",
			"content": [
				"Swamp trolls are the nightmare heirs of drowned forests and poisoned fens. They thrive in warm wetlands where rot is constant and the line between water and land keeps changing. Compared to ogres of the same terrain, swamp trolls are less brute landlord and more recurring infestation, a horror that keeps coming back unless dealt with decisively.",
				"Their bodies are wide through the shoulders and slick with algae, with bellies dragging low and limbs long enough to pull them through reeds without sound. Their skin hangs in folds like wet hide, patched with leeches, fungus, and mats of weed that help them disappear in stagnant channels. When they grin, the mouth is lined with needle-sharp teeth stained black from carrion and peat.",
				"They are most known for recovering from wounds in water. A swamp troll shoved into a bog may emerge stronger than when it entered, the mud sealing cuts while the creature sinks into cover. Their attacks often begin below the surface, with claws hooking ankles or capsizing skiffs before prey understands the water is occupied.",
				"Swamp trolls are not sophisticated builders, but they create effective lairs in half-flooded ruins, sunken barrows, and root tangles reinforced with scavenged timber. They revisit feeding grounds repeatedly and seem to remember which villages bury their dead near soft ground. Their worldview is driven by immediacy: eat, hide, heal, and return when fear has made the prey careless again.",
				"Their struggle is corruption from within as well as without. Constant exposure to foul water leaves many swamp trolls riddled with parasites, clouded senses, and bouts of half-mad irritation. Hunger worsens this, and older trolls sometimes become so warped by disease and regrowth that even younger swamp trolls avoid sharing territory with them.",
				"Their strengths lie in regeneration, aquatic ambush, and the ability to keep fighting in conditions that exhaust others. They can drag armored prey through mud, navigate in darkness by vibration and scent, and shrug off ordinary wounds long enough to retreat into water. In the marsh, time itself favors them; every minute a fight drags on is another chance for the land to tire their enemies first.",
				"Their natural enemies are fire-bearing wardens, marshfolk who know how to fight from raised ground, and priests tasked with cleansing cursed wetlands. Acidic compounds and tar fires are especially effective because they deny both healing and escape. Giant crocodiles, hydras, and hag covens also wage territorial conflict with swamp trolls, producing stretches of marsh where every dominant predator is terrible.",
				"When swamp trolls infest a wetland, the change is first measured in routes lost. Fishermen stop using certain channels, graveyards at the marsh edge are found uprooted, and whole villages begin building houses on higher stilts. If unchecked, the swamp stops being a resource and becomes a border of fear where every ripple could mean something has healed enough to hunt again."
			]
		},
		{
			"id": "rock_troll",
			"icon": "⬙",
			"name": "Rock Troll",
			"summary": "A crag-bound brute plated in stone-hard hide, the rock troll is a patient cliffside predator whose resilience makes it seem less like flesh than animate ruin.",
			"content": [
				"Rock trolls haunt escarpments, badlands, quarry country, and broken highlands where cliffs provide both shelter and hunting advantage. They are cousins to other trolls, but the stony places have made them slower to panic and harder to break. Travelers often mistake the first sight of one for part of the landscape, which is exactly how the troll prefers it.",
				"A rock troll's skin grows in thick plates and ridges, like layered shale over muscle, with gravel lodged permanently in scar seams. Their coloration mirrors local stone, slate, red sandstone, pale granite, which lets them vanish against ledges even in daylight. When they move, pebbles rattle from their joints like loose armor.",
				"They are most known for refusing to die cleanly. Blades skid, arrows splinter, and even when flesh is exposed beneath broken stone plating, the troll's regenerative tissue pushes back through the gaps. Rock trolls also weaponize the terrain with brutal competence, tearing loose boulders, collapsing scree slopes, or simply waiting above a narrow path until gravity can do most of the work.",
				"They live in cliff caves, abandoned quarries, and canyon dens marked by bone piles whitened in open air. Rock trolls are less ravenous wanderers than stubborn holdfast creatures, returning to the same hunting grounds and defending them with near-dwarven persistence. Their worldview seems shaped by stone itself: endure pressure, give nothing away, and trust that time breaks softer things first.",
				"Their struggle is mobility. The same dense build that makes them hard to kill leaves them clumsy in marsh, forest, or any ground that cannot support their weight. Heat can also crack their plated skin, and older rock trolls sometimes suffer entire sections of hide sloughing off after long summers, leaving them irritable, exposed, and more aggressive than usual.",
				"Their strengths are durability, ambush from elevation, and enormous striking power. They can absorb punishment that would annihilate other trolls, brace themselves against impacts like living fortifications, and continue fighting while stone-like tissue knits over injuries. In confined mountain roads or canyon passes, a single rock troll can halt commerce for weeks.",
				"Siege engineers, stonecutters, dwarven hammer lines, and mages who use thunder or heat are the most effective counters. Fire hurts them, but concussive force and armor-breaking blows matter just as much because their bodies rely on layered hardness. Roc nesting territories and giant clans also suppress rock troll populations by treating them as dangerous but edible nuisances.",
				"When a rock troll takes a route, the evidence looks at first like bad luck. Wagons go over edges, fresh rockfall blocks roads, and shepherds find lookout posts smashed flat by something far stronger than weather. By the time people accept that the cliff is not merely unstable, the troll has already learned the pattern of every caravan that still dares to pass below it."
			]
		}
	],
	"elves": [
		{
			"id": "high_elf",
			"icon": "✧",
			"name": "High Elf",
			"summary": "An aristocratic heir to ancient magical kingdoms, the high elf is defined by refinement, memory, and the dangerous belief that civilization can be perfected through will and wisdom.",
			"content": [
				"High elves occupy the role of the old imperial people in much fantasy: long-lived, brilliant, and burdened by the conviction that they once stood closer to perfection than anyone alive now. Their cities are towers, observatories, and white courts built where ley lines, coastlight, or mountain air feel cleanest. To allies they can seem luminous; to neighbors they can seem impossible to satisfy.",
				"They are tall, fine-boned, and composed with a deliberate elegance that never looks accidental. Their features are sharp without harshness, their posture trained from childhood into effortless dignity, and their clothing favors layered silks, light armor, and jewelry that often doubles as a spell focus or family record. Even old age in a high elf tends to look less like decline than like a statue weathering into significance.",
				"High elves are most known for arcane mastery, diplomacy, and impossible standards. They produce court magicians who can shape weather over estates, archivists who remember treaties signed by great-grandparents of current kings, and duelists whose discipline turns swordplay into scholarship. Their reputation comes as much from intellectual authority as from military force.",
				"High elf culture values lineage, education, and control. A century-long project is considered respectable patience, and institutions are designed to outlast rulers rather than glorify them. From their own point of view, they are custodians of continuity in a short-lived world that rushes every decision and then wonders why it inherits chaos.",
				"Their struggle is arrogance hardened by longevity. High elves often confuse experience with infallibility, and the long memory that preserves wisdom also preserves grudges, embarrassment, and fear of decline. Many of their crises begin when they cannot admit that a newer people, a younger mage, or a simpler solution might be right.",
				"Their strengths are formidable: advanced spellcraft, disciplined armies, deep archives, and political patience few rivals can match. A high elf court can respond to threats with intelligence gathered over decades rather than weeks. Individually, they combine keen senses, magical aptitude, and training that turns even art into a weaponized form of excellence.",
				"Their natural enemies include dark elves, tyrants who resent independent arcane power, and populist movements that see high elf influence as elegant domination. Dragons, too, frequently contest the same old places of power that high elves prize. Within elven society, their fiercest opposition often comes from other elves who view high elf certainty as the root of more than one historical disaster.",
				"When high elves enter a region in force, the change is immediate but not always violent. Borders become formal, negotiations become sharper, and every local ruler realizes they are now dealing with people who remember the last time this valley changed hands. Their arrival can mean rescue, alliance, or occupation, but it always means history has walked back into the room."
			]
		},
		{
			"id": "wood_elf",
			"icon": "❋",
			"name": "Wood Elf",
			"summary": "A forest-dwelling people bound to living landscapes rather than stone kingdoms, the wood elf moves through the wild with grace, ferocity, and an intimate knowledge of what the land remembers.",
			"content": [
				"Wood elves are the elven peoples who chose the forest over the court and never considered that choice a retreat. They belong to old groves, river canopies, and migrating woodland settlements built with the expectation that homes should bend with the land rather than command it. In many settings they are the first to notice when a forest is sick and the last to forgive those who made it so.",
				"They are leaner and often less ornamented than their high elf kin, favoring practical beauty over ceremony. Clothing is cut for movement and weather, layered in leaf tones, bark browns, and muted greens, and many adorn themselves with feathers, beadwork, and carvings specific to clan or glade. Their movements are quiet enough that city folk often mistake discipline for magic.",
				"Wood elves are most known for archery, scouting, and the ability to disappear into terrain that seems open to everyone else. They can read spoor like script, move through branches with unnerving speed, and fight with the confidence of people who understand every root and stream within miles. Stories about them often begin with an arrow appearing before the archer does.",
				"Their culture is deeply local. A wood elf community may define itself by a watershed, migration route, or sacred stand of trees rather than by a fixed capital. They tend to think in seasons, generations, and ecological relationships, which makes them seem patient from the outside and immediate from within; if the forest is threatened now, then action delayed is action denied.",
				"Their struggle lies in defending what cannot be moved. Logging roads, monster incursions, expanding farmland, and careless magic all place constant pressure on wood elf lands. They also wrestle with internal disagreement between isolationists who want the forest closed and diplomats who know that no woodland survives forever without some relationship to the world beyond it.",
				"Wood elves are formidable in terrain they know. Their senses are sharp, their ambushes disciplined, and their survival skills allow them to wage long defensive campaigns without formal supply lines. Many also practice druidic or spirit-bound magic that blurs the boundary between warrior, healer, and guardian.",
				"Their enemies are poachers, necromancers who despoil natural places, and empires that measure trees only in boards and tax value. Forest trolls, goblin tribes, and malignant fey also create recurring conflict. Yet one of their oldest tensions remains with high elves, whose elegant plans for the land often strike wood elves as conquest dressed in poetry.",
				"When wood elves appear near a settlement, it usually means the land itself has become part of the politics. Roads may be closed without warning, hunters find themselves watched, and negotiations start taking place under branches older than the towns involved. Their presence signals that the forest is no longer a backdrop; it now has representatives, and they are armed."
			]
		},
		{
			"id": "dark_elf",
			"icon": "◈",
			"name": "Dark Elf",
			"summary": "A people of caverns, night courts, and ruthless adaptation, the dark elf survives by turning secrecy, discipline, and subterranean hardship into a dangerous civilization of its own.",
			"content": [
				"Dark elves are among fantasy's most misunderstood peoples because so much of what is said about them comes from surface fear, old wars, or religious propaganda. They are the elves of the deep roads, volcanic vaults, and cities lit by fungus, crystal, and controlled fire. Whatever catastrophe or exile first drove them below, centuries underground turned survival into culture and caution into power.",
				"They are marked by the environments that shaped them: skin in shades of obsidian, ash, violet, or iron-grey, hair pale enough to catch what little light exists below, and eyes adapted to darkness until bright day can seem like punishment. Their clothing mixes elegance with utility, layered silks, fitted leathers, and jewelry that often hides poison, keys, or rank markings invisible to outsiders.",
				"Dark elves are most known for stealth, intrigue, and mastery of subterranean warfare. They move through cavern systems as confidently as sailors move through coastal waters, setting traps, disappearing along vertical routes, and striking where the enemy's formation means least. Their reputation for poison, assassination, and political ruthlessness is not wholly unfair, but it is also exaggerated by those who lost to them.",
				"Their society is usually hierarchical, urban, and shaped by scarcity. Water, arable fungus fields, defensible routes, and access to trade all matter intensely underground, producing cultures where status is tied to competence as much as birth. Many dark elves see themselves not as sinister but as realistic, people forced to survive in a world where sentiment kills the unwary.",
				"Their struggle is pressure from every side. Surface realms often assume the worst of them before contact even begins, while the underworld itself breeds constant danger from monsters, cave-ins, and resource conflict. This produces a cycle of suspicion: dark elves become secretive because trust is dangerous, and others trust them less because they are secretive.",
				"Their strengths are exceptional. They possess keen darkvision, disciplined military traditions, expertise with toxins and subterfuge, and often a rich magical culture centered on shadow, illusion, or subterranean energies. In confined or lightless environments, they are among the most efficient fighting forces in fantasy.",
				"Their natural enemies include dwarven underkingdoms, zealots from the surface, and monsters that contest the same tunnel networks they depend on. Some dark elf houses also spend generations feuding with each other, proving that internal politics can be as dangerous as any outside invasion. Sun-aligned magic is especially feared because it attacks both their eyes and their myths of mastery.",
				"When dark elves become visible in a region, something significant is already happening below or beyond the horizon. Trade routes through the deep may have opened, failed, or been seized. Surface towns start hearing of missing miners, secret buyers, and torchlit figures seen where caves should have been empty. Their appearance means the hidden world is no longer staying hidden."
			]
		},
		{
			"id": "moon_elf",
			"icon": "☽",
			"name": "Moon Elf",
			"summary": "A silver-lit people of tides, roads, and night magic, the moon elf is defined by motion, intuition, and a cultural bond to cycles that other peoples barely notice.",
			"content": [
				"Moon elves are the wanderers, mariners, and astronomer-poets of many fantasy settings, an elven people less attached to fixed capitals than to routes, seasons, and celestial patterns. They favor coasts, high observatories, island enclaves, and caravan roads that keep them under open sky. Where high elves build permanence, moon elves often build return.",
				"They are known for pale skin or cool-toned complexions touched with silver, blue, or soft lavender, and for hair that catches lamplight like frost or moonlit water. Their clothes tend toward layered travel garments, cloaks that move well in sea wind, and jewelry set with pearl, opal, or polished nightstone. Many wear crescent motifs, but usually with genuine cultural meaning rather than mere decoration.",
				"Moon elves are most known for navigation, night fighting, and subtle magic tied to reflection, dream, and tide. Sailors prize them as pilots, courts value them as diplomats who can move between cultures, and enemies learn that moonlight is often sufficient illumination for a moon elf ambush. Their songs and divinations are said to be strongest when the night sky is clear enough to read like a chart.",
				"Their culture prizes adaptability and the wisdom of cycles. A moon elf is more likely to think in terms of phases than absolutes: advance and retreat, waxing fortune and waning power, departure and return. This produces societies that are often more flexible and less rigidly hierarchical than high elf courts, though no less proud of their traditions.",
				"Their struggle is rootlessness. The same mobility that makes moon elves resilient can leave them politically vulnerable when more territorial peoples carve up the world beneath them. They also live with a reputation for inconsistency from outsiders who mistake rhythm for indecision, not understanding that a moon elf may delay action because timing, to them, is part of truth.",
				"Moon elves excel at travel, reconnaissance, diplomacy, and magic that favors misdirection over brute force. They are comfortable operating by starlight, coordinating across long distances, and surviving in liminal spaces such as shores, passes, and borders. Many are skilled archers or dual-weapon fighters, favoring grace and angle rather than raw impact.",
				"Their enemies tend to be slavers, pirates, abyssal things drawn by tide magic, and tyrants who resent people difficult to pin to one domain. Dark cults tied to eclipses or void deities also recur in moon elf stories as ideological opposites, worshippers of night without reverence for its balance. Even among elves, some high-born traditionalists view moon elf looseness as dangerously unserious.",
				"When moon elves arrive in numbers, the atmosphere of a place changes before its politics do. Harbors grow busier at odd hours, observatories reopen, and rumors circulate of maps, prophecies, or alliances moving under cover of darkness. Their presence often means that a road, a coast, or a kingdom has become part of a larger pattern now visible only to those who still look up at night."
			]
		}
	],
	"dwarves": [
		{
			"id": "mountain_dwarf",
			"icon": "⛏",
			"name": "Mountain Dwarf",
			"summary": "A cliff-born heir to fortress kingdoms and stonebound clan law, the mountain dwarf embodies endurance, disciplined craft, and the refusal to yield high ground once claimed.",
			"content": [
				"Mountain dwarves are the classic keepers of halls carved into peaks, ridges, and volcanic shoulders where stone itself can be shaped into nationhood. They are associated with fortress cities, deep mines, and roads that cling to impossible slopes. In fantasy history they are often the people who make the mountain traversable and then dare anyone else to dispute the toll.",
				"They are broad, heavily built, and adapted to cold, height, and hard labor. Mountain dwarves favor layered wool, scale, and plate suited for narrow corridors and exposed winds, and their braids, clasps, and beard rings often serve as visible records of clan, rank, and oath. Their faces weather deeply but solidly, giving even youth a kind of carved seriousness.",
				"They are most known for fortress craft, heavy infantry, and engineering feats that look impossible until someone explains the load-bearing math. Mountain dwarf masons can cut roads through cliff faces, suspend chain bridges over ravines, and design gatehouses that turn a pass into a death sentence for invaders. Their martial reputation comes not from speed but from the kind of stability that refuses to panic.",
				"Mountain dwarf society is intensely clan-based, but not simplistic. Kinship, apprenticeship, and sworn obligation intertwine so tightly that work and identity are rarely separate. Their worldview values reliability above brilliance; a dwarf who can be counted on for forty winters is often prized more highly than one who dazzles for one season.",
				"Their greatest struggle is inflexibility under pressure. Mountain dwarves can become so attached to tradition, route, and structure that change is treated as insult rather than adaptation. This has cost them dearly when new wars, new magic, or simple demographic decline demanded solutions their ancestors never needed.",
				"Their strengths are endurance, defensive warfare, metallurgy, and architectural knowledge few rivals can equal. They fight well in formation, thrive in high and cold terrain, and maintain supply discipline that lets them hold sieges others would abandon. A mountain dwarf kingdom often survives not because it is stronger every day, but because it prepared for bad days better than anyone else.",
				"Their enemies are giants, dragons, tunnel-born horrors, and any empire that covets mineral wealth without respecting the people who extracted it. Goblinoid legions and dark underkingdoms also recur as long-term rivals. Yet many mountain dwarf tragedies begin with internal feuds, because a fortress can withstand an army longer than it can withstand a civil quarrel over succession.",
				"When mountain dwarves mobilize, the region feels it in stone and steel. Forges burn through the night, messenger goats and eagles move between holds, and high roads fill with armored columns that march as if they have always known where the battle will be. Their appearance usually means the mountains themselves have decided not to remain neutral."
			]
		},
		{
			"id": "hill_dwarf",
			"icon": "◬",
			"name": "Hill Dwarf",
			"summary": "A practical, outward-looking dwarf of terraces, trade roads, and sturdy towns, the hill dwarf blends ancestral craftsmanship with a greater comfort for the open world than many of its kin.",
			"content": [
				"Hill dwarves occupy the middle ground between deep fortress culture and surface civilization. They build into ridges, vales, and broad hills rather than sheer mountains, creating towns that are half citadel, half market community. In many regions they are the dwarves most humans know, because they are more willing to trade, travel, and settle where roads converge.",
				"They are somewhat shorter and less heavily armored in daily life than mountain dwarves, though still unmistakably stout. Their homespun and working leathers are practical, often dusted with flour, ore, or road grit rather than forge soot alone. Hill dwarf fashion tends to show status through workmanship and durability rather than sheer quantity of metal.",
				"Hill dwarves are most known for reliability in trade, masonry, brewing, and civic craft. They build bridges that stay standing, mills that outlast the families who bought them, and counting houses whose ledgers are trusted because hill dwarves consider bad bookkeeping a moral failing. Their communities often become anchor points around which more transient settlements stabilize.",
				"Their culture is more flexible and neighbor-facing than that of many other dwarven groups. Hill dwarves still care deeply about clan, oath, and reputation, but they are used to bargaining with outsiders and learning which customs can bend without breaking. Many see themselves as the practical face of dwarf-kind, the ones who keep tradition useful rather than merely sacred.",
				"Their struggle is dilution without disappearance. Living closer to the open world brings prosperity, but it also invites assimilation, political meddling, and the slow erosion of customs that mattered intensely to older generations. Hill dwarf communities often argue over how much compromise counts as adaptation and how much counts as forgetting.",
				"Their strengths are stamina, craftsmanship, civic organization, and an unusual ability to build coalitions across cultures. They field solid militias, maintain roads and walls effectively, and excel at the unglamorous disciplines that let a realm keep functioning under stress. Individually, hill dwarves are hard to intimidate and harder to outwork.",
				"Their enemies tend to be raiders, corrupt tax lords, tunnel monsters pushing up from below, and anyone who mistakes friendliness for weakness. They also clash with pure traditionalists among their own kin, who sometimes view hill dwarves as too comfortable with outsiders. Orc raids along trade corridors are an especially common pressure point in hill dwarf history.",
				"When hill dwarves take interest in a region, the signs are constructive before they are political. Roads get repaired, markets gain weight and regularity, and local rulers find that every proposal is being measured against what will still make sense twenty years from now. Their presence usually means a frontier is becoming a real country."
			]
		},
		{
			"id": "deep_dwarf",
			"icon": "⬓",
			"name": "Deep Dwarf",
			"summary": "A secretive underworld dwarf forged by pressure, darkness, and ancient subterranean wars, the deep dwarf survives through discipline, silence, and a ruthless respect for necessity.",
			"content": [
				"Deep dwarves are the clans that delved too far to remain ordinary surface-minded folk and learned to survive what waited there. They inhabit abyssal mines, basalt vaults, lava edges, and tunnel webs where entire peoples can vanish without the surface noticing for generations. In legend they are treated with a mix of admiration and unease, because anyone who thrives that far below must have paid for the skill somehow.",
				"They are often leaner than mountain dwarves, with pale or ash-toned skin, eyes adapted to darkness, and clothing built to silence rather than ceremony. Their armor is matte, close-fitted, and designed for tunnels where reflected torchlight can be a liability. Deep dwarves favor engraved stone, black iron, and subdued clan marks visible only at close range.",
				"They are most known for mining in impossible places, stone sense, and warfare suited to darkness and confined ground. Deep dwarf sappers can hear flaws in a wall before striking it, map tunnel temperatures by touch, and collapse an enemy advance with terrifying efficiency. Their reputation among outsiders is often that of grim specialists who appear only when something under the earth has gone catastrophically wrong.",
				"Their worldview is shaped by scarcity and vigilance. Underground, light, water, air, and stable routes are resources as critical as gold, so deep dwarf societies prize discipline and collective responsibility with almost military intensity. To them, carelessness is not a personal flaw; it is a public hazard.",
				"Their struggle is severity. A people built to survive the deep can become so controlled and suspicious that ordinary warmth begins to feel like weakness. Many deep dwarves also live with inherited trauma from wars against dark elves, nameless horrors, and older things that never cared whether the dwarves understood them.",
				"Their strengths include dark-adapted senses, engineering under pressure, formidable tunnel fighting, and a refusal to panic in conditions that shatter surface troops. They excel at siege and counter-siege below ground, and their endurance lets them labor and fight where air is thin, heat is intense, or darkness is total. Few peoples are better at making hostile environments usable.",
				"Their enemies are underworld empires, cavern beasts, and greedy surface powers who think the deep can be exploited without understanding it. Deep dwarves also remain in recurrent conflict with demons, elemental incursions, and cults trying to open what should stay sealed. Sunlit diplomacy is difficult for them, but not impossible; their hardest negotiations are often with fear rather than with other nations.",
				"When deep dwarves surface in numbers, everyone pays attention. Mines close, scholars start comparing old maps, and rulers ask the same question with increasing urgency: what followed them up? Their arrival rarely means exploration alone. It usually means a danger below has outgrown secrecy and is now becoming the surface world's problem too."
			]
		},
		{
			"id": "forge_dwarf",
			"icon": "⚒",
			"name": "Forge Dwarf",
			"summary": "A master of sacred industry and weaponcraft, the forge dwarf treats the anvil as altar, turning labor, fire, and precision into a civilization-defining art.",
			"content": [
				"Forge dwarves are the clans and castes most completely organized around metalwork, foundries, and the theology of making. While many dwarves revere craft, forge dwarves elevate it into central identity, measuring worth by what one can shape, temper, repair, or improve. Their cities are known by their smoke columns, furnace glow, and the sound of industry continuing long after other peoples would sleep.",
				"They dress for heat, sparks, and authority. Aprons reinforced with chain, thick gloves, sleeveless work tunics, and ceremonial smith masks are common, as are burn scars worn without shame. Even their jewelry tends to be engineered rather than merely decorative, clever clasps, articulated rings, and torque pieces that demonstrate skill the way a warrior displays trophies.",
				"Forge dwarves are most known for producing legendary arms, precision tools, and mechanisms that seem too robust to belong to ordinary history. Kings seek their armor, temples commission their bells and gates, and adventurers dream of winning one of their masterwork blades. But among forge dwarves themselves, the highest praise often goes not to a weapon but to a tool that never fails in honest labor.",
				"Their culture is intensely guild-driven. Apprenticeship, mastery, and inheritance of technique matter as much as bloodline, and a forge dwarf may owe more daily loyalty to workshop and patron than to clan branch. Their worldview treats creation as moral action: to make something true and lasting is to push back against decay.",
				"Their struggle is overproduction of purpose. A society so centered on work can neglect tenderness, leisure, and anything not easily measured in output or excellence. Forge dwarves also attract war, because the better their craft becomes, the more rulers, conquerors, and thieves decide that possessing the smith is easier than earning the weapon.",
				"Their strengths are obvious but extraordinary: metallurgical genius, industrial organization, resistance to heat, and the ability to maintain logistics through craft rather than conquest. They repair faster than others replace, improvise from stockpiles with startling speed, and understand the material limits of armor, bridges, gates, and engines better than almost any people in fantasy.",
				"Their enemies include slavers, raiding empires, sabotage-minded rivals, and fire creatures that resent mortals mastering flame through discipline rather than worship. They also clash with traditionalists who think forge dwarves risk reducing sacred craft to commerce. In wartime, spies become one of their deadliest threats because a stolen blueprint can harm a kingdom as surely as a stolen relic.",
				"When forge dwarves involve themselves in a conflict or region, production surges before banners do. Warehouses fill, contracts multiply, and the balance of power shifts because one side suddenly stops running out of steel. Their presence means that war, rebuilding, or both are about to become much more efficient."
			]
		}
	],
	"orcs": [
		{
			"id": "blood_orc",
			"icon": "☄",
			"name": "Blood Orc",
			"summary": "A war-marked orc of lineage oaths and battle frenzy, the blood orc binds identity to ancestry, vengeance, and the belief that spilled blood remembers who spilled it.",
			"content": [
				"Blood orcs are the orc peoples who root culture most strongly in descent, war memory, and the sacred meaning of violence. They are often found on red plains, badlands, and scarred borderlands where every clan can recite who wronged it and why the debt still stands. To outsiders they seem born for war; to themselves they are keepers of blood obligations no one else bothers to honor.",
				"They are heavily built and visibly adorned with lineage. Scarification, painted war glyphs, braided trophies, and red-dyed cloth are common, each mark often denoting family, oath, victory, or mourning. Their armor ranges from brutal hide-and-iron harness to beautifully maintained heirloom pieces passed through generations of fighters.",
				"Blood orcs are most known for ferocity in close combat and the ritual intensity of their war culture. Many enter controlled battle frenzies through chant, drum, or inherited techniques that sharpen aggression without dissolving discipline entirely. Enemies remember the first charge, but veterans fear the aftermath more, when blood orcs begin naming the dead and turning a battle into a generational feud.",
				"Their society is built on kin, oath, and public memory. Elders, war leaders, and spirit-keepers all play roles in deciding when blood debt justifies action and when restraint honors the clan more. From within, this system is not random brutality but moral accounting, a harsh answer to living in a world where weakness invites erasure.",
				"Their struggle is inheritance. Blood orcs can become trapped by past violence, forced to carry forward grudges shaped by grandparents they never met. Young blood orcs often wrestle with whether loyalty means repeating old wars or being strong enough to end them, and that tension can split clans as sharply as any outside attack.",
				"Their strengths include brutal courage, kin-based cohesion, and a battlefield psychology built around momentum and reputation. They recover from hardship quickly, fight effectively even when wounded, and draw deep reserves of will from ritual and shared identity. Against timid or poorly led foes, their sheer certainty can feel as dangerous as their axes.",
				"Their enemies are longstanding rival clans, imperial forces seeking to pacify frontier regions, and any manipulator who profits by keeping blood debts active. Paladins and law-bound kingdoms often clash with them because blood orc justice refuses to remain tidy or centralized. Yet the sharpest danger sometimes comes from shamans or chiefs within the culture who find perpetual vengeance politically convenient.",
				"When blood orcs ride for war, the warning arrives in ritual before steel. Messenger totems appear, drums carry across valleys, and border settlements hear the names of old grievances spoken again as if no time has passed. Their appearance means the past has decided to collect."
			]
		},
		{
			"id": "iron_orc",
			"icon": "⛓",
			"name": "Iron Orc",
			"summary": "A regimented orc of foundry, fortress, and iron law, the iron orc turns martial culture into organized state power backed by industry and uncompromising discipline.",
			"content": [
				"Iron orcs are the answer to every lazy assumption that orcs cannot build. They are fortress makers, armorers, and war planners who take the raw strength of orcish culture and bind it to infrastructure, command, and production. Their domains are often black-fort cities, smelter valleys, and heavily defended borders where ambition has been given walls.",
				"They present themselves with deliberate severity. Iron orcs favor riveted armor, hard-edged silhouettes, shaved or tightly bound hair, and symbols stamped into plate rather than embroidered into cloth. Soot, oil, and forge heat shape their appearance as much as battle does, giving them the look of soldiers assembled out of both flesh and machinery.",
				"They are most known for discipline. Iron orc hosts march in formation, maintain supply chains, and build siege lines with a grim professionalism that catches more romantic enemies off guard. They are also famous smiths in their own right, producing practical, durable weapons designed to survive campaigns rather than impress a court.",
				"Their society is often hierarchical, legalistic, and organized around service. Rank may come through birth, merit, or military achievement depending on the realm, but in all cases iron orcs tend to respect clear structure over personal theatrics. From their perspective, discipline is not the enemy of strength; it is the only reason strength matters for longer than one battle.",
				"Their struggle is rigidity. Systems that make iron orcs powerful in war can make them brittle in peace, and leaders who prize order too highly may mistake obedience for stability. Internal dissent is often suppressed until it erupts explosively, because iron orc states are excellent at containing problems and notoriously bad at admitting them early.",
				"Their strengths include heavy infantry, industrial capacity, engineering, and the social cohesion required to sustain long campaigns. Individually they are powerful warriors; collectively they are far more dangerous, because their logistics allow them to keep pressure on enemies long after raider cultures would need to disperse. They win not only by impact but by endurance.",
				"Their enemies are dwarven holds, free cities that resist annexation, and rival orc peoples who reject central authority. Saboteurs, famine, and resource shortages can threaten them more effectively than open battle because so much of their strength depends on organized output. Air power, mountain warfare, and magical disruption of industry are traditional counters.",
				"When iron orcs turn toward a frontier, the signs are industrial as much as military. Timber disappears into palisades, roads are measured for weight, and smoke rises where camps should be temporary. Their presence means conquest is being planned as administration, not as a raid."
			]
		},
		{
			"id": "savage_orc",
			"icon": "🜂",
			"name": "Savage Orc",
			"summary": "A hard-living orc of wilderness clans and survivalist ferocity, the savage orc fights with primal aggression, deep environmental knowledge, and a refusal to be civilized on anyone else's terms.",
			"content": [
				"Savage orc is the name settled peoples give to clans that remain fiercely tied to wilderness, migration, and direct survival rather than fortress or court. The label is usually meant as insult, but it obscures more than it explains. These orcs are often the most ecologically intelligent of their kind, shaped by steppe, scrubland, jungle, or storm coast into cultures that regard softness as the one unforgivable luxury.",
				"They tend to wear what can be made, carried, or repaired on the move: hide, bone, stitched leather, scavenged metal, and trophies with practical meaning. Their bodies are marked by weather, travel, and hunting rather than industrial labor. Even ceremonial attire often looks battle-ready because in their world ceremony and danger seldom sit far apart.",
				"Savage orcs are most known for sudden violence and apparent unpredictability. They strike fast, exploit terrain mercilessly, and seem willing to risk themselves in ways conventional troops find irrational. The truth is usually harsher and smarter: a savage orc clan has already measured the land, the weather, and the prey before the first shout is heard.",
				"Their culture values strength, adaptability, and the ability to contribute under hardship. Leadership is often earned through hunting success, raid skill, spiritual authority, or the capacity to keep people alive when resources collapse. From within, they do not see themselves as lawless but as unburdened by the fragile formalities of city peoples.",
				"Their struggle is external contempt and internal scarcity. Settled nations use the word savage to justify extermination or dispossession, while drought, herd failure, and monster pressure can force whole clans into desperate migration. This means savage orcs are often judged at their hungriest and treated as proof of a nature that might have looked very different in security.",
				"Their strengths are mobility, ferocity, fieldcraft, and an extraordinary ability to keep functioning with minimal supply. They can live off harsh ground, fight effectively in dispersed formations, and exploit storms, darkness, or rough terrain that slow heavier armies. Many also maintain strong oral traditions, tactical memory carried in story rather than on parchment.",
				"Their enemies are settler militias, rival nomad peoples, monsters competing for the same wilderness, and centralized states eager to erase any group difficult to tax or govern. Disease and starvation can be as deadly as war. Shamans who exploit fear also pose danger, because in desperate times any voice promising strength can gather followers too quickly.",
				"When savage orcs move into a region, the landscape becomes readable in a new and threatening way. Herds change direction, watchfires appear on ridges that were empty yesterday, and patrols find themselves outmaneuvered by people without roads. Their presence means the frontier has stopped being theoretical."
			]
		},
		{
			"id": "shadow_orc",
			"icon": "☗",
			"name": "Shadow Orc",
			"summary": "A night-bound orc shaped by secrecy, omen, and ruthless stealth, the shadow orc turns fear, darkness, and disciplined silence into a form of warfare all its own.",
			"content": [
				"Shadow orcs are the least understood of the major orc peoples, in part because misunderstanding is one of their preferred weapons. They dwell in black pine ranges, eclipse-haunted valleys, cavern borderlands, and other places where night lingers longer than it should. Where many orcs make strength visible, shadow orcs prove it by how little they need to reveal.",
				"They are leaner than many of their kin, with dark skin tones, muted gear, and adornment chosen for silence over spectacle. Cloaks, wrapped weapons, soot-dark armor, and face markings that break up recognition in moonlight are common. Their eyes often seem to catch and hold dim light in ways witnesses find deeply unsettling.",
				"Shadow orcs are most known for stealth raids, assassination, and war conducted through nerves as much as casualties. They cut pickets, poison certainty, and prefer to let a settlement imagine ten times the number actually watching it. Their legends are full of gates opened from within, command tents entered without alarm, and enemies who broke because sleep had become impossible.",
				"Their society prizes discipline, silence, and the proper use of fear. Far from being anarchic, many shadow orc clans maintain strict rites around scouting, oath-keeping, and the withholding of unnecessary speech. To them, noise is not confidence but waste, and a plan announced too proudly is already half-lost.",
				"Their struggle is reputation bordering on self-fulfilling curse. Once feared as treacherous, shadow orcs may find open diplomacy nearly impossible even when they want it. Living in secrecy also breeds internal paranoia, and some clans become so committed to hidden knowledge that trust shrinks until leadership rests on manipulation more than respect.",
				"Their strengths include night fighting, infiltration, patience, and tactical intelligence gathered through observation rather than brute scouting. They are skilled with short blades, bows, garrotes, and ambush doctrine, but their greatest weapon is often psychological: they make enemies feel penetrable before the real attack begins. Against complacent defenders, that alone can win campaigns.",
				"Their enemies are vigilant rangers, sun-priests, disciplined watch commanders, and any society capable of denying them darkness advantage through magical light or relentless patrol structure. They also clash with other orc peoples who see shadow methods as dishonorable or destabilizing. Within shadow clans, zealots devoted to void powers are a constant danger, because secrecy and nihilism make a volatile mix.",
				"When shadow orcs enter a region, fear arrives before facts. Signal fires fail, couriers disappear, and no one agrees on how many enemies there are or where they came from. Their presence means the night has become operational, and every door now closes with more imagination than certainty."
			]
		}
	]
}


static func get_category_order() -> Array:
	return CATEGORY_ORDER.duplicate()


static func get_category(category_key: String) -> Dictionary:
	return CATEGORIES.get(category_key, {}).duplicate(true)


static func get_categories() -> Array:
	var categories: Array = []
	for category_key in CATEGORY_ORDER:
		var category: Dictionary = get_category(category_key)
		category["id"] = category_key
		categories.append(category)
	return categories


static func get_articles(category_key: String) -> Array:
	return ARTICLES.get(category_key, []).duplicate(true)


static func get_article(category_key: String, article_id: String) -> Dictionary:
	for raw_article in ARTICLES.get(category_key, []):
		var article: Dictionary = raw_article
		if str(article.get("id", "")) == article_id:
			return article.duplicate(true)
	return {}


static func get_featured_articles(limit: int = 3) -> Array:
	var featured: Array = []
	for category_key in CATEGORY_ORDER:
		var article_list: Array = ARTICLES.get(category_key, [])
		if article_list.is_empty():
			continue
		var article: Dictionary = article_list[0].duplicate(true)
		article["category_id"] = category_key
		article["category_name"] = str(get_category(category_key).get("name", ""))
		featured.append(article)
		if featured.size() >= limit:
			break
	return featured


static func get_theme_for_page(page: String, category_key: String = "") -> Dictionary:
	if page == "category" or page == "article":
		return Dictionary(get_category(category_key).get("theme", ROOT_THEME)).duplicate(true)
	return ROOT_THEME.duplicate(true)
