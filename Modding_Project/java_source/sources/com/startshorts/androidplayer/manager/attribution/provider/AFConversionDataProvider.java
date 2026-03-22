package com.startshorts.androidplayer.manager.attribution.provider;

import android.content.Context;
import android.text.TextUtils;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ProcessLifecycleOwner;
import com.appsflyer.AppsFlyerConversionListener;
import com.appsflyer.AppsFlyerLib;
import com.appsflyer.attribution.AppsFlyerRequestListener;
import com.appsflyer.deeplink.DeepLink;
import com.appsflyer.deeplink.DeepLinkListener;
import com.appsflyer.deeplink.DeepLinkResult;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.hades.aar.activity.IDActivity;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.attribution.CampaignParser;
import com.startshorts.androidplayer.manager.attribution.CampaignReporter;
import com.startshorts.androidplayer.manager.attribution.CampaignType;
import com.startshorts.androidplayer.manager.attribution.provider.AFConversionDataProvider;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.repo.config.ConfigRepo;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import com.startshorts.androidplayer.utils.campaign.MatchEventUtil;
import fk.u;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AFConversionDataProvider.kt */
@Metadata
/* loaded from: classes6.dex */
public final class AFConversionDataProvider extends BaseCampaignProvider implements DefaultLifecycleObserver {
    @NotNull

    /* renamed from: p  reason: collision with root package name */
    public static final a f41939p = new a(null);

    /* renamed from: g  reason: collision with root package name */
    private boolean f41940g;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private b f41943j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private String f41944k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private String f41945l;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    private final AtomicBoolean f41941h = new AtomicBoolean(false);
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    private String f41942i = "";

    /* renamed from: m  reason: collision with root package name */
    private long f41946m = -1;

    /* renamed from: n  reason: collision with root package name */
    private long f41947n = -1;
    @NotNull

    /* renamed from: o  reason: collision with root package name */
    private final i f41948o = kotlin.c.b(new Function0() { // from class: ie.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            Gson M;
            M = AFConversionDataProvider.M();
            return M;
        }
    });

    /* compiled from: AFConversionDataProvider.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: AFConversionDataProvider.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public interface b {
        void a(@NotNull String str);
    }

    /* compiled from: AFConversionDataProvider.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class c implements AppsFlyerRequestListener {
        c() {
        }

        @Override // com.appsflyer.attribution.AppsFlyerRequestListener
        public void onError(int i10, String errorDesc) {
            Intrinsics.checkNotNullParameter(errorDesc, "errorDesc");
            Logger logger = Logger.f41511a;
            logger.e("CampaignNewTag", "AppsFlyerRequest onError -> errorCode(" + i10 + ") errorDesc(" + errorDesc + ')');
        }

        @Override // com.appsflyer.attribution.AppsFlyerRequestListener
        public void onSuccess() {
            Logger.f41511a.h("CampaignNewTag", "AppsFlyerRequest onSuccess");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Gson D() {
        return (Gson) this.f41948o.getValue();
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
    public final java.lang.Object H(com.startshorts.androidplayer.bean.campaign.CampaignInfo r10, rs.c<? super kotlin.Unit> r11) {
        /*
            Method dump skipped, instructions count: 281
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.attribution.provider.AFConversionDataProvider.H(com.startshorts.androidplayer.bean.campaign.CampaignInfo, rs.c):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void I(String str) {
        Logger logger = Logger.f41511a;
        logger.e("CampaignNewTag", "handleQueryFailed -> " + str);
        g(str);
        o();
        n("");
        ud.b bVar = ud.b.f68412a;
        bVar.B2(true);
        bVar.S2(true);
        CampaignReporter campaignReporter = CampaignReporter.f41888a;
        if (!campaignReporter.u() && campaignReporter.s()) {
            logger.e("CampaignNewTag", "AFConversionDataProvider handleQueryFailed isAllAttributionHandleNotCampaign");
            CampaignParser.f41836a.x();
        }
        com.startshorts.androidplayer.manager.configure.ad.d.f42346a.b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void J(String str) {
        Logger logger = Logger.f41511a;
        logger.e("CampaignNewTag", "AFProvider handleQuerySuccess -> " + str);
        BaseCampaignProvider.i(this, 0, 1, null);
        o();
        n(str);
        CampaignReporter.f41888a.B(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void K(String str, String str2) {
        Logger logger = Logger.f41511a;
        logger.h("CampaignNewTag", "AfUdl PullUp handleUdlQuerySuccess -> " + str);
        CoroutineUtil.l(CoroutineUtil.f48072a, "reportUdlAfConversionDataPullUp", false, new AFConversionDataProvider$handleUdlQuerySuccess$1(str2, str, null), 2, null);
    }

    private final void L(Context context) {
        Logger.f41511a.e("CampaignNewTag", "initAppFlyer");
        AppsFlyerLib.getInstance().init(context.getString(R$string.app_flyer_app_key), new AppsFlyerConversionListener() { // from class: com.startshorts.androidplayer.manager.attribution.provider.AFConversionDataProvider$initAppFlyer$1
            @Override // com.appsflyer.AppsFlyerConversionListener
            public void onAppOpenAttribution(Map<String, String> map) {
                Logger logger = Logger.f41511a;
                logger.e("CampaignNewTag", "onAppOpenAttribution -> " + map);
            }

            @Override // com.appsflyer.AppsFlyerConversionListener
            public void onAttributionFailure(String str) {
                Logger logger = Logger.f41511a;
                logger.e("CampaignNewTag", "onAttributionFailure -> " + str);
            }

            @Override // com.appsflyer.AppsFlyerConversionListener
            public void onConversionDataFail(String str) {
                Logger logger = Logger.f41511a;
                logger.e("CampaignNewTag", "onConversionDataFail -> " + str);
                if (!ud.b.f68412a.o()) {
                    AFConversionDataProvider.this.I(str);
                }
            }

            @Override // com.appsflyer.AppsFlyerConversionListener
            public void onConversionDataSuccess(Map<String, Object> map) {
                Set<String> set;
                Logger logger = Logger.f41511a;
                logger.h("CampaignNewTag", "onConversionDataSuccess getAppsFlyerUID:" + AppsFlyerLib.getInstance().getAppsFlyerUID(u.f51776a.b()));
                StringBuilder sb2 = new StringBuilder();
                sb2.append("onConversionDataSuccess keys:");
                if (map != null) {
                    set = map.keySet();
                } else {
                    set = null;
                }
                sb2.append(set);
                logger.h("CampaignNewTag", sb2.toString());
                CoroutineUtil.l(CoroutineUtil.f48072a, "AFConversionDataProvider:onConversionDataSuccess", false, new AFConversionDataProvider$initAppFlyer$1$onConversionDataSuccess$1(AFConversionDataProvider.this, map, null), 2, null);
            }
        }, context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Gson M() {
        return new GsonBuilder().disableHtmlEscaping().create();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit N(AFConversionDataProvider aFConversionDataProvider) {
        ProcessLifecycleOwner.Companion.get().getLifecycle().addObserver(aFConversionDataProvider);
        return Unit.f60915a;
    }

    private final void P() {
        IDActivity b10;
        Logger.f41511a.e("CampaignNewTag", "startAppFlyer");
        WeakReference<IDActivity> d10 = aa.a.f321a.d();
        if (d10 == null || (b10 = d10.get()) == null) {
            b10 = u.f51776a.b();
        }
        String t02 = AccountRepo.f43052a.t0();
        if (!TextUtils.isEmpty(t02)) {
            MatchEventUtil.f48183a.k(t02);
        }
        this.f41942i = UUID.randomUUID().toString();
        Q();
        AppsFlyerLib.getInstance().start(b10, b10.getString(R$string.app_flyer_app_key), new c());
    }

    private final void Q() {
        if (!ud.b.f68412a.o()) {
            return;
        }
        Logger.f41511a.h("CampaignNewTag", "Deep link subscribeForDeepLink");
        AppsFlyerLib.getInstance().subscribeForDeepLink(new DeepLinkListener() { // from class: com.startshorts.androidplayer.manager.attribution.provider.AFConversionDataProvider$subscribeDeepLink$1

            /* compiled from: AFConversionDataProvider.kt */
            @Metadata
            /* loaded from: classes6.dex */
            public /* synthetic */ class a {
                public static final /* synthetic */ int[] $EnumSwitchMapping$0;

                static {
                    int[] iArr = new int[DeepLinkResult.Status.values().length];
                    try {
                        iArr[DeepLinkResult.Status.FOUND.ordinal()] = 1;
                    } catch (NoSuchFieldError unused) {
                    }
                    try {
                        iArr[DeepLinkResult.Status.NOT_FOUND.ordinal()] = 2;
                    } catch (NoSuchFieldError unused2) {
                    }
                    $EnumSwitchMapping$0 = iArr;
                }
            }

            @Override // com.appsflyer.deeplink.DeepLinkListener
            public void onDeepLinking(DeepLinkResult deepLinkResult) {
                Intrinsics.checkNotNullParameter(deepLinkResult, "deepLinkResult");
                int i10 = a.$EnumSwitchMapping$0[deepLinkResult.getStatus().ordinal()];
                if (i10 != 1) {
                    if (i10 != 2) {
                        DeepLinkResult.Error error = deepLinkResult.getError();
                        Logger logger = Logger.f41511a;
                        logger.h("CampaignNewTag", "There was an error getting Deep Link data: " + error);
                        return;
                    }
                    Logger.f41511a.h("CampaignNewTag", "Deep link not found");
                    return;
                }
                Logger logger2 = Logger.f41511a;
                logger2.h("CampaignNewTag", "Deep link found");
                DeepLink deepLink = deepLinkResult.getDeepLink();
                Intrinsics.checkNotNullExpressionValue(deepLink, "getDeepLink(...)");
                try {
                    logger2.h("CampaignNewTag", "The DeepLink data is: " + deepLink);
                    if (Intrinsics.areEqual(deepLink.isDeferred(), Boolean.TRUE)) {
                        logger2.h("CampaignNewTag", "This is a deferred deep link");
                    } else {
                        logger2.h("CampaignNewTag", "This is a direct deep link");
                    }
                    try {
                        String deepLinkValue = deepLink.getDeepLinkValue();
                        logger2.h("CampaignNewTag", "The DeepLink will route to: " + deepLinkValue);
                        CoroutineUtil.l(CoroutineUtil.f48072a, "UdlAFConversionDataProvider:onDeepLinking", false, new AFConversionDataProvider$subscribeDeepLink$1$onDeepLinking$2(AFConversionDataProvider.this, deepLink, null), 2, null);
                    } catch (Exception e10) {
                        Logger logger3 = Logger.f41511a;
                        logger3.h("CampaignNewTag", "There's been an error: " + e10);
                    }
                } catch (Exception unused) {
                    Logger.f41511a.h("CampaignNewTag", "DeepLink data came back null");
                }
            }
        });
    }

    @Nullable
    public final String B() {
        return this.f41944k;
    }

    @Nullable
    public final String C() {
        return this.f41945l;
    }

    public final long E() {
        return this.f41946m;
    }

    public final long F() {
        return this.f41947n;
    }

    @Nullable
    public final b G() {
        return this.f41943j;
    }

    public final void O(@Nullable b bVar) {
        this.f41943j = bVar;
    }

    @Override // ie.j
    @NotNull
    public CampaignType a() {
        return CampaignType.AF_CONVERSION_DATA;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x003b  */
    @Override // com.startshorts.androidplayer.manager.attribution.provider.BaseCampaignProvider
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object l(@org.jetbrains.annotations.NotNull android.content.Context r8, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r9) {
        /*
            r7 = this;
            boolean r0 = r9 instanceof com.startshorts.androidplayer.manager.attribution.provider.AFConversionDataProvider$queryInternal$1
            if (r0 == 0) goto L13
            r0 = r9
            com.startshorts.androidplayer.manager.attribution.provider.AFConversionDataProvider$queryInternal$1 r0 = (com.startshorts.androidplayer.manager.attribution.provider.AFConversionDataProvider$queryInternal$1) r0
            int r1 = r0.f41967k
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f41967k = r1
            goto L18
        L13:
            com.startshorts.androidplayer.manager.attribution.provider.AFConversionDataProvider$queryInternal$1 r0 = new com.startshorts.androidplayer.manager.attribution.provider.AFConversionDataProvider$queryInternal$1
            r0.<init>(r7, r9)
        L18:
            java.lang.Object r9 = r0.f41965i
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f41967k
            r3 = 0
            r4 = 1
            java.lang.String r5 = "CampaignNewTag"
            if (r2 == 0) goto L3b
            if (r2 != r4) goto L33
            java.lang.Object r8 = r0.f41964h
            com.startshorts.androidplayer.manager.attribution.provider.AFConversionDataProvider r8 = (com.startshorts.androidplayer.manager.attribution.provider.AFConversionDataProvider) r8
            kotlin.f.b(r9)     // Catch: java.lang.Exception -> L31
            goto Lbe
        L31:
            r9 = move-exception
            goto L9c
        L33:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L3b:
            kotlin.f.b(r9)
            com.startshorts.androidplayer.log.Logger r9 = com.startshorts.androidplayer.log.Logger.f41511a
            java.lang.String r2 = "queryInternal AFConversionDataProvider"
            r9.e(r5, r2)
            com.startshorts.androidplayer.repo.config.ConfigRepo r2 = com.startshorts.androidplayer.repo.config.ConfigRepo.f43771a
            boolean r2 = r2.w()
            if (r2 != 0) goto L50
            kotlin.Unit r8 = kotlin.Unit.f60915a
            return r8
        L50:
            boolean r2 = r7.e()
            if (r2 == 0) goto L5f
            com.startshorts.androidplayer.manager.attribution.CampaignReporter r2 = com.startshorts.androidplayer.manager.attribution.CampaignReporter.f41888a
            java.lang.String r6 = r7.c()
            r2.B(r6)
        L5f:
            boolean r2 = r7.f41940g
            if (r2 == 0) goto L6b
            java.lang.String r8 = "AFConversionDataProvider is already Initialized"
            r9.e(r5, r8)
            kotlin.Unit r8 = kotlin.Unit.f60915a
            return r8
        L6b:
            r7.f41940g = r4
            ud.b r2 = ud.b.f68412a
            boolean r2 = r2.o()
            if (r2 != 0) goto L78
            r7.f()
        L78:
            r7.L(r8)
            java.util.concurrent.atomic.AtomicBoolean r8 = r7.f41941h
            boolean r8 = r8.compareAndSet(r3, r4)
            if (r8 == 0) goto Lb8
            java.lang.String r8 = "Registering Lifecycle Observer for AF"
            r9.h(r5, r8)
            com.startshorts.androidplayer.utils.CoroutineUtil r8 = com.startshorts.androidplayer.utils.CoroutineUtil.f48072a     // Catch: java.lang.Exception -> L9a
            ie.b r9 = new ie.b     // Catch: java.lang.Exception -> L9a
            r9.<init>()     // Catch: java.lang.Exception -> L9a
            r0.f41964h = r7     // Catch: java.lang.Exception -> L9a
            r0.f41967k = r4     // Catch: java.lang.Exception -> L9a
            java.lang.Object r8 = r8.u(r9, r0)     // Catch: java.lang.Exception -> L9a
            if (r8 != r1) goto Lbd
            return r1
        L9a:
            r9 = move-exception
            r8 = r7
        L9c:
            java.util.concurrent.atomic.AtomicBoolean r0 = r8.f41941h
            r0.set(r3)
            com.startshorts.androidplayer.log.Logger r0 = com.startshorts.androidplayer.log.Logger.f41511a
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Failed to register lifecycle observer: "
            r1.append(r2)
            r1.append(r9)
            java.lang.String r9 = r1.toString()
            r0.e(r5, r9)
            goto Lbe
        Lb8:
            java.lang.String r8 = "Lifecycle Observer already registered, skipping."
            r9.h(r5, r8)
        Lbd:
            r8 = r7
        Lbe:
            r8.P()
            kotlin.Unit r8 = kotlin.Unit.f60915a
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.attribution.provider.AFConversionDataProvider.l(android.content.Context, rs.c):java.lang.Object");
    }

    @Override // ie.j
    @NotNull
    public String name() {
        return "AFConversionDataProvider";
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public void onStart(@NotNull LifecycleOwner owner) {
        Intrinsics.checkNotNullParameter(owner, "owner");
        super.onStart(owner);
        if (!ConfigRepo.f43771a.w()) {
            return;
        }
        if (this.f41940g) {
            Logger.f41511a.e("CampaignNewTag", "AFConversionDataProvider is onStart startAppFlyer");
            P();
            return;
        }
        Logger.f41511a.h("CampaignNewTag", "Lifecycle onStart: Reset mIsPullUpConsumed to false");
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public void onStop(@NotNull LifecycleOwner owner) {
        Intrinsics.checkNotNullParameter(owner, "owner");
        super.onStop(owner);
        BaseCampaignProvider.f42007e.d();
        Logger.f41511a.h("CampaignNewTag", "Lifecycle onStop: Reset mIsPullUpConsumed to false");
    }
}
