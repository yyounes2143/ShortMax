package w;
/* compiled from: TaskCompletionSource.java */
/* loaded from: classes2.dex */
public class f<TResult> {

    /* renamed from: a  reason: collision with root package name */
    private final e<TResult> f69595a = new e<>();

    public e<TResult> a() {
        return this.f69595a;
    }

    public void b() {
        if (e()) {
            return;
        }
        throw new IllegalStateException("Cannot cancel a completed task.");
    }

    public void c(Exception exc) {
        if (f(exc)) {
            return;
        }
        throw new IllegalStateException("Cannot set the error on a completed task.");
    }

    public void d(TResult tresult) {
        if (g(tresult)) {
            return;
        }
        throw new IllegalStateException("Cannot set the result of a completed task.");
    }

    public boolean e() {
        return this.f69595a.p();
    }

    public boolean f(Exception exc) {
        return this.f69595a.q(exc);
    }

    public boolean g(TResult tresult) {
        return this.f69595a.r(tresult);
    }
}
