package n2;
/* compiled from: NoOpMemoryTrimmableRegistry.java */
/* loaded from: classes3.dex */
public class d implements c {

    /* renamed from: a  reason: collision with root package name */
    private static d f62726a;

    public static synchronized d b() {
        d dVar;
        synchronized (d.class) {
            try {
                if (f62726a == null) {
                    f62726a = new d();
                }
                dVar = f62726a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return dVar;
    }

    @Override // n2.c
    public void a(b bVar) {
    }
}
