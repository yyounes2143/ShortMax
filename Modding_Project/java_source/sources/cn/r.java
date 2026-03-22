package cn;

import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.Size;
import java.net.UnknownHostException;
/* compiled from: Log.java */
/* loaded from: classes8.dex */
public final class r {
    @GuardedBy("lock")

    /* renamed from: b  reason: collision with root package name */
    private static int f3649b = 0;
    @GuardedBy("lock")

    /* renamed from: c  reason: collision with root package name */
    private static boolean f3650c = true;

    /* renamed from: a  reason: collision with root package name */
    private static final Object f3648a = new Object();
    @GuardedBy("lock")

    /* renamed from: d  reason: collision with root package name */
    private static a f3651d = a.f3652a;

    /* compiled from: Log.java */
    /* loaded from: classes8.dex */
    public interface a {

        /* renamed from: a  reason: collision with root package name */
        public static final a f3652a = new C0092a();

        /* compiled from: Log.java */
        /* renamed from: cn.r$a$a  reason: collision with other inner class name */
        /* loaded from: classes8.dex */
        class C0092a implements a {
            C0092a() {
            }

            @Override // cn.r.a
            public void a(String str, String str2, @Nullable Throwable th2) {
                Log.d(str, r.a(str2, th2));
            }

            @Override // cn.r.a
            public void b(String str, String str2, @Nullable Throwable th2) {
                Log.i(str, r.a(str2, th2));
            }

            @Override // cn.r.a
            public void e(String str, String str2, @Nullable Throwable th2) {
                Log.e(str, r.a(str2, th2));
            }

            @Override // cn.r.a
            public void w(String str, String str2, @Nullable Throwable th2) {
                Log.w(str, r.a(str2, th2));
            }
        }

        void a(String str, String str2, @Nullable Throwable th2);

        void b(String str, String str2, @Nullable Throwable th2);

        void e(String str, String str2, @Nullable Throwable th2);

        void w(String str, String str2, @Nullable Throwable th2);
    }

    public static String a(String str, @Nullable Throwable th2) {
        String e10 = e(th2);
        if (!TextUtils.isEmpty(e10)) {
            return str + "\n  " + e10.replace("\n", "\n  ") + '\n';
        }
        return str;
    }

    public static void b(@Size(max = 23) String str, String str2) {
        synchronized (f3648a) {
            try {
                if (f3649b == 0) {
                    f3651d.a(str, str2, null);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void c(@Size(max = 23) String str, String str2) {
        synchronized (f3648a) {
            try {
                if (f3649b <= 3) {
                    f3651d.e(str, str2, null);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void d(@Size(max = 23) String str, String str2, @Nullable Throwable th2) {
        synchronized (f3648a) {
            try {
                if (f3649b <= 3) {
                    f3651d.e(str, str2, th2);
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }

    @Nullable
    public static String e(@Nullable Throwable th2) {
        if (th2 == null) {
            return null;
        }
        synchronized (f3648a) {
            try {
                if (g(th2)) {
                    return "UnknownHostException (no network)";
                }
                if (!f3650c) {
                    return th2.getMessage();
                }
                return Log.getStackTraceString(th2).trim().replace("\t", "    ");
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }

    public static void f(@Size(max = 23) String str, String str2) {
        synchronized (f3648a) {
            try {
                if (f3649b <= 1) {
                    f3651d.b(str, str2, null);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private static boolean g(@Nullable Throwable th2) {
        while (th2 != null) {
            if (th2 instanceof UnknownHostException) {
                return true;
            }
            th2 = th2.getCause();
        }
        return false;
    }

    public static void h(@Size(max = 23) String str, String str2) {
        synchronized (f3648a) {
            try {
                if (f3649b <= 2) {
                    f3651d.w(str, str2, null);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void i(@Size(max = 23) String str, String str2, @Nullable Throwable th2) {
        synchronized (f3648a) {
            try {
                if (f3649b <= 2) {
                    f3651d.w(str, str2, th2);
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }
}
