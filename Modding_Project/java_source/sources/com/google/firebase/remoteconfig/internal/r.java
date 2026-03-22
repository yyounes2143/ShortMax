package com.google.firebase.remoteconfig.internal;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import androidx.browser.trusted.sharing.ShareTarget;
import com.google.android.gms.common.util.AndroidUtilsLight;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.common.util.Hex;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigClientException;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigException;
import com.unity3d.ads.gatewayclient.CommonGatewayClient;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Date;
import java.util.HashMap;
import java.util.Random;
import java.util.Set;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONObject;
/* compiled from: ConfigRealtimeHttpClient.java */
/* loaded from: classes5.dex */
public class r {
    @VisibleForTesting

    /* renamed from: t  reason: collision with root package name */
    static final int[] f21450t = {2, 4, 8, 16, 32, 64, 128, 256};

    /* renamed from: u  reason: collision with root package name */
    private static final Pattern f21451u = Pattern.compile("^[^:]+:([0-9]+):(android|ios|web):([0-9a-f]+)");
    @GuardedBy("this")

    /* renamed from: a  reason: collision with root package name */
    private final Set<f9.c> f21452a;
    @GuardedBy("this")

    /* renamed from: c  reason: collision with root package name */
    private int f21454c;

    /* renamed from: f  reason: collision with root package name */
    private HttpURLConnection f21457f;

    /* renamed from: g  reason: collision with root package name */
    private com.google.firebase.remoteconfig.internal.b f21458g;

    /* renamed from: i  reason: collision with root package name */
    private final ScheduledExecutorService f21460i;

    /* renamed from: j  reason: collision with root package name */
    private final ConfigFetchHandler f21461j;

    /* renamed from: k  reason: collision with root package name */
    private final com.google.firebase.f f21462k;

    /* renamed from: l  reason: collision with root package name */
    private final x8.e f21463l;

    /* renamed from: m  reason: collision with root package name */
    f f21464m;

    /* renamed from: n  reason: collision with root package name */
    private final Context f21465n;

    /* renamed from: o  reason: collision with root package name */
    private final String f21466o;

    /* renamed from: r  reason: collision with root package name */
    private final s f21469r;

    /* renamed from: h  reason: collision with root package name */
    private final int f21459h = 8;
    @GuardedBy("this")

    /* renamed from: b  reason: collision with root package name */
    private boolean f21453b = false;

    /* renamed from: p  reason: collision with root package name */
    private final Random f21467p = new Random();

    /* renamed from: q  reason: collision with root package name */
    private final Clock f21468q = DefaultClock.getInstance();
    @GuardedBy("this")

    /* renamed from: d  reason: collision with root package name */
    private boolean f21455d = false;

    /* renamed from: e  reason: collision with root package name */
    private boolean f21456e = false;

    /* renamed from: s  reason: collision with root package name */
    private final Object f21470s = new Object();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ConfigRealtimeHttpClient.java */
    /* loaded from: classes5.dex */
    public class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            r.this.e();
        }
    }

    public r(com.google.firebase.f fVar, x8.e eVar, ConfigFetchHandler configFetchHandler, f fVar2, Context context, String str, Set<f9.c> set, s sVar, ScheduledExecutorService scheduledExecutorService) {
        this.f21452a = set;
        this.f21460i = scheduledExecutorService;
        this.f21454c = Math.max(8 - sVar.h().b(), 1);
        this.f21462k = fVar;
        this.f21461j = configFetchHandler;
        this.f21463l = eVar;
        this.f21464m = fVar2;
        this.f21465n = context;
        this.f21466o = str;
        this.f21469r = sVar;
    }

    private synchronized void A(boolean z10) {
        this.f21453b = z10;
    }

    private void F(Date date) {
        int b10 = this.f21469r.h().b() + 1;
        this.f21469r.p(b10, new Date(date.getTime() + o(b10)));
    }

    private synchronized boolean f() {
        boolean z10;
        if (!this.f21452a.isEmpty() && !this.f21453b && !this.f21455d) {
            if (!this.f21456e) {
                z10 = true;
            }
        }
        z10 = false;
        return z10;
    }

    private synchronized boolean g() {
        boolean f10;
        f10 = f();
        if (f10) {
            A(true);
        }
        return f10;
    }

    private void h(InputStream inputStream) {
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException e10) {
                Log.d("FirebaseRemoteConfig", "Error closing connection stream.", e10);
            }
        }
    }

    private JSONObject k(String str) {
        HashMap hashMap = new HashMap();
        hashMap.put("project", m(this.f21462k.p().c()));
        hashMap.put("namespace", this.f21466o);
        hashMap.put("lastKnownVersionNumber", Long.toString(this.f21461j.r()));
        hashMap.put("appId", this.f21462k.p().c());
        hashMap.put("sdkVersion", "23.0.1");
        hashMap.put("appInstanceId", str);
        return new JSONObject(hashMap);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void l() {
        this.f21455d = true;
    }

    private static String m(String str) {
        Matcher matcher = f21451u.matcher(str);
        if (matcher.matches()) {
            return matcher.group(1);
        }
        return null;
    }

    private String n() {
        try {
            Context context = this.f21465n;
            byte[] packageCertificateHashBytes = AndroidUtilsLight.getPackageCertificateHashBytes(context, context.getPackageName());
            if (packageCertificateHashBytes == null) {
                Log.e("FirebaseRemoteConfig", "Could not get fingerprint hash for package: " + this.f21465n.getPackageName());
                return null;
            }
            return Hex.bytesToStringUppercase(packageCertificateHashBytes, false);
        } catch (PackageManager.NameNotFoundException unused) {
            Log.i("FirebaseRemoteConfig", "No such package: " + this.f21465n.getPackageName());
            return null;
        }
    }

    private long o(int i10) {
        int[] iArr = f21450t;
        int length = iArr.length;
        if (i10 >= length) {
            i10 = length;
        }
        long millis = TimeUnit.MINUTES.toMillis(iArr[i10 - 1]);
        return (millis / 2) + this.f21467p.nextInt((int) millis);
    }

    private String p(String str) {
        return String.format("https://firebaseremoteconfigrealtime.googleapis.com/v1/projects/%s/namespaces/%s:streamFetchInvalidations", m(this.f21462k.p().c()), str);
    }

    private URL q() {
        try {
            return new URL(p(this.f21466o));
        } catch (MalformedURLException unused) {
            Log.e("FirebaseRemoteConfig", "URL is malformed");
            return null;
        }
    }

    private boolean r(int i10) {
        if (i10 != 408 && i10 != 429 && i10 != 502 && i10 != 503 && i10 != 504) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00be A[Catch: all -> 0x0041, TryCatch #0 {all -> 0x0041, blocks: (B:9:0x002d, B:47:0x00ba, B:49:0x00be, B:50:0x00c2), top: B:88:0x0009 }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00c2 A[Catch: all -> 0x0041, TRY_LEAVE, TryCatch #0 {all -> 0x0041, blocks: (B:9:0x002d, B:47:0x00ba, B:49:0x00be, B:50:0x00c2), top: B:88:0x0009 }] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0108  */
    /* JADX WARN: Type inference failed for: r10v0, types: [com.google.firebase.remoteconfig.internal.r] */
    /* JADX WARN: Type inference failed for: r11v0, types: [com.google.android.gms.tasks.Task] */
    /* JADX WARN: Type inference failed for: r11v17, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v33, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r11v43 */
    /* JADX WARN: Type inference failed for: r11v5, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v3, types: [java.lang.Object, java.lang.Integer] */
    /* JADX WARN: Type inference failed for: r7v6 */
    /* JADX WARN: Type inference failed for: r7v7, types: [java.lang.Object, java.lang.Integer] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ com.google.android.gms.tasks.Task s(com.google.android.gms.tasks.Task r11, com.google.android.gms.tasks.Task r12) throws java.lang.Exception {
        /*
            Method dump skipped, instructions count: 387
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.remoteconfig.internal.r.s(com.google.android.gms.tasks.Task, com.google.android.gms.tasks.Task):com.google.android.gms.tasks.Task");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Task t(Task task, Task task2, Task task3) throws Exception {
        if (!task.isSuccessful()) {
            return Tasks.forException(new FirebaseRemoteConfigClientException("Firebase Installations failed to get installation auth token for config update listener connection.", task.getException()));
        }
        if (!task2.isSuccessful()) {
            return Tasks.forException(new FirebaseRemoteConfigClientException("Firebase Installations failed to get installation ID for config update listener connection.", task2.getException()));
        }
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) q().openConnection();
            C(httpURLConnection, (String) task2.getResult(), ((com.google.firebase.installations.f) task.getResult()).b());
            return Tasks.forResult(httpURLConnection);
        } catch (IOException e10) {
            return Tasks.forException(new FirebaseRemoteConfigClientException("Failed to open HTTP stream connection", e10));
        }
    }

    private synchronized void u(long j10) {
        try {
            if (!f()) {
                return;
            }
            int i10 = this.f21454c;
            if (i10 > 0) {
                this.f21454c = i10 - 1;
                this.f21460i.schedule(new a(), j10, TimeUnit.MILLISECONDS);
            } else if (!this.f21456e) {
                w(new FirebaseRemoteConfigClientException("Unable to connect to the server. Check your connection and try again.", FirebaseRemoteConfigException.Code.CONFIG_UPDATE_STREAM_ERROR));
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private String v(InputStream inputStream) {
        StringBuilder sb2 = new StringBuilder();
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    break;
                }
                sb2.append(readLine);
            }
        } catch (IOException unused) {
            if (sb2.length() == 0) {
                return "Unable to connect to the server, access is forbidden. HTTP status code: 403";
            }
        }
        return sb2.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void w(FirebaseRemoteConfigException firebaseRemoteConfigException) {
        for (f9.c cVar : this.f21452a) {
            cVar.b(firebaseRemoteConfigException);
        }
    }

    private synchronized void x() {
        this.f21454c = 8;
    }

    private void z(HttpURLConnection httpURLConnection, String str) {
        httpURLConnection.setRequestProperty("X-Goog-Firebase-Installations-Auth", str);
        httpURLConnection.setRequestProperty("X-Goog-Api-Key", this.f21462k.p().b());
        httpURLConnection.setRequestProperty("X-Android-Package", this.f21465n.getPackageName());
        httpURLConnection.setRequestProperty("X-Android-Cert", n());
        httpURLConnection.setRequestProperty("X-Google-GFE-Can-Retry", "yes");
        httpURLConnection.setRequestProperty("X-Accept-Response-Streaming", "true");
        httpURLConnection.setRequestProperty(CommonGatewayClient.HEADER_CONTENT_TYPE, "application/json");
        httpURLConnection.setRequestProperty("Accept", "application/json");
    }

    public void B(boolean z10) {
        HttpURLConnection httpURLConnection;
        synchronized (this.f21470s) {
            try {
                this.f21456e = z10;
                com.google.firebase.remoteconfig.internal.b bVar = this.f21458g;
                if (bVar != null) {
                    bVar.l(z10);
                }
                if (Build.VERSION.SDK_INT >= 26 && z10 && (httpURLConnection = this.f21457f) != null) {
                    httpURLConnection.disconnect();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @SuppressLint({"VisibleForTests"})
    public void C(HttpURLConnection httpURLConnection, String str, String str2) throws IOException {
        httpURLConnection.setRequestMethod(ShareTarget.METHOD_POST);
        z(httpURLConnection, str2);
        byte[] bytes = k(str).toString().getBytes("utf-8");
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(httpURLConnection.getOutputStream());
        bufferedOutputStream.write(bytes);
        bufferedOutputStream.flush();
        bufferedOutputStream.close();
    }

    @SuppressLint({"VisibleForTests"})
    public synchronized com.google.firebase.remoteconfig.internal.b D(HttpURLConnection httpURLConnection) {
        return new com.google.firebase.remoteconfig.internal.b(httpURLConnection, this.f21461j, this.f21464m, this.f21452a, new b(), this.f21460i, this.f21469r);
    }

    public void E() {
        u(0L);
    }

    @SuppressLint({"VisibleForTests", "DefaultLocale"})
    public void e() {
        if (!g()) {
            return;
        }
        if (new Date(this.f21468q.currentTimeMillis()).before(this.f21469r.h().a())) {
            y();
            return;
        }
        final Task<HttpURLConnection> j10 = j();
        Tasks.whenAllComplete(j10).continueWith(this.f21460i, new Continuation() { // from class: com.google.firebase.remoteconfig.internal.p
            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task) {
                Task s10;
                s10 = r.this.s(j10, task);
                return s10;
            }
        });
    }

    @VisibleForTesting
    public void i(InputStream inputStream, InputStream inputStream2) {
        HttpURLConnection httpURLConnection = this.f21457f;
        if (httpURLConnection != null && !this.f21456e) {
            httpURLConnection.disconnect();
        }
        h(inputStream);
        h(inputStream2);
    }

    @SuppressLint({"VisibleForTests"})
    public Task<HttpURLConnection> j() {
        final Task<com.google.firebase.installations.f> a10 = this.f21463l.a(false);
        final Task<String> id2 = this.f21463l.getId();
        return Tasks.whenAllComplete(a10, id2).continueWithTask(this.f21460i, new Continuation() { // from class: com.google.firebase.remoteconfig.internal.q
            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task) {
                Task t10;
                t10 = r.this.t(a10, id2, task);
                return t10;
            }
        });
    }

    @SuppressLint({"VisibleForTests"})
    public synchronized void y() {
        u(Math.max(0L, this.f21469r.h().a().getTime() - new Date(this.f21468q.currentTimeMillis()).getTime()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ConfigRealtimeHttpClient.java */
    /* loaded from: classes5.dex */
    public class b implements f9.c {
        b() {
        }

        @Override // f9.c
        public void b(@NonNull FirebaseRemoteConfigException firebaseRemoteConfigException) {
            r.this.l();
            r.this.w(firebaseRemoteConfigException);
        }

        @Override // f9.c
        public void a(@NonNull f9.b bVar) {
        }
    }
}
