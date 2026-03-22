package com.startshorts.androidplayer.manager.attribution.provider;

import android.content.Context;
import android.os.Bundle;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.mbridge.msdk.interstitial.view.MBInterstitialActivity;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.attribution.CampaignParser;
import com.startshorts.androidplayer.manager.attribution.CampaignReporter;
import com.startshorts.androidplayer.manager.attribution.CampaignType;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.utils.DeviceUtil;
import ie.j;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BaseCampaignProvider.kt */
@Metadata
/* loaded from: classes6.dex */
public abstract class BaseCampaignProvider implements j {
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public static final a f42007e = new a(null);
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private static final AtomicBoolean f42008f = new AtomicBoolean(false);

    /* renamed from: a  reason: collision with root package name */
    private boolean f42009a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f42010b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f42011c;

    /* renamed from: d  reason: collision with root package name */
    private long f42012d = -1;

    /* compiled from: BaseCampaignProvider.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Nullable
        public final String a(@NotNull CampaignType campaignType) {
            Intrinsics.checkNotNullParameter(campaignType, "campaignType");
            return ud.b.f68412a.U(campaignType.getValue());
        }

        @NotNull
        public final AtomicBoolean b() {
            return BaseCampaignProvider.f42008f;
        }

        public final boolean c(@NotNull CampaignType campaignType) {
            Intrinsics.checkNotNullParameter(campaignType, "campaignType");
            return ud.b.f68412a.Y(campaignType.getValue());
        }

        public final void d() {
            b().set(false);
            Logger.f41511a.h("CampaignNewTag", "BaseCampaignProvider: Reset mIsPullUpConsumed to false");
        }

        public final void e(@NotNull CampaignType campaignType, @Nullable String str) {
            Intrinsics.checkNotNullParameter(campaignType, "campaignType");
            Logger logger = Logger.f41511a;
            logger.e("CampaignNewTag", "setInfo -> campaignType(" + campaignType + "), campaignInfo(" + str + ')');
            ud.b.f68412a.e3(campaignType.getValue(), str);
            if (c(campaignType) && fk.a.f51702a.a()) {
                if (Intrinsics.areEqual(campaignType.getValue(), CampaignType.UPLOAD_CAMPAIGN_INFO_RESULT.getValue()) || Intrinsics.areEqual(campaignType.getValue(), CampaignType.PRE_INSTALL.getValue()) || CampaignReporter.f41888a.s()) {
                    CampaignParser.f41836a.x();
                }
            }
        }

        public final void f(@NotNull CampaignType campaignType) {
            Intrinsics.checkNotNullParameter(campaignType, "campaignType");
            if (!c(campaignType)) {
                Logger logger = Logger.f41511a;
                logger.e("CampaignNewTag", "setQueried -> campaignType(" + campaignType + ')');
                ud.b.f68412a.i3(campaignType.getValue(), true);
            }
        }

        private a() {
        }
    }

    private final long d() {
        if (this.f42012d == -1) {
            return -1L;
        }
        return DeviceUtil.f48146a.L() - this.f42012d;
    }

    public static /* synthetic */ void i(BaseCampaignProvider baseCampaignProvider, int i10, int i11, Object obj) {
        if (obj == null) {
            if ((i11 & 1) != 0) {
                i10 = 1;
            }
            baseCampaignProvider.h(i10);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: logQuerySuccess");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Can't wrap try/catch for region: R(9:1|(2:3|(7:5|6|7|(1:(2:10|11)(2:17|18))(3:19|20|(1:22))|12|13|14))|25|6|7|(0)(0)|12|13|14) */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x002d, code lost:
        r5 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0045, code lost:
        r6 = com.startshorts.androidplayer.log.Logger.f41511a;
        r6.e("CampaignNewTag", "query exception -> " + r4.name() + " -- " + r5.getMessage());
        r4.g(r5.getMessage());
        r4.o();
        r4.n("");
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0037  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ java.lang.Object k(com.startshorts.androidplayer.manager.attribution.provider.BaseCampaignProvider r4, android.content.Context r5, rs.c<? super kotlin.Unit> r6) {
        /*
            boolean r0 = r6 instanceof com.startshorts.androidplayer.manager.attribution.provider.BaseCampaignProvider$query$1
            if (r0 == 0) goto L13
            r0 = r6
            com.startshorts.androidplayer.manager.attribution.provider.BaseCampaignProvider$query$1 r0 = (com.startshorts.androidplayer.manager.attribution.provider.BaseCampaignProvider$query$1) r0
            int r1 = r0.f42016k
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f42016k = r1
            goto L18
        L13:
            com.startshorts.androidplayer.manager.attribution.provider.BaseCampaignProvider$query$1 r0 = new com.startshorts.androidplayer.manager.attribution.provider.BaseCampaignProvider$query$1
            r0.<init>(r4, r6)
        L18:
            java.lang.Object r6 = r0.f42014i
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f42016k
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            java.lang.Object r4 = r0.f42013h
            com.startshorts.androidplayer.manager.attribution.provider.BaseCampaignProvider r4 = (com.startshorts.androidplayer.manager.attribution.provider.BaseCampaignProvider) r4
            kotlin.f.b(r6)     // Catch: java.lang.Exception -> L2d
            goto L7c
        L2d:
            r5 = move-exception
            goto L45
        L2f:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L37:
            kotlin.f.b(r6)
            r0.f42013h = r4     // Catch: java.lang.Exception -> L2d
            r0.f42016k = r3     // Catch: java.lang.Exception -> L2d
            java.lang.Object r4 = r4.l(r5, r0)     // Catch: java.lang.Exception -> L2d
            if (r4 != r1) goto L7c
            return r1
        L45:
            com.startshorts.androidplayer.log.Logger r6 = com.startshorts.androidplayer.log.Logger.f41511a
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "query exception -> "
            r0.append(r1)
            java.lang.String r1 = r4.name()
            r0.append(r1)
            java.lang.String r1 = " -- "
            r0.append(r1)
            java.lang.String r1 = r5.getMessage()
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            java.lang.String r1 = "CampaignNewTag"
            r6.e(r1, r0)
            java.lang.String r5 = r5.getMessage()
            r4.g(r5)
            r4.o()
            java.lang.String r5 = ""
            r4.n(r5)
        L7c:
            kotlin.Unit r4 = kotlin.Unit.f60915a
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.attribution.provider.BaseCampaignProvider.k(com.startshorts.androidplayer.manager.attribution.provider.BaseCampaignProvider, android.content.Context, rs.c):java.lang.Object");
    }

    @Nullable
    public final String c() {
        return f42007e.a(a());
    }

    public final boolean e() {
        return f42007e.c(a());
    }

    public final void f() {
        if (this.f42009a) {
            return;
        }
        this.f42009a = true;
        m();
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        bundle.putString(MBInterstitialActivity.INTENT_CAMAPIGN, a().getValue());
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "campaign_info_query", bundle, 0L, 4, null);
    }

    public final void g(@Nullable String str) {
        if (this.f42011c) {
            return;
        }
        this.f42011c = true;
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        bundle.putString(MBInterstitialActivity.INTENT_CAMAPIGN, a().getValue());
        bundle.putString("err_msg", str);
        bundle.putLong(HiAnalyticsConstant.BI_KEY_COST_TIME, d());
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "campaign_info_query_failed", bundle, 0L, 4, null);
    }

    public final void h(int i10) {
        if (this.f42010b) {
            return;
        }
        this.f42010b = true;
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        bundle.putString(MBInterstitialActivity.INTENT_CAMAPIGN, a().getValue());
        bundle.putLong(HiAnalyticsConstant.BI_KEY_COST_TIME, d());
        bundle.putInt("query_count", i10);
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "campaign_info_query_success", bundle, 0L, 4, null);
    }

    @Nullable
    public Object j(@NotNull Context context, @NotNull rs.c<? super Unit> cVar) {
        return k(this, context, cVar);
    }

    @Nullable
    protected abstract Object l(@NotNull Context context, @NotNull rs.c<? super Unit> cVar);

    public final void m() {
        this.f42012d = DeviceUtil.f48146a.L();
    }

    public final void n(@Nullable String str) {
        f42007e.e(a(), str);
    }

    public final void o() {
        f42007e.f(a());
    }
}
