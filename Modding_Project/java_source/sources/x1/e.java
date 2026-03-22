package x1;

import android.adservices.common.AdData;
import android.adservices.common.AdSelectionSignals;
import android.adservices.common.AdTechIdentifier;
import android.adservices.customaudience.CustomAudience;
import android.adservices.customaudience.CustomAudienceManager;
import android.adservices.customaudience.JoinCustomAudienceRequest;
import android.adservices.customaudience.TrustedBiddingData;
import android.annotation.TargetApi;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.os.OutcomeReceiver;
import android.util.Log;
import androidx.privacysandbox.ads.adservices.common.g;
import androidx.privacysandbox.ads.adservices.customaudience.q;
import androidx.privacysandbox.ads.adservices.customaudience.r;
import androidx.privacysandbox.ads.adservices.customaudience.s;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.facebook.appevents.AppEvent;
import com.facebook.v;
import java.util.concurrent.Executors;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: PACustomAudienceClient.kt */
@Metadata
@SourceDebugExtension({"SMAP\nPACustomAudienceClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PACustomAudienceClient.kt\ncom/facebook/appevents/gps/pa/PACustomAudienceClient\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Uri.kt\nandroidx/core/net/UriKt\n*L\n1#1,186:1\n1#2:187\n29#3:188\n29#3:189\n29#3:190\n29#3:191\n*S KotlinDebug\n*F\n+ 1 PACustomAudienceClient.kt\ncom/facebook/appevents/gps/pa/PACustomAudienceClient\n*L\n135#1:188\n139#1:189\n147#1:190\n148#1:191\n*E\n"})
/* loaded from: classes3.dex */
public final class e {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final e f70386a = new e();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final String f70387b = "Fledge: " + e.class.getSimpleName();

    /* renamed from: c  reason: collision with root package name */
    private static boolean f70388c;

    /* renamed from: d  reason: collision with root package name */
    private static boolean f70389d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private static CustomAudienceManager f70390e;

    /* renamed from: f  reason: collision with root package name */
    private static v1.a f70391f;

    /* renamed from: g  reason: collision with root package name */
    private static String f70392g;

    /* compiled from: PACustomAudienceClient.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a implements OutcomeReceiver {
        a() {
        }

        /* renamed from: a */
        public void onError(@NotNull Exception error) {
            Intrinsics.checkNotNullParameter(error, "error");
            Log.e(e.b(), error.toString());
            v1.a a10 = e.a();
            if (a10 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("gpsDebugLogger");
                a10 = null;
            }
            Bundle bundle = new Bundle();
            bundle.putString("gps_pa_failed_reason", error.toString());
            Unit unit = Unit.f60915a;
            a10.b("gps_pa_failed", bundle);
        }

        public void onResult(@NotNull Object result) {
            Intrinsics.checkNotNullParameter(result, "result");
            Log.i(e.b(), "Successfully joined custom audience");
            v1.a a10 = e.a();
            if (a10 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("gpsDebugLogger");
                a10 = null;
            }
            a10.b("gps_pa_succeed", null);
        }
    }

    private e() {
    }

    public static final /* synthetic */ v1.a a() {
        if (o4.a.d(e.class)) {
            return null;
        }
        try {
            return f70391f;
        } catch (Throwable th2) {
            o4.a.b(th2, e.class);
            return null;
        }
    }

    public static final /* synthetic */ String b() {
        if (o4.a.d(e.class)) {
            return null;
        }
        try {
            return f70387b;
        } catch (Throwable th2) {
            o4.a.b(th2, e.class);
            return null;
        }
    }

    @TargetApi(34)
    public static final void c() {
        String obj;
        CustomAudienceManager customAudienceManager;
        if (o4.a.d(e.class)) {
            return;
        }
        try {
            f70389d = true;
            Context l10 = v.l();
            f70391f = new v1.a(l10);
            f70392g = "https://www." + v.v() + "/privacy_sandbox/pa/logic";
            v1.a aVar = null;
            try {
                try {
                    customAudienceManager = CustomAudienceManager.get(l10);
                    f70390e = customAudienceManager;
                    if (customAudienceManager != null) {
                        f70388c = true;
                    }
                    obj = null;
                } catch (Exception e10) {
                    obj = e10.toString();
                    Log.w(f70387b, "Failed to get CustomAudienceManager: " + e10);
                }
            } catch (Error e11) {
                obj = e11.toString();
                Log.w(f70387b, "Failed to get CustomAudienceManager: " + e11);
            }
            if (!f70388c) {
                v1.a aVar2 = f70391f;
                if (aVar2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("gpsDebugLogger");
                } else {
                    aVar = aVar2;
                }
                Bundle bundle = new Bundle();
                bundle.putString("gps_pa_failed_reason", obj);
                Unit unit = Unit.f60915a;
                aVar.b("gps_pa_failed", bundle);
            }
        } catch (Throwable th2) {
            o4.a.b(th2, e.class);
        }
    }

    @TargetApi(34)
    private final void f(String str, String str2) {
        AdData.Builder renderUri;
        AdData.Builder metadata;
        AdData build;
        TrustedBiddingData.Builder trustedBiddingUri;
        TrustedBiddingData.Builder trustedBiddingKeys;
        TrustedBiddingData build2;
        CustomAudience.Builder name;
        AdTechIdentifier fromString;
        CustomAudience.Builder buyer;
        CustomAudience.Builder dailyUpdateUri;
        CustomAudience.Builder biddingLogicUri;
        CustomAudience.Builder trustedBiddingData;
        AdSelectionSignals fromString2;
        CustomAudience.Builder userBiddingSignals;
        CustomAudience.Builder ads;
        CustomAudience build3;
        JoinCustomAudienceRequest.Builder customAudience;
        JoinCustomAudienceRequest build4;
        if (o4.a.d(this)) {
            return;
        }
        try {
            String g10 = g(str, str2);
            if (g10 == null) {
                return;
            }
            v1.a aVar = null;
            try {
                OutcomeReceiver a10 = androidx.core.os.b.a(new a());
                x1.a.a();
                AdData.Builder a11 = g.a();
                StringBuilder sb2 = new StringBuilder();
                String str3 = f70392g;
                if (str3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("baseUri");
                    str3 = null;
                }
                sb2.append(str3);
                sb2.append("/ad");
                Uri parse = Uri.parse(sb2.toString());
                Intrinsics.checkExpressionValueIsNotNull(parse, "Uri.parse(this)");
                renderUri = a11.setRenderUri(parse);
                metadata = renderUri.setMetadata("{'isRealAd': false}");
                build = metadata.build();
                Intrinsics.checkNotNullExpressionValue(build, "Builder()\n              …\n                .build()");
                b.a();
                TrustedBiddingData.Builder a12 = q.a();
                StringBuilder sb3 = new StringBuilder();
                String str4 = f70392g;
                if (str4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("baseUri");
                    str4 = null;
                }
                sb3.append(str4);
                sb3.append("?trusted_bidding");
                Uri parse2 = Uri.parse(sb3.toString());
                Intrinsics.checkExpressionValueIsNotNull(parse2, "Uri.parse(this)");
                trustedBiddingUri = a12.setTrustedBiddingUri(parse2);
                trustedBiddingKeys = trustedBiddingUri.setTrustedBiddingKeys(CollectionsKt.e(""));
                build2 = trustedBiddingKeys.build();
                Intrinsics.checkNotNullExpressionValue(build2, "Builder()\n              …\n                .build()");
                c.a();
                name = s.a().setName(g10);
                fromString = AdTechIdentifier.fromString("facebook.com");
                buyer = name.setBuyer(fromString);
                StringBuilder sb4 = new StringBuilder();
                String str5 = f70392g;
                if (str5 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("baseUri");
                    str5 = null;
                }
                sb4.append(str5);
                sb4.append("?daily&app_id=");
                sb4.append(str);
                Uri parse3 = Uri.parse(sb4.toString());
                Intrinsics.checkExpressionValueIsNotNull(parse3, "Uri.parse(this)");
                dailyUpdateUri = buyer.setDailyUpdateUri(parse3);
                StringBuilder sb5 = new StringBuilder();
                String str6 = f70392g;
                if (str6 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("baseUri");
                    str6 = null;
                }
                sb5.append(str6);
                sb5.append("?bidding");
                Uri parse4 = Uri.parse(sb5.toString());
                Intrinsics.checkExpressionValueIsNotNull(parse4, "Uri.parse(this)");
                biddingLogicUri = dailyUpdateUri.setBiddingLogicUri(parse4);
                trustedBiddingData = biddingLogicUri.setTrustedBiddingData(build2);
                fromString2 = AdSelectionSignals.fromString(JsonUtils.EMPTY_JSON);
                userBiddingSignals = trustedBiddingData.setUserBiddingSignals(fromString2);
                ads = userBiddingSignals.setAds(CollectionsKt.e(build));
                build3 = ads.build();
                Intrinsics.checkNotNullExpressionValue(build3, "Builder()\n              …(listOf(dummyAd)).build()");
                d.a();
                customAudience = r.a().setCustomAudience(build3);
                build4 = customAudience.build();
                Intrinsics.checkNotNullExpressionValue(build4, "Builder().setCustomAudience(ca).build()");
                CustomAudienceManager customAudienceManager = f70390e;
                if (customAudienceManager != null) {
                    customAudienceManager.joinCustomAudience(build4, Executors.newSingleThreadExecutor(), a10);
                }
            } catch (Error e10) {
                Log.w(f70387b, "Failed to join Custom Audience: " + e10);
                v1.a aVar2 = f70391f;
                if (aVar2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("gpsDebugLogger");
                } else {
                    aVar = aVar2;
                }
                Bundle bundle = new Bundle();
                bundle.putString("gps_pa_failed_reason", e10.toString());
                Unit unit = Unit.f60915a;
                aVar.b("gps_pa_failed", bundle);
            } catch (Exception e11) {
                Log.w(f70387b, "Failed to join Custom Audience: " + e11);
                v1.a aVar3 = f70391f;
                if (aVar3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("gpsDebugLogger");
                } else {
                    aVar = aVar3;
                }
                Bundle bundle2 = new Bundle();
                bundle2.putString("gps_pa_failed_reason", e11.toString());
                Unit unit2 = Unit.f60915a;
                aVar.b("gps_pa_failed", bundle2);
            }
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    private final String g(String str, String str2) {
        if (!o4.a.d(this) && str != null && str2 != null) {
            try {
                if (!Intrinsics.areEqual(str2, "_removed_") && !StringsKt.b0(str2, "gps", false, 2, null)) {
                    return str + '@' + str2 + '@' + (System.currentTimeMillis() / 1000) + "@1";
                }
                return null;
            } catch (Throwable th2) {
                o4.a.b(th2, this);
            }
        }
        return null;
    }

    public final void d(@Nullable String str, @Nullable AppEvent appEvent) {
        if (o4.a.d(this)) {
            return;
        }
        try {
            if (!f70389d) {
                c();
            }
            if (!f70388c) {
                return;
            }
            String str2 = null;
            if (appEvent != null) {
                try {
                    JSONObject e10 = appEvent.e();
                    if (e10 != null) {
                        str2 = e10.getString("_eventName");
                    }
                } catch (JSONException unused) {
                    Log.w(f70387b, "Failed to get event name from event.");
                }
            }
            f(str, str2);
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    public final void e(@Nullable String str, @Nullable String str2) {
        if (o4.a.d(this)) {
            return;
        }
        try {
            if (!f70389d) {
                c();
            }
            if (!f70388c) {
                return;
            }
            f(str, str2);
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }
}
