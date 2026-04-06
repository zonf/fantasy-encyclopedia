# Monster Article Guide

This app stores monster articles in `scripts/fantasy_data.gd` inside the `ARTICLES` dictionary.

Each article should feel like a polished encyclopedia entry, not a short monster note. The current standard is:

- One longer `summary` line that works as a strong preview.
- Eight detailed paragraphs inside the `content` array.
- Each paragraph should cover a specific aspect of the creature.
- The writing should be descriptive, readable, and useful inside a fantasy encyclopedia.

## Article Structure

Every monster article should include these eight paragraph themes, in this order:

1. **What they are**
Describe the creature's identity, role, and place in the fantasy world. Explain what kind of being it is and why it matters.

2. **Appearance**
Describe how the creature looks in detail. Cover size, body shape, skin, bones, fur, eyes, movement, voice, smell, or any other striking traits.

3. **Most known aspects**
Explain the monster's signature traits, iconic powers, famous behaviors, or the reason people recognize and fear it.

4. **Lifestyle and worldview**
Describe how it lives, what it wants, how it behaves, what kind of society or habits it has, and how it sees the world.

5. **Struggles**
Cover internal conflict, limitations, tragic elements, social problems, curses, hunger, ambition, instability, or anything that creates pressure in its existence.

6. **Strengths**
Explain combat advantages, supernatural powers, survival abilities, magical traits, and what makes it dangerous in practice.

7. **Nemeses**
List natural enemies, traditional counters, rival creatures, divine or magical opposition, and what can defeat or weaken it.

8. **What happens when they appear**
Describe the signs of their arrival and the impact they have on settlements, regions, armies, or people. This paragraph should answer: what does their presence mean?

## Summary Rules

The `summary` should be longer than a simple one-line label.

Good summary goals:

- State what the creature is.
- Mention its defining danger or identity.
- Read well as a preview in the article list.
- Usually stay to one sentence, but make it a rich sentence.

Example pattern:

> A towering war-demon wreathed in living flame, the balor commands infernal legions with an iron will and a molten blade, arriving only when a conflict is meant to end in total devastation.

## Writing Style

Use this tone when writing new articles:

- Write like a fantasy encyclopedia, not like patch notes or a game stat block.
- Favor strong imagery and concrete detail.
- Make the creature feel alive in the world's lore.
- Include multiple points of view when useful: how the creature sees itself, how communities see it, how scholars or adventurers interpret it.
- Avoid repeating the same sentence structure across all paragraphs.
- Keep each paragraph focused on one main idea.
- Make even familiar monsters feel specific and atmospheric.

## What To Include Beyond The Core 8 Sections

When relevant, also layer in:

- Social role within its own kind
- Cultural meaning in the setting
- Religious or symbolic interpretations
- Variations across regions or traditions
- Psychological impact on witnesses
- Differences between how common people and experts understand the creature
- Long-term consequences after an encounter

These details make entries feel fuller and less generic.

## Data Format In This Project

Articles are stored like this:

```gdscript
{
	"id": "monster_id",
	"icon": "✶",
	"name": "Monster Name",
	"summary": "A longer preview sentence that explains what the creature is and why it matters.",
	"content": [
		"Paragraph 1: What they are.",
		"Paragraph 2: Appearance.",
		"Paragraph 3: Most known aspects.",
		"Paragraph 4: Lifestyle and worldview.",
		"Paragraph 5: Struggles.",
		"Paragraph 6: Strengths.",
		"Paragraph 7: Nemeses.",
		"Paragraph 8: What happens when they appear."
	]
}
```

## Copyable Template

Use this when creating a new article:

```gdscript
{
	"id": "new_monster",
	"icon": "✦",
	"name": "New Monster",
	"summary": "A detailed one-sentence preview that explains the creature's identity, danger, and role in the world.",
	"content": [
		"Describe what the creature is, where it belongs in the world, and why it matters in fantasy lore.",
		"Describe its physical appearance in vivid detail, including body, face, movement, and other memorable visual traits.",
		"Explain the traits, powers, behaviors, or legends it is most known for.",
		"Describe how it lives, what it wants, how it thinks, and what kind of social or personal worldview it has.",
		"Explain its struggles, weaknesses, burdens, instincts, contradictions, or tragic dimensions.",
		"Describe its strengths, powers, combat advantages, magical abilities, and survival traits.",
		"Explain its nemeses, counters, natural enemies, and what forces are best suited to stop it.",
		"Describe the warning signs of its presence and what happens to a place or people when it appears."
	]
}
```

## Quality Checklist

Before adding a monster article, check that:

- The summary is richer than a short label.
- There are exactly 8 content paragraphs.
- Each paragraph has a distinct purpose.
- The creature feels specific, not generic.
- The article includes both lore and practical impact.
- The final paragraph explains the consequences of the creature's appearance.
- The article matches the tone of the existing entries in `scripts/fantasy_data.gd`.

## Where To Edit

Add or update monster articles in:

- `scripts/fantasy_data.gd`

The category keys currently used in the app are:

- `demons`
- `ghosts`
- `goblins`
- `undead`