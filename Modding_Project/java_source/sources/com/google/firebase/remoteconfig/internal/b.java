package com.google.firebase.remoteconfig.internal;

import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigClientException;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigException;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigServerException;
import com.google.firebase.remoteconfig.internal.ConfigFetchHandler;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.util.Date;
import java.util.Random;
import java.util.Set;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* compiled from: ConfigAutoFetch.java */
/* loaded from: classes5.dex */
public class b {
    @GuardedBy("this")

    /* renamed from: a  reason: collision with root package name */
    private final Set<f9.c> f21373a;

    /* renamed from: b  reason: collision with root package name */
    private final HttpURLConnection f21374b;

    /* renamed from: c  reason: collision with root package name */
    private final ConfigFetchHandler f21375c;

    /* renamed from: d  reason: collision with root package name */
    private final f f21376d;

    /* renamed from: e  reason: collision with root package name */
    private final f9.c f21377e;

    /* renamed from: f  reason: collision with root package name */
    private final ScheduledExecutorService f21378f;

    /* renamed from: i  reason: collision with root package name */
    private final s f21381i;

    /* renamed from: g  reason: collision with root package name */
    private final Random f21379g = new Random();

    /* renamed from: j  reason: collision with root package name */
    private boolean f21382j = false;

    /* renamed from: h  reason: collision with root package name */
    private final Clock f21380h = DefaultClock.getInstance();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ConfigAutoFetch.java */
    /* loaded from: classes5.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f21383a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ long f21384b;

        a(int i10, long j10) {
            this.f21383a = i10;
            this.f21384b = j10;
        }

        @Override // java.lang.Runnable
        public void run() {
            b.this.d(this.f21383a, this.f21384b);
        }
    }

    public b(HttpURLConnection httpURLConnection, ConfigFetchHandler configFetchHandler, f fVar, Set<f9.c> set, f9.c cVar, ScheduledExecutorService scheduledExecutorService, s sVar) {
        this.f21374b = httpURLConnection;
        this.f21375c = configFetchHandler;
        this.f21376d = fVar;
        this.f21373a = set;
        this.f21377e = cVar;
        this.f21378f = scheduledExecutorService;
        this.f21381i = sVar;
    }

    private void b(int i10, long j10) {
        if (i10 == 0) {
            k(new FirebaseRemoteConfigServerException("Unable to fetch the latest version of the template.", FirebaseRemoteConfigException.Code.CONFIG_UPDATE_NOT_FETCHED));
            return;
        }
        this.f21378f.schedule(new a(i10, j10), this.f21379g.nextInt(4), TimeUnit.SECONDS);
    }

    private synchronized void c(f9.b bVar) {
        for (f9.c cVar : this.f21373a) {
            cVar.a(bVar);
        }
    }

    private static Boolean e(ConfigFetchHandler.a aVar, long j10) {
        boolean z10 = false;
        if (aVar.d() != null) {
            if (aVar.d().k() >= j10) {
                z10 = true;
            }
            return Boolean.valueOf(z10);
        }
        if (aVar.f() == 1) {
            z10 = true;
        }
        return Boolean.valueOf(z10);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x003d, code lost:
        r5 = new org.json.JSONObject(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0046, code lost:
        if (r5.has("featureDisabled") == false) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x004c, code lost:
        if (r5.getBoolean("featureDisabled") == false) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x004e, code lost:
        r10.f21377e.b(new com.google.firebase.remoteconfig.FirebaseRemoteConfigServerException("The server is temporarily unavailable. Try again in a few minutes.", com.google.firebase.remoteconfig.FirebaseRemoteConfigException.Code.CONFIG_UPDATE_UNAVAILABLE));
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0063, code lost:
        if (g() == false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x006a, code lost:
        if (r5.has("latestTemplateVersionNumber") == false) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x006c, code lost:
        r6 = r10.f21375c.r();
        r8 = r5.getLong("latestTemplateVersionNumber");
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0078, code lost:
        if (r8 <= r6) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x007a, code lost:
        b(3, r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0082, code lost:
        if (r5.has("retryIntervalSeconds") == false) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0084, code lost:
        m(r5.getInt("retryIntervalSeconds"));
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void f(java.io.InputStream r11) throws java.io.IOException {
        /*
            r10 = this;
            java.lang.String r0 = "retryIntervalSeconds"
            java.lang.String r1 = "latestTemplateVersionNumber"
            java.lang.String r2 = "featureDisabled"
            java.io.BufferedReader r3 = new java.io.BufferedReader
            java.io.InputStreamReader r4 = new java.io.InputStreamReader
            java.lang.String r5 = "utf-8"
            r4.<init>(r11, r5)
            r3.<init>(r4)
            java.lang.String r11 = ""
        L14:
            r4 = r11
        L15:
            java.lang.String r5 = r3.readLine()
            if (r5 == 0) goto La5
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            r6.append(r4)
            r6.append(r5)
            java.lang.String r4 = r6.toString()
            java.lang.String r6 = "}"
            boolean r5 = r5.contains(r6)
            if (r5 == 0) goto L15
            java.lang.String r4 = r10.j(r4)
            boolean r5 = r4.isEmpty()
            if (r5 == 0) goto L3d
            goto L15
        L3d:
            org.json.JSONObject r5 = new org.json.JSONObject     // Catch: org.json.JSONException -> L5d
            r5.<init>(r4)     // Catch: org.json.JSONException -> L5d
            boolean r4 = r5.has(r2)     // Catch: org.json.JSONException -> L5d
            if (r4 == 0) goto L5f
            boolean r4 = r5.getBoolean(r2)     // Catch: org.json.JSONException -> L5d
            if (r4 == 0) goto L5f
            f9.c r4 = r10.f21377e     // Catch: org.json.JSONException -> L5d
            com.google.firebase.remoteconfig.FirebaseRemoteConfigServerException r5 = new com.google.firebase.remoteconfig.FirebaseRemoteConfigServerException     // Catch: org.json.JSONException -> L5d
            java.lang.String r6 = "The server is temporarily unavailable. Try again in a few minutes."
            com.google.firebase.remoteconfig.FirebaseRemoteConfigException$Code r7 = com.google.firebase.remoteconfig.FirebaseRemoteConfigException.Code.CONFIG_UPDATE_UNAVAILABLE     // Catch: org.json.JSONException -> L5d
            r5.<init>(r6, r7)     // Catch: org.json.JSONException -> L5d
            r4.b(r5)     // Catch: org.json.JSONException -> L5d
            goto La5
        L5d:
            r4 = move-exception
            goto L8c
        L5f:
            boolean r4 = r10.g()     // Catch: org.json.JSONException -> L5d
            if (r4 == 0) goto L66
            goto La5
        L66:
            boolean r4 = r5.has(r1)     // Catch: org.json.JSONException -> L5d
            if (r4 == 0) goto L7e
            com.google.firebase.remoteconfig.internal.ConfigFetchHandler r4 = r10.f21375c     // Catch: org.json.JSONException -> L5d
            long r6 = r4.r()     // Catch: org.json.JSONException -> L5d
            long r8 = r5.getLong(r1)     // Catch: org.json.JSONException -> L5d
            int r4 = (r8 > r6 ? 1 : (r8 == r6 ? 0 : -1))
            if (r4 <= 0) goto L7e
            r4 = 3
            r10.b(r4, r8)     // Catch: org.json.JSONException -> L5d
        L7e:
            boolean r4 = r5.has(r0)     // Catch: org.json.JSONException -> L5d
            if (r4 == 0) goto L14
            int r4 = r5.getInt(r0)     // Catch: org.json.JSONException -> L5d
            r10.m(r4)     // Catch: org.json.JSONException -> L5d
            goto L14
        L8c:
            com.google.firebase.remoteconfig.FirebaseRemoteConfigClientException r5 = new com.google.firebase.remoteconfig.FirebaseRemoteConfigClientException
            java.lang.Throwable r6 = r4.getCause()
            com.google.firebase.remoteconfig.FirebaseRemoteConfigException$Code r7 = com.google.firebase.remoteconfig.FirebaseRemoteConfigException.Code.CONFIG_UPDATE_MESSAGE_INVALID
            java.lang.String r8 = "Unable to parse config update message."
            r5.<init>(r8, r6, r7)
            r10.k(r5)
            java.lang.String r5 = "FirebaseRemoteConfig"
            java.lang.String r6 = "Unable to parse latest config update message."
            android.util.Log.e(r5, r6, r4)
            goto L14
        La5:
            r3.close()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.remoteconfig.internal.b.f(java.io.InputStream):void");
    }

    private synchronized boolean g() {
        return this.f21373a.isEmpty();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Task h(Task task, Task task2, long j10, int i10, Task task3) throws Exception {
        if (!task.isSuccessful()) {
            return Tasks.forException(new FirebaseRemoteConfigClientException("Failed to auto-fetch config update.", task.getException()));
        }
        if (!task2.isSuccessful()) {
            return Tasks.forException(new FirebaseRemoteConfigClientException("Failed to get activated config for auto-fetch", task2.getException()));
        }
        ConfigFetchHandler.a aVar = (ConfigFetchHandler.a) task.getResult();
        g gVar = (g) task2.getResult();
        if (!e(aVar, j10).booleanValue()) {
            Log.d("FirebaseRemoteConfig", "Fetched template version is the same as SDK's current version. Retrying fetch.");
            b(i10, j10);
            return Tasks.forResult(null);
        } else if (aVar.d() == null) {
            Log.d("FirebaseRemoteConfig", "The fetch succeeded, but the backend had no updates.");
            return Tasks.forResult(null);
        } else {
            if (gVar == null) {
                gVar = g.l().a();
            }
            Set<String> f10 = gVar.f(aVar.d());
            if (f10.isEmpty()) {
                Log.d("FirebaseRemoteConfig", "Config was fetched, but no params changed.");
                return Tasks.forResult(null);
            }
            c(f9.b.a(f10));
            return Tasks.forResult(null);
        }
    }

    private String j(String str) {
        int indexOf = str.indexOf(123);
        int lastIndexOf = str.lastIndexOf(125);
        if (indexOf < 0 || lastIndexOf < 0 || indexOf >= lastIndexOf) {
            return "";
        }
        return str.substring(indexOf, lastIndexOf + 1);
    }

    private synchronized void k(FirebaseRemoteConfigException firebaseRemoteConfigException) {
        for (f9.c cVar : this.f21373a) {
            cVar.b(firebaseRemoteConfigException);
        }
    }

    private synchronized void m(int i10) {
        this.f21381i.o(new Date(new Date(this.f21380h.currentTimeMillis()).getTime() + (i10 * 1000)));
    }

    @VisibleForTesting
    public synchronized Task<Void> d(int i10, final long j10) {
        final int i11;
        final Task<ConfigFetchHandler.a> n10;
        final Task<g> e10;
        i11 = i10 - 1;
        n10 = this.f21375c.n(ConfigFetchHandler.FetchType.REALTIME, 3 - i11);
        e10 = this.f21376d.e();
        return Tasks.whenAllComplete(n10, e10).continueWithTask(this.f21378f, new Continuation() { // from class: com.google.firebase.remoteconfig.internal.a
            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task) {
                Task h10;
                h10 = b.this.h(n10, e10, j10, i11, task);
                return h10;
            }
        });
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0018 -> B:27:0x002d). Please submit an issue!!! */
    @VisibleForTesting
    public void i() {
        HttpURLConnection httpURLConnection = this.f21374b;
        if (httpURLConnection == null) {
            return;
        }
        InputStream inputStream = null;
        try {
            try {
                try {
                    inputStream = httpURLConnection.getInputStream();
                    f(inputStream);
                    if (inputStream != null) {
                        inputStream.close();
                    }
                } catch (IOException e10) {
                    Log.d("FirebaseRemoteConfig", "Exception thrown when closing connection stream. Retrying connection...", e10);
                }
            } catch (IOException e11) {
                if (!this.f21382j) {
                    Log.d("FirebaseRemoteConfig", "Real-time connection was closed due to an exception.", e11);
                }
                if (inputStream != null) {
                    inputStream.close();
                }
            }
        } catch (Throwable th2) {
            if (0 != 0) {
                try {
                    inputStream.close();
                } catch (IOException e12) {
                    Log.d("FirebaseRemoteConfig", "Exception thrown when closing connection stream. Retrying connection...", e12);
                }
            }
            throw th2;
        }
    }

    public void l(boolean z10) {
        this.f21382j = z10;
    }
}
