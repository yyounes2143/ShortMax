package com.google.firebase.crashlytics.internal.common;

import android.app.ActivityManager;
import android.app.ApplicationExitInfo;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.StatFs;
import android.util.Base64;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.crashlytics.internal.common.c0;
import com.google.firebase.crashlytics.internal.concurrency.CrashlyticsWorkers;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import e8.f0;
import e8.g0;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.lang.Thread;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.SortedSet;
import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CrashlyticsController.java */
/* loaded from: classes5.dex */
public class o {

    /* renamed from: t  reason: collision with root package name */
    static final FilenameFilter f20753t = new FilenameFilter() { // from class: com.google.firebase.crashlytics.internal.common.n
        @Override // java.io.FilenameFilter
        public final boolean accept(File file, String str) {
            boolean M;
            M = o.M(file, str);
            return M;
        }
    };

    /* renamed from: u  reason: collision with root package name */
    private static final Charset f20754u = Charset.forName("UTF-8");

    /* renamed from: a  reason: collision with root package name */
    private final Context f20755a;

    /* renamed from: b  reason: collision with root package name */
    private final e0 f20756b;

    /* renamed from: c  reason: collision with root package name */
    private final z f20757c;

    /* renamed from: d  reason: collision with root package name */
    private final d8.p f20758d;

    /* renamed from: e  reason: collision with root package name */
    private final CrashlyticsWorkers f20759e;

    /* renamed from: f  reason: collision with root package name */
    private final i0 f20760f;

    /* renamed from: g  reason: collision with root package name */
    private final h8.g f20761g;

    /* renamed from: h  reason: collision with root package name */
    private final com.google.firebase.crashlytics.internal.common.a f20762h;

    /* renamed from: i  reason: collision with root package name */
    private final d8.f f20763i;

    /* renamed from: j  reason: collision with root package name */
    private final z7.a f20764j;

    /* renamed from: k  reason: collision with root package name */
    private final a8.a f20765k;

    /* renamed from: l  reason: collision with root package name */
    private final l f20766l;

    /* renamed from: m  reason: collision with root package name */
    private final s0 f20767m;

    /* renamed from: n  reason: collision with root package name */
    private c0 f20768n;

    /* renamed from: o  reason: collision with root package name */
    private j8.b f20769o = null;

    /* renamed from: p  reason: collision with root package name */
    final TaskCompletionSource<Boolean> f20770p = new TaskCompletionSource<>();

    /* renamed from: q  reason: collision with root package name */
    final TaskCompletionSource<Boolean> f20771q = new TaskCompletionSource<>();

    /* renamed from: r  reason: collision with root package name */
    final TaskCompletionSource<Void> f20772r = new TaskCompletionSource<>();

    /* renamed from: s  reason: collision with root package name */
    final AtomicBoolean f20773s = new AtomicBoolean(false);

    /* compiled from: CrashlyticsController.java */
    /* loaded from: classes5.dex */
    class a implements c0.a {
        a() {
        }

        @Override // com.google.firebase.crashlytics.internal.common.c0.a
        public void a(@NonNull j8.b bVar, @NonNull Thread thread, @NonNull Throwable th2) {
            o.this.I(bVar, thread, th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CrashlyticsController.java */
    /* loaded from: classes5.dex */
    public class b implements Callable<Task<Void>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ long f20775a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Throwable f20776b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Thread f20777c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ j8.b f20778d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ boolean f20779e;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: CrashlyticsController.java */
        /* loaded from: classes5.dex */
        public class a implements SuccessContinuation<com.google.firebase.crashlytics.internal.settings.c, Void> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ String f20781a;

            a(String str) {
                this.f20781a = str;
            }

            @Override // com.google.android.gms.tasks.SuccessContinuation
            @NonNull
            /* renamed from: a */
            public Task<Void> then(@Nullable com.google.firebase.crashlytics.internal.settings.c cVar) throws Exception {
                String str = null;
                if (cVar != null) {
                    Task P = o.this.P();
                    s0 s0Var = o.this.f20767m;
                    com.google.firebase.crashlytics.internal.concurrency.a aVar = o.this.f20759e.f20844a;
                    if (b.this.f20779e) {
                        str = this.f20781a;
                    }
                    return Tasks.whenAll(P, s0Var.B(aVar, str));
                }
                z7.g.f().k("Received null app settings, cannot send reports at crash time.");
                return Tasks.forResult(null);
            }
        }

        b(long j10, Throwable th2, Thread thread, j8.b bVar, boolean z10) {
            this.f20775a = j10;
            this.f20776b = th2;
            this.f20777c = thread;
            this.f20778d = bVar;
            this.f20779e = z10;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public Task<Void> call() throws Exception {
            long G = o.G(this.f20775a);
            String C = o.this.C();
            if (C == null) {
                z7.g.f().d("Tried to write a fatal exception while no session was open.");
                return Tasks.forResult(null);
            }
            o.this.f20757c.a();
            o.this.f20767m.w(this.f20776b, this.f20777c, C, G);
            o.this.x(this.f20775a);
            o.this.u(this.f20778d);
            o.this.w(new h().c(), Boolean.valueOf(this.f20779e));
            if (!o.this.f20756b.d()) {
                return Tasks.forResult(null);
            }
            return this.f20778d.b().onSuccessTask(o.this.f20759e.f20844a, new a(C));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CrashlyticsController.java */
    /* loaded from: classes5.dex */
    public class c implements SuccessContinuation<Void, Boolean> {
        c() {
        }

        @Override // com.google.android.gms.tasks.SuccessContinuation
        @NonNull
        /* renamed from: a */
        public Task<Boolean> then(@Nullable Void r12) throws Exception {
            return Tasks.forResult(Boolean.TRUE);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CrashlyticsController.java */
    /* loaded from: classes5.dex */
    public class d implements SuccessContinuation<Boolean, Void> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Task f20784a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: CrashlyticsController.java */
        /* loaded from: classes5.dex */
        public class a implements SuccessContinuation<com.google.firebase.crashlytics.internal.settings.c, Void> {
            a() {
            }

            @Override // com.google.android.gms.tasks.SuccessContinuation
            @NonNull
            /* renamed from: a */
            public Task<Void> then(@Nullable com.google.firebase.crashlytics.internal.settings.c cVar) throws Exception {
                if (cVar != null) {
                    o.this.P();
                    o.this.f20767m.A(o.this.f20759e.f20844a);
                    o.this.f20772r.trySetResult(null);
                    return Tasks.forResult(null);
                }
                z7.g.f().k("Received null app settings at app startup. Cannot send cached reports");
                return Tasks.forResult(null);
            }
        }

        d(Task task) {
            this.f20784a = task;
        }

        @Override // com.google.android.gms.tasks.SuccessContinuation
        @NonNull
        /* renamed from: a */
        public Task<Void> then(@Nullable Boolean bool) throws Exception {
            if (!bool.booleanValue()) {
                z7.g.f().i("Deleting cached crash reports...");
                o.r(o.this.N());
                o.this.f20767m.z();
                o.this.f20772r.trySetResult(null);
                return Tasks.forResult(null);
            }
            z7.g.f().b("Sending cached crash reports...");
            o.this.f20756b.c(bool.booleanValue());
            return this.f20784a.onSuccessTask(o.this.f20759e.f20844a, new a());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CrashlyticsController.java */
    /* loaded from: classes5.dex */
    public class e implements Callable<Void> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ long f20787a;

        e(long j10) {
            this.f20787a = j10;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public Void call() throws Exception {
            Bundle bundle = new Bundle();
            bundle.putInt("fatal", 1);
            bundle.putLong("timestamp", this.f20787a);
            o.this.f20765k.a("_ae", bundle);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(Context context, i0 i0Var, e0 e0Var, h8.g gVar, z zVar, com.google.firebase.crashlytics.internal.common.a aVar, d8.p pVar, d8.f fVar, s0 s0Var, z7.a aVar2, a8.a aVar3, l lVar, CrashlyticsWorkers crashlyticsWorkers) {
        this.f20755a = context;
        this.f20760f = i0Var;
        this.f20756b = e0Var;
        this.f20761g = gVar;
        this.f20757c = zVar;
        this.f20762h = aVar;
        this.f20758d = pVar;
        this.f20763i = fVar;
        this.f20764j = aVar2;
        this.f20765k = aVar3;
        this.f20766l = lVar;
        this.f20767m = s0Var;
        this.f20759e = crashlyticsWorkers;
    }

    private static boolean B() {
        try {
            Class.forName("com.google.firebase.crash.FirebaseCrash");
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public String C() {
        SortedSet<String> s10 = this.f20767m.s();
        if (!s10.isEmpty()) {
            return s10.first();
        }
        return null;
    }

    private static long D() {
        return G(System.currentTimeMillis());
    }

    @NonNull
    static List<l0> E(z7.h hVar, String str, h8.g gVar, byte[] bArr) {
        File q10 = gVar.q(str, "user-data");
        File q11 = gVar.q(str, "keys");
        File q12 = gVar.q(str, "rollouts-state");
        ArrayList arrayList = new ArrayList();
        arrayList.add(new g("logs_file", "logs", bArr));
        arrayList.add(new g0("crash_meta_file", TtmlNode.TAG_METADATA, hVar.g()));
        arrayList.add(new g0("session_meta_file", "session", hVar.f()));
        arrayList.add(new g0("app_meta_file", MBridgeConstans.DYNAMIC_VIEW_WX_APP, hVar.d()));
        arrayList.add(new g0("device_meta_file", "device", hVar.a()));
        arrayList.add(new g0("os_meta_file", "os", hVar.e()));
        arrayList.add(R(hVar));
        arrayList.add(new g0("user_meta_file", "user", q10));
        arrayList.add(new g0("keys_file", "keys", q11));
        arrayList.add(new g0("rollouts_file", "rollouts", q12));
        return arrayList;
    }

    private InputStream F(String str) {
        ClassLoader classLoader = getClass().getClassLoader();
        if (classLoader == null) {
            z7.g.f().k("Couldn't get Class Loader");
            return null;
        }
        return classLoader.getResourceAsStream(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long G(long j10) {
        return j10 / 1000;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void L(String str) {
        w(str, Boolean.FALSE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean M(File file, String str) {
        return str.startsWith(".ae");
    }

    private Task<Void> O(long j10) {
        if (B()) {
            z7.g.f().k("Skipping logging Crashlytics event to Firebase, FirebaseCrash exists");
            return Tasks.forResult(null);
        }
        z7.g.f().b("Logging app exception event to Firebase Analytics");
        return Tasks.call(new ScheduledThreadPoolExecutor(1), new e(j10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Task<Void> P() {
        ArrayList arrayList = new ArrayList();
        for (File file : N()) {
            try {
                arrayList.add(O(Long.parseLong(file.getName().substring(3))));
            } catch (NumberFormatException unused) {
                z7.g f10 = z7.g.f();
                f10.k("Could not parse app exception timestamp from file " + file.getName());
            }
            file.delete();
        }
        return Tasks.whenAll(arrayList);
    }

    private static boolean Q(String str, File file, f0.a aVar) {
        if (file == null || !file.exists()) {
            z7.g f10 = z7.g.f();
            f10.k("No minidump data found for session " + str);
        }
        if (aVar == null) {
            z7.g f11 = z7.g.f();
            f11.g("No Tombstones data found for session " + str);
        }
        if ((file == null || !file.exists()) && aVar == null) {
            return true;
        }
        return false;
    }

    private static l0 R(z7.h hVar) {
        File c10 = hVar.c();
        if (c10 != null && c10.exists()) {
            return new g0("minidump_file", "minidump", c10);
        }
        return new g("minidump_file", "minidump", new byte[]{0});
    }

    private static byte[] T(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            byte[] bArr = new byte[1024];
            while (true) {
                int read = inputStream.read(bArr);
                if (read != -1) {
                    byteArrayOutputStream.write(bArr, 0, read);
                } else {
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    byteArrayOutputStream.close();
                    return byteArray;
                }
            }
        } catch (Throwable th2) {
            try {
                byteArrayOutputStream.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    private Task<Boolean> a0() {
        if (this.f20756b.d()) {
            z7.g.f().b("Automatic data collection is enabled. Allowing upload.");
            this.f20770p.trySetResult(Boolean.FALSE);
            return Tasks.forResult(Boolean.TRUE);
        }
        z7.g.f().b("Automatic data collection is disabled.");
        z7.g.f().i("Notifying that unsent reports are available.");
        this.f20770p.trySetResult(Boolean.TRUE);
        Task<TContinuationResult> onSuccessTask = this.f20756b.j().onSuccessTask(new c());
        z7.g.f().b("Waiting for send/deleteUnsentReports to be called.");
        return c8.b.c(onSuccessTask, this.f20771q.getTask());
    }

    private void b0(String str) {
        List<ApplicationExitInfo> historicalProcessExitReasons;
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 30) {
            historicalProcessExitReasons = ((ActivityManager) this.f20755a.getSystemService("activity")).getHistoricalProcessExitReasons(null, 0, 0);
            if (historicalProcessExitReasons.size() != 0) {
                this.f20767m.y(str, historicalProcessExitReasons, new d8.f(this.f20761g, str), d8.p.m(str, this.f20761g, this.f20759e));
                return;
            }
            z7.g f10 = z7.g.f();
            f10.i("No ApplicationExitInfo available. Session: " + str);
            return;
        }
        z7.g f11 = z7.g.f();
        f11.i("ANR feature enabled, but device is API " + i10);
    }

    private static g0.a o(i0 i0Var, com.google.firebase.crashlytics.internal.common.a aVar) {
        return g0.a.b(i0Var.f(), aVar.f20679f, aVar.f20680g, i0Var.a().c(), DeliveryMechanism.determineFrom(aVar.f20677d).getId(), aVar.f20681h);
    }

    private static g0.b p(Context context) {
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        return g0.b.c(CommonUtils.k(), Build.MODEL, Runtime.getRuntime().availableProcessors(), CommonUtils.b(context), statFs.getBlockCount() * statFs.getBlockSize(), CommonUtils.x(), CommonUtils.l(), Build.MANUFACTURER, Build.PRODUCT);
    }

    private static g0.c q() {
        return g0.c.a(Build.VERSION.RELEASE, Build.VERSION.CODENAME, CommonUtils.y());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void r(List<File> list) {
        for (File file : list) {
            file.delete();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void v(boolean z10, j8.b bVar, boolean z11) {
        String str;
        CrashlyticsWorkers.c();
        ArrayList arrayList = new ArrayList(this.f20767m.s());
        if (arrayList.size() <= z10) {
            z7.g.f().i("No open sessions to be closed.");
            return;
        }
        String str2 = (String) arrayList.get(z10 ? 1 : 0);
        if (z11 && bVar.a().f20855b.f20863b) {
            b0(str2);
        } else {
            z7.g.f().i("ANR feature disabled.");
        }
        if (z11 && this.f20764j.d(str2)) {
            z(str2);
        }
        if (z10 != 0) {
            str = (String) arrayList.get(0);
        } else {
            this.f20766l.e(null);
            str = null;
        }
        this.f20767m.m(D(), str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w(String str, Boolean bool) {
        long D = D();
        z7.g f10 = z7.g.f();
        f10.b("Opening a new session with ID " + str);
        this.f20764j.c(str, String.format(Locale.US, "Crashlytics Android SDK/%s", y.q()), D, e8.g0.b(o(this.f20760f, this.f20762h), q(), p(this.f20755a)));
        if (bool.booleanValue() && str != null) {
            this.f20758d.r(str);
        }
        this.f20763i.e(str);
        this.f20766l.e(str);
        this.f20767m.t(str, D);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x(long j10) {
        try {
            h8.g gVar = this.f20761g;
            if (!gVar.g(".ae" + j10).createNewFile()) {
                throw new IOException("Create new file failed.");
            }
        } catch (IOException e10) {
            z7.g.f().l("Could not create app exception marker file.", e10);
        }
    }

    private void z(String str) {
        z7.g f10 = z7.g.f();
        f10.i("Finalizing native report for session " + str);
        z7.h a10 = this.f20764j.a(str);
        File c10 = a10.c();
        f0.a b10 = a10.b();
        if (Q(str, c10, b10)) {
            z7.g.f().k("No native core present");
            return;
        }
        long lastModified = c10.lastModified();
        d8.f fVar = new d8.f(this.f20761g, str);
        File k10 = this.f20761g.k(str);
        if (!k10.isDirectory()) {
            z7.g.f().k("Couldn't create directory to store native session files, aborting.");
            return;
        }
        x(lastModified);
        List<l0> E = E(a10, str, this.f20761g, fVar.b());
        m0.b(k10, E);
        z7.g.f().b("CrashlyticsController#finalizePreviousNativeSession");
        this.f20767m.l(str, E, b10);
        fVar.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean A(j8.b bVar) {
        CrashlyticsWorkers.c();
        if (K()) {
            z7.g.f().k("Skipping session finalization because a crash has already occurred.");
            return false;
        }
        z7.g.f().i("Finalizing previously open sessions.");
        try {
            v(true, bVar, true);
            z7.g.f().i("Closed all previously open sessions.");
            return true;
        } catch (Exception e10) {
            z7.g.f().e("Unable to finalize previously open sessions.", e10);
            return false;
        }
    }

    String H() throws IOException {
        String r10 = CommonUtils.r(this.f20755a);
        if (r10 != null) {
            z7.g.f().b("Read version control info from string resource");
            return Base64.encodeToString(r10.getBytes(f20754u), 0);
        }
        InputStream F = F("META-INF/version-control-info.textproto");
        if (F != null) {
            try {
                z7.g.f().b("Read version control info from file");
                String encodeToString = Base64.encodeToString(T(F), 0);
                F.close();
                return encodeToString;
            } catch (Throwable th2) {
                try {
                    F.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
                throw th2;
            }
        }
        if (F != null) {
            F.close();
        }
        z7.g.f().g("No version control information found");
        return null;
    }

    void I(@NonNull j8.b bVar, @NonNull Thread thread, @NonNull Throwable th2) {
        J(bVar, thread, th2, false);
    }

    synchronized void J(@NonNull j8.b bVar, @NonNull Thread thread, @NonNull Throwable th2, boolean z10) {
        try {
            z7.g f10 = z7.g.f();
            f10.b("Handling uncaught exception \"" + th2 + "\" from thread " + thread.getName());
            if (!z10) {
                k9.a.b();
            }
            Task g10 = this.f20759e.f20844a.g(new b(System.currentTimeMillis(), th2, thread, bVar, z10));
            if (!z10) {
                try {
                    v0.b(g10);
                } catch (TimeoutException unused) {
                    z7.g.f().d("Cannot send reports. Timed out while fetching settings.");
                } catch (Exception e10) {
                    z7.g.f().e("Error handling uncaught exception", e10);
                }
            }
        } catch (Throwable th3) {
            throw th3;
        }
    }

    boolean K() {
        c0 c0Var = this.f20768n;
        if (c0Var != null && c0Var.a()) {
            return true;
        }
        return false;
    }

    List<File> N() {
        return this.f20761g.h(f20753t);
    }

    void S(final String str) {
        this.f20759e.f20844a.f(new Runnable() { // from class: com.google.firebase.crashlytics.internal.common.m
            @Override // java.lang.Runnable
            public final void run() {
                o.this.L(str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void U() {
        try {
            String H = H();
            if (H != null) {
                X("com.crashlytics.version-control-info", H);
                z7.g.f().g("Saved version control info");
            }
        } catch (IOException e10) {
            z7.g.f().l("Unable to save version control info", e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Task<Void> V() {
        this.f20771q.trySetResult(Boolean.TRUE);
        return this.f20772r.getTask();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void W(String str, String str2) {
        try {
            this.f20758d.p(str, str2);
        } catch (IllegalArgumentException e10) {
            Context context = this.f20755a;
            if (context != null && CommonUtils.v(context)) {
                throw e10;
            }
            z7.g.f().d("Attempting to set custom attribute with null key, ignoring.");
        }
    }

    void X(String str, String str2) {
        try {
            this.f20758d.q(str, str2);
        } catch (IllegalArgumentException e10) {
            Context context = this.f20755a;
            if (context != null && CommonUtils.v(context)) {
                throw e10;
            }
            z7.g.f().d("Attempting to set custom attribute with null key, ignoring.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void Y(String str) {
        this.f20758d.s(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void Z(Task<com.google.firebase.crashlytics.internal.settings.c> task) {
        if (!this.f20767m.p()) {
            z7.g.f().i("No crash reports are available to be sent.");
            this.f20770p.trySetResult(Boolean.FALSE);
            return;
        }
        z7.g.f().i("Crash reports are available to be sent.");
        a0().onSuccessTask(this.f20759e.f20844a, new d(task));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c0(@NonNull Thread thread, @NonNull Throwable th2, @NonNull Map<String, String> map) {
        long currentTimeMillis = System.currentTimeMillis();
        if (!K()) {
            long G = G(currentTimeMillis);
            String C = C();
            if (C == null) {
                z7.g.f().k("Tried to write a non-fatal exception while no session was open.");
                return;
            }
            this.f20767m.x(th2, thread, new d8.c(C, G, map));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d0(long j10, String str) {
        if (!K()) {
            this.f20763i.g(j10, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public Task<Boolean> n() {
        if (!this.f20773s.compareAndSet(false, true)) {
            z7.g.f().k("checkForUnsentReports should only be called once per execution.");
            return Tasks.forResult(Boolean.FALSE);
        }
        return this.f20770p.getTask();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Task<Void> s() {
        this.f20771q.trySetResult(Boolean.FALSE);
        return this.f20772r.getTask();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean t() {
        CrashlyticsWorkers.c();
        if (!this.f20757c.c()) {
            String C = C();
            if (C != null && this.f20764j.d(C)) {
                return true;
            }
            return false;
        }
        z7.g.f().i("Found previous crash marker.");
        this.f20757c.d();
        return true;
    }

    void u(j8.b bVar) {
        v(false, bVar, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void y(String str, Thread.UncaughtExceptionHandler uncaughtExceptionHandler, j8.b bVar) {
        this.f20769o = bVar;
        S(str);
        c0 c0Var = new c0(new a(), bVar, uncaughtExceptionHandler, this.f20764j);
        this.f20768n = c0Var;
        Thread.setDefaultUncaughtExceptionHandler(c0Var);
    }
}
