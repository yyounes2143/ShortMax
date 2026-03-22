package com.google.firebase.remoteconfig.internal;

import android.text.format.DateUtils;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigClientException;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigException;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigFetchThrottledException;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigServerException;
import com.google.firebase.remoteconfig.internal.ConfigFetchHandler;
import com.google.firebase.remoteconfig.internal.s;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes5.dex */
public class ConfigFetchHandler {

    /* renamed from: j  reason: collision with root package name */
    public static final long f21345j = TimeUnit.HOURS.toSeconds(12);
    @VisibleForTesting

    /* renamed from: k  reason: collision with root package name */
    static final int[] f21346k = {2, 4, 8, 16, 32, 64, 128, 256};

    /* renamed from: a  reason: collision with root package name */
    private final x8.e f21347a;

    /* renamed from: b  reason: collision with root package name */
    private final w8.b<n7.a> f21348b;

    /* renamed from: c  reason: collision with root package name */
    private final Executor f21349c;

    /* renamed from: d  reason: collision with root package name */
    private final Clock f21350d;

    /* renamed from: e  reason: collision with root package name */
    private final Random f21351e;

    /* renamed from: f  reason: collision with root package name */
    private final f f21352f;

    /* renamed from: g  reason: collision with root package name */
    private final ConfigFetchHttpClient f21353g;

    /* renamed from: h  reason: collision with root package name */
    private final s f21354h;

    /* renamed from: i  reason: collision with root package name */
    private final Map<String, String> f21355i;

    /* loaded from: classes5.dex */
    public enum FetchType {
        BASE("BASE"),
        REALTIME("REALTIME");
        
        private final String value;

        FetchType(String str) {
            this.value = str;
        }

        String getValue() {
            return this.value;
        }
    }

    /* loaded from: classes5.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private final Date f21356a;

        /* renamed from: b  reason: collision with root package name */
        private final int f21357b;

        /* renamed from: c  reason: collision with root package name */
        private final g f21358c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private final String f21359d;

        private a(Date date, int i10, g gVar, @Nullable String str) {
            this.f21356a = date;
            this.f21357b = i10;
            this.f21358c = gVar;
            this.f21359d = str;
        }

        public static a a(Date date, g gVar) {
            return new a(date, 1, gVar, null);
        }

        public static a b(g gVar, String str) {
            return new a(gVar.h(), 0, gVar, str);
        }

        public static a c(Date date) {
            return new a(date, 2, null, null);
        }

        public g d() {
            return this.f21358c;
        }

        @Nullable
        String e() {
            return this.f21359d;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public int f() {
            return this.f21357b;
        }
    }

    public ConfigFetchHandler(x8.e eVar, w8.b<n7.a> bVar, Executor executor, Clock clock, Random random, f fVar, ConfigFetchHttpClient configFetchHttpClient, s sVar, Map<String, String> map) {
        this.f21347a = eVar;
        this.f21348b = bVar;
        this.f21349c = executor;
        this.f21350d = clock;
        this.f21351e = random;
        this.f21352f = fVar;
        this.f21353g = configFetchHttpClient;
        this.f21354h = sVar;
        this.f21355i = map;
    }

    private s.a A(int i10, Date date) {
        if (t(i10)) {
            B(date);
        }
        return this.f21354h.a();
    }

    private void B(Date date) {
        int b10 = this.f21354h.a().b() + 1;
        this.f21354h.k(b10, new Date(date.getTime() + q(b10)));
    }

    private void C(Task<a> task, Date date) {
        if (task.isSuccessful()) {
            this.f21354h.r(date);
            return;
        }
        Exception exception = task.getException();
        if (exception == null) {
            return;
        }
        if (exception instanceof FirebaseRemoteConfigFetchThrottledException) {
            this.f21354h.s();
        } else {
            this.f21354h.q();
        }
    }

    private boolean f(long j10, Date date) {
        Date e10 = this.f21354h.e();
        if (e10.equals(s.f21473f)) {
            return false;
        }
        return date.before(new Date(e10.getTime() + TimeUnit.SECONDS.toMillis(j10)));
    }

    private FirebaseRemoteConfigServerException g(FirebaseRemoteConfigServerException firebaseRemoteConfigServerException) throws FirebaseRemoteConfigClientException {
        String str;
        int b10 = firebaseRemoteConfigServerException.b();
        if (b10 != 401) {
            if (b10 != 403) {
                if (b10 != 429) {
                    if (b10 != 500) {
                        switch (b10) {
                            case 502:
                            case 503:
                            case 504:
                                str = "The server is unavailable. Please try again later.";
                                break;
                            default:
                                str = "The server returned an unexpected error.";
                                break;
                        }
                    } else {
                        str = "There was an internal server error.";
                    }
                } else {
                    throw new FirebaseRemoteConfigClientException("The throttled response from the server was not handled correctly by the FRC SDK.");
                }
            } else {
                str = "The user is not authorized to access the project. Please make sure you are using the API key that corresponds to your Firebase project.";
            }
        } else {
            str = "The request did not have the required credentials. Please make sure your google-services.json is valid.";
        }
        int b11 = firebaseRemoteConfigServerException.b();
        return new FirebaseRemoteConfigServerException(b11, "Fetch failed: " + str, firebaseRemoteConfigServerException);
    }

    private String h(long j10) {
        return String.format("Fetch is throttled. Please wait before calling fetch again: %s", DateUtils.formatElapsedTime(TimeUnit.MILLISECONDS.toSeconds(j10)));
    }

    @WorkerThread
    private a k(String str, String str2, Date date, Map<String, String> map) throws FirebaseRemoteConfigException {
        try {
            a fetch = this.f21353g.fetch(this.f21353g.d(), str, str2, s(), this.f21354h.d(), map, p(), date, this.f21354h.b());
            if (fetch.d() != null) {
                this.f21354h.n(fetch.d().k());
            }
            if (fetch.e() != null) {
                this.f21354h.m(fetch.e());
            }
            this.f21354h.i();
            return fetch;
        } catch (FirebaseRemoteConfigServerException e10) {
            s.a A = A(e10.b(), date);
            if (z(A, e10.b())) {
                throw new FirebaseRemoteConfigFetchThrottledException(A.a().getTime());
            }
            throw g(e10);
        }
    }

    private Task<a> l(String str, String str2, Date date, Map<String, String> map) {
        try {
            final a k10 = k(str, str2, date, map);
            if (k10.f() != 0) {
                return Tasks.forResult(k10);
            }
            return this.f21352f.k(k10.d()).onSuccessTask(this.f21349c, new SuccessContinuation() { // from class: com.google.firebase.remoteconfig.internal.l
                @Override // com.google.android.gms.tasks.SuccessContinuation
                public final Task then(Object obj) {
                    Task forResult;
                    g gVar = (g) obj;
                    forResult = Tasks.forResult(ConfigFetchHandler.a.this);
                    return forResult;
                }
            });
        } catch (FirebaseRemoteConfigException e10) {
            return Tasks.forException(e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: m */
    public Task<a> u(Task<g> task, long j10, final Map<String, String> map) {
        Task continueWithTask;
        final Date date = new Date(this.f21350d.currentTimeMillis());
        if (task.isSuccessful() && f(j10, date)) {
            return Tasks.forResult(a.c(date));
        }
        Date o10 = o(date);
        if (o10 != null) {
            continueWithTask = Tasks.forException(new FirebaseRemoteConfigFetchThrottledException(h(o10.getTime() - date.getTime()), o10.getTime()));
        } else {
            final Task<String> id2 = this.f21347a.getId();
            final Task<com.google.firebase.installations.f> a10 = this.f21347a.a(false);
            continueWithTask = Tasks.whenAllComplete(id2, a10).continueWithTask(this.f21349c, new Continuation() { // from class: com.google.firebase.remoteconfig.internal.j
                @Override // com.google.android.gms.tasks.Continuation
                public final Object then(Task task2) {
                    Task w10;
                    w10 = ConfigFetchHandler.this.w(id2, a10, date, map, task2);
                    return w10;
                }
            });
        }
        return continueWithTask.continueWithTask(this.f21349c, new Continuation() { // from class: com.google.firebase.remoteconfig.internal.k
            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task2) {
                Task x10;
                x10 = ConfigFetchHandler.this.x(date, task2);
                return x10;
            }
        });
    }

    @Nullable
    private Date o(Date date) {
        Date a10 = this.f21354h.a().a();
        if (date.before(a10)) {
            return a10;
        }
        return null;
    }

    @WorkerThread
    private Long p() {
        n7.a aVar = this.f21348b.get();
        if (aVar == null) {
            return null;
        }
        return (Long) aVar.e(true).get("_fot");
    }

    private long q(int i10) {
        TimeUnit timeUnit = TimeUnit.MINUTES;
        int[] iArr = f21346k;
        long millis = timeUnit.toMillis(iArr[Math.min(i10, iArr.length) - 1]);
        return (millis / 2) + this.f21351e.nextInt((int) millis);
    }

    @WorkerThread
    private Map<String, String> s() {
        HashMap hashMap = new HashMap();
        n7.a aVar = this.f21348b.get();
        if (aVar == null) {
            return hashMap;
        }
        for (Map.Entry<String, Object> entry : aVar.e(false).entrySet()) {
            hashMap.put(entry.getKey(), entry.getValue().toString());
        }
        return hashMap;
    }

    private boolean t(int i10) {
        if (i10 != 429 && i10 != 502 && i10 != 503 && i10 != 504) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Task w(Task task, Task task2, Date date, Map map, Task task3) throws Exception {
        if (!task.isSuccessful()) {
            return Tasks.forException(new FirebaseRemoteConfigClientException("Firebase Installations failed to get installation ID for fetch.", task.getException()));
        }
        if (!task2.isSuccessful()) {
            return Tasks.forException(new FirebaseRemoteConfigClientException("Firebase Installations failed to get installation auth token for fetch.", task2.getException()));
        }
        return l((String) task.getResult(), ((com.google.firebase.installations.f) task2.getResult()).b(), date, map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Task x(Date date, Task task) throws Exception {
        C(task, date);
        return task;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Task y(Map map, Task task) throws Exception {
        return u(task, 0L, map);
    }

    private boolean z(s.a aVar, int i10) {
        if (aVar.b() > 1 || i10 == 429) {
            return true;
        }
        return false;
    }

    public Task<a> i() {
        return j(this.f21354h.g());
    }

    public Task<a> j(final long j10) {
        final HashMap hashMap = new HashMap(this.f21355i);
        hashMap.put("X-Firebase-RC-Fetch-Type", FetchType.BASE.getValue() + DomExceptionUtils.SEPARATOR + 1);
        return this.f21352f.e().continueWithTask(this.f21349c, new Continuation() { // from class: com.google.firebase.remoteconfig.internal.i
            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task) {
                Task u10;
                u10 = ConfigFetchHandler.this.u(j10, hashMap, task);
                return u10;
            }
        });
    }

    public Task<a> n(FetchType fetchType, int i10) {
        final HashMap hashMap = new HashMap(this.f21355i);
        hashMap.put("X-Firebase-RC-Fetch-Type", fetchType.getValue() + DomExceptionUtils.SEPARATOR + i10);
        return this.f21352f.e().continueWithTask(this.f21349c, new Continuation() { // from class: com.google.firebase.remoteconfig.internal.h
            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task) {
                Task y10;
                y10 = ConfigFetchHandler.this.y(hashMap, task);
                return y10;
            }
        });
    }

    public long r() {
        return this.f21354h.f();
    }
}
