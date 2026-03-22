package au;
/* compiled from: Subscription.java */
/* loaded from: classes8.dex */
final class p {

    /* renamed from: a  reason: collision with root package name */
    final Object f2126a;

    /* renamed from: b  reason: collision with root package name */
    final n f2127b;

    /* renamed from: c  reason: collision with root package name */
    volatile boolean f2128c = true;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(Object obj, n nVar) {
        this.f2126a = obj;
        this.f2127b = nVar;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof p)) {
            return false;
        }
        p pVar = (p) obj;
        if (this.f2126a != pVar.f2126a || !this.f2127b.equals(pVar.f2127b)) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return this.f2126a.hashCode() + this.f2127b.f2113f.hashCode();
    }
}
