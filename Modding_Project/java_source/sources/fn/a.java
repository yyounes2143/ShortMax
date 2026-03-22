package fn;

import androidx.annotation.CallSuper;
/* compiled from: Buffer.java */
/* loaded from: classes8.dex */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    private int f51828a;

    public final void a(int i10) {
        this.f51828a = i10 | this.f51828a;
    }

    @CallSuper
    public void b() {
        this.f51828a = 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean c(int i10) {
        if ((this.f51828a & i10) == i10) {
            return true;
        }
        return false;
    }

    public final boolean e() {
        return c(268435456);
    }

    public final boolean f() {
        return c(4);
    }

    public final boolean g() {
        return c(134217728);
    }

    public final boolean h() {
        return c(1);
    }

    public final boolean i() {
        return c(536870912);
    }

    public final boolean j() {
        return c(67108864);
    }

    public final void k(int i10) {
        this.f51828a = i10;
    }
}
