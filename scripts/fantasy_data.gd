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

static var CATEGORY_ORDER := ["demons", "ghosts", "goblins", "undead"]

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
