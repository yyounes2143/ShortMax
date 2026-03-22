package b7;

import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.Size;
import java.net.UnknownHostException;
/* compiled from: Log.java */
/* loaded from: classes4.dex */
public final class q {
    @GuardedBy("lock")

    /* renamed from: b  reason: collision with root package name */
    private static int f2499b = 0;
    @GuardedBy("lock")

    /* renamed from: c  reason: collision with root package name */
    private static boolean f2500c = true;

    /* renamed from: a  reason: collision with root package name */
    private static final Object f2498a = new Object();
    @GuardedBy("lock")

    /* renamed from: d  reason: collision with root package name */
    private static a f2501d = a.f2502a;

    /* compiled from: Log.java */
    /* loaded from: classes4.dex */
    public interface a {

        /* renamed from: a  reason: collision with root package name */
        public static final a f2502a = new C0078a();

        /* compiled from: Log.java */
        /* renamed from: b7.q$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        class C0078a implements a {
            C0078a() {
            }

            @Override // b7.q.a
            public void d(String str, String str2) {
                Log.d(str, str2);
            }

            @Override // b7.q.a
            public void e(String str, String str2) {
                Log.e(str, str2);
            }

            @Override // b7.q.a
            public void i(String str, String str2) {
                Log.i(str, str2);
            }

            @Override // b7.q.a
            public void w(String str, String str2) {
                Log.w(str, str2);
            }
        }

        void d(String str, String str2);

        void e(String str, String str2);

        void i(String str, String str2);

        void w(String str, String str2);
    }

    private static String a(String str, @Nullable Throwable th2) {
        String e10 = e(th2);
        if (!TextUtils.isEmpty(e10)) {
            return str + "\n  " + e10.replace("\n", "\n  ") + '\n';
        }
        return str;
    }

    public static void b(@Size(max = 23) String str, String str2) {
        synchronized (f2498a) {
            try {
                if (f2499b == 0) {
                    f2501d.d(str, str2);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void c(@Size(max = 23) String str, String str2) {
        synchronized (f2498a) {
            try {
                if (f2499b <= 3) {
                    f2501d.e(str, str2);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void d(@Size(max = 23) String str, String str2, @Nullable Throwable th2) {
        c(str, a(str2, th2));
    }

    @Nullable
    public static String e(@Nullable Throwable th2) {
        synchronized (f2498a) {
            try {
                if (th2 == null) {
                    return null;
                }
                if (h(th2)) {
                    return "UnknownHostException (no network)";
                }
                if (!f2500c) {
                    return th2.getMessage();
                }
                return Log.getStackTraceString(th2).trim().replace("\t", "    ");
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }

    public static void f(@Size(max = 23) String str, String str2) {
        synchronized (f2498a) {
            try {
                if (f2499b <= 1) {
                    f2501d.i(str, str2);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void g(@Size(max = 23) String str, String str2, @Nullable Throwable th2) {
        f(str, a(str2, th2));
    }

    private static boolean h(@Nullable Throwable th2) {
        while (th2 != null) {
            if (th2 instanceof UnknownHostException) {
                return true;
            }
            th2 = th2.getCause();
        }
        return false;
    }

    public static void i(@Size(max = 23) String str, String str2) {
        synchronized (f2498a) {
            try {
                if (f2499b <= 2) {
                    f2501d.w(str, str2);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void j(@Size(max = 23) String str, String str2, @Nullable Throwable th2) {
        i(str, a(str2, th2));
    }
}
