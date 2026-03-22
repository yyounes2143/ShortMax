package com.startshorts.androidplayer.manager.ad;

import android.content.Context;
import com.applovin.sdk.AppLovinMediationProvider;
import com.hades.aar.admanager.core.AdAggregatedSdk;
import com.hades.aar.admanager.core.AdFormat;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.configure.AdmobPreloadConfig;
import com.startshorts.androidplayer.manager.ad.AdHelper;
import com.startshorts.androidplayer.manager.configure.ad.BaseAdUnitIdConfigure;
import de.p;
import ea.b;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import oe.f;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AdHelper.kt */
@Metadata
/* loaded from: classes6.dex */
public final class AdHelper {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final AdHelper f41598a = new AdHelper();

    /* compiled from: AdHelper.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[AdAggregatedSdk.values().length];
            try {
                iArr[AdAggregatedSdk.ADMOB.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[AdAggregatedSdk.APPLOVIN_MAX.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private AdHelper() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean e(String str) {
        return f41598a.l();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String f() {
        return f.f63186a.value();
    }

    private final boolean l() {
        Integer num;
        AdmobPreloadConfig value = AdmobPreloadConfig.Companion.getValue();
        if (value == null || (num = value.getSwitch()) == null || num.intValue() != 1) {
            return false;
        }
        return true;
    }

    @NotNull
    public final String c() {
        return "adActionCount_android_v2";
    }

    @NotNull
    public final ca.a d(@NotNull Context context, @NotNull AdAggregatedSdk loaderType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(loaderType, "loaderType");
        if (loaderType == AdAggregatedSdk.ADMOB) {
            b.f51279a.i(AdManager.f41600a.E());
            ea.a aVar = new ea.a();
            aVar.h(false);
            aVar.q(new Function1() { // from class: de.a
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    boolean e10;
                    e10 = AdHelper.e((String) obj);
                    return Boolean.valueOf(e10);
                }
            });
            aVar.j(false);
            aVar.r(new Function0() { // from class: de.b
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    String f10;
                    f10 = AdHelper.f();
                    return f10;
                }
            });
            aVar.i(AdFormat.REWARDED_VIDEO, 3300000L);
            aVar.i(AdFormat.APP_OPEN, bt.a.d(1.368E7d));
            aVar.i(AdFormat.INTERSTITIAL, 3300000L);
            aVar.p("1FA60B614E65BC1BFAED3CCA70A01DF6");
            return aVar;
        }
        fa.a aVar2 = new fa.a();
        aVar2.h(false);
        aVar2.q(context.getString(R$string.applovin_sdk_key));
        aVar2.j(false);
        aVar2.i(AdFormat.REWARDED_VIDEO, 3300000L);
        aVar2.i(AdFormat.APP_OPEN, bt.a.d(1.368E7d));
        aVar2.i(AdFormat.INTERSTITIAL, 3300000L);
        aVar2.n("1FA60B614E65BC1BFAED3CCA70A01DF6");
        aVar2.p("1FA60B614E65BC1BFAED3CCA70A01DF6");
        aVar2.o(new AdHelper$getAdConfig$2$1(null));
        return aVar2;
    }

    @NotNull
    public final AdAggregatedSdk g() {
        if (p.f50365a.d()) {
            return AdAggregatedSdk.APPLOVIN_MAX;
        }
        return AdAggregatedSdk.ADMOB;
    }

    @NotNull
    public final String h() {
        if (ud.b.f68412a.g2()) {
            return "adSwitch_campaign_android";
        }
        return "adSwitch_organic_android";
    }

    @NotNull
    public final String i() {
        if (p.f50365a.d()) {
            return "applovinMax";
        }
        return AppLovinMediationProvider.ADMOB;
    }

    @Nullable
    public final BaseAdUnitIdConfigure j() {
        return null;
    }

    @NotNull
    public final String k(@Nullable AdAggregatedSdk adAggregatedSdk) {
        int i10;
        if (adAggregatedSdk == null) {
            i10 = -1;
        } else {
            i10 = a.$EnumSwitchMapping$0[adAggregatedSdk.ordinal()];
        }
        if (i10 != 1) {
            if (i10 != 2) {
                return "unknown";
            }
            return AppLovinMediationProvider.MAX;
        }
        return AppLovinMediationProvider.ADMOB;
    }
}
