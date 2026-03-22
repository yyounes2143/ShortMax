package com.google.firebase.crashlytics.internal.settings;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.crashlytics.internal.common.CommonUtils;
import com.google.firebase.crashlytics.internal.common.DeliveryMechanism;
import com.google.firebase.crashlytics.internal.common.d0;
import com.google.firebase.crashlytics.internal.common.e0;
import com.google.firebase.crashlytics.internal.common.i0;
import com.google.firebase.crashlytics.internal.common.t0;
import com.google.firebase.crashlytics.internal.concurrency.CrashlyticsWorkers;
import com.google.firebase.crashlytics.internal.settings.e;
import java.util.Locale;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONObject;
/* compiled from: SettingsController.java */
/* loaded from: classes5.dex */
public class e implements j8.b {

    /* renamed from: a  reason: collision with root package name */
    private final Context f20868a;

    /* renamed from: b  reason: collision with root package name */
    private final h f20869b;

    /* renamed from: c  reason: collision with root package name */
    private final f f20870c;

    /* renamed from: d  reason: collision with root package name */
    private final d0 f20871d;

    /* renamed from: e  reason: collision with root package name */
    private final j8.a f20872e;

    /* renamed from: f  reason: collision with root package name */
    private final i f20873f;

    /* renamed from: g  reason: collision with root package name */
    private final e0 f20874g;

    /* renamed from: h  reason: collision with root package name */
    private final AtomicReference<c> f20875h;

    /* renamed from: i  reason: collision with root package name */
    private final AtomicReference<TaskCompletionSource<c>> f20876i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SettingsController.java */
    /* loaded from: classes5.dex */
    public class a implements SuccessContinuation<Void, Void> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CrashlyticsWorkers f20877a;

        a(CrashlyticsWorkers crashlyticsWorkers) {
            this.f20877a = crashlyticsWorkers;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ JSONObject b() throws Exception {
            return e.this.f20873f.a(e.this.f20869b, true);
        }

        @Override // com.google.android.gms.tasks.SuccessContinuation
        @NonNull
        /* renamed from: c */
        public Task<Void> then(@Nullable Void r52) throws Exception {
            JSONObject jSONObject = (JSONObject) this.f20877a.f20847d.c().submit(new Callable() { // from class: com.google.firebase.crashlytics.internal.settings.d
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    JSONObject b10;
                    b10 = e.a.this.b();
                    return b10;
                }
            }).get();
            if (jSONObject != null) {
                c b10 = e.this.f20870c.b(jSONObject);
                e.this.f20872e.c(b10.f20856c, jSONObject);
                e.this.q(jSONObject, "Loaded settings: ");
                e eVar = e.this;
                eVar.r(eVar.f20869b.f20885f);
                e.this.f20875h.set(b10);
                ((TaskCompletionSource) e.this.f20876i.get()).trySetResult(b10);
            }
            return Tasks.forResult(null);
        }
    }

    e(Context context, h hVar, d0 d0Var, f fVar, j8.a aVar, i iVar, e0 e0Var) {
        AtomicReference<c> atomicReference = new AtomicReference<>();
        this.f20875h = atomicReference;
        this.f20876i = new AtomicReference<>(new TaskCompletionSource());
        this.f20868a = context;
        this.f20869b = hVar;
        this.f20871d = d0Var;
        this.f20870c = fVar;
        this.f20872e = aVar;
        this.f20873f = iVar;
        this.f20874g = e0Var;
        atomicReference.set(com.google.firebase.crashlytics.internal.settings.a.b(d0Var));
    }

    public static e l(Context context, String str, i0 i0Var, g8.b bVar, String str2, String str3, h8.g gVar, e0 e0Var) {
        String g10 = i0Var.g();
        t0 t0Var = new t0();
        return new e(context, new h(str, i0Var.h(), i0Var.i(), i0Var.j(), i0Var, CommonUtils.h(CommonUtils.m(context), str, str3, str2), str3, str2, DeliveryMechanism.determineFrom(g10).getId()), t0Var, new f(t0Var), new j8.a(gVar), new b(String.format(Locale.US, "https://firebase-settings.crashlytics.com/spi/v2/platforms/android/gmp/%s/settings", str), bVar), e0Var);
    }

    private c m(SettingsCacheBehavior settingsCacheBehavior) {
        c cVar = null;
        try {
            if (!SettingsCacheBehavior.SKIP_CACHE_LOOKUP.equals(settingsCacheBehavior)) {
                JSONObject b10 = this.f20872e.b();
                if (b10 != null) {
                    c b11 = this.f20870c.b(b10);
                    if (b11 != null) {
                        q(b10, "Loaded cached settings: ");
                        long a10 = this.f20871d.a();
                        if (!SettingsCacheBehavior.IGNORE_CACHE_EXPIRATION.equals(settingsCacheBehavior) && b11.a(a10)) {
                            z7.g.f().i("Cached settings have expired.");
                        }
                        try {
                            z7.g.f().i("Returning cached settings.");
                            cVar = b11;
                        } catch (Exception e10) {
                            e = e10;
                            cVar = b11;
                            z7.g.f().e("Failed to get cached settings", e);
                            return cVar;
                        }
                    } else {
                        z7.g.f().e("Failed to parse cached settings data.", null);
                    }
                } else {
                    z7.g.f().b("No cached settings data found.");
                }
            }
        } catch (Exception e11) {
            e = e11;
        }
        return cVar;
    }

    private String n() {
        return CommonUtils.q(this.f20868a).getString("existing_instance_identifier", "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q(JSONObject jSONObject, String str) {
        z7.g f10 = z7.g.f();
        f10.b(str + jSONObject.toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"CommitPrefEdits"})
    public boolean r(String str) {
        SharedPreferences.Editor edit = CommonUtils.q(this.f20868a).edit();
        edit.putString("existing_instance_identifier", str);
        edit.apply();
        return true;
    }

    @Override // j8.b
    public c a() {
        return this.f20875h.get();
    }

    @Override // j8.b
    public Task<c> b() {
        return this.f20876i.get().getTask();
    }

    boolean k() {
        return !n().equals(this.f20869b.f20885f);
    }

    public Task<Void> o(CrashlyticsWorkers crashlyticsWorkers) {
        return p(SettingsCacheBehavior.USE_CACHE, crashlyticsWorkers);
    }

    public Task<Void> p(SettingsCacheBehavior settingsCacheBehavior, CrashlyticsWorkers crashlyticsWorkers) {
        c m10;
        if (!k() && (m10 = m(settingsCacheBehavior)) != null) {
            this.f20875h.set(m10);
            this.f20876i.get().trySetResult(m10);
            return Tasks.forResult(null);
        }
        c m11 = m(SettingsCacheBehavior.IGNORE_CACHE_EXPIRATION);
        if (m11 != null) {
            this.f20875h.set(m11);
            this.f20876i.get().trySetResult(m11);
        }
        return this.f20874g.k().onSuccessTask(crashlyticsWorkers.f20844a, new a(crashlyticsWorkers));
    }
}
