package au;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AsyncPoster.java */
/* loaded from: classes8.dex */
public class a implements Runnable, k {

    /* renamed from: a  reason: collision with root package name */
    private final j f2045a = new j();

    /* renamed from: b  reason: collision with root package name */
    private final c f2046b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(c cVar) {
        this.f2046b = cVar;
    }

    @Override // au.k
    public void a(p pVar, Object obj) {
        this.f2045a.a(i.a(pVar, obj));
        this.f2046b.e().execute(this);
    }

    @Override // java.lang.Runnable
    public void run() {
        i b10 = this.f2045a.b();
        if (b10 != null) {
            this.f2046b.h(b10);
            return;
        }
        throw new IllegalStateException("No pending post available");
    }
}
