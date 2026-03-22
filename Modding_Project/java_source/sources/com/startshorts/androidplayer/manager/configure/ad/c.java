package com.startshorts.androidplayer.manager.configure.ad;

import android.app.Activity;
import android.os.Bundle;
import com.ss.ttvideoengine.DataLoaderHelper;
import com.startshorts.androidplayer.bean.ad.AdConfig;
import com.startshorts.androidplayer.bean.ad.AdNewConfig;
import com.startshorts.androidplayer.bean.ad.BackHomeInt;
import com.startshorts.androidplayer.bean.ad.FreeEpisodeInt;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.ad.AdManager;
import com.startshorts.androidplayer.manager.configure.abtest.ABTestFactory;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.ui.activity.MainActivity;
import com.startshorts.androidplayer.utils.DeviceUtil;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AdActionManager.kt */
@Metadata
@SourceDebugExtension({"SMAP\nAdActionManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdActionManager.kt\ncom/startshorts/androidplayer/manager/configure/ad/AdActionManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,454:1\n1#2:455\n*E\n"})
/* loaded from: classes6.dex */
public final class c {
    @NotNull

    /* renamed from: a */
    public static final c f42340a = new c();
    @NotNull

    /* renamed from: b */
    private static final Map<String, Integer> f42341b;
    @NotNull

    /* renamed from: c */
    private static final b f42342c;
    @NotNull

    /* renamed from: d */
    private static final a f42343d;

    /* compiled from: AdActionManager.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {

        /* renamed from: a */
        private long f42344a;

        public final long a() {
            long L = DeviceUtil.f48146a.L();
            if (L < this.f42344a) {
                this.f42344a = 0L;
            }
            return L - this.f42344a;
        }

        public final boolean b() {
            if (a() <= d()) {
                return true;
            }
            return false;
        }

        public final void c(@NotNull String scene) {
            Intrinsics.checkNotNullParameter(scene, "scene");
            if (CollectionsKt.e("home_reward").contains(scene)) {
                Logger logger = Logger.f41511a;
                logger.h("AdActionManager", "rollBackShowTimeWhenShowFailed -> scene=" + scene);
                this.f42344a = DeviceUtil.f48146a.L() - ((long) d());
            }
        }

        public final int d() {
            return com.startshorts.androidplayer.manager.configure.ad.a.f42306a.f().k();
        }

        public final void e() {
            this.f42344a = DeviceUtil.f48146a.L();
        }
    }

    /* compiled from: AdActionManager.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class b {
        @Nullable

        /* renamed from: a */
        private Boolean f42345a;

        public final void a() {
            if (this.f42345a == null) {
                this.f42345a = Boolean.FALSE;
                Logger logger = Logger.f41511a;
                logger.h("AdActionManager", "enterImmersionPaidPage paid=" + this.f42345a + '.');
            }
        }

        public final void b() {
            if (this.f42345a != null) {
                Logger logger = Logger.f41511a;
                logger.h("AdActionManager", "exitImmersionPaidPage paid=" + this.f42345a + '.');
                if (Intrinsics.areEqual(this.f42345a, Boolean.FALSE)) {
                    c.f42340a.l();
                }
                this.f42345a = null;
            }
        }

        public final void c() {
            this.f42345a = Boolean.TRUE;
            Logger logger = Logger.f41511a;
            logger.h("AdActionManager", "paidInImmersionPaidPage paid=" + this.f42345a + '.');
        }
    }

    static {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("switch_tab", 0);
        linkedHashMap.put("exit_immersion_page", 0);
        linkedHashMap.put("watch_continuous", 0);
        f42341b = linkedHashMap;
        f42342c = new b();
        f42343d = new a();
    }

    private c() {
    }

    private final void b() {
        d("exit_immersion_page");
    }

    private final void d(String str) {
        try {
            if (!com.startshorts.androidplayer.manager.configure.ad.a.f42306a.value().p(str)) {
                Logger logger = Logger.f41511a;
                logger.e("AdActionManager", "addInSceneCount(" + str + ") failed -> disable");
            } else if (!Intrinsics.areEqual(str, "watch_continuous") && !Intrinsics.areEqual(str, "home_reward") && com.startshorts.androidplayer.manager.configure.ad.b.f42335d.e() == null) {
                Logger logger2 = Logger.f41511a;
                logger2.e("AdActionManager", "addInSceneCount(" + str + ") failed -> getConsumable() == null");
            } else {
                Map<String, Integer> map = f42341b;
                int i10 = map.get(str);
                if (i10 == null) {
                    i10 = 0;
                }
                int intValue = i10.intValue() + 1;
                map.put(str, Integer.valueOf(intValue));
                Logger logger3 = Logger.f41511a;
                logger3.h("AdActionManager", "addInSceneCount(" + str + ") -> count=" + intValue);
            }
        } catch (Exception e10) {
            Logger logger4 = Logger.f41511a;
            logger4.e("AdActionManager", "addInSceneCount(" + str + ") exception -> " + e10.getMessage());
        }
    }

    private final void e() {
        d("switch_tab");
    }

    private final boolean k(String str) {
        int i10;
        AdConfig adConfig;
        BackHomeInt backHomeInt;
        AdConfig adConfig2;
        FreeEpisodeInt freeEpisodeInt;
        boolean z10 = false;
        if (Intrinsics.areEqual(str, "immersion_switch_episode")) {
            AdNewConfig a10 = ud.a.f68411a.a();
            if (a10 == null || (adConfig2 = a10.getAdConfig()) == null || (freeEpisodeInt = adConfig2.getFreeEpisodeInt()) == null) {
                return false;
            }
            return freeEpisodeInt.isEnableShow();
        } else if (Intrinsics.areEqual(str, "exit_immersion_page")) {
            AdNewConfig a11 = ud.a.f68411a.a();
            if (a11 == null || (adConfig = a11.getAdConfig()) == null || (backHomeInt = adConfig.getBackHomeInt()) == null) {
                return false;
            }
            return backHomeInt.isEnableShow();
        } else if (ABTestFactory.f42224a.D0().isTestGroup()) {
            Logger.f41511a.h("AdActionManager", "isInterstitialSceneEnable -> scene = " + str + ", adInterstitialClose is enable");
            return false;
        } else {
            com.startshorts.androidplayer.manager.configure.ad.a aVar = com.startshorts.androidplayer.manager.configure.ad.a.f42306a;
            if (!aVar.value().p(str)) {
                Logger.f41511a.e("AdActionManager", "isInterstitialSceneEnable -> scene=" + str + ",enable=false.");
                return false;
            }
            Integer num = f42341b.get(str);
            if (num != null) {
                i10 = num.intValue();
            } else {
                i10 = 0;
            }
            int o10 = aVar.value().o(str);
            if (i10 >= o10) {
                z10 = true;
            }
            Logger.f41511a.h("AdActionManager", "isInterstitialSceneEnable=" + z10 + '(' + i10 + ">=" + o10 + "),scene=" + str);
            return z10;
        }
    }

    public final void l() {
        com.startshorts.androidplayer.manager.configure.ad.b.f42335d.g("enter_paid_point_unpaid");
    }

    public static /* synthetic */ boolean p(c cVar, String str, Activity activity, String str2, BaseEpisode baseEpisode, long j10, long j11, Function1 function1, int i10, Object obj) {
        long j12;
        long j13;
        Function1 function12;
        if ((i10 & 16) != 0) {
            j12 = 0;
        } else {
            j12 = j10;
        }
        if ((i10 & 32) != 0) {
            j13 = 2500;
        } else {
            j13 = j11;
        }
        if ((i10 & 64) != 0) {
            function12 = null;
        } else {
            function12 = function1;
        }
        return cVar.o(str, activity, str2, baseEpisode, j12, j13, function12);
    }

    public static /* synthetic */ boolean u(c cVar, String str, Activity activity, BaseEpisode baseEpisode, Function0 function0, Function0 function02, Function1 function1, int i10, Object obj) {
        Function0 function03;
        Function0 function04;
        Function1 function12;
        if ((i10 & 8) != 0) {
            function03 = null;
        } else {
            function03 = function0;
        }
        if ((i10 & 16) != 0) {
            function04 = null;
        } else {
            function04 = function02;
        }
        if ((i10 & 32) != 0) {
            function12 = null;
        } else {
            function12 = function1;
        }
        return cVar.t(str, activity, baseEpisode, function03, function04, function12);
    }

    public static /* synthetic */ boolean w(c cVar, String str, Activity activity, String str2, BaseEpisode baseEpisode, boolean z10, Function0 function0, Function0 function02, long j10, long j11, boolean z11, Function1 function1, int i10, Object obj) {
        BaseEpisode baseEpisode2;
        Function0 function03;
        Function0 function04;
        long j12;
        long j13;
        boolean z12;
        Function1 function12;
        if ((i10 & 8) != 0) {
            baseEpisode2 = null;
        } else {
            baseEpisode2 = baseEpisode;
        }
        if ((i10 & 32) != 0) {
            function03 = null;
        } else {
            function03 = function0;
        }
        if ((i10 & 64) != 0) {
            function04 = null;
        } else {
            function04 = function02;
        }
        if ((i10 & 128) != 0) {
            j12 = 1500;
        } else {
            j12 = j10;
        }
        if ((i10 & 256) != 0) {
            j13 = 2500;
        } else {
            j13 = j11;
        }
        if ((i10 & 512) != 0) {
            z12 = false;
        } else {
            z12 = z11;
        }
        if ((i10 & 1024) != 0) {
            function12 = null;
        } else {
            function12 = function1;
        }
        return cVar.v(str, activity, str2, baseEpisode2, z10, function03, function04, j12, j13, z12, function12);
    }

    private final boolean x() {
        return !AccountRepo.f43052a.x0();
    }

    public final void c() {
        d("home_reward");
    }

    public final void f() {
        d("watch_continuous");
    }

    public final void g(@NotNull String scene) {
        Intrinsics.checkNotNullParameter(scene, "scene");
        try {
            f42341b.put(scene, 0);
            Logger logger = Logger.f41511a;
            logger.h("AdActionManager", "clearInSceneCount -> scene=" + scene);
        } catch (Exception e10) {
            Logger logger2 = Logger.f41511a;
            logger2.e("AdActionManager", "clearInSceneCount -> scene=" + scene + ",e:" + e10.getMessage());
        }
    }

    @NotNull
    public final a h() {
        return f42343d;
    }

    @NotNull
    public final b i() {
        return f42342c;
    }

    public final boolean j() {
        return k("watch_continuous");
    }

    public final void m() {
        if (x()) {
            com.startshorts.androidplayer.manager.configure.ad.b.f42335d.g("exit_from_immerse_unpaid");
        } else {
            Logger.f41511a.h("AdActionManager", "onExitImmersion no increment. case : paid=true ");
        }
    }

    public final void n() {
        if (x()) {
            com.startshorts.androidplayer.manager.configure.ad.b.f42335d.g("unpaid_on_watch_ad_earn_bonus");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:79:0x00a0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean o(@org.jetbrains.annotations.Nullable java.lang.String r21, @org.jetbrains.annotations.NotNull android.app.Activity r22, @org.jetbrains.annotations.NotNull java.lang.String r23, @org.jetbrains.annotations.Nullable com.startshorts.androidplayer.bean.shorts.BaseEpisode r24, long r25, long r27, @org.jetbrains.annotations.Nullable kotlin.jvm.functions.Function1<? super java.lang.Boolean, kotlin.Unit> r29) {
        /*
            Method dump skipped, instructions count: 255
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.configure.ad.c.o(java.lang.String, android.app.Activity, java.lang.String, com.startshorts.androidplayer.bean.shorts.BaseEpisode, long, long, kotlin.jvm.functions.Function1):boolean");
    }

    public final boolean q(@Nullable String str, @NotNull Activity activity, @Nullable BaseEpisode baseEpisode, @Nullable Function1<? super Boolean, Unit> function1) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        return p(this, str, activity, "immersion_native", baseEpisode, 0L, 0L, function1, 48, null);
    }

    public final boolean r(@NotNull String from, @Nullable Activity activity) {
        Intrinsics.checkNotNullParameter(from, "from");
        b();
        if (!(activity instanceof MainActivity)) {
            Logger.f41511a.h("AdActionManager", "showInterstitialInExitImmersionPageScene -> activity is not MainActivity");
            return false;
        }
        return w(this, from, activity, "exit_immersion_page", null, false, null, null, 0L, 0L, false, null, DataLoaderHelper.DATALOADER_KEY_INT_NET_LOG_MAX_SIZE, null);
    }

    public final boolean s(@NotNull String from, @NotNull Activity activity) {
        Intrinsics.checkNotNullParameter(from, "from");
        Intrinsics.checkNotNullParameter(activity, "activity");
        e();
        return w(this, from, activity, "switch_tab", null, false, null, null, 0L, 0L, false, null, DataLoaderHelper.DATALOADER_KEY_INT_NET_LOG_MAX_SIZE, null);
    }

    public final boolean t(@Nullable String str, @NotNull Activity activity, @Nullable BaseEpisode baseEpisode, @Nullable Function0<Unit> function0, @Nullable Function0<Unit> function02, @Nullable Function1<? super Boolean, Unit> function1) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        return w(this, str, activity, "watch_continuous", baseEpisode, true, function0, function02, 0L, 0L, false, function1, 896, null);
    }

    public final boolean v(@Nullable String str, @Nullable Activity activity, @NotNull String _scene, @Nullable BaseEpisode baseEpisode, boolean z10, @Nullable Function0<Unit> function0, @Nullable Function0<Unit> function02, long j10, long j11, boolean z11, @Nullable Function1<? super Boolean, Unit> function1) {
        String str2;
        String str3;
        Intrinsics.checkNotNullParameter(_scene, "_scene");
        if (!k(_scene)) {
            if (function1 != null) {
                function1.invoke(Boolean.FALSE);
            }
            return false;
        }
        if (Intrinsics.areEqual(_scene, "immersion_switch_episode") || Intrinsics.areEqual(_scene, "watch_continuous")) {
            str2 = "watch_continuous";
        } else {
            str2 = _scene;
        }
        try {
            str3 = str2;
            try {
                boolean l02 = AdManager.f41600a.l0(str, activity, str2, baseEpisode, z10, function0, function02, j10, j11, z11, function1);
                if (l02) {
                    Logger logger = Logger.f41511a;
                    logger.h("AdActionManager", "showInterstitialScene(" + str3 + ") succeed -> useFullScreenNativeAd(false),clearInSceneCount");
                    f42340a.g(str3);
                } else {
                    Logger logger2 = Logger.f41511a;
                    logger2.e("AdActionManager", "showInterstitialScene(" + str3 + ") failed");
                }
                return l02;
            } catch (Exception e10) {
                e = e10;
                String str4 = str3;
                if (function1 != null) {
                    function1.invoke(Boolean.FALSE);
                }
                Logger logger3 = Logger.f41511a;
                logger3.e("AdActionManager", "showInterstitialScene failed -> useFullScreenNativeAd(false),scene=" + str4 + ",error=" + e.getMessage());
                EventManager eventManager = EventManager.f42463a;
                Bundle bundle = new Bundle();
                bundle.putString("ad_error_msg", String.valueOf(e.getMessage()));
                bundle.putString("scene", str4);
                Unit unit = Unit.f60915a;
                EventManager.s0(eventManager, "ad_show_error", bundle, 0L, 4, null);
                return false;
            }
        } catch (Exception e11) {
            e = e11;
            str3 = str2;
        }
    }
}
