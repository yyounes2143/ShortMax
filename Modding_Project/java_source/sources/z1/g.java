package z1;

import android.os.Bundle;
import com.facebook.internal.FetchedAppSettingsManager;
import com.facebook.internal.p;
import com.facebook.internal.u0;
import com.facebook.v;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Regex;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: StdParamsEnforcementManager.kt */
@Metadata
@SourceDebugExtension({"SMAP\nStdParamsEnforcementManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StdParamsEnforcementManager.kt\ncom/facebook/appevents/integrity/StdParamsEnforcementManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,129:1\n1#2:130\n1855#3,2:131\n1747#3,3:133\n1747#3,3:136\n*S KotlinDebug\n*F\n+ 1 StdParamsEnforcementManager.kt\ncom/facebook/appevents/integrity/StdParamsEnforcementManager\n*L\n115#1:131,2\n121#1:133,3\n125#1:136,3\n*E\n"})
/* loaded from: classes3.dex */
public final class g {

    /* renamed from: b  reason: collision with root package name */
    private static boolean f71238b;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final g f71237a = new g();
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static Map<String, HashSet<String>> f71239c = new HashMap();
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private static Map<String, HashSet<String>> f71240d = new HashMap();

    private g() {
    }

    private final void a(JSONArray jSONArray) {
        if (!o4.a.d(this) && jSONArray != null) {
            try {
                if (!f71238b) {
                    int length = jSONArray.length();
                    for (int i10 = 0; i10 < length; i10++) {
                        JSONObject jSONObject = jSONArray.getJSONObject(i10);
                        String key = jSONObject.getString("key");
                        if (key != null && key.length() != 0) {
                            try {
                                JSONArray jSONArray2 = jSONObject.getJSONArray(AppMeasurementSdk.ConditionalUserProperty.VALUE);
                                int length2 = jSONArray2.length();
                                for (int i11 = 0; i11 < length2; i11++) {
                                    boolean z10 = jSONArray2.getJSONObject(i11).getBoolean("require_exact_match");
                                    HashSet<String> f10 = f(jSONArray2.getJSONObject(i11).getJSONArray("potential_matches"));
                                    if (z10) {
                                        Map<String, HashSet<String>> map = f71240d;
                                        Intrinsics.checkNotNullExpressionValue(key, "key");
                                        HashSet<String> hashSet = f71240d.get(key);
                                        if (hashSet != null) {
                                            hashSet.addAll(f10);
                                            f10 = hashSet;
                                        }
                                        map.put(key, f10);
                                    } else {
                                        Map<String, HashSet<String>> map2 = f71239c;
                                        Intrinsics.checkNotNullExpressionValue(key, "key");
                                        HashSet<String> hashSet2 = f71239c.get(key);
                                        if (hashSet2 != null) {
                                            hashSet2.addAll(f10);
                                            f10 = hashSet2;
                                        }
                                        map2.put(key, f10);
                                    }
                                }
                            } catch (Exception unused) {
                                f71240d.remove(key);
                                f71239c.remove(key);
                            }
                        }
                    }
                }
            } catch (Throwable th2) {
                o4.a.b(th2, this);
            }
        }
    }

    public static final void b() {
        boolean z10;
        if (o4.a.d(g.class)) {
            return;
        }
        try {
            if (f71238b) {
                return;
            }
            f71237a.e();
            if (f71239c.isEmpty() && f71240d.isEmpty()) {
                z10 = false;
                f71238b = z10;
            }
            z10 = true;
            f71238b = z10;
        } catch (Throwable th2) {
            o4.a.b(th2, g.class);
        }
    }

    private final boolean c(String str, Set<String> set) {
        if (o4.a.d(this) || set == null) {
            return false;
        }
        try {
            Set<String> set2 = set;
            if ((set2 instanceof Collection) && set2.isEmpty()) {
                return false;
            }
            for (String str2 : set2) {
                Locale locale = Locale.ROOT;
                String lowerCase = str2.toLowerCase(locale);
                Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
                String lowerCase2 = str.toLowerCase(locale);
                Intrinsics.checkNotNullExpressionValue(lowerCase2, "this as java.lang.String).toLowerCase(Locale.ROOT)");
                if (Intrinsics.areEqual(lowerCase, lowerCase2)) {
                    return true;
                }
            }
            return false;
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return false;
        }
    }

    private final boolean d(String str, Set<String> set) {
        if (o4.a.d(this) || set == null) {
            return false;
        }
        try {
            Set<String> set2 = set;
            if ((set2 instanceof Collection) && set2.isEmpty()) {
                return false;
            }
            for (String str2 : set2) {
                if (new Regex(str2).k(str)) {
                    return true;
                }
            }
            return false;
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return false;
        }
    }

    private final void e() {
        if (o4.a.d(this)) {
            return;
        }
        try {
            p u10 = FetchedAppSettingsManager.u(v.m(), false);
            if (u10 == null) {
                return;
            }
            a(u10.s());
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    private final HashSet<String> f(JSONArray jSONArray) {
        try {
            if (o4.a.d(this)) {
                return null;
            }
            try {
                HashSet<String> m10 = u0.m(jSONArray);
                if (m10 == null) {
                    return new HashSet<>();
                }
                return m10;
            } catch (Exception unused) {
                return new HashSet<>();
            }
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return null;
        }
    }

    public static final void g(@Nullable Bundle bundle) {
        boolean z10;
        if (o4.a.d(g.class)) {
            return;
        }
        try {
            if (f71238b && bundle != null) {
                ArrayList<String> arrayList = new ArrayList();
                for (String key : bundle.keySet()) {
                    String valueOf = String.valueOf(bundle.get(key));
                    boolean z11 = false;
                    if (f71239c.get(key) != null) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    if (f71240d.get(key) != null) {
                        z11 = true;
                    }
                    if (z10 || z11) {
                        g gVar = f71237a;
                        boolean d10 = gVar.d(valueOf, f71239c.get(key));
                        boolean c10 = gVar.c(valueOf, f71240d.get(key));
                        if (!d10 && !c10) {
                            Intrinsics.checkNotNullExpressionValue(key, "key");
                            arrayList.add(key);
                        }
                    }
                }
                for (String str : arrayList) {
                    bundle.remove(str);
                }
            }
        } catch (Throwable th2) {
            o4.a.b(th2, g.class);
        }
    }
}
