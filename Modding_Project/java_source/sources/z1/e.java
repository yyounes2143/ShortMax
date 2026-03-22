package z1;

import com.facebook.internal.FetchedAppSettingsManager;
import com.facebook.internal.p;
import com.facebook.internal.u0;
import com.facebook.v;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: RedactedEventsManager.kt */
@Metadata
@SourceDebugExtension({"SMAP\nRedactedEventsManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RedactedEventsManager.kt\ncom/facebook/appevents/integrity/RedactedEventsManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,83:1\n1855#2,2:84\n*S KotlinDebug\n*F\n+ 1 RedactedEventsManager.kt\ncom/facebook/appevents/integrity/RedactedEventsManager\n*L\n73#1:84,2\n*E\n"})
/* loaded from: classes3.dex */
public final class e {

    /* renamed from: b  reason: collision with root package name */
    private static boolean f71231b;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final e f71230a = new e();
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static Map<String, HashSet<String>> f71232c = new HashMap();

    private e() {
    }

    public static final void a() {
        if (o4.a.d(e.class)) {
            return;
        }
        try {
            f71230a.c();
            if (!f71232c.isEmpty()) {
                f71231b = true;
            }
        } catch (Throwable th2) {
            o4.a.b(th2, e.class);
        }
    }

    private final String b(String str) {
        if (o4.a.d(this)) {
            return null;
        }
        try {
            for (String str2 : f71232c.keySet()) {
                HashSet<String> hashSet = f71232c.get(str2);
                if (hashSet != null && hashSet.contains(str)) {
                    return str2;
                }
            }
            return null;
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return null;
        }
    }

    private final void c() {
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
                f71232c = new HashMap();
                JSONArray q10 = u10.q();
                if (q10 != null && q10.length() != 0) {
                    int length = q10.length();
                    for (int i10 = 0; i10 < length; i10++) {
                        JSONObject jSONObject = q10.getJSONObject(i10);
                        boolean has = jSONObject.has("key");
                        boolean has2 = jSONObject.has(AppMeasurementSdk.ConditionalUserProperty.VALUE);
                        if (has && has2) {
                            String string = jSONObject.getString("key");
                            JSONArray jSONArray = jSONObject.getJSONArray(AppMeasurementSdk.ConditionalUserProperty.VALUE);
                            if (string != null && (m10 = u0.m(jSONArray)) != null) {
                                f71232c.put(string, m10);
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

    @NotNull
    public static final String d(@NotNull String eventName) {
        if (o4.a.d(e.class)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(eventName, "eventName");
            if (f71231b) {
                String b10 = f71230a.b(eventName);
                if (b10 != null) {
                    return b10;
                }
            }
            return eventName;
        } catch (Throwable th2) {
            o4.a.b(th2, e.class);
            return null;
        }
    }
}
