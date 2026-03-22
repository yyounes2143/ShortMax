package z1;

import android.os.Bundle;
import com.facebook.internal.FetchedAppSettingsManager;
import com.facebook.internal.p;
import com.facebook.internal.u0;
import com.facebook.v;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: SensitiveParamsManager.kt */
@Metadata
/* loaded from: classes3.dex */
public final class f {

    /* renamed from: b  reason: collision with root package name */
    private static boolean f71234b;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final f f71233a = new f();
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static HashSet<String> f71235c = new HashSet<>();
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private static Map<String, HashSet<String>> f71236d = new HashMap();

    private f() {
    }

    public static final void a() {
        if (o4.a.d(f.class)) {
            return;
        }
        try {
            f71233a.b();
            if (f71235c.isEmpty() && f71236d.isEmpty()) {
                f71234b = false;
            } else {
                f71234b = true;
            }
        } catch (Throwable th2) {
            o4.a.b(th2, f.class);
        }
    }

    private final void b() {
        HashSet<String> m10;
        if (o4.a.d(this)) {
            return;
        }
        try {
            p u10 = FetchedAppSettingsManager.u(v.m(), false);
            if (u10 == null) {
                return;
            }
            try {
                f71235c = new HashSet<>();
                f71236d = new HashMap();
                JSONArray u11 = u10.u();
                if (u11 != null && u11.length() != 0) {
                    int length = u11.length();
                    for (int i10 = 0; i10 < length; i10++) {
                        JSONObject jSONObject = u11.getJSONObject(i10);
                        boolean has = jSONObject.has("key");
                        boolean has2 = jSONObject.has(AppMeasurementSdk.ConditionalUserProperty.VALUE);
                        if (has && has2) {
                            String sensitiveParamsScope = jSONObject.getString("key");
                            JSONArray jSONArray = jSONObject.getJSONArray(AppMeasurementSdk.ConditionalUserProperty.VALUE);
                            if (jSONArray != null && (m10 = u0.m(jSONArray)) != null) {
                                if (sensitiveParamsScope.equals("_MTSDK_Default_")) {
                                    f71235c = m10;
                                } else {
                                    Map<String, HashSet<String>> map = f71236d;
                                    Intrinsics.checkNotNullExpressionValue(sensitiveParamsScope, "sensitiveParamsScope");
                                    map.put(sensitiveParamsScope, m10);
                                }
                            }
                        }
                    }
                }
            } catch (Exception unused) {
            }
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    public static final void c(@Nullable Bundle bundle, @NotNull String eventName) {
        if (o4.a.d(f.class)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(eventName, "eventName");
            if (f71234b && bundle != null) {
                if (f71235c.isEmpty() && !f71236d.containsKey(eventName)) {
                    return;
                }
                JSONArray jSONArray = new JSONArray();
                try {
                    HashSet<String> hashSet = f71236d.get(eventName);
                    Iterator it = new ArrayList(bundle.keySet()).iterator();
                    while (it.hasNext()) {
                        String key = (String) it.next();
                        f fVar = f71233a;
                        Intrinsics.checkNotNullExpressionValue(key, "key");
                        if (fVar.d(key, hashSet)) {
                            bundle.remove(key);
                            jSONArray.put(key);
                        }
                    }
                } catch (Exception unused) {
                }
                if (jSONArray.length() > 0) {
                    bundle.putString("_filteredKey", jSONArray.toString());
                }
            }
        } catch (Throwable th2) {
            o4.a.b(th2, f.class);
        }
    }

    private final boolean d(String str, HashSet<String> hashSet) {
        if (o4.a.d(this)) {
            return false;
        }
        try {
            if (!f71235c.contains(str)) {
                if (hashSet != null && !hashSet.isEmpty()) {
                    if (!hashSet.contains(str)) {
                        return false;
                    }
                }
                return false;
            }
            return true;
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return false;
        }
    }
}
