package h2;
/* compiled from: NoOpDiskTrimmableRegistry.java */
/* loaded from: classes3.dex */
public class c implements b {

    /* renamed from: a  reason: collision with root package name */
    private static c f52586a;

    private c() {
    }

    public static synchronized c b() {
        c cVar;
        synchronized (c.class) {
            try {
                if (f52586a == null) {
                    f52586a = new c();
                }
                cVar = f52586a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return cVar;
    }

    @Override // h2.b
    public void a(a aVar) {
    }
}
