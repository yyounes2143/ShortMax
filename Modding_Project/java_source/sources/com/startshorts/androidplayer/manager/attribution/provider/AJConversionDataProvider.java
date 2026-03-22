package com.startshorts.androidplayer.manager.attribution.provider;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ProcessLifecycleOwner;
import com.adjust.sdk.Adjust;
import com.adjust.sdk.AdjustAttribution;
import com.adjust.sdk.AdjustConfig;
import com.adjust.sdk.LogLevel;
import com.adjust.sdk.OnAdidReadListener;
import com.adjust.sdk.OnAttributionChangedListener;
import com.adjust.sdk.OnAttributionReadListener;
import com.adjust.sdk.OnDeferredDeeplinkResponseListener;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.attribution.CampaignParser;
import com.startshorts.androidplayer.manager.attribution.CampaignReporter;
import com.startshorts.androidplayer.manager.attribution.CampaignType;
import com.startshorts.androidplayer.manager.attribution.provider.AJConversionDataProvider;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.repo.config.ConfigRepo;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import com.startshorts.androidplayer.utils.campaign.MatchEventUtil;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AJConversionDataProvider.kt */
@Metadata
/* loaded from: classes6.dex */
public final class AJConversionDataProvider extends BaseCampaignProvider implements DefaultLifecycleObserver {
    @NotNull

    /* renamed from: o  reason: collision with root package name */
    public static final a f41973o = new a(null);

    /* renamed from: g  reason: collision with root package name */
    private boolean f41974g;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private b f41976i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private String f41977j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private String f41978k;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    private final AtomicBoolean f41975h = new AtomicBoolean(false);

    /* renamed from: l  reason: collision with root package name */
    private long f41979l = -1;

    /* renamed from: m  reason: collision with root package name */
    private long f41980m = -1;
    @NotNull

    /* renamed from: n  reason: collision with root package name */
    private String f41981n = "";

    /* compiled from: AJConversionDataProvider.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: AJConversionDataProvider.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public interface b {
        void a(@NotNull String str);
    }

    private final void C(Context context) {
        Logger.f41511a.h("CampaignNewTag", "AJConversionDataProvider fetchAttribution -> timeout 20000ms");
        Adjust.getAttributionWithTimeout(context, 20000L, new OnAttributionReadListener() { // from class: ie.g
            @Override // com.adjust.sdk.OnAttributionReadListener
            public final void onAttributionRead(AdjustAttribution adjustAttribution) {
                AJConversionDataProvider.D(AJConversionDataProvider.this, adjustAttribution);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D(AJConversionDataProvider aJConversionDataProvider, AdjustAttribution adjustAttribution) {
        if (adjustAttribution != null) {
            String str = adjustAttribution.jsonResponse;
            String str2 = adjustAttribution.trackerName;
            if (str2 == null) {
                str2 = "";
            }
            Logger logger = Logger.f41511a;
            logger.h("CampaignNewTag", "AJConversionDataProvider fetchAttribution trackerName: " + str2 + ", result -> " + str);
            if (str != null && str.length() != 0) {
                CoroutineUtil.l(CoroutineUtil.f48072a, "AJConversionDataProvider:fetchAttributionSuccess", false, new AJConversionDataProvider$fetchAttribution$1$1(aJConversionDataProvider, str, null), 2, null);
                return;
            }
            return;
        }
        Logger.f41511a.h("CampaignNewTag", "AJConversionDataProvider fetchAttribution -> null (timeout)");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0027  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00e3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object J(com.startshorts.androidplayer.bean.campaign.CampaignInfo r10, rs.c<? super kotlin.Unit> r11) {
        /*
            Method dump skipped, instructions count: 281
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.attribution.provider.AJConversionDataProvider.J(com.startshorts.androidplayer.bean.campaign.CampaignInfo, rs.c):java.lang.Object");
    }

    private final void K(String str) {
        Logger logger = Logger.f41511a;
        logger.e("CampaignNewTag", "AJConversionDataProvider:handleQueryFailed -> " + str);
        g(str);
        o();
        n("");
        ud.b bVar = ud.b.f68412a;
        bVar.F2(true);
        bVar.T2(true);
        CampaignReporter campaignReporter = CampaignReporter.f41888a;
        if (!campaignReporter.u() && campaignReporter.s()) {
            logger.e("CampaignNewTag", "AJConversionDataProvider:handleQueryFailed isAllAttributionHandleNotCampaign");
            CampaignParser.f41836a.x();
        }
        com.startshorts.androidplayer.manager.configure.ad.d.f42346a.b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void L(String str) {
        Logger logger = Logger.f41511a;
        logger.e("CampaignNewTag", "AJConversionDataProvider:handleQuerySuccess -> " + str);
        BaseCampaignProvider.i(this, 0, 1, null);
        o();
        n(str);
        CampaignReporter.f41888a.D(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void M(String str, String str2) {
        Logger logger = Logger.f41511a;
        logger.h("CampaignNewTag", "AjUdl PullUp handleUdlQuerySuccess -> " + str);
        CoroutineUtil.l(CoroutineUtil.f48072a, "reportUdlAjConversionDataPullUp", false, new AJConversionDataProvider$handleUdlQuerySuccess$1(str2, str, null), 2, null);
    }

    private final void N(Context context) {
        String str;
        LogLevel logLevel;
        Logger logger = Logger.f41511a;
        logger.e("CampaignNewTag", "AJConversionDataProvider initAdjust");
        boolean areEqual = Intrinsics.areEqual(id.a.f53392a.a(), "test");
        if (areEqual) {
            str = AdjustConfig.ENVIRONMENT_SANDBOX;
        } else {
            str = AdjustConfig.ENVIRONMENT_PRODUCTION;
        }
        if (areEqual) {
            logLevel = LogLevel.VERBOSE;
        } else {
            logLevel = LogLevel.ERROR;
        }
        String string = context.getString(R$string.app_adjust_app_key);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        AdjustConfig adjustConfig = new AdjustConfig(context, string, str);
        adjustConfig.setLogLevel(logLevel);
        adjustConfig.setOnAttributionChangedListener(new OnAttributionChangedListener() { // from class: ie.d
            @Override // com.adjust.sdk.OnAttributionChangedListener
            public final void onAttributionChanged(AdjustAttribution adjustAttribution) {
                AJConversionDataProvider.O(AJConversionDataProvider.this, adjustAttribution);
            }
        });
        adjustConfig.setOnDeferredDeeplinkResponseListener(new OnDeferredDeeplinkResponseListener() { // from class: ie.e
            @Override // com.adjust.sdk.OnDeferredDeeplinkResponseListener
            public final boolean launchReceivedDeeplink(Uri uri) {
                boolean P;
                P = AJConversionDataProvider.P(AJConversionDataProvider.this, uri);
                return P;
            }
        });
        String string2 = context.getString(R$string.facebook_app_id);
        Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
        if (string2.length() > 0) {
            adjustConfig.setFbAppId(string2);
            logger.h("CampaignNewTag", "AJConversionDataProvider setFbAppId for Meta Referrer plugin");
        }
        Adjust.initSdk(adjustConfig);
        Adjust.getAdidWithTimeout(context, 5000L, new OnAdidReadListener() { // from class: ie.f
            @Override // com.adjust.sdk.OnAdidReadListener
            public final void onAdidRead(String str2) {
                AJConversionDataProvider.Q(str2);
            }
        });
        C(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void O(AJConversionDataProvider aJConversionDataProvider, AdjustAttribution adjustAttribution) {
        if (adjustAttribution == null) {
            Logger.f41511a.e("CampaignNewTag", "AJConversionDataProvider setOnAttributionChangedListener ->attribution NULL");
            if (!ud.b.f68412a.s()) {
                aJConversionDataProvider.K("AJConversionDataProvider attribution null");
                return;
            }
            return;
        }
        CoroutineUtil.l(CoroutineUtil.f48072a, "AJConversionDataProvider:onAttributionChangedListener", false, new AJConversionDataProvider$initAdjust$1$1(adjustAttribution, aJConversionDataProvider, null), 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean P(AJConversionDataProvider aJConversionDataProvider, Uri uri) {
        try {
            CoroutineUtil.l(CoroutineUtil.f48072a, "AJConversionDataProvider:onDeepLinking", false, new AJConversionDataProvider$initAdjust$2$1(uri, aJConversionDataProvider, null), 2, null);
            return false;
        } catch (Exception e10) {
            Logger logger = Logger.f41511a;
            logger.h("CampaignNewTag", "AJConversionDataProvider There's been an error: " + e10);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Q(String str) {
        ud.b.f68412a.x2(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit R(AJConversionDataProvider aJConversionDataProvider) {
        ProcessLifecycleOwner.Companion.get().getLifecycle().addObserver(aJConversionDataProvider);
        return Unit.f60915a;
    }

    private final void T() {
        Logger.f41511a.e("CampaignNewTag", "startAdjust");
        String t02 = AccountRepo.f43052a.t0();
        if (!TextUtils.isEmpty(t02)) {
            MatchEventUtil.f48183a.l(t02);
        }
        this.f41981n = UUID.randomUUID().toString();
    }

    @Nullable
    public final String E() {
        return this.f41977j;
    }

    @Nullable
    public final String F() {
        return this.f41978k;
    }

    public final long G() {
        return this.f41979l;
    }

    public final long H() {
        return this.f41980m;
    }

    @Nullable
    public final b I() {
        return this.f41976i;
    }

    public final void S(@Nullable b bVar) {
        this.f41976i = bVar;
    }

    @Override // ie.j
    @NotNull
    public CampaignType a() {
        return CampaignType.AJ_CONVERSION_DATA;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x003c  */
    @Override // com.startshorts.androidplayer.manager.attribution.provider.BaseCampaignProvider
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object l(@org.jetbrains.annotations.NotNull android.content.Context r8, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r9) {
        /*
            r7 = this;
            boolean r0 = r9 instanceof com.startshorts.androidplayer.manager.attribution.provider.AJConversionDataProvider$queryInternal$1
            if (r0 == 0) goto L13
            r0 = r9
            com.startshorts.androidplayer.manager.attribution.provider.AJConversionDataProvider$queryInternal$1 r0 = (com.startshorts.androidplayer.manager.attribution.provider.AJConversionDataProvider$queryInternal$1) r0
            int r1 = r0.f42006k
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f42006k = r1
            goto L18
        L13:
            com.startshorts.androidplayer.manager.attribution.provider.AJConversionDataProvider$queryInternal$1 r0 = new com.startshorts.androidplayer.manager.attribution.provider.AJConversionDataProvider$queryInternal$1
            r0.<init>(r7, r9)
        L18:
            java.lang.Object r9 = r0.f42004i
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f42006k
            r3 = 0
            r4 = 1
            java.lang.String r5 = "CampaignNewTag"
            if (r2 == 0) goto L3c
            if (r2 != r4) goto L34
            java.lang.Object r8 = r0.f42003h
            com.startshorts.androidplayer.manager.attribution.provider.AJConversionDataProvider r8 = (com.startshorts.androidplayer.manager.attribution.provider.AJConversionDataProvider) r8
            kotlin.f.b(r9)     // Catch: java.lang.Exception -> L31
            goto Ld1
        L31:
            r9 = move-exception
            goto Lb0
        L34:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L3c:
            kotlin.f.b(r9)
            com.startshorts.androidplayer.log.Logger r9 = com.startshorts.androidplayer.log.Logger.f41511a
            java.lang.String r2 = "AJConversionDataProvider queryInternal AJConversionDataProvider"
            r9.e(r5, r2)
            com.startshorts.androidplayer.repo.config.ConfigRepo r2 = com.startshorts.androidplayer.repo.config.ConfigRepo.f43771a
            boolean r2 = r2.x()
            if (r2 != 0) goto L51
            kotlin.Unit r8 = kotlin.Unit.f60915a
            return r8
        L51:
            boolean r2 = r7.e()
            if (r2 == 0) goto L68
            ud.b r2 = ud.b.f68412a
            boolean r2 = r2.s()
            if (r2 != 0) goto L68
            com.startshorts.androidplayer.manager.attribution.CampaignReporter r2 = com.startshorts.androidplayer.manager.attribution.CampaignReporter.f41888a
            java.lang.String r6 = r7.c()
            r2.D(r6)
        L68:
            boolean r2 = r7.f41974g
            if (r2 == 0) goto L74
            java.lang.String r8 = "AJConversionDataProvider is already Initialized"
            r9.e(r5, r8)
            kotlin.Unit r8 = kotlin.Unit.f60915a
            return r8
        L74:
            r7.f41974g = r4
            ud.b r2 = ud.b.f68412a
            boolean r2 = r2.s()
            if (r2 != 0) goto L81
            r7.f()
        L81:
            com.startshorts.androidplayer.utils.campaign.MatchEventUtil r2 = com.startshorts.androidplayer.utils.campaign.MatchEventUtil.f48183a
            com.startshorts.androidplayer.utils.DeviceUtil r6 = com.startshorts.androidplayer.utils.DeviceUtil.f48146a
            java.lang.String r6 = r6.h()
            r2.m(r6)
            r7.N(r8)
            java.util.concurrent.atomic.AtomicBoolean r8 = r7.f41975h
            boolean r8 = r8.compareAndSet(r3, r4)
            if (r8 == 0) goto Lcc
            java.lang.String r8 = "AJConversionDataProvider Registering Lifecycle Observer for AJ"
            r9.h(r5, r8)
            com.startshorts.androidplayer.utils.CoroutineUtil r8 = com.startshorts.androidplayer.utils.CoroutineUtil.f48072a     // Catch: java.lang.Exception -> Lae
            ie.c r9 = new ie.c     // Catch: java.lang.Exception -> Lae
            r9.<init>()     // Catch: java.lang.Exception -> Lae
            r0.f42003h = r7     // Catch: java.lang.Exception -> Lae
            r0.f42006k = r4     // Catch: java.lang.Exception -> Lae
            java.lang.Object r8 = r8.u(r9, r0)     // Catch: java.lang.Exception -> Lae
            if (r8 != r1) goto Ld1
            return r1
        Lae:
            r9 = move-exception
            r8 = r7
        Lb0:
            java.util.concurrent.atomic.AtomicBoolean r8 = r8.f41975h
            r8.set(r3)
            com.startshorts.androidplayer.log.Logger r8 = com.startshorts.androidplayer.log.Logger.f41511a
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "AJConversionDataProvider Failed to register lifecycle observer: "
            r0.append(r1)
            r0.append(r9)
            java.lang.String r9 = r0.toString()
            r8.e(r5, r9)
            goto Ld1
        Lcc:
            java.lang.String r8 = "AJConversionDataProvider Lifecycle Observer already registered, skipping."
            r9.h(r5, r8)
        Ld1:
            kotlin.Unit r8 = kotlin.Unit.f60915a
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.attribution.provider.AJConversionDataProvider.l(android.content.Context, rs.c):java.lang.Object");
    }

    @Override // ie.j
    @NotNull
    public String name() {
        return "AJConversionDataProvider";
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public void onStart(@NotNull LifecycleOwner owner) {
        Intrinsics.checkNotNullParameter(owner, "owner");
        super.onStart(owner);
        if (!ConfigRepo.f43771a.x()) {
            return;
        }
        if (this.f41974g) {
            Logger.f41511a.e("CampaignNewTag", "AJConversionDataProvider is onStart startAdjust");
            T();
            return;
        }
        Logger.f41511a.h("CampaignNewTag", "AJConversionDataProvider Lifecycle onStart: Reset mIsPullUpConsumed to false");
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public void onStop(@NotNull LifecycleOwner owner) {
        Intrinsics.checkNotNullParameter(owner, "owner");
        super.onStop(owner);
        BaseCampaignProvider.f42007e.d();
        Logger.f41511a.h("CampaignNewTag", "AJConversionDataProvider Lifecycle onStop: Reset mIsPullUpConsumed to false");
    }
}
