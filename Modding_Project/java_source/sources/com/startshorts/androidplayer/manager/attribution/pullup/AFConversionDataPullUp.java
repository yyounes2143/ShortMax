package com.startshorts.androidplayer.manager.attribution.pullup;

import android.content.Context;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.attribution.CampaignProvider;
import com.startshorts.androidplayer.manager.attribution.CampaignType;
import com.startshorts.androidplayer.manager.attribution.provider.AFConversionDataProvider;
import com.startshorts.androidplayer.manager.attribution.provider.BaseCampaignProvider;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import com.startshorts.androidplayer.utils.DeviceUtil;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AFConversionDataPullUp.kt */
@Metadata
/* loaded from: classes6.dex */
public final class AFConversionDataPullUp extends BaseCampaignPullUp {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f42058a = new a(null);

    /* compiled from: AFConversionDataPullUp.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: AFConversionDataPullUp.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class b implements AFConversionDataProvider.b {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f42060b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f42061c;

        b(String str, String str2) {
            this.f42060b = str;
            this.f42061c = str2;
        }

        @Override // com.startshorts.androidplayer.manager.attribution.provider.AFConversionDataProvider.b
        public void a(String data) {
            Intrinsics.checkNotNullParameter(data, "data");
            AFConversionDataPullUp.this.f(data, this.f42060b, this.f42061c);
        }
    }

    private final void e(String str, String str2, String str3) {
        Logger logger = Logger.f41511a;
        logger.h("CampaignNewTag", "AF PullUp handleQuerySuccess -> " + str);
        CoroutineUtil.l(CoroutineUtil.f48072a, "reportAFConversionDataPullUp", false, new AFConversionDataPullUp$handleQuerySuccess$1(str2, str, null), 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void f(String str, String str2, String str3) {
        Logger logger = Logger.f41511a;
        logger.h("CampaignNewTag", "AfUdl PullUp handleUdlQuerySuccess -> " + str);
        CoroutineUtil.l(CoroutineUtil.f48072a, "reportUdlAfConversionDataPullUp", false, new AFConversionDataPullUp$handleUdlQuerySuccess$1(str2, str, null), 2, null);
    }

    @Override // com.startshorts.androidplayer.manager.attribution.pullup.BaseCampaignPullUp
    @Nullable
    protected Object c(@NotNull Context context, @NotNull String str, @NotNull String str2, @NotNull rs.c<? super Unit> cVar) {
        AFConversionDataProvider aFConversionDataProvider;
        BaseCampaignProvider g10 = CampaignProvider.f41870a.g(CampaignType.AF_CONVERSION_DATA);
        if (g10 instanceof AFConversionDataProvider) {
            aFConversionDataProvider = (AFConversionDataProvider) g10;
        } else {
            aFConversionDataProvider = null;
        }
        if (aFConversionDataProvider != null) {
            String B = aFConversionDataProvider.B();
            String C = aFConversionDataProvider.C();
            if (B != null && B.length() != 0 && DeviceUtil.f48146a.L() - aFConversionDataProvider.E() <= 5000) {
                e(B, str, str2);
            } else if (C != null && C.length() != 0 && DeviceUtil.f48146a.L() - aFConversionDataProvider.F() <= 5000) {
                f(C, str, str2);
            } else {
                aFConversionDataProvider.O(new b(str, str2));
            }
        }
        return Unit.f60915a;
    }

    @Override // je.b
    @NotNull
    public String name() {
        return "AFConversionDataPullUp";
    }
}
