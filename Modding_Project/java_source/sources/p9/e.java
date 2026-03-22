package p9;
/* compiled from: SimpleToken.java */
/* loaded from: classes5.dex */
final class e extends g {

    /* renamed from: c  reason: collision with root package name */
    private final short f64833c;

    /* renamed from: d  reason: collision with root package name */
    private final short f64834d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(g gVar, int i10, int i11) {
        super(gVar);
        this.f64833c = (short) i10;
        this.f64834d = (short) i11;
    }

    @Override // p9.g
    void c(q9.a aVar, byte[] bArr) {
        aVar.c(this.f64833c, this.f64834d);
    }

    public String toString() {
        short s10 = this.f64833c;
        short s11 = this.f64834d;
        int i10 = (s10 & ((1 << s11) - 1)) | (1 << s11);
        return "<" + Integer.toBinaryString(i10 | (1 << this.f64834d)).substring(1) + '>';
    }
}
