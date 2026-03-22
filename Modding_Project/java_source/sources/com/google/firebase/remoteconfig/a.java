package com.google.firebase.remoteconfig;

import android.content.Context;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.abt.AbtException;
import com.google.firebase.concurrent.FirebaseExecutors;
import com.google.firebase.f;
import com.google.firebase.remoteconfig.internal.ConfigFetchHandler;
import com.google.firebase.remoteconfig.internal.g;
import com.google.firebase.remoteconfig.internal.n;
import com.google.firebase.remoteconfig.internal.o;
import com.google.firebase.remoteconfig.internal.s;
import f9.i;
import f9.j;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import x8.e;
/* compiled from: FirebaseRemoteConfig.java */
/* loaded from: classes5.dex */
public class a {

    /* renamed from: n  reason: collision with root package name */
    public static final byte[] f21317n = new byte[0];

    /* renamed from: a  reason: collision with root package name */
    private final Context f21318a;

    /* renamed from: b  reason: collision with root package name */
    private final f f21319b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final l7.b f21320c;

    /* renamed from: d  reason: collision with root package name */
    private final Executor f21321d;

    /* renamed from: e  reason: collision with root package name */
    private final com.google.firebase.remoteconfig.internal.f f21322e;

    /* renamed from: f  reason: collision with root package name */
    private final com.google.firebase.remoteconfig.internal.f f21323f;

    /* renamed from: g  reason: collision with root package name */
    private final com.google.firebase.remoteconfig.internal.f f21324g;

    /* renamed from: h  reason: collision with root package name */
    private final ConfigFetchHandler f21325h;

    /* renamed from: i  reason: collision with root package name */
    private final n f21326i;

    /* renamed from: j  reason: collision with root package name */
    private final s f21327j;

    /* renamed from: k  reason: collision with root package name */
    private final e f21328k;

    /* renamed from: l  reason: collision with root package name */
    private final o f21329l;

    /* renamed from: m  reason: collision with root package name */
    private final g9.e f21330m;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(Context context, f fVar, e eVar, @Nullable l7.b bVar, Executor executor, com.google.firebase.remoteconfig.internal.f fVar2, com.google.firebase.remoteconfig.internal.f fVar3, com.google.firebase.remoteconfig.internal.f fVar4, ConfigFetchHandler configFetchHandler, n nVar, s sVar, o oVar, g9.e eVar2) {
        this.f21318a = context;
        this.f21319b = fVar;
        this.f21328k = eVar;
        this.f21320c = bVar;
        this.f21321d = executor;
        this.f21322e = fVar2;
        this.f21323f = fVar3;
        this.f21324g = fVar4;
        this.f21325h = configFetchHandler;
        this.f21326i = nVar;
        this.f21327j = sVar;
        this.f21329l = oVar;
        this.f21330m = eVar2;
    }

    @NonNull
    public static a j() {
        return k(f.m());
    }

    @NonNull
    public static a k(@NonNull f fVar) {
        return ((c) fVar.j(c.class)).g();
    }

    private static boolean m(g gVar, @Nullable g gVar2) {
        if (gVar2 != null && gVar.h().equals(gVar2.h())) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Task n(Task task, Task task2, Task task3) throws Exception {
        if (task.isSuccessful() && task.getResult() != null) {
            g gVar = (g) task.getResult();
            if (task2.isSuccessful() && !m(gVar, (g) task2.getResult())) {
                return Tasks.forResult(Boolean.FALSE);
            }
            return this.f21323f.k(gVar).continueWith(this.f21321d, new Continuation() { // from class: f9.h
                @Override // com.google.android.gms.tasks.Continuation
                public final Object then(Task task4) {
                    boolean r10;
                    r10 = com.google.firebase.remoteconfig.a.this.r(task4);
                    return Boolean.valueOf(r10);
                }
            });
        }
        return Tasks.forResult(Boolean.FALSE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Task o(ConfigFetchHandler.a aVar) throws Exception {
        return Tasks.forResult(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Task p(Void r12) throws Exception {
        return f();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Void q(i iVar) throws Exception {
        this.f21327j.l(iVar);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean r(Task<g> task) {
        if (task.isSuccessful()) {
            this.f21322e.d();
            g result = task.getResult();
            if (result != null) {
                w(result.e());
                this.f21330m.g(result);
                return true;
            }
            Log.e("FirebaseRemoteConfig", "Activated configs written to disk are null.");
            return true;
        }
        return false;
    }

    @VisibleForTesting
    static List<Map<String, String>> v(JSONArray jSONArray) throws JSONException {
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < jSONArray.length(); i10++) {
            HashMap hashMap = new HashMap();
            JSONObject jSONObject = jSONArray.getJSONObject(i10);
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                hashMap.put(next, jSONObject.getString(next));
            }
            arrayList.add(hashMap);
        }
        return arrayList;
    }

    @NonNull
    public Task<Boolean> f() {
        final Task<g> e10 = this.f21322e.e();
        final Task<g> e11 = this.f21323f.e();
        return Tasks.whenAllComplete(e10, e11).continueWithTask(this.f21321d, new Continuation() { // from class: f9.f
            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task) {
                Task n10;
                n10 = com.google.firebase.remoteconfig.a.this.n(e10, e11, task);
                return n10;
            }
        });
    }

    @NonNull
    public Task<Void> g() {
        return this.f21325h.i().onSuccessTask(FirebaseExecutors.a(), new SuccessContinuation() { // from class: f9.g
            @Override // com.google.android.gms.tasks.SuccessContinuation
            public final Task then(Object obj) {
                Task o10;
                o10 = com.google.firebase.remoteconfig.a.o((ConfigFetchHandler.a) obj);
                return o10;
            }
        });
    }

    @NonNull
    public Task<Boolean> h() {
        return g().onSuccessTask(this.f21321d, new SuccessContinuation() { // from class: f9.e
            @Override // com.google.android.gms.tasks.SuccessContinuation
            public final Task then(Object obj) {
                Task p10;
                p10 = com.google.firebase.remoteconfig.a.this.p((Void) obj);
                return p10;
            }
        });
    }

    @NonNull
    public Map<String, j> i() {
        return this.f21326i.d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public g9.e l() {
        return this.f21330m;
    }

    @NonNull
    public Task<Void> s(@NonNull final i iVar) {
        return Tasks.call(this.f21321d, new Callable() { // from class: f9.d
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Void q10;
                q10 = com.google.firebase.remoteconfig.a.this.q(iVar);
                return q10;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void t(boolean z10) {
        this.f21329l.b(z10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void u() {
        this.f21323f.e();
        this.f21324g.e();
        this.f21322e.e();
    }

    @VisibleForTesting
    void w(@NonNull JSONArray jSONArray) {
        if (this.f21320c == null) {
            return;
        }
        try {
            this.f21320c.m(v(jSONArray));
        } catch (AbtException e10) {
            Log.w("FirebaseRemoteConfig", "Could not update ABT experiments.", e10);
        } catch (JSONException e11) {
            Log.e("FirebaseRemoteConfig", "Could not parse ABT experiments from the JSON response.", e11);
        }
    }
}
