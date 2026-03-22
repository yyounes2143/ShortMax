package y2;

import android.os.Looper;
/* compiled from: DeferredReleaser.java */
/* loaded from: classes3.dex */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    private static a f70595a;

    /* compiled from: DeferredReleaser.java */
    /* renamed from: y2.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public interface InterfaceC0973a {
        void release();
    }

    public static synchronized a b() {
        a aVar;
        synchronized (a.class) {
            try {
                if (f70595a == null) {
                    f70595a = new b();
                }
                aVar = f70595a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return aVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean c() {
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            return true;
        }
        return false;
    }

    public abstract void a(InterfaceC0973a interfaceC0973a);

    public abstract void d(InterfaceC0973a interfaceC0973a);
}
