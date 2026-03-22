package com.facebook.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import com.facebook.GraphRequest;
import com.facebook.internal.o;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: FetchedAppGateKeepersManager.kt */
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
@SourceDebugExtension({"SMAP\nFetchedAppGateKeepersManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FetchedAppGateKeepersManager.kt\ncom/facebook/internal/FetchedAppGateKeepersManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,261:1\n1855#2,2:262\n125#3:264\n152#3,3:265\n*S KotlinDebug\n*F\n+ 1 FetchedAppGateKeepersManager.kt\ncom/facebook/internal/FetchedAppGateKeepersManager\n*L\n158#1:262,2\n169#1:264\n169#1:265,3\n*E\n"})
/* loaded from: classes3.dex */
public final class o {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final o f16263a = new o();
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private static final String f16264b = Reflection.getOrCreateKotlinClass(o.class).getSimpleName();
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final AtomicBoolean f16265c = new AtomicBoolean(false);
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private static final ConcurrentLinkedQueue<a> f16266d = new ConcurrentLinkedQueue<>();
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private static final Map<String, JSONObject> f16267e = new ConcurrentHashMap();
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private static Long f16268f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private static k4.b f16269g;

    /* compiled from: FetchedAppGateKeepersManager.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public interface a {
        void a();
    }

    private o() {
    }

    private final JSONObject c(String str) {
        Bundle bundle = new Bundle();
        bundle.putString("platform", "android");
        bundle.putString("sdk_version", com.facebook.v.C());
        bundle.putString("fields", "gatekeepers");
        GraphRequest.c cVar = GraphRequest.f14841n;
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format("app/%s", Arrays.copyOf(new Object[]{"mobile_sdk_gk"}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
        GraphRequest x10 = cVar.x(null, format, null);
        x10.H(bundle);
        JSONObject d10 = x10.k().d();
        if (d10 == null) {
            return new JSONObject();
        }
        return d10;
    }

    public static final boolean d(@NotNull String name, @Nullable String str, boolean z10) {
        Boolean bool;
        Intrinsics.checkNotNullParameter(name, "name");
        Map<String, Boolean> e10 = f16263a.e(str);
        if (e10.containsKey(name) && (bool = e10.get(name)) != null) {
            return bool.booleanValue();
        }
        return z10;
    }

    private final boolean f(Long l10) {
        if (l10 == null || System.currentTimeMillis() - l10.longValue() >= 3600000) {
            return false;
        }
        return true;
    }

    public static final synchronized void h(@Nullable a aVar) {
        synchronized (o.class) {
            if (aVar != null) {
                try {
                    f16266d.add(aVar);
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            final String m10 = com.facebook.v.m();
            o oVar = f16263a;
            if (oVar.f(f16268f) && f16267e.containsKey(m10)) {
                oVar.k();
                return;
            }
            final Context l10 = com.facebook.v.l();
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            final String format = String.format("com.facebook.internal.APP_GATEKEEPERS.%s", Arrays.copyOf(new Object[]{m10}, 1));
            Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
            if (l10 == null) {
                return;
            }
            JSONObject jSONObject = null;
            String string = l10.getSharedPreferences("com.facebook.internal.preferences.APP_GATEKEEPERS", 0).getString(format, null);
            if (!u0.d0(string)) {
                try {
                    jSONObject = new JSONObject(string);
                } catch (JSONException e10) {
                    u0.j0("FacebookSDK", e10);
                }
                if (jSONObject != null) {
                    j(m10, jSONObject);
                }
            }
            Executor u10 = com.facebook.v.u();
            if (u10 == null) {
                return;
            }
            if (!f16265c.compareAndSet(false, true)) {
                return;
            }
            u10.execute(new Runnable() { // from class: com.facebook.internal.m
                @Override // java.lang.Runnable
                public final void run() {
                    o.i(m10, l10, format);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(String applicationId, Context context, String gateKeepersKey) {
        Intrinsics.checkNotNullParameter(applicationId, "$applicationId");
        Intrinsics.checkNotNullParameter(context, "$context");
        Intrinsics.checkNotNullParameter(gateKeepersKey, "$gateKeepersKey");
        o oVar = f16263a;
        JSONObject c10 = oVar.c(applicationId);
        if (c10.length() != 0) {
            j(applicationId, c10);
            context.getSharedPreferences("com.facebook.internal.preferences.APP_GATEKEEPERS", 0).edit().putString(gateKeepersKey, c10.toString()).apply();
            f16268f = Long.valueOf(System.currentTimeMillis());
        }
        oVar.k();
        f16265c.set(false);
    }

    @VisibleForTesting(otherwise = 2)
    @NotNull
    public static final synchronized JSONObject j(@NotNull String applicationId, @Nullable JSONObject jSONObject) {
        JSONObject jSONObject2;
        JSONObject jSONObject3;
        JSONArray optJSONArray;
        synchronized (o.class) {
            try {
                Intrinsics.checkNotNullParameter(applicationId, "applicationId");
                jSONObject2 = f16267e.get(applicationId);
                if (jSONObject2 == null) {
                    jSONObject2 = new JSONObject();
                }
                if (jSONObject != null && (optJSONArray = jSONObject.optJSONArray("data")) != null) {
                    jSONObject3 = optJSONArray.optJSONObject(0);
                } else {
                    jSONObject3 = null;
                }
                if (jSONObject3 == null) {
                    jSONObject3 = new JSONObject();
                }
                JSONArray optJSONArray2 = jSONObject3.optJSONArray("gatekeepers");
                if (optJSONArray2 == null) {
                    optJSONArray2 = new JSONArray();
                }
                int length = optJSONArray2.length();
                for (int i10 = 0; i10 < length; i10++) {
                    try {
                        JSONObject jSONObject4 = optJSONArray2.getJSONObject(i10);
                        jSONObject2.put(jSONObject4.getString("key"), jSONObject4.getBoolean(AppMeasurementSdk.ConditionalUserProperty.VALUE));
                    } catch (JSONException e10) {
                        u0.j0("FacebookSDK", e10);
                    }
                }
                f16267e.put(applicationId, jSONObject2);
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return jSONObject2;
    }

    private final void k() {
        Handler handler = new Handler(Looper.getMainLooper());
        while (true) {
            ConcurrentLinkedQueue<a> concurrentLinkedQueue = f16266d;
            if (!concurrentLinkedQueue.isEmpty()) {
                final a poll = concurrentLinkedQueue.poll();
                if (poll != null) {
                    handler.post(new Runnable() { // from class: com.facebook.internal.n
                        @Override // java.lang.Runnable
                        public final void run() {
                            o.l(o.a.this);
                        }
                    });
                }
            } else {
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(a aVar) {
        aVar.a();
    }

    @NotNull
    public static final JSONObject m(@NotNull String applicationId, boolean z10) {
        Intrinsics.checkNotNullParameter(applicationId, "applicationId");
        if (!z10) {
            Map<String, JSONObject> map = f16267e;
            if (map.containsKey(applicationId)) {
                JSONObject jSONObject = map.get(applicationId);
                if (jSONObject == null) {
                    return new JSONObject();
                }
                return jSONObject;
            }
        }
        JSONObject c10 = f16263a.c(applicationId);
        Context l10 = com.facebook.v.l();
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format("com.facebook.internal.APP_GATEKEEPERS.%s", Arrays.copyOf(new Object[]{applicationId}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
        l10.getSharedPreferences("com.facebook.internal.preferences.APP_GATEKEEPERS", 0).edit().putString(format, c10.toString()).apply();
        return j(applicationId, c10);
    }

    @NotNull
    public final Map<String, Boolean> e(@Nullable String str) {
        List<k4.a> list;
        g();
        if (str != null) {
            Map<String, JSONObject> map = f16267e;
            if (map.containsKey(str)) {
                k4.b bVar = f16269g;
                if (bVar != null) {
                    list = bVar.a(str);
                } else {
                    list = null;
                }
                if (list != null) {
                    HashMap hashMap = new HashMap();
                    for (k4.a aVar : list) {
                        hashMap.put(aVar.a(), Boolean.valueOf(aVar.b()));
                    }
                    return hashMap;
                }
                HashMap hashMap2 = new HashMap();
                JSONObject jSONObject = map.get(str);
                if (jSONObject == null) {
                    jSONObject = new JSONObject();
                }
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String key = keys.next();
                    Intrinsics.checkNotNullExpressionValue(key, "key");
                    hashMap2.put(key, Boolean.valueOf(jSONObject.optBoolean(key)));
                }
                k4.b bVar2 = f16269g;
                if (bVar2 == null) {
                    bVar2 = new k4.b();
                }
                ArrayList arrayList = new ArrayList(hashMap2.size());
                for (Map.Entry entry : hashMap2.entrySet()) {
                    arrayList.add(new k4.a((String) entry.getKey(), ((Boolean) entry.getValue()).booleanValue()));
                }
                bVar2.b(str, arrayList);
                f16269g = bVar2;
                return hashMap2;
            }
        }
        return new HashMap();
    }

    public final void g() {
        h(null);
    }
}
