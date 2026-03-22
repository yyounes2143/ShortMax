package p9;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Token.java */
/* loaded from: classes5.dex */
public abstract class g {

    /* renamed from: b  reason: collision with root package name */
    static final g f64840b = new e(null, 0, 0);

    /* renamed from: a  reason: collision with root package name */
    private final g f64841a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(g gVar) {
        this.f64841a = gVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final g a(int i10, int i11) {
        return new e(this, i10, i11);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final g b(int i10, int i11) {
        return new b(this, i10, i11);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void c(q9.a aVar, byte[] bArr);

    /* JADX INFO: Access modifiers changed from: package-private */
    public final g d() {
        return this.f64841a;
    }
}
