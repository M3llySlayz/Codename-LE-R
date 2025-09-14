package data.scripts;

	/* just for reference when i actually don't wanna kms looking at this
    public function new(strumLine:StrumLine, noteData:ChartNote, sustain:Bool = false, sustainLength:Float = 0, sustainOffset:Float = 0, ?prev:Note)
	{
		super();

		moves = false;

		if(prev != null)
			this.prevNote = prev;
		else
			this.prevNote = strumLine.notes.members.last();

		if (this.prevNote != null) this.prevNote.nextNote = this;
		this.noteTypeID = noteData.type.getDefault(0);
		this.isSustainNote = sustain;
		this.sustainLength = sustainLength;
		this.strumLine = strumLine;
		for(field in Reflect.fields(noteData)) if(!DEFAULT_FIELDS.contains(field))
			this.extra.set(field, Reflect.field(noteData, field));

		// work around to set the `sustainParent`
		if (isSustainNote)
			sustainParent = prevNote.isSustainNote ? prevNote.sustainParent : prevNote;

		x += 50;
		// MAKE SURE ITS DEFINITELY OFF SCREEN?
		y -= 2000;

		this.strumTime = noteData.time.getDefault(0) + sustainOffset;
		this.noteData = noteData.id.getDefault(0);

		var customType = Paths.image('game/notes/${this.noteType}');
		var event = EventManager.get(NoteCreationEvent).recycle(this, strumID, this.noteType, noteTypeID, PlayState.instance.strumLines.members.indexOf(strumLine), mustPress,
			(this.noteType != null && customTypePathExists(customType)) ? 'game/notes/${this.noteType}' : 'game/notes/default', @:privateAccess strumLine.strumScale * Flags.DEFAULT_NOTE_SCALE, animSuffix);

		if (PlayState.instance != null)
			event = PlayState.instance.gameAndCharsEvent("onNoteCreation", event);

		this.animSuffix = event.animSuffix;
		if (!event.cancelled) {
			switch (event.noteType)
			{
				// case "My Custom Note Type": // hardcoding note types
				default:
					frames = Paths.getFrames(event.noteSprite);

					switch(event.strumID % 4) {
						case 0:
							animation.addByPrefix('scroll', 'purple0');
							animation.addByPrefix('hold', 'purple hold piece');
							animation.addByPrefix("holdend", "pruple end hold");
							if (animation.exists("holdend") != true) // null or false
								animation.addByPrefix('holdend', 'purple hold end');
						case 1:
							animation.addByPrefix('scroll', 'blue0');
							animation.addByPrefix('hold', 'blue hold piece');
							animation.addByPrefix('holdend', 'blue hold end');
						case 2:
							animation.addByPrefix('scroll', 'green0');
							animation.addByPrefix('hold', 'green hold piece');
							animation.addByPrefix('holdend', 'green hold end');
						case 3:
							animation.addByPrefix('scroll', 'red0');
							animation.addByPrefix('hold', 'red hold piece');
							animation.addByPrefix('holdend', 'red hold end');
					}

					scale.set(event.noteScale, event.noteScale);
					antialiasing = true;
			}
		}

		updateHitbox();

		if (isSustainNote && prevNote != null)
		{
			alpha = 0.6;
			animation.play('holdend');

			updateHitbox();

			if (prevNote.isSustainNote)
			{
				prevNote.nextSustain = this;
				prevNote.animation.play('hold');
			}
		} else {
			animation.play("scroll");
		}

		if (PlayState.instance != null) {
			PlayState.instance.splashHandler.getSplashGroup(splash);
			PlayState.instance.gameAndCharsEvent("onPostNoteCreation", event);
		}
	}*/