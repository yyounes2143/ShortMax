package com.apm.insight.g;

import android.os.Looper;
import android.os.SystemClock;
import com.apm.insight.CrashType;
import com.apm.insight.ICrashCallback;
import com.apm.insight.ICrashFilter;
import com.apm.insight.IOOMCallback;
import com.apm.insight.e;
import com.apm.insight.k.h;
import com.apm.insight.l.e;
import com.apm.insight.l.f;
import com.apm.insight.l.j;
import com.apm.insight.nativecrash.NativeImpl;
import com.apm.insight.runtime.l;
import com.apm.insight.runtime.m;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.PrintStream;
import java.lang.Thread;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
/* compiled from: CrashCatchDispatcher.java */
/* loaded from: classes2.dex */
public final class a implements Thread.UncaughtExceptionHandler {

    /* renamed from: a  reason: collision with root package name */
    private static a f6912a = null;

    /* renamed from: i  reason: collision with root package name */
    private static volatile boolean f6913i = false;

    /* renamed from: j  reason: collision with root package name */
    private static volatile ThreadLocal<Boolean> f6914j = new ThreadLocal<>();

    /* renamed from: l  reason: collision with root package name */
    private static volatile long f6915l = 10000;

    /* renamed from: m  reason: collision with root package name */
    private static ArrayList<b> f6916m = new ArrayList<>();

    /* renamed from: b  reason: collision with root package name */
    private Thread.UncaughtExceptionHandler f6917b;

    /* renamed from: c  reason: collision with root package name */
    private c f6918c;

    /* renamed from: d  reason: collision with root package name */
    private c f6919d;

    /* renamed from: e  reason: collision with root package name */
    private volatile int f6920e = 0;

    /* renamed from: f  reason: collision with root package name */
    private volatile int f6921f = 0;

    /* renamed from: g  reason: collision with root package name */
    private ConcurrentHashMap<String, Object> f6922g = new ConcurrentHashMap<>();

    /* renamed from: h  reason: collision with root package name */
    private ConcurrentHashMap<String, Object> f6923h = new ConcurrentHashMap<>();

    /* renamed from: k  reason: collision with root package name */
    private JSONArray f6924k;

    private a() {
        Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
        if (defaultUncaughtExceptionHandler != this) {
            this.f6917b = defaultUncaughtExceptionHandler;
            Thread.setDefaultUncaughtExceptionHandler(this);
        }
    }

    public static a a() {
        if (f6912a == null) {
            f6912a = new a();
        }
        return f6912a;
    }

    private void c(Thread thread, Throwable th2) {
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f6917b;
        if (uncaughtExceptionHandler == null || uncaughtExceptionHandler == this) {
            return;
        }
        uncaughtExceptionHandler.uncaughtException(thread, th2);
    }

    private void d() {
        synchronized (this) {
            this.f6921f--;
        }
        long uptimeMillis = SystemClock.uptimeMillis();
        while (this.f6921f != 0 && SystemClock.uptimeMillis() - uptimeMillis < f6915l) {
            SystemClock.sleep(50L);
        }
    }

    private static void e() {
        File a10 = j.a(e.g());
        File a11 = j.a();
        if (f.b(a10) && f.b(a11)) {
            return;
        }
        long uptimeMillis = SystemClock.uptimeMillis();
        while (!h.a() && SystemClock.uptimeMillis() - uptimeMillis < f6915l) {
            try {
                SystemClock.sleep(500L);
            } catch (Throwable unused) {
            }
        }
    }

    private static int f() {
        int i10 = 0;
        for (int i11 = 0; i11 < f6916m.size(); i11++) {
            try {
                try {
                    i10 |= f6916m.get(i11).a();
                } catch (Throwable th2) {
                    com.apm.insight.c.a();
                    com.apm.insight.runtime.j.a(th2, "NPTH_CATCH");
                }
            } catch (Throwable unused) {
            }
        }
        return i10;
    }

    private static Throwable g() {
        for (int i10 = 0; i10 < f6916m.size(); i10++) {
            try {
                f6916m.get(i10);
            } catch (Throwable unused) {
            }
        }
        if (Looper.getMainLooper() == Looper.myLooper()) {
            try {
                Looper.loop();
                return null;
            } catch (Throwable th2) {
                return th2;
            }
        }
        return null;
    }

    public final void b(c cVar) {
        this.f6919d = cVar;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th2) {
        do {
            th2 = a(thread, th2);
        } while (th2 != null);
    }

    private static boolean b(Thread thread, Throwable th2) {
        ICrashFilter b10 = e.b().b();
        if (b10 != null) {
            try {
                if (!b10.onJavaCrashFilter(th2, thread)) {
                    return false;
                }
            } catch (Throwable unused) {
            }
        }
        return true;
    }

    public static void c(final String str) {
        if (str == null) {
            return;
        }
        try {
            m.a().a(new Runnable() { // from class: com.apm.insight.g.a.3
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        com.apm.insight.entity.a aVar = new com.apm.insight.entity.a();
                        aVar.a("data", (Object) str);
                        aVar.a("userdefine", (Object) 1);
                        com.apm.insight.entity.a a10 = com.apm.insight.runtime.a.f.a().a(CrashType.CUSTOM_JAVA, aVar);
                        if (a10 != null) {
                            com.apm.insight.k.d.a().c(a10.c());
                        }
                    } catch (Throwable unused) {
                    }
                }
            });
        } catch (Throwable unused) {
        }
    }

    public static boolean c() {
        Boolean bool = f6914j.get();
        return bool != null && bool.booleanValue();
    }

    public final void a(c cVar) {
        this.f6918c = cVar;
    }

    public final boolean b(String str) {
        return this.f6922g.containsKey(str);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(29:5|(1:7)|8|(1:160)(1:12)|(2:13|14)|(3:147|148|(23:150|17|18|(2:144|145)(2:20|21)|22|23|(14:(1:26)|76|77|78|(1:81)(3:130|(1:132)(1:135)|133)|82|(1:84)(1:128)|(3:87|88|89)|94|95|(2:97|(4:100|101|102|(4:(2:106|107)|108|42|43)(3:1a4|113|114)))|121|(3:123|(1:125)|102)|(0)(0))|140|77|78|(10:81|82|(0)(0)|(3:87|88|89)|94|95|(0)|121|(0)|(0)(0))|130|(0)(0)|133|82|(0)(0)|(0)|94|95|(0)|121|(0)|(0)(0)))|16|17|18|(0)(0)|22|23|(0)|140|77|78|(0)|130|(0)(0)|133|82|(0)(0)|(0)|94|95|(0)|121|(0)|(0)(0)) */
    /* JADX WARN: Can't wrap try/catch for region: R(30:5|(1:7)|8|(1:160)(1:12)|13|14|(3:147|148|(23:150|17|18|(2:144|145)(2:20|21)|22|23|(14:(1:26)|76|77|78|(1:81)(3:130|(1:132)(1:135)|133)|82|(1:84)(1:128)|(3:87|88|89)|94|95|(2:97|(4:100|101|102|(4:(2:106|107)|108|42|43)(3:1a4|113|114)))|121|(3:123|(1:125)|102)|(0)(0))|140|77|78|(10:81|82|(0)(0)|(3:87|88|89)|94|95|(0)|121|(0)|(0)(0))|130|(0)(0)|133|82|(0)(0)|(0)|94|95|(0)|121|(0)|(0)(0)))|16|17|18|(0)(0)|22|23|(0)|140|77|78|(0)|130|(0)(0)|133|82|(0)(0)|(0)|94|95|(0)|121|(0)|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x01cc, code lost:
        com.apm.insight.a.a(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x01d4, code lost:
        if (r2 != false) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x01e0, code lost:
        a(r21, r22, r17, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x01e3, code lost:
        e();
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x01e8, code lost:
        monitor-enter(r20);
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x01e9, code lost:
        r20.f6921f -= r4;
        r20.f6920e -= r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x01f8, code lost:
        return g();
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00a8, code lost:
        if (com.apm.insight.e.i().isCrashIgnored(r10) != false) goto L140;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00c0, code lost:
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00c1, code lost:
        r19 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x015b, code lost:
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x015c, code lost:
        r2 = r2;
        r4 = r4;
        r5 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x01b8, code lost:
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x01b9, code lost:
        r2 = r9;
        r5 = r11;
        r4 = 1;
        r19 = false;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:103:0x01cc A[Catch: all -> 0x01d0, TRY_LEAVE, TryCatch #6 {all -> 0x01d0, blocks: (B:101:0x01c6, B:103:0x01cc), top: B:153:0x01c6 }] */
    /* JADX WARN: Removed duplicated region for block: B:108:0x01d4  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x01e8  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x0079 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:155:0x006e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00b9 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00bd A[Catch: all -> 0x00c0, TRY_ENTER, TryCatch #0 {all -> 0x00c0, blocks: (B:48:0x00bd, B:54:0x00cc, B:53:0x00ca), top: B:141:0x00bb }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00ca A[Catch: all -> 0x00c0, TryCatch #0 {all -> 0x00c0, blocks: (B:48:0x00bd, B:54:0x00cc, B:53:0x00ca), top: B:141:0x00bb }] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0108 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x012f A[Catch: all -> 0x0117, TRY_LEAVE, TryCatch #10 {all -> 0x0117, blocks: (B:64:0x0113, B:67:0x0119, B:69:0x012f), top: B:161:0x0113 }] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0164 A[Catch: all -> 0x015b, TryCatch #13 {all -> 0x015b, blocks: (B:73:0x0142, B:78:0x0164, B:80:0x0168), top: B:168:0x012d }] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x018b  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x01a4  */
    /* JADX WARN: Type inference failed for: r20v0, types: [com.apm.insight.g.a] */
    /* JADX WARN: Type inference failed for: r2v20, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v21 */
    /* JADX WARN: Type inference failed for: r2v23 */
    /* JADX WARN: Type inference failed for: r2v25 */
    /* JADX WARN: Type inference failed for: r2v26 */
    /* JADX WARN: Type inference failed for: r2v36 */
    /* JADX WARN: Type inference failed for: r2v37 */
    /* JADX WARN: Type inference failed for: r4v15, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r4v17 */
    /* JADX WARN: Type inference failed for: r4v18 */
    /* JADX WARN: Type inference failed for: r4v19 */
    /* JADX WARN: Type inference failed for: r4v30 */
    /* JADX WARN: Type inference failed for: r5v13, types: [long] */
    /* JADX WARN: Type inference failed for: r5v3, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r5v8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.Throwable a(java.lang.Thread r21, java.lang.Throwable r22) {
        /*
            Method dump skipped, instructions count: 555
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apm.insight.g.a.a(java.lang.Thread, java.lang.Throwable):java.lang.Throwable");
    }

    public static boolean b() {
        return f6913i;
    }

    private String a(File file, Throwable th2, Thread thread, boolean z10) {
        String absolutePath = file.getAbsolutePath();
        this.f6923h.put(file.getName(), file);
        try {
            file.getParentFile().mkdirs();
            file.createNewFile();
            NativeImpl.c(absolutePath);
        } catch (Throwable unused) {
        }
        String str = null;
        if (z10) {
            int h10 = NativeImpl.h(absolutePath);
            if (h10 > 0) {
                try {
                    e.g();
                    NativeImpl.a(h10, com.apm.insight.l.a.b());
                    NativeImpl.a(h10, "\n");
                    NativeImpl.a(h10, th2.getMessage());
                    NativeImpl.a(h10, "\n");
                    NativeImpl.a(h10, th2.getClass().getName());
                    if (th2.getMessage() != null) {
                        NativeImpl.a(h10, ": ");
                        NativeImpl.a(h10, th2.getMessage());
                    }
                    NativeImpl.a(h10, "\n");
                    NativeImpl.a(h10, thread.getName());
                    NativeImpl.a(h10, "\n");
                } catch (Throwable unused2) {
                }
                try {
                    NativeImpl.a(h10, "stack:");
                    NativeImpl.a(h10, "\n");
                } catch (Throwable unused3) {
                }
                com.apm.insight.l.m.a(th2, h10);
                NativeImpl.b(h10);
            }
        } else {
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(file, true);
                try {
                    StringBuilder sb2 = new StringBuilder();
                    e.g();
                    sb2.append(com.apm.insight.l.a.b());
                    sb2.append("\n");
                    fileOutputStream.write(sb2.toString().getBytes());
                    fileOutputStream.write((th2.getMessage() + "\n").getBytes());
                    fileOutputStream.write((th2 + "\n").getBytes());
                    fileOutputStream.write((thread.getName() + "\n").getBytes());
                } catch (Throwable unused4) {
                }
                try {
                    fileOutputStream.write("stack:\n".getBytes());
                } catch (Throwable unused5) {
                }
                try {
                    str = com.apm.insight.l.m.a(th2, new PrintStream(fileOutputStream), Looper.getMainLooper() == Looper.myLooper() ? new e.a() { // from class: com.apm.insight.g.a.1

                        /* renamed from: a  reason: collision with root package name */
                        private boolean f6925a = false;

                        @Override // com.apm.insight.l.e.a
                        public final boolean a(String str2) {
                            if (!this.f6925a && str2.contains("android.os.Looper.loop")) {
                                this.f6925a = true;
                            }
                            if (!this.f6925a) {
                                return true;
                            }
                            return false;
                        }
                    } : new e.a());
                    com.apm.insight.a.a((Closeable) fileOutputStream);
                } catch (Throwable th3) {
                    try {
                        th2.printStackTrace(new PrintStream(fileOutputStream));
                    } catch (Throwable th4) {
                        try {
                            fileOutputStream.write("err:\n".getBytes());
                            fileOutputStream.write((th3 + "\n").getBytes());
                            fileOutputStream.write((th4 + "\n").getBytes());
                        } catch (Throwable unused6) {
                        }
                    }
                }
                com.apm.insight.a.a((Closeable) fileOutputStream);
            } catch (Throwable unused7) {
            }
        }
        return str;
    }

    public final void a(Thread thread, Throwable th2, boolean z10, com.apm.insight.entity.a aVar) {
        List<ICrashCallback> c10;
        CrashType crashType;
        if (z10) {
            c10 = l.a().b();
            crashType = CrashType.LAUNCH;
        } else {
            c10 = l.a().c();
            crashType = CrashType.JAVA;
        }
        for (ICrashCallback iCrashCallback : c10) {
            long uptimeMillis = SystemClock.uptimeMillis();
            try {
                if (iCrashCallback instanceof com.apm.insight.b) {
                    ((com.apm.insight.b) iCrashCallback).a(crashType, com.apm.insight.l.m.a(th2), thread, this.f6924k);
                } else {
                    iCrashCallback.onCrash(crashType, com.apm.insight.l.m.a(th2), thread);
                }
                aVar.b("callback_cost_" + iCrashCallback.getClass().getName(), String.valueOf(SystemClock.uptimeMillis() - uptimeMillis));
            } catch (Throwable th3) {
                com.apm.insight.a.b(th3);
                aVar.b("callback_err_" + iCrashCallback.getClass().getName(), String.valueOf(SystemClock.uptimeMillis() - uptimeMillis));
            }
        }
    }

    private void a(Thread thread, Throwable th2, boolean z10, long j10) {
        List<IOOMCallback> a10 = l.a().a();
        CrashType crashType = z10 ? CrashType.LAUNCH : CrashType.JAVA;
        for (IOOMCallback iOOMCallback : a10) {
            try {
                if (iOOMCallback instanceof com.apm.insight.b) {
                    ((com.apm.insight.b) iOOMCallback).a(crashType, th2, thread, j10, this.f6924k);
                } else {
                    iOOMCallback.onCrash(crashType, th2, thread, j10);
                }
            } catch (Throwable th3) {
                com.apm.insight.a.b(th3);
            }
        }
    }

    public final void a(String str) {
        this.f6922g.put(str, new Object());
    }

    public static void a(final Throwable th2) {
        if (th2 == null) {
            return;
        }
        try {
            m.a().a(new Runnable() { // from class: com.apm.insight.g.a.2
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        com.apm.insight.entity.a a10 = com.apm.insight.entity.a.a(System.currentTimeMillis(), com.apm.insight.e.g(), th2);
                        a10.a("userdefine", (Object) 1);
                        com.apm.insight.entity.a a11 = com.apm.insight.runtime.a.f.a().a(CrashType.CUSTOM_JAVA, a10);
                        if (a11 != null) {
                            com.apm.insight.k.d.a().c(a11.c());
                        }
                    } catch (Throwable unused) {
                    }
                }
            });
        } catch (Throwable unused) {
        }
    }

    public static void a(long j10) {
        f6915l = j10;
    }
}
