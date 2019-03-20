public class TriadsKeyHarmonizer: KeyHarmonizer
{
    public override func i() -> Chord
    {
        return buildChord(root: key.i(), third: key.iii(), fifth: key.v())
    }

    public override func ii() -> Chord
    {
        return buildChord(root: key.ii(), third: key.iv(), fifth: key.vi())
    }

    public override func iii() -> Chord
    {
        return buildChord(root: key.iii(), third: key.v(), fifth: key.vii());
    }

    public override func iv() -> Chord
    {
        return buildChord(root: key.iv(), third: key.vi(), fifth: key.i());
    }

    public override func v() -> Chord
    {
        return buildChord(root: key.v(), third: key.vii(), fifth: key.ii());
    }

    public override func vi() -> Chord
    {
        return buildChord(root: key.vi(), third: key.i(), fifth: key.iii());
    }

    public override func vii() -> Chord
    {
        return buildChord(root: key.vii(), third: key.ii(), fifth: key.iv());
    }

    private func buildChord(root: Note, third: Note, fifth: Note) -> Chord
    {
        return ChordBuilder(root: root)
            .addThird(note: third)
            .addFifth(note: fifth)
            .build()
    }
}
