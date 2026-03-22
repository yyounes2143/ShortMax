package com.startshorts.androidplayer.manager.attribution.pullup;

import android.content.Context;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.attribution.CampaignProvider;
import com.startshorts.androidplayer.manager.attribution.CampaignType;
import com.startshorts.androidplayer.manager.attribution.provider.AJConversionDataProvider;
import com.startshorts.androidplayer.manager.attribution.provider.BaseCampaignProvider;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import com.startshorts.androidplayer.utils.DeviceUtil;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AJConversionDataPullUp.kt */
@Metadata
/* loaded from: classes6.dex */
public final class AJConversionDataPullUp extends BaseCampaignPullUp {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f42068a = new a(null);

    /* compiled from: AJConversionDataPullUp.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: AJConversionDataPullUp.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class b implements AJConversionDataProvider.b {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f42070b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f42071c;

        b(String str, String str2) {
            this.f42070b = str;
            this.f42071c = str2;
        }

        @Override // com.startshorts.androidplayer.manager.attribution.provider.AJConversionDataProvider.b
        public void a(String data) {
            Intrinsics.checkNotNullParameter(data, "data");
            AJConversionDataPullUp.this.f(data, this.f42070b, this.f42071c);
        }
    }

    private final void e(String str, String str2, String str3) {
        Logger logger = Logger.f41511a;
        logger.h("CampaignNewTag", "AJConversionDataPullUp PullUp handleQuerySuccess -> " + str);
        CoroutineUtil.l(CoroutineUtil.f48072a, "AJConversionDataPullUp:reportAJConversionDataPullUp", false, new AJConversionDataPullUp$handleQuerySuccess$1(str2, str, null), 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void f(String str, String str2, String str3) {
        Logger logger = Logger.f41511a;
        logger.h("CampaignNewTag", "AJConversionDataPullUp PullUp handleUdlQuerySuccess -> " + str);
        CoroutineUtil.l(CoroutineUtil.f48072a, "AJConversionDataPullUp reportUdlAjConversionDataPullUp", false, new AJConversionDataPullUp$handleUdlQuerySuccess$1(str2, str, null), 2, null);
    }

    @Override // com.startshorts.androidplayer.manager.attribution.pullup.BaseCampaignPullUp
    @Nullable
    protected Object c(@NotNull Context context, @NotNull String str, @NotNull String str2, @NotNull rs.c<? super Unit> cVar) {
        AJConversionDataProvider aJConversionDataProvider;
        BaseCampaignProvider g10 = CampaignProvider.f41870a.g(CampaignType.AJ_CONVERSION_DATA);
        if (g10 instanceof AJConversionDataProvider) {
            aJConversionDataProvider = (AJConversionDataProvider) g10;
        } else {
            aJConversionDataProvider = null;
        }
        if (aJConversionDataProvider != null) {
            String E = aJConversionDataProvider.E();
            String F = aJConversionDataProvider.F();
            if (E != null && E.length() != 0 && DeviceUtil.f48146a.L() - aJConversionDataProvider.G() <= 5000) {
                e(E, str, str2);
            } else if (F != null && F.length() != 0 && DeviceUtil.f48146a.L() - aJConversionDataProvider.H() <= 5000) {
                f(F, str, str2);
            } else {
                aJConversionDataProvider.S(new b(str, str2));
            }
        }
        return Unit.f60915a;
    }

    @Override // je.b
    @NotNull
    public String name() {
        return "AJConversionDataPullUp";
    }
}
