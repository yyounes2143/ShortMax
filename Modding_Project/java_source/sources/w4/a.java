package w4;
/* compiled from: NativeLoader.java */
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static b f69632a;

    private a() {
    }

    public static void a(b bVar) {
        synchronized (a.class) {
            try {
                if (f69632a == null) {
                    f69632a = bVar;
                } else {
                    throw new IllegalStateException("Cannot re-initialize NativeLoader.");
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void b(b bVar) {
        if (!c()) {
            a(bVar);
        }
    }

    public static boolean c() {
        boolean z10;
        synchronized (a.class) {
            if (f69632a != null) {
                z10 = true;
            } else {
                z10 = false;
            }
        }
        return z10;
    }

    public static boolean d(String str) {
        return e(str, 0);
    }

    public static boolean e(String str, int i10) {
        b bVar;
        synchronized (a.class) {
            bVar = f69632a;
            if (bVar == null) {
                throw new IllegalStateException("NativeLoader has not been initialized.  To use standard native library loading, call NativeLoader.init(new SystemDelegate()).");
            }
        }
        return bVar.a(str, i10);
    }
}
