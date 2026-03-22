package ea;

import android.os.Bundle;
import ca.k;
import com.applovin.sdk.AppLovinMediationProvider;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.hades.aar.admanager.core.AdFormat;
import com.ss.ttvideoengine.DataLoaderHelper;
import da.f;
import e.m;
import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.j;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
@Metadata
@SourceDebugExtension({"SMAP\nAdmobPamMgr.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdmobPamMgr.kt\ncom/hades/aar/admanager/loader/admob/AdmobPamMgr\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,190:1\n1#2:191\n1019#3,2:192\n*S KotlinDebug\n*F\n+ 1 AdmobPamMgr.kt\ncom/hades/aar/admanager/loader/admob/AdmobPamMgr\n*L\n180#1:192,2\n*E\n"})
/* loaded from: classes5.dex */
public final class b {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final b f51279a = new b();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static EnumMap<AdFormat, Double> f51280b = new EnumMap<>(AdFormat.class);
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private static da.a f51281c;

    /* renamed from: d  reason: collision with root package name */
    private static boolean f51282d;

    private b() {
    }

    private final boolean a() {
        ca.a aVar;
        Function0<String> n10;
        f b10;
        d.f a10 = k.f3414a.a();
        a aVar2 = null;
        if (a10 != null && (b10 = a10.b()) != null) {
            aVar = b10.s();
        } else {
            aVar = null;
        }
        if (aVar instanceof a) {
            aVar2 = (a) aVar;
        }
        if (((aVar2 == null || (n10 = aVar2.n()) == null || (r0 = n10.invoke()) == null) ? "" : "").length() == 0) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0027 A[Catch: NumberFormatException -> 0x001d, TryCatch #0 {NumberFormatException -> 0x001d, blocks: (B:3:0x0002, B:5:0x0006, B:11:0x0021, B:13:0x0027, B:15:0x002e), top: B:19:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x002c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void c(com.hades.aar.admanager.core.AdFormat r4) {
        /*
            r3 = this;
            java.lang.String r0 = "LAST_AD_VALUE_"
            da.a r1 = ea.b.f51281c     // Catch: java.lang.NumberFormatException -> L1d
            if (r1 == 0) goto L1f
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.NumberFormatException -> L1d
            r2.<init>(r0)     // Catch: java.lang.NumberFormatException -> L1d
            java.lang.String r0 = r4.formatName()     // Catch: java.lang.NumberFormatException -> L1d
            r2.append(r0)     // Catch: java.lang.NumberFormatException -> L1d
            java.lang.String r0 = r2.toString()     // Catch: java.lang.NumberFormatException -> L1d
            java.lang.String r0 = r1.getString(r0)     // Catch: java.lang.NumberFormatException -> L1d
            if (r0 != 0) goto L21
            goto L1f
        L1d:
            r4 = move-exception
            goto L38
        L1f:
            java.lang.String r0 = "0.0"
        L21:
            java.lang.Double r0 = kotlin.text.StringsKt.r(r0)     // Catch: java.lang.NumberFormatException -> L1d
            if (r0 == 0) goto L2c
            double r0 = r0.doubleValue()     // Catch: java.lang.NumberFormatException -> L1d
            goto L2e
        L2c:
            r0 = 0
        L2e:
            java.lang.Double r0 = java.lang.Double.valueOf(r0)     // Catch: java.lang.NumberFormatException -> L1d
            java.util.EnumMap<com.hades.aar.admanager.core.AdFormat, java.lang.Double> r1 = ea.b.f51280b     // Catch: java.lang.NumberFormatException -> L1d
            r1.put(r4, r0)     // Catch: java.lang.NumberFormatException -> L1d
            goto L51
        L38:
            ga.a r0 = ga.a.f52235a
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "getLastValueByAdFormat error :"
            r1.<init>(r2)
            java.lang.String r4 = r4.getMessage()
            r1.append(r4)
            java.lang.String r4 = r1.toString()
            java.lang.String r1 = "AdmobPamMgr"
            r0.c(r1, r4)
        L51:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: ea.b.c(com.hades.aar.admanager.core.AdFormat):void");
    }

    private final HashMap<String, JSONObject> e(double d10, JSONArray jSONArray) {
        double d11;
        double d12;
        ArrayList arrayList = new ArrayList();
        int length = jSONArray.length();
        JSONObject jSONObject = null;
        int i10 = 0;
        JSONObject jSONObject2 = null;
        int i11 = 0;
        while (i11 < length) {
            JSONObject optJSONObject = jSONArray.optJSONObject(i11);
            if (optJSONObject != null) {
                JSONArray optJSONArray = optJSONObject.optJSONArray("range");
                if (optJSONArray != null) {
                    d11 = optJSONArray.optDouble(i10);
                } else {
                    d11 = 0.0d;
                }
                JSONArray optJSONArray2 = optJSONObject.optJSONArray("range");
                if (optJSONArray2 != null) {
                    d12 = optJSONArray2.optDouble(1);
                } else {
                    d12 = 0.0d;
                }
                arrayList.add(optJSONObject.put(AppLovinMediationProvider.MAX, d12));
                String value = optJSONObject.optString(AppMeasurementSdk.ConditionalUserProperty.VALUE, "");
                Intrinsics.checkNotNullExpressionValue(value, "value");
                if (StringsKt.Z(value, DataLoaderHelper.PRELOAD_DEFAULT_SCENE, true)) {
                    jSONObject = optJSONObject;
                }
                if (d10 > 0.0d && d11 <= d10 && d10 <= d12) {
                    jSONObject2 = optJSONObject;
                }
            }
            i11++;
            i10 = 0;
        }
        if (arrayList.size() > 1) {
            CollectionsKt.D(arrayList, new m());
        }
        HashMap<String, JSONObject> hashMap = new HashMap<>();
        hashMap.put("OVER_RANGE_GROUP", new JSONArray((Collection) arrayList).optJSONObject(0));
        hashMap.put("TAG_RANGE_GROUP", jSONObject2);
        hashMap.put("TAG_DEFAULT_KEY", jSONObject);
        return hashMap;
    }

    private final void f() {
        if (f51282d) {
            return;
        }
        if (f51281c == null) {
            ga.a.f52235a.c("AdmobPamMgr", "ValueRecorder is null, should init it first.");
        } else {
            c(AdFormat.NATIVE);
            c(AdFormat.BANNER);
            c(AdFormat.INTERSTITIAL);
            c(AdFormat.REWARDED_VIDEO);
            c(AdFormat.APP_OPEN);
        }
        f51282d = true;
    }

    private final Bundle h(String str, AdFormat adFormat) {
        String optString;
        String formatName = adFormat.formatName();
        Double d10 = f51280b.get(adFormat);
        if (d10 == null) {
            d10 = Double.valueOf(0.0d);
        }
        double doubleValue = d10.doubleValue();
        try {
            JSONObject jSONObject = new JSONObject(str).getJSONObject(formatName);
            Iterator<String> keys = jSONObject.keys();
            Intrinsics.checkNotNullExpressionValue(keys, "formatObj.keys()");
            String str2 = (String) j.x(j.e(keys));
            if (str2 == null) {
                ga.a.f52235a.c("AdmobPamMgr", "No group key found in formatObj");
                return null;
            }
            Bundle bundle = new Bundle();
            try {
                JSONArray jSONArray = jSONObject.getJSONArray(str2);
                Intrinsics.checkNotNullExpressionValue(jSONArray, "formatObj.getJSONArray(groupKey)");
                HashMap<String, JSONObject> e10 = e(doubleValue, jSONArray);
                JSONObject jSONObject2 = e10.get("TAG_RANGE_GROUP");
                JSONObject jSONObject3 = e10.get("TAG_DEFAULT_KEY");
                JSONObject jSONObject4 = e10.get("OVER_RANGE_GROUP");
                if (jSONObject4 == null) {
                    jSONObject4 = new JSONObject();
                }
                if (doubleValue == 0.0d) {
                    if (jSONObject3 != null) {
                        ga.a.f52235a.d("AdmobPamMgr", "handleAdPamTargetGroup -> Branch: Default Group");
                        optString = jSONObject3.getString(AppMeasurementSdk.ConditionalUserProperty.VALUE);
                    } else {
                        optString = jSONObject4.optString(AppMeasurementSdk.ConditionalUserProperty.VALUE);
                        ga.a.f52235a.c("AdmobPamMgr", "handleAdPamTargetGroup -> Branch: Over Range Group (No Default),NO_CONFIG_DEFAULT_GROUP_VALUE");
                    }
                } else if (jSONObject2 == null) {
                    optString = jSONObject4.optString(AppMeasurementSdk.ConditionalUserProperty.VALUE);
                    ga.a.f52235a.d("AdmobPamMgr", "handleAdPamTargetGroup -> Branch: Over Range Group");
                } else {
                    ga.a.f52235a.d("AdmobPamMgr", "handleAdPamTargetGroup -> Branch: Tag User Groups");
                    optString = jSONObject2.optString(AppMeasurementSdk.ConditionalUserProperty.VALUE);
                }
                bundle.putString(str2, optString);
                ga.a aVar = ga.a.f52235a;
                aVar.d("AdmobPamMgr", "handleAdPamTargetGroup -> Match range : lastAdValue=" + doubleValue + ",GroupKey=(" + str2 + "), GroupValue=(" + bundle.getString(str2) + ')');
            } catch (Exception e11) {
                ga.a aVar2 = ga.a.f52235a;
                aVar2.c("AdmobPamMgr", "handleAdPamTargetGroup -> Error : " + e11.getMessage());
            }
            return bundle;
        } catch (JSONException e12) {
            e12.printStackTrace();
            ga.a aVar3 = ga.a.f52235a;
            aVar3.c("AdmobPamMgr", "handleAdPamTargetGroup -> Request format=(" + formatName + ") is error, check your json data : " + str);
            return null;
        }
    }

    @Nullable
    public final Double b(@NotNull AdFormat adFormat) {
        Intrinsics.checkNotNullParameter(adFormat, "adFormat");
        Double d10 = f51280b.get(adFormat);
        if (d10 == null) {
            d10 = null;
        }
        return d10;
    }

    @Nullable
    public final Bundle d(@NotNull AdFormat format) {
        ca.a aVar;
        a aVar2;
        Function0<String> n10;
        f b10;
        Intrinsics.checkNotNullParameter(format, "format");
        if (a()) {
            ga.a.f52235a.c("AdmobPamMgr", "Should fetch remote data first.");
            return null;
        }
        f();
        d.f a10 = k.f3414a.a();
        if (a10 != null && (b10 = a10.b()) != null) {
            aVar = b10.s();
        } else {
            aVar = null;
        }
        if (aVar instanceof a) {
            aVar2 = (a) aVar;
        } else {
            aVar2 = null;
        }
        Bundle h10 = h((aVar2 == null || (n10 = aVar2.n()) == null || (r0 = n10.invoke()) == null) ? "" : "", format);
        if (h10 == null) {
            return null;
        }
        Bundle bundle = new Bundle();
        bundle.putBundle("admob_custom_keyvals", h10);
        return bundle;
    }

    public final void g(@NotNull AdFormat adFormat, double d10) {
        boolean z10;
        f b10;
        Intrinsics.checkNotNullParameter(adFormat, "adFormat");
        if (f51281c == null) {
            ga.a.f52235a.c("AdmobPamMgr", "handleAdRecordLastValue -> ValueRecorder is null, should init it first.");
            return;
        }
        d.f a10 = k.f3414a.a();
        if (a10 != null && (b10 = a10.b()) != null) {
            z10 = b10.x();
        } else {
            z10 = false;
        }
        if (d10 <= 0.0d && !z10) {
            ga.a.f52235a.c("AdmobPamMgr", "handleAdRecordLastValue ->  value should over 0 ");
            return;
        }
        f51280b.put((EnumMap<AdFormat, Double>) adFormat, (AdFormat) Double.valueOf(d10));
        String str = "LAST_AD_VALUE_" + adFormat.formatName();
        da.a aVar = f51281c;
        if (aVar != null) {
            aVar.a(str, String.valueOf(d10));
        }
        ga.a.f52235a.d("AdmobPamMgr", "handleAdRecordLastValue -> Record last AdValue for pam :(key=" + str + ", value=" + d10 + ')');
    }

    public final void i(@Nullable da.a aVar) {
        f51281c = aVar;
    }
}
