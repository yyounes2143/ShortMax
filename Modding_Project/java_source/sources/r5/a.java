package r5;
/* compiled from: Buffer.java */
/* loaded from: classes4.dex */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    private int f65560a;

    public final void a(int i10) {
        this.f65560a = i10 | this.f65560a;
    }

    public void b() {
        this.f65560a = 0;
    }

    public final void c(int i10) {
        this.f65560a = (~i10) & this.f65560a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean e(int i10) {
        if ((this.f65560a & i10) == i10) {
            return true;
        }
        return false;
    }

    public final boolean f() {
        return e(268435456);
    }

    public final boolean g() {
        return e(Integer.MIN_VALUE);
    }

    public final boolean h() {
        return e(4);
    }

    public final boolean i() {
        return e(134217728);
    }

    public final boolean j() {
        return e(1);
    }

    public final void k(int i10) {
        this.f65560a = i10;
    }
}
