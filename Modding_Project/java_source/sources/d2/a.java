package d2;

import android.util.Log;
import androidx.annotation.RestrictTo;
import com.facebook.internal.FetchedAppSettingsManager;
import com.facebook.internal.p;
import com.facebook.internal.u0;
import com.facebook.v;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: RestrictiveDataManager.kt */
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3.dex */
public final class a {

    /* renamed from: b  reason: collision with root package name */
    private static boolean f49798b;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f49797a = new a();

    /* renamed from: c  reason: collision with root package name */
    private static final String f49799c = a.class.getCanonicalName();
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private static final List<C0702a> f49800d = new ArrayList();
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private static final Set<String> f49801e = new CopyOnWriteArraySet();

    /* compiled from: RestrictiveDataManager.kt */
    @Metadata
    /* renamed from: d2.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static final class C0702a {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private String f49802a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private Map<String, String> f49803b;

        public C0702a(@NotNull String eventName, @NotNull Map<String, String> restrictiveParams) {
            Intrinsics.checkNotNullParameter(eventName, "eventName");
            Intrinsics.checkNotNullParameter(restrictiveParams, "restrictiveParams");
            this.f49802a = eventName;
            this.f49803b = restrictiveParams;
        }

        @NotNull
        public final String a() {
            return this.f49802a;
        }

        @NotNull
        public final Map<String, String> b() {
            return this.f49803b;
        }

        public final void c(@NotNull Map<String, String> map) {
            Intrinsics.checkNotNullParameter(map, "<set-?>");
            this.f49803b = map;
        }
    }

    private a() {
    }

    public static final void a() {
        if (o4.a.d(a.class)) {
            return;
        }
        try {
            f49798b = true;
            f49797a.c();
        } catch (Throwable th2) {
            o4.a.b(th2, a.class);
        }
    }

    private final String b(String str, String str2) {
        if (o4.a.d(this)) {
            return null;
        }
        try {
            try {
                for (C0702a c0702a : new ArrayList(f49800d)) {
                    if (c0702a != null && Intrinsics.areEqual(str, c0702a.a())) {
                        for (String str3 : c0702a.b().keySet()) {
                            if (Intrinsics.areEqual(str2, str3)) {
                                return c0702a.b().get(str3);
                            }
                        }
                        continue;
                    }
                }
            } catch (Exception e10) {
                Log.w(f49799c, "getMatchedRuleType failed", e10);
            }
            return null;
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return null;
        }
    }

    private final void c() {
        String r10;
        if (o4.a.d(this)) {
            return;
        }
        try {
            p u10 = FetchedAppSettingsManager.u(v.m(), false);
            if (u10 != null && (r10 = u10.r()) != null && r10.length() != 0) {
                JSONObject jSONObject = new JSONObject(r10);
                f49800d.clear();
                f49801e.clear();
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String key = keys.next();
                    JSONObject jSONObject2 = jSONObject.getJSONObject(key);
                    if (jSONObject2 != null) {
                        JSONObject optJSONObject = jSONObject2.optJSONObject("restrictive_param");
                        Intrinsics.checkNotNullExpressionValue(key, "key");
                        C0702a c0702a = new C0702a(key, new HashMap());
                        if (optJSONObject != null) {
                            c0702a.c(u0.p(optJSONObject));
                            f49800d.add(c0702a);
                        }
                        if (jSONObject2.has("process_event_name")) {
                            f49801e.add(c0702a.a());
                        }
                    }
                }
            }
        } catch (Exception unused) {
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    private final boolean d(String str) {
        if (o4.a.d(this)) {
            return false;
        }
        try {
            return f49801e.contains(str);
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return false;
        }
    }

    @NotNull
    public static final String e(@NotNull String eventName) {
        if (o4.a.d(a.class)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(eventName, "eventName");
            if (f49798b) {
                if (f49797a.d(eventName)) {
                    return "_removed_";
                }
                return eventName;
            }
            return eventName;
        } catch (Throwable th2) {
            o4.a.b(th2, a.class);
            return null;
        }
    }

    public static final void f(@NotNull Map<String, String> parameters, @NotNull String eventName) {
        if (o4.a.d(a.class)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(parameters, "parameters");
            Intrinsics.checkNotNullParameter(eventName, "eventName");
            if (!f49798b) {
                return;
            }
            HashMap hashMap = new HashMap();
            for (String str : new ArrayList(parameters.keySet())) {
                String b10 = f49797a.b(eventName, str);
                if (b10 != null) {
                    hashMap.put(str, b10);
                    parameters.remove(str);
                }
            }
            if (!hashMap.isEmpty()) {
                try {
                    JSONObject jSONObject = new JSONObject();
                    for (Map.Entry entry : hashMap.entrySet()) {
                        jSONObject.put((String) entry.getKey(), (String) entry.getValue());
                    }
                    parameters.put("_restrictedParams", jSONObject.toString());
                } catch (JSONException unused) {
                }
            }
        } catch (Throwable th2) {
            o4.a.b(th2, a.class);
        }
    }
}
