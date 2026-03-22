package com.startshorts.androidplayer.service.miniwindow;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import com.bytedance.vodsetting.Module;
import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.ss.texturerender.TextureRenderKeys;
import com.ss.ttvideoengine.strategy.source.StrategySource;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.eventbus.EpisodeListUnlockedEvent;
import com.startshorts.androidplayer.bean.eventbus.ShortsPlayingEvent;
import com.startshorts.androidplayer.bean.eventbus.ShowUnlockEpisodeMethodsEvent;
import com.startshorts.androidplayer.bean.eventbus.UserRechargedEvent;
import com.startshorts.androidplayer.bean.immersion.ImmersionParams;
import com.startshorts.androidplayer.bean.immersion.ImmersionShortsInfo;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.shorts.PlayResolution;
import com.startshorts.androidplayer.bean.shorts.PlaySpeed;
import com.startshorts.androidplayer.bean.shorts.QueryEpisodesResult;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.manager.miniwindow.MiniWindowEpisodeManager;
import com.startshorts.androidplayer.manager.player.feature.f;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.repo.immersion.EpisodeRepo;
import com.startshorts.androidplayer.repo.shorts.ShortsRepo;
import com.startshorts.androidplayer.service.miniwindow.ImmersionMiniWindow;
import com.startshorts.androidplayer.ui.activity.immersion.ImmersionActivity;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.viewmodel.immersion.ImmersionViewModel;
import com.startshorts.androidplayer.viewmodel.immersion.UnlockViewModel;
import com.startshorts.androidplayer.viewmodel.immersion.c;
import com.startshorts.androidplayer.viewmodel.immersion.d;
import com.startshorts.androidplayer.viewmodel.immersion.e;
import com.startshorts.androidplayer.viewmodel.immersion.f;
import com.startshorts.androidplayer.viewmodel.player.PlayerViewModel;
import com.startshorts.androidplayer.viewmodel.player.a;
import com.startshorts.androidplayer.viewmodel.player.b;
import com.startshorts.androidplayer.viewmodel.player.c;
import fk.u;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import jf.b;
import jk.l;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import kotlinx.coroutines.r;
import lf.s;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import pf.k;
/* compiled from: ImmersionMiniWindow.kt */
@Metadata
@SourceDebugExtension({"SMAP\nImmersionMiniWindow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImmersionMiniWindow.kt\ncom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1028:1\n1#2:1029\n1755#3,3:1030\n1863#3,2:1033\n1863#3:1035\n1872#3,3:1036\n1864#3:1039\n*S KotlinDebug\n*F\n+ 1 ImmersionMiniWindow.kt\ncom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow\n*L\n556#1:1030,3\n743#1:1033,2\n936#1:1035\n937#1:1036,3\n936#1:1039\n*E\n"})
/* loaded from: classes7.dex */
public final class ImmersionMiniWindow extends MiniWindowService {
    @Nullable
    private static BaseEpisode K;
    private boolean A;
    private boolean B;
    private boolean C;
    private boolean D;
    private boolean E;
    private int F;
    private int G;
    private boolean H;
    private boolean I;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private String f44786n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private String f44787o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private ImmersionViewModel f44788p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private Observer<Object> f44789q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private PlayerViewModel f44790r;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    private Observer<Object> f44791s;
    @Nullable

    /* renamed from: t  reason: collision with root package name */
    private Observer<Object> f44792t;
    @Nullable

    /* renamed from: u  reason: collision with root package name */
    private UnlockViewModel f44793u;
    @Nullable

    /* renamed from: v  reason: collision with root package name */
    private Observer<Object> f44794v;
    @Nullable

    /* renamed from: w  reason: collision with root package name */
    private jf.b f44795w;
    @Nullable

    /* renamed from: x  reason: collision with root package name */
    private MiniWindowEpisodeManager f44796x;

    /* renamed from: y  reason: collision with root package name */
    private boolean f44797y;
    @NotNull

    /* renamed from: z  reason: collision with root package name */
    private PlayResolution f44798z = PlayResolution.Companion.getPLAY_RESOLUTION_AUTO();
    @NotNull
    public static final a J = new a(null);
    private static float L = 1.0f;

    /* compiled from: ImmersionMiniWindow.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit g(Context context, Intent intent) {
            context.startService(intent);
            return Unit.f60915a;
        }

        public final void b(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            try {
                context.stopService(new Intent(context, ImmersionMiniWindow.class));
            } catch (Exception e10) {
                Logger logger = Logger.f41511a;
                logger.e("ImmersionMiniWindow", "dismiss failed -> " + e10.getMessage());
            }
        }

        @Nullable
        public final BaseEpisode c() {
            return ImmersionMiniWindow.K;
        }

        public final float d() {
            return ImmersionMiniWindow.L;
        }

        public final void e(@Nullable BaseEpisode baseEpisode) {
            ImmersionMiniWindow.K = baseEpisode;
        }

        public final void f(@NotNull final Context context, @NotNull String from, @NotNull BaseEpisode episode, boolean z10, float f10, int i10, long j10, @NotNull String from_scene) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(from, "from");
            Intrinsics.checkNotNullParameter(episode, "episode");
            Intrinsics.checkNotNullParameter(from_scene, "from_scene");
            final Intent intent = new Intent(context, ImmersionMiniWindow.class);
            intent.putExtra("from", from);
            intent.putExtra("from_scene", from_scene);
            intent.putExtra("episode", l.d(episode));
            intent.putExtra("user_pause_play", z10);
            intent.putExtra("play_speed", f10);
            intent.putExtra("play_resolution", i10);
            CoroutineUtil.g(CoroutineUtil.f48072a, j10, null, new Function0() { // from class: nh.f
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit g10;
                    g10 = ImmersionMiniWindow.a.g(context, intent);
                    return g10;
                }
            }, 2, null);
        }

        private a() {
        }
    }

    /* compiled from: ImmersionMiniWindow.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c implements MiniWindowEpisodeManager.b {

        /* compiled from: ImmersionMiniWindow.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public /* synthetic */ class a {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[MiniWindowEpisodeManager.PlayFailedReason.values().length];
                try {
                    iArr[MiniWindowEpisodeManager.PlayFailedReason.REASON_INVALID_URL.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[MiniWindowEpisodeManager.PlayFailedReason.REASON_LOCKED.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[MiniWindowEpisodeManager.PlayFailedReason.REASON_URL_EXPIRED.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        c() {
        }

        @Override // com.startshorts.androidplayer.manager.miniwindow.MiniWindowEpisodeManager.b
        public void a(int i10, BaseEpisode lastEpisode) {
            Intrinsics.checkNotNullParameter(lastEpisode, "lastEpisode");
            ImmersionMiniWindow.this.k0(i10);
        }

        @Override // com.startshorts.androidplayer.manager.miniwindow.MiniWindowEpisodeManager.b
        public void b(BaseEpisode baseEpisode, BaseEpisode newEpisode, boolean z10) {
            Intrinsics.checkNotNullParameter(newEpisode, "newEpisode");
        }

        @Override // com.startshorts.androidplayer.manager.miniwindow.MiniWindowEpisodeManager.b
        public void c(boolean z10, BaseEpisode baseEpisode, BaseEpisode newEpisode) {
            Intrinsics.checkNotNullParameter(newEpisode, "newEpisode");
        }

        @Override // com.startshorts.androidplayer.manager.miniwindow.MiniWindowEpisodeManager.b
        public void d(BaseEpisode episode, MiniWindowEpisodeManager.PlayFailedReason reason) {
            Intrinsics.checkNotNullParameter(episode, "episode");
            Intrinsics.checkNotNullParameter(reason, "reason");
            ImmersionMiniWindow.J.e(episode);
            if (!ImmersionMiniWindow.this.s() && !ImmersionMiniWindow.this.r()) {
                ImmersionMiniWindow.this.K(episode.getCoverId());
            }
            ImmersionMiniWindow.this.I(true);
            ImmersionMiniWindow.this.O(0);
            ImmersionMiniWindow.this.n();
            int i10 = a.$EnumSwitchMapping$0[reason.ordinal()];
            if (i10 == 1) {
                ImmersionMiniWindow.this.E = true;
                ImmersionMiniWindow.this.J(false);
                ImmersionMiniWindow.this.M(true);
                u.j(u.f51776a, R$string.common_play_failed, 0, 2, null);
            } else if (i10 != 2) {
                if (i10 == 3) {
                    ImmersionMiniWindow.this.s0();
                    return;
                }
                throw new NoWhenBranchMatchedException();
            } else if (episode.isLocked()) {
                ImmersionMiniWindow.this.K0(episode);
            }
        }

        @Override // com.startshorts.androidplayer.manager.miniwindow.MiniWindowEpisodeManager.b
        public void e(int i10, BaseEpisode episode) {
            Intrinsics.checkNotNullParameter(episode, "episode");
            ImmersionMiniWindow.J.e(episode);
            if (ImmersionMiniWindow.this.r()) {
                ImmersionMiniWindow.this.K(episode.getCoverId());
            }
            ImmersionMiniWindow.this.L();
            ImmersionMiniWindow.this.G0(i10, episode);
            ImmersionMiniWindow.this.i0("onEpisodeEnablePlay");
        }
    }

    /* compiled from: ImmersionMiniWindow.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d implements b.InterfaceC0832b {
        d() {
        }

        @Override // jf.b.InterfaceC0832b
        public void a(boolean z10) {
            try {
                ImmersionMiniWindow.this.J0(z10);
            } catch (Exception e10) {
                Logger logger = Logger.f41511a;
                logger.e("ImmersionMiniWindow", "tryLoadNextEpisodes exception -> " + e10.getMessage());
            }
        }

        @Override // jf.b.InterfaceC0832b
        public void b(int i10, int i11) {
            MiniWindowEpisodeManager miniWindowEpisodeManager = ImmersionMiniWindow.this.f44796x;
            if (miniWindowEpisodeManager != null) {
                miniWindowEpisodeManager.j();
            }
        }
    }

    private final void A0() {
        if (this.f44795w == null) {
            Logger.f41511a.h("ImmersionMiniWindow", "initPositionManager");
            this.f44795w = new jf.b(new d());
        }
    }

    private final void B0() {
        MutableLiveData<f> a02;
        if (this.f44793u != null) {
            return;
        }
        Logger logger = Logger.f41511a;
        logger.h("ImmersionMiniWindow", "initUnlockVM");
        ViewModelProvider.AndroidViewModelFactory.Companion companion = ViewModelProvider.AndroidViewModelFactory.Companion;
        Application application = getApplication();
        Intrinsics.checkNotNullExpressionValue(application, "getApplication(...)");
        this.f44793u = (UnlockViewModel) companion.getInstance(application).create(UnlockViewModel.class);
        Observer<? super f> observer = new Observer() { // from class: nh.a
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                ImmersionMiniWindow.C0(ImmersionMiniWindow.this, obj);
            }
        };
        this.f44794v = observer;
        logger.h("ImmersionMiniWindow", "add mUnlockState observer");
        UnlockViewModel unlockViewModel = this.f44793u;
        if (unlockViewModel != null && (a02 = unlockViewModel.a0()) != null) {
            a02.observeForever(observer);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C0(ImmersionMiniWindow immersionMiniWindow, Object it) {
        Intrinsics.checkNotNullParameter(it, "it");
        if (it instanceof f.d) {
            immersionMiniWindow.J(false);
            immersionMiniWindow.I(true);
            immersionMiniWindow.n();
        }
    }

    private final boolean D0() {
        AccountRepo accountRepo = AccountRepo.f43052a;
        if ((!accountRepo.z0() && ud.b.f68412a.R1()) || (accountRepo.B0() && accountRepo.M0())) {
            return true;
        }
        return false;
    }

    private final void E0(boolean z10) {
        this.f44797y = false;
        jf.b bVar = this.f44795w;
        if (bVar != null) {
            bVar.b();
        }
    }

    private final void F0() {
        PlayerViewModel playerViewModel = this.f44790r;
        if (playerViewModel != null) {
            playerViewModel.M(b.d.f48937a);
            Unit unit = Unit.f60915a;
            Logger.f41511a.h("ImmersionMiniWindow", "pausePlay");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void G0(int i10, BaseEpisode baseEpisode) {
        PlayResolution playResolution;
        List m10 = k.m(k.f64864a, baseEpisode, false, 2, null);
        if (m10.size() == 1) {
            playResolution = (PlayResolution) m10.get(0);
        } else if (this.f44798z.isAuto()) {
            playResolution = this.f44798z;
        } else {
            List<PlayResolution> list = m10;
            if (!(list instanceof Collection) || !list.isEmpty()) {
                for (PlayResolution playResolution2 : list) {
                    if (playResolution2.getResolutionValue() == this.f44798z.getResolutionValue()) {
                        playResolution = this.f44798z;
                        break;
                    }
                }
            }
            playResolution = PlayResolution.Companion.getPLAY_RESOLUTION_AUTO();
        }
        PlayResolution playResolution3 = playResolution;
        StrategySource e10 = pf.l.e(pf.l.f64869a, baseEpisode, playResolution3, null, false, 12, null);
        if (e10 == null) {
            n();
            J(false);
            I(false);
            u.j(u.f51776a, R$string.common_play_failed, 0, 2, null);
            return;
        }
        k kVar = k.f64864a;
        PlayResolution i11 = kVar.i(baseEpisode);
        Logger logger = Logger.f41511a;
        logger.h("ImmersionMiniWindow", "playEpisode(episodeNum(" + baseEpisode.getEpisodeNum() + ") episodeId(" + baseEpisode.getId() + ") needDecrypt(" + baseEpisode.getNeedDecrypt() + ")) -> maxPlayResolution(" + i11 + ')');
        boolean enableSubtitle = baseEpisode.enableSubtitle();
        ArrayList arrayList = new ArrayList();
        if (enableSubtitle) {
            arrayList.add(m0());
        }
        if (baseEpisode.getNeedDecrypt()) {
            arrayList.add(new com.startshorts.androidplayer.manager.player.feature.d());
        }
        l().f41087k.u(baseEpisode);
        PlayerViewModel playerViewModel = this.f44790r;
        if (playerViewModel != null) {
            Context b10 = u.f51776a.b();
            s sVar = new s();
            sVar.y("MiniWindow");
            sVar.u(l().f41090n);
            sVar.n(2);
            sVar.t(200);
            sVar.w(e10);
            sVar.v(i10);
            sVar.p(false);
            sVar.s(L);
            sVar.q(i11);
            sVar.z(k.q(kVar, baseEpisode, playResolution3, false, 4, null));
            sVar.x(baseEpisode.getSubtitlingConfig());
            sVar.o(arrayList);
            Unit unit = Unit.f60915a;
            playerViewModel.M(new b.e(b10, sVar));
        }
    }

    private final void H0() {
        PlayerViewModel playerViewModel = this.f44790r;
        if (playerViewModel != null) {
            playerViewModel.M(b.f.f48940a);
            Unit unit = Unit.f60915a;
            Logger.f41511a.h("ImmersionMiniWindow", "releasePlay");
        }
    }

    private final void I0() {
        String str;
        BaseEpisode baseEpisode = K;
        if (baseEpisode != null) {
            str = baseEpisode.getVideoUrl();
        } else {
            str = null;
        }
        if (str != null && str.length() != 0) {
            PlayerViewModel playerViewModel = this.f44790r;
            if (playerViewModel != null) {
                playerViewModel.M(b.g.f48941a);
                Unit unit = Unit.f60915a;
                Logger.f41511a.h("ImmersionMiniWindow", "resumePlay");
                return;
            }
            return;
        }
        Logger.f41511a.e("ImmersionMiniWindow", "resumePlay failed -> video url is null");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void J0(boolean z10) {
        BaseEpisode q02 = q0();
        if (q02 != null && !q02.isLocked()) {
            this.f44797y = z10;
            ImmersionViewModel immersionViewModel = this.f44788p;
            if (immersionViewModel != null) {
                immersionViewModel.e0(new c.C0662c(q02, z10));
                return;
            }
            return;
        }
        Logger.f41511a.e("ImmersionMiniWindow", "tryLoadNextEpisodes failed -> lastItem is locked");
        E0(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void K0(BaseEpisode baseEpisode) {
        Logger logger = Logger.f41511a;
        logger.h("ImmersionMiniWindow", "tryUnlockEpisode -> episodeId(" + baseEpisode.getId() + ") episodeNum(" + baseEpisode.getEpisodeNum() + ')');
        L();
        B0();
        UnlockViewModel unlockViewModel = this.f44793u;
        if (unlockViewModel != null) {
            unlockViewModel.j0(new e.d(baseEpisode));
            if (baseEpisode.isMembersOnly() && !AccountRepo.f43052a.z0()) {
                au.c.d().l(new ShowUnlockEpisodeMethodsEvent(baseEpisode, "other"));
            } else {
                unlockViewModel.j0(new e.m(null, AccountRepo.f43052a.P(), false, null, 9, null));
            }
        }
    }

    private final r L0() {
        return CoroutineUtil.l(CoroutineUtil.f48072a, "updatePreloadStrategyResources", false, new ImmersionMiniWindow$updatePreloadStrategyResources$1(this, null), 2, null);
    }

    private final r h0(List<BaseEpisode> list) {
        return CoroutineUtil.l(CoroutineUtil.f48072a, "addPreloadStrategyResources", false, new ImmersionMiniWindow$addPreloadStrategyResources$1(this, list, null), 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit j0(ImmersionMiniWindow immersionMiniWindow, boolean z10) {
        AccountRepo accountRepo = AccountRepo.f43052a;
        if (accountRepo.i1()) {
            immersionMiniWindow.I = false;
            return Unit.f60915a;
        }
        immersionMiniWindow.L0();
        if (!z10) {
            accountRepo.U();
        }
        ud.b bVar = ud.b.f68412a;
        bVar.e5(false);
        bVar.e4(-1);
        immersionMiniWindow.I = false;
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void k0(int i10) {
        Logger logger = Logger.f41511a;
        logger.h("ImmersionMiniWindow", "clearLastEpisodeInfo -> position(" + i10 + ')');
        this.D = false;
        this.A = false;
        this.B = false;
        this.C = false;
        this.E = false;
        this.F = 0;
        this.G = 0;
        H0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<StrategySource> l0(List<BaseEpisode> list) {
        StrategySource e10;
        ArrayList arrayList = new ArrayList();
        String str = "";
        for (BaseEpisode baseEpisode : list) {
            String videoUrl = baseEpisode.getVideoUrl();
            if (videoUrl != null && videoUrl.length() != 0 && (e10 = pf.l.e(pf.l.f64869a, baseEpisode, this.f44798z, null, false, 4, null)) != null) {
                str = str + '(' + baseEpisode.getId() + ',' + baseEpisode.getEpisodeNum() + ')';
                arrayList.add(e10);
            }
        }
        if (str.length() > 0) {
            Logger.f41511a.h("ImmersionMiniWindow", "createPreloadStrategyResources -> " + str);
        }
        return arrayList;
    }

    private final com.startshorts.androidplayer.manager.player.feature.f m0() {
        int i10;
        com.startshorts.androidplayer.manager.player.feature.f fVar = new com.startshorts.androidplayer.manager.player.feature.f();
        BaseEpisode baseEpisode = K;
        if (baseEpisode != null) {
            i10 = baseEpisode.getShortPlayId();
        } else {
            i10 = 0;
        }
        fVar.g(i10);
        fVar.f(new b());
        return fVar;
    }

    private final void n0(BaseEpisode baseEpisode) {
        ImmersionViewModel immersionViewModel = this.f44788p;
        if (immersionViewModel != null) {
            immersionViewModel.w();
            ImmersionParams immersionParams = new ImmersionParams();
            immersionParams.setFrom("pip_window");
            immersionParams.setType(2);
            immersionParams.setEpisodeList(CollectionsKt.t(baseEpisode));
            ImmersionShortsInfo immersionShortsInfo = new ImmersionShortsInfo();
            immersionShortsInfo.setShortsId(baseEpisode.getShortPlayId());
            immersionShortsInfo.setVideoType(baseEpisode.getVideoType());
            if (baseEpisode.isTrailer()) {
                immersionShortsInfo.setBindShortsId(baseEpisode.getBindShortPlayId());
                immersionShortsInfo.setShortPlayCode(String.valueOf(baseEpisode.getShortPlayId()));
            } else {
                immersionShortsInfo.setShortPlayCode(baseEpisode.getShortPlayCode());
            }
            immersionShortsInfo.setShortsName(baseEpisode.getShortPlayName());
            immersionShortsInfo.setCover(baseEpisode.getCoverId());
            immersionShortsInfo.setUpack(baseEpisode.getUpack());
            immersionParams.setShortsInfo(immersionShortsInfo);
            immersionParams.setLogEnterImmersion(false);
            immersionViewModel.e0(new c.a(immersionParams));
        }
    }

    private final String o0(BaseEpisode baseEpisode) {
        if (baseEpisode == null) {
            return "";
        }
        if (k.f64864a.s() && baseEpisode.contains1080pUrl()) {
            return "1080p";
        }
        if (baseEpisode.contains720pUrl()) {
            return "720p";
        }
        return "480p";
    }

    private final String p0(String str) {
        if (str == null || str.length() == 0) {
            return "";
        }
        if (StringsKt.b0(str, "_720", false, 2, null)) {
            return "720p";
        }
        if (StringsKt.b0(str, "_1080p", false, 2, null)) {
            return "1080p";
        }
        if (!StringsKt.b0(str, "_480p", false, 2, null)) {
            return "";
        }
        return "480p";
    }

    private final BaseEpisode q0() {
        List<BaseEpisode> d10;
        MiniWindowEpisodeManager miniWindowEpisodeManager = this.f44796x;
        if (miniWindowEpisodeManager != null && (d10 = miniWindowEpisodeManager.d()) != null) {
            return (BaseEpisode) CollectionsKt.D0(d10);
        }
        return null;
    }

    private final String r0(BaseEpisode baseEpisode) {
        int i10;
        if (baseEpisode == null) {
            return "";
        }
        if (k.f64864a.s() && baseEpisode.contains1080pUrl()) {
            i10 = 1080;
        } else if (baseEpisode.contains720pUrl()) {
            i10 = 720;
        } else {
            i10 = 480;
        }
        String parseVideoUrl = baseEpisode.parseVideoUrl(i10);
        if (parseVideoUrl == null) {
            return "";
        }
        return parseVideoUrl;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void s0() {
        ImmersionViewModel immersionViewModel;
        BaseEpisode baseEpisode = K;
        if (baseEpisode != null && (immersionViewModel = this.f44788p) != null) {
            immersionViewModel.w();
            immersionViewModel.e0(new c.k(null, baseEpisode.getShortPlayId(), baseEpisode.getId(), baseEpisode.getVideoType(), null, 17, null));
        }
    }

    private final void t0(boolean z10, int i10, int i11, QueryEpisodesResult queryEpisodesResult) {
        int i12;
        int i13;
        List<BaseEpisode> list;
        List<BaseEpisode> list2;
        int i14;
        int i15;
        BaseEpisode currentEpisodesReponse = queryEpisodesResult.getCurrentEpisodesReponse();
        List<BaseEpisode> previousEpisodesReponse = queryEpisodesResult.getPreviousEpisodesReponse();
        List<BaseEpisode> nextEpisodesReponse = queryEpisodesResult.getNextEpisodesReponse();
        int i16 = 0;
        if (!z10) {
            ArrayList arrayList = new ArrayList();
            List<BaseEpisode> list3 = previousEpisodesReponse;
            if (list3 != null && !list3.isEmpty()) {
                arrayList.addAll(list3);
            }
            if (currentEpisodesReponse != null) {
                arrayList.add(currentEpisodesReponse);
            }
            if (nextEpisodesReponse != null) {
                arrayList.addAll(nextEpisodesReponse);
            }
            if (currentEpisodesReponse != null) {
                i14 = arrayList.indexOf(currentEpisodesReponse);
            } else {
                i14 = 0;
            }
            Logger logger = Logger.f41511a;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("handleQueryEpisodesSuccess -> preload(false) expectPrevSize(");
            sb2.append(i10);
            sb2.append(") expectNextSize(");
            sb2.append(i11);
            sb2.append(") realPrevSize(");
            if (previousEpisodesReponse != null) {
                i15 = previousEpisodesReponse.size();
            } else {
                i15 = 0;
            }
            sb2.append(i15);
            sb2.append(") realNextSize(");
            if (nextEpisodesReponse != null) {
                i16 = nextEpisodesReponse.size();
            }
            sb2.append(i16);
            sb2.append(") curPosition(");
            sb2.append(i14);
            sb2.append(')');
            logger.h("ImmersionMiniWindow", sb2.toString());
            MiniWindowEpisodeManager miniWindowEpisodeManager = this.f44796x;
            if (miniWindowEpisodeManager != null) {
                miniWindowEpisodeManager.s(arrayList);
            }
            jf.b bVar = this.f44795w;
            if (bVar != null) {
                bVar.e();
                bVar.k(i14);
            }
            L0();
            return;
        }
        Logger logger2 = Logger.f41511a;
        StringBuilder sb3 = new StringBuilder();
        sb3.append("handleQueryEpisodesSuccess -> preload(true) expectPrevSize(");
        sb3.append(i10);
        sb3.append(") expectNextSize(");
        sb3.append(i11);
        sb3.append(") realPrevSize(");
        if (previousEpisodesReponse != null) {
            i12 = previousEpisodesReponse.size();
        } else {
            i12 = 0;
        }
        sb3.append(i12);
        sb3.append(") realNextSize(");
        if (nextEpisodesReponse != null) {
            i13 = nextEpisodesReponse.size();
        } else {
            i13 = 0;
        }
        sb3.append(i13);
        sb3.append(')');
        logger2.h("ImmersionMiniWindow", sb3.toString());
        if (i10 == 0 && i11 != 0) {
            MiniWindowEpisodeManager miniWindowEpisodeManager2 = this.f44796x;
            Object obj = null;
            if (miniWindowEpisodeManager2 != null) {
                list = miniWindowEpisodeManager2.d();
            } else {
                list = null;
            }
            if (currentEpisodesReponse != null && (list2 = list) != null && !list2.isEmpty()) {
                synchronized (list) {
                    try {
                        Iterator<T> it = list.iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                break;
                            }
                            Object next = it.next();
                            if (((BaseEpisode) next).getId() == currentEpisodesReponse.getId()) {
                                obj = next;
                                break;
                            }
                        }
                        if (obj == null) {
                            if (nextEpisodesReponse == null) {
                                nextEpisodesReponse = new ArrayList<>();
                            }
                            nextEpisodesReponse.add(0, currentEpisodesReponse);
                        }
                        Unit unit = Unit.f60915a;
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
            List<BaseEpisode> list4 = nextEpisodesReponse;
            if (list4 != null && !list4.isEmpty()) {
                if (nextEpisodesReponse != null) {
                    MiniWindowEpisodeManager miniWindowEpisodeManager3 = this.f44796x;
                    if (miniWindowEpisodeManager3 != null) {
                        miniWindowEpisodeManager3.a(nextEpisodesReponse);
                    }
                    h0(nextEpisodesReponse);
                }
                if (this.f44797y) {
                    this.f44797y = false;
                    jf.b bVar2 = this.f44795w;
                    if (bVar2 != null) {
                        bVar2.f();
                    }
                }
            }
        }
    }

    private final void u0() {
        MiniWindowEpisodeManager miniWindowEpisodeManager;
        jf.b bVar = this.f44795w;
        if (bVar != null && this.f44796x == null) {
            Logger.f41511a.h("ImmersionMiniWindow", "initEpisodeManager");
            this.f44796x = new MiniWindowEpisodeManager(bVar, new c());
            PlaySpeed create = PlaySpeed.Companion.create(L);
            if (create != null && (miniWindowEpisodeManager = this.f44796x) != null) {
                miniWindowEpisodeManager.q(create);
            }
        }
    }

    private final void v0() {
        MutableLiveData<com.startshorts.androidplayer.viewmodel.immersion.d> Q;
        if (this.f44788p != null) {
            return;
        }
        Logger logger = Logger.f41511a;
        logger.h("ImmersionMiniWindow", "initImmersionVM");
        ViewModelProvider.AndroidViewModelFactory.Companion companion = ViewModelProvider.AndroidViewModelFactory.Companion;
        Application application = getApplication();
        Intrinsics.checkNotNullExpressionValue(application, "getApplication(...)");
        this.f44788p = (ImmersionViewModel) companion.getInstance(application).create(ImmersionViewModel.class);
        Observer<? super com.startshorts.androidplayer.viewmodel.immersion.d> observer = new Observer() { // from class: nh.b
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                ImmersionMiniWindow.w0(ImmersionMiniWindow.this, obj);
            }
        };
        this.f44789q = observer;
        ImmersionViewModel immersionViewModel = this.f44788p;
        if (immersionViewModel != null && (Q = immersionViewModel.Q()) != null) {
            Q.observeForever(observer);
            Unit unit = Unit.f60915a;
            logger.h("ImmersionMiniWindow", "add mImmersionState observer");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w0(ImmersionMiniWindow immersionMiniWindow, Object it) {
        Intrinsics.checkNotNullParameter(it, "it");
        if (it instanceof d.C0663d) {
            d.C0663d c0663d = (d.C0663d) it;
            immersionMiniWindow.t0(c0663d.c(), c0663d.b(), c0663d.a(), c0663d.e());
        } else if (it instanceof d.e) {
            immersionMiniWindow.E0(((d.e) it).a());
        }
    }

    private final void x0() {
        MutableLiveData<com.startshorts.androidplayer.viewmodel.player.a> G;
        MutableLiveData<com.startshorts.androidplayer.viewmodel.player.c> H;
        if (this.f44790r != null) {
            return;
        }
        Logger logger = Logger.f41511a;
        logger.h("ImmersionMiniWindow", "initPlayerVM");
        ViewModelProvider.AndroidViewModelFactory.Companion companion = ViewModelProvider.AndroidViewModelFactory.Companion;
        Application application = getApplication();
        Intrinsics.checkNotNullExpressionValue(application, "getApplication(...)");
        this.f44790r = (PlayerViewModel) companion.getInstance(application).create(PlayerViewModel.class);
        Observer<? super com.startshorts.androidplayer.viewmodel.player.c> observer = new Observer() { // from class: nh.c
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                ImmersionMiniWindow.y0(ImmersionMiniWindow.this, obj);
            }
        };
        this.f44791s = observer;
        PlayerViewModel playerViewModel = this.f44790r;
        if (playerViewModel != null && (H = playerViewModel.H()) != null) {
            H.observeForever(observer);
            Unit unit = Unit.f60915a;
            logger.h("ImmersionMiniWindow", "add mPlayerState observer");
        }
        Observer<? super com.startshorts.androidplayer.viewmodel.player.a> observer2 = new Observer() { // from class: nh.d
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                ImmersionMiniWindow.z0(ImmersionMiniWindow.this, obj);
            }
        };
        this.f44792t = observer2;
        PlayerViewModel playerViewModel2 = this.f44790r;
        if (playerViewModel2 != null && (G = playerViewModel2.G()) != null) {
            G.observeForever(observer2);
            Unit unit2 = Unit.f60915a;
            logger.h("ImmersionMiniWindow", "add mPlaybackTimeState observer");
        }
        PlayerViewModel playerViewModel3 = this.f44790r;
        if (playerViewModel3 != null) {
            playerViewModel3.M(new b.i("ImmersionMiniWindow"));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y0(ImmersionMiniWindow immersionMiniWindow, Object it) {
        String p02;
        MiniWindowEpisodeManager miniWindowEpisodeManager;
        String p03;
        String p04;
        Intrinsics.checkNotNullParameter(it, "it");
        if (it instanceof c.g) {
            immersionMiniWindow.B = true;
            if (immersionMiniWindow.D) {
                immersionMiniWindow.F0();
            }
        } else if (it instanceof c.j) {
            c.j jVar = (c.j) it;
            immersionMiniWindow.F = jVar.b();
            immersionMiniWindow.G = jVar.a();
            Logger logger = Logger.f41511a;
            logger.h("ImmersionMiniWindow", "OnTimeInfo -> mTotalTime(" + immersionMiniWindow.F + ") mStartTime(" + immersionMiniWindow.G + ')');
            immersionMiniWindow.o(immersionMiniWindow.G, immersionMiniWindow.F);
        } else if (it instanceof c.h) {
            immersionMiniWindow.A = true;
            immersionMiniWindow.m();
            immersionMiniWindow.n();
            immersionMiniWindow.J(true);
            immersionMiniWindow.I(false);
            BaseEpisode baseEpisode = K;
            if (baseEpisode == null) {
                return;
            }
            if (baseEpisode.getNeedDecrypt()) {
                p04 = immersionMiniWindow.o0(baseEpisode);
            } else {
                p04 = immersionMiniWindow.p0(immersionMiniWindow.r0(baseEpisode));
            }
            EventManager eventManager = EventManager.f42463a;
            Bundle C = eventManager.C(baseEpisode);
            C.putString(CrashHianalyticsData.TIME, String.valueOf(((c.h) it).a()));
            C.putString("clarity_level", p04);
            C.putString("scene", "pip_window");
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "initial_loading_time", C, 0L, 4, null);
        } else if (it instanceof c.f) {
            if (immersionMiniWindow.D) {
                immersionMiniWindow.F0();
                return;
            }
            immersionMiniWindow.D = false;
            immersionMiniWindow.C = false;
            immersionMiniWindow.E = false;
            immersionMiniWindow.J(true);
            immersionMiniWindow.I(false);
            immersionMiniWindow.m();
            immersionMiniWindow.n();
            if (immersionMiniWindow.H) {
                immersionMiniWindow.H = false;
                immersionMiniWindow.L0();
            }
        } else if (it instanceof c.e) {
            immersionMiniWindow.C = true;
            immersionMiniWindow.J(false);
            immersionMiniWindow.n();
        } else if (it instanceof c.b) {
            BaseEpisode baseEpisode2 = K;
            if (baseEpisode2 == null) {
                return;
            }
            if (baseEpisode2.getNeedDecrypt()) {
                p03 = immersionMiniWindow.o0(baseEpisode2);
            } else {
                p03 = immersionMiniWindow.p0(immersionMiniWindow.r0(baseEpisode2));
            }
            EventManager eventManager2 = EventManager.f42463a;
            Bundle C2 = eventManager2.C(baseEpisode2);
            c.b bVar = (c.b) it;
            C2.putInt(Module.ResponseKey.Code, bVar.c());
            C2.putInt("after_first_frame", bVar.b());
            C2.putInt(TextureRenderKeys.KEY_IS_ACTION, bVar.a());
            C2.putString("clarity_level", p03);
            C2.putString("scene", "pip_window");
            Unit unit2 = Unit.f60915a;
            EventManager.s0(eventManager2, "reel_play_buffering", C2, 0L, 4, null);
        } else if (it instanceof c.C0672c) {
            c.C0672c c0672c = (c.C0672c) it;
            if (c0672c.a() > 0 && (miniWindowEpisodeManager = immersionMiniWindow.f44796x) != null) {
                miniWindowEpisodeManager.l(c0672c.a(), c0672c.a());
            }
            immersionMiniWindow.I(true);
            immersionMiniWindow.w(false);
        } else if (it instanceof c.d) {
            immersionMiniWindow.C = false;
            immersionMiniWindow.D = false;
            immersionMiniWindow.B = false;
            immersionMiniWindow.A = false;
            immersionMiniWindow.E = true;
            immersionMiniWindow.J(false);
            immersionMiniWindow.I(false);
            immersionMiniWindow.n();
            BaseEpisode baseEpisode3 = K;
            if (baseEpisode3 == null) {
                return;
            }
            String b10 = ((c.d) it).b();
            if (Intrinsics.areEqual(b10, "-9999") || Intrinsics.areEqual(b10, "-1")) {
                ud.b.f68412a.E3(baseEpisode3.getId(), 0);
                ud.a.f68411a.k0(baseEpisode3.getId(), 0);
            }
            String r02 = immersionMiniWindow.r0(baseEpisode3);
            if (baseEpisode3.getNeedDecrypt()) {
                p02 = immersionMiniWindow.o0(baseEpisode3);
            } else {
                p02 = immersionMiniWindow.p0(r02);
            }
            Logger logger2 = Logger.f41511a;
            logger2.e("ImmersionMiniWindow", "onError -> playErrorUrl(" + r02 + ") clarity(" + p02 + ')');
            EventManager eventManager3 = EventManager.f42463a;
            Bundle C3 = eventManager3.C(baseEpisode3);
            C3.putString("scene", "pip_window");
            C3.putString("err_msg", b10);
            C3.putString(CampaignEx.JSON_KEY_VIDEO_URL, r02);
            C3.putString("clarity_level", p02);
            C3.putString("userNetworkType", DeviceUtil.f48146a.A());
            Unit unit3 = Unit.f60915a;
            EventManager.s0(eventManager3, "reel_play_fail", C3, 0L, 4, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z0(ImmersionMiniWindow immersionMiniWindow, Object it) {
        Intrinsics.checkNotNullParameter(it, "it");
        if (it instanceof a.C0670a) {
            a.C0670a c0670a = (a.C0670a) it;
            immersionMiniWindow.O(c0670a.a());
            MiniWindowEpisodeManager miniWindowEpisodeManager = immersionMiniWindow.f44796x;
            if (miniWindowEpisodeManager != null) {
                miniWindowEpisodeManager.l(c0670a.a(), c0670a.b());
            }
        }
    }

    @Override // com.startshorts.androidplayer.service.miniwindow.MiniWindowService
    public void A(int i10) {
        Logger logger = Logger.f41511a;
        logger.h("ImmersionMiniWindow", "seekTo -> " + i10 + "ms");
        PlayerViewModel playerViewModel = this.f44790r;
        if (playerViewModel != null) {
            playerViewModel.M(new b.h(i10));
        }
    }

    @Override // com.startshorts.androidplayer.service.miniwindow.MiniWindowService
    public boolean G(@Nullable Intent intent) {
        String stringExtra;
        BaseEpisode baseEpisode;
        if (intent == null || (stringExtra = intent.getStringExtra("episode")) == null || (baseEpisode = (BaseEpisode) l.b(stringExtra, BaseEpisode.class)) == null) {
            return false;
        }
        K = baseEpisode;
        String stringExtra2 = intent.getStringExtra("from");
        String str = "";
        if (stringExtra2 == null) {
            stringExtra2 = "";
        }
        this.f44786n = stringExtra2;
        String stringExtra3 = intent.getStringExtra("from_scene");
        if (stringExtra3 != null) {
            str = stringExtra3;
        }
        this.f44787o = str;
        this.D = intent.getBooleanExtra("user_pause_play", false);
        L = intent.getFloatExtra("play_speed", 1.0f);
        this.f44798z = PlayResolution.Companion.create(intent.getIntExtra("play_resolution", 0));
        Logger logger = Logger.f41511a;
        logger.h("ImmersionMiniWindow", "reload -> shortsId(" + baseEpisode.getShortPlayId() + ") episodeNum(" + baseEpisode.getEpisodeNum() + ") mFrom(" + this.f44786n + ") mUserPausePlay(" + this.D + ") mCurPlaySpeed(" + L + ") mCurPlayResolution(" + this.f44798z + ')');
        EventManager eventManager = EventManager.f42463a;
        Bundle C = eventManager.C(baseEpisode);
        C.putString("from", this.f44786n);
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "pip_play", C, 0L, 4, null);
        n0(baseEpisode);
        return true;
    }

    public final boolean i0(@NotNull String from) {
        List<BaseEpisode> list;
        jf.b bVar;
        jf.b bVar2;
        Intrinsics.checkNotNullParameter(from, "from");
        Logger.f41511a.h("ImmersionMiniWindow", "checkSubsProExpired -> mSubsProExpiredChecking(" + this.I + ") from(" + from + ')');
        if (this.I) {
            return false;
        }
        AccountRepo.f43052a.Q0();
        if (!D0()) {
            return false;
        }
        this.I = true;
        MiniWindowEpisodeManager miniWindowEpisodeManager = this.f44796x;
        if (miniWindowEpisodeManager != null) {
            list = miniWindowEpisodeManager.d();
        } else {
            list = null;
        }
        if (list != null) {
            synchronized (list) {
                try {
                    for (BaseEpisode baseEpisode : list) {
                        Intrinsics.checkNotNullExpressionValue(baseEpisode, "next(...)");
                        BaseEpisode baseEpisode2 = baseEpisode;
                        if (baseEpisode2.isVipFree()) {
                            baseEpisode2.setNotVipFree();
                            String videoUrl = baseEpisode2.getVideoUrl();
                            if (videoUrl != null && videoUrl.length() != 0) {
                                if (baseEpisode2.isRealLocked()) {
                                    baseEpisode2.setVideoUrl(null);
                                    baseEpisode2.setParsedVideo(null);
                                    EpisodeRepo.f44056a.w(baseEpisode2);
                                    ShortsRepo.f44606a.s(baseEpisode2.getId());
                                }
                                BaseEpisode baseEpisode3 = K;
                                if (baseEpisode3 != null && baseEpisode2.getId() == baseEpisode3.getId() && (bVar = this.f44795w) != null) {
                                    k0(bVar.c());
                                }
                            }
                        } else {
                            BaseEpisode baseEpisode4 = K;
                            if (baseEpisode4 != null && baseEpisode2.getId() == baseEpisode4.getId() && (bVar2 = this.f44795w) != null) {
                                k0(bVar2.c());
                            }
                        }
                    }
                    Unit unit = Unit.f60915a;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        AccountRepo.f43052a.b1(true, new Function1() { // from class: nh.e
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit j02;
                j02 = ImmersionMiniWindow.j0(ImmersionMiniWindow.this, ((Boolean) obj).booleanValue());
                return j02;
            }
        });
        return true;
    }

    @Override // android.app.Service
    @Nullable
    public IBinder onBind(@Nullable Intent intent) {
        return null;
    }

    @Override // com.startshorts.androidplayer.service.miniwindow.MiniWindowService, android.app.Service
    public void onCreate() {
        super.onCreate();
        A0();
        u0();
        x0();
        v0();
        B0();
    }

    @Override // com.startshorts.androidplayer.service.miniwindow.MiniWindowService, android.app.Service
    public void onDestroy() {
        UnlockViewModel unlockViewModel;
        MutableLiveData<f> a02;
        PlayerViewModel playerViewModel;
        MutableLiveData<com.startshorts.androidplayer.viewmodel.player.a> G;
        PlayerViewModel playerViewModel2;
        MutableLiveData<com.startshorts.androidplayer.viewmodel.player.c> H;
        ImmersionViewModel immersionViewModel;
        MutableLiveData<com.startshorts.androidplayer.viewmodel.immersion.d> Q;
        super.onDestroy();
        Logger logger = Logger.f41511a;
        logger.h("ImmersionMiniWindow", "onDestroy");
        kf.b.f60715a.h(false);
        K = null;
        Observer<? super com.startshorts.androidplayer.viewmodel.immersion.d> observer = this.f44789q;
        if (observer != null && (immersionViewModel = this.f44788p) != null && (Q = immersionViewModel.Q()) != null) {
            Q.removeObserver(observer);
            Unit unit = Unit.f60915a;
            logger.h("ImmersionMiniWindow", "remove mImmersionState observer");
        }
        Observer<? super com.startshorts.androidplayer.viewmodel.player.c> observer2 = this.f44791s;
        if (observer2 != null && (playerViewModel2 = this.f44790r) != null && (H = playerViewModel2.H()) != null) {
            H.removeObserver(observer2);
            Unit unit2 = Unit.f60915a;
            logger.h("ImmersionMiniWindow", "remove mPlayerState observer");
        }
        Observer<? super com.startshorts.androidplayer.viewmodel.player.a> observer3 = this.f44792t;
        if (observer3 != null && (playerViewModel = this.f44790r) != null && (G = playerViewModel.G()) != null) {
            G.removeObserver(observer3);
            Unit unit3 = Unit.f60915a;
            logger.h("ImmersionMiniWindow", "remove mPlaybackTimeState observer");
        }
        Observer<? super f> observer4 = this.f44794v;
        if (observer4 != null && (unlockViewModel = this.f44793u) != null && (a02 = unlockViewModel.a0()) != null) {
            a02.removeObserver(observer4);
            Unit unit4 = Unit.f60915a;
            logger.h("ImmersionMiniWindow", "remove mUnlockState observer");
        }
        ImmersionViewModel immersionViewModel2 = this.f44788p;
        if (immersionViewModel2 != null) {
            immersionViewModel2.w();
        }
        this.f44788p = null;
        PlayerViewModel playerViewModel3 = this.f44790r;
        if (playerViewModel3 != null) {
            playerViewModel3.w();
        }
        this.f44790r = null;
        UnlockViewModel unlockViewModel2 = this.f44793u;
        if (unlockViewModel2 != null) {
            unlockViewModel2.w();
        }
        this.f44793u = null;
        MiniWindowEpisodeManager miniWindowEpisodeManager = this.f44796x;
        if (miniWindowEpisodeManager != null) {
            miniWindowEpisodeManager.n();
        }
        this.f44796x = null;
    }

    @au.l(threadMode = ThreadMode.MAIN)
    public final void receiveEpisodeListUnlockedEvent(@NotNull EpisodeListUnlockedEvent event) {
        List<BaseEpisode> list;
        Intrinsics.checkNotNullParameter(event, "event");
        Logger.f41511a.h("ImmersionMiniWindow", "receive EpisodeListUnlockedEvent -> unlockType(" + event.getUnlockType() + ") userRecharged(" + event.getUserRecharged() + ')');
        MiniWindowEpisodeManager miniWindowEpisodeManager = this.f44796x;
        if (miniWindowEpisodeManager != null) {
            list = miniWindowEpisodeManager.d();
        } else {
            list = null;
        }
        List<BaseEpisode> list2 = list;
        if (list2 != null && !list2.isEmpty()) {
            synchronized (list) {
                try {
                    ArrayList arrayList = new ArrayList();
                    List<BaseEpisode> list3 = event.getList();
                    if (list3 != null) {
                        for (BaseEpisode baseEpisode : list3) {
                            int i10 = 0;
                            for (Object obj : list) {
                                int i11 = i10 + 1;
                                if (i10 < 0) {
                                    CollectionsKt.y();
                                }
                                if (((BaseEpisode) obj).getId() == baseEpisode.getId()) {
                                    baseEpisode.setUnlockJustNow(true);
                                    list.set(i10, baseEpisode);
                                    BaseEpisode baseEpisode2 = K;
                                    if (baseEpisode2 != null && baseEpisode2.getId() == baseEpisode.getId()) {
                                        K = baseEpisode;
                                    }
                                    arrayList.add(baseEpisode);
                                }
                                i10 = i11;
                            }
                        }
                    }
                    if (!arrayList.isEmpty()) {
                        h0(arrayList);
                    }
                    Unit unit = Unit.f60915a;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            jf.b bVar = this.f44795w;
            if (bVar != null) {
                jf.b.j(bVar, false, 1, null);
            }
            MiniWindowEpisodeManager miniWindowEpisodeManager2 = this.f44796x;
            if (miniWindowEpisodeManager2 != null) {
                miniWindowEpisodeManager2.k();
            }
        }
    }

    @au.l(threadMode = ThreadMode.MAIN)
    public final void receiveShortsPlayingEvent(@NotNull ShortsPlayingEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        Logger.f41511a.h("ImmersionMiniWindow", "receive ShortsPlayingEvent");
        this.H = true;
        F0();
        M(true);
    }

    @au.l(threadMode = ThreadMode.MAIN)
    public final void receiveShowUnlockEpisodeMethodsEvent(@NotNull ShowUnlockEpisodeMethodsEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        Logger logger = Logger.f41511a;
        logger.h("ImmersionMiniWindow", "receive ShowUnlockEpisodeMethodsEvent -> episodeId(" + event.getEpisode().getId() + ") episodeNum(" + event.getEpisode().getEpisodeNum() + ") action(" + event.getAction() + ')');
        n();
        BaseEpisode baseEpisode = K;
        if (baseEpisode == null || event.getEpisode().getId() != baseEpisode.getId() || !baseEpisode.isLocked()) {
            return;
        }
        EventManager eventManager = EventManager.f42463a;
        Bundle C = eventManager.C(baseEpisode);
        C.putString("status", "fail");
        C.putString("scene", "pip_window");
        C.putString("type", "insufficient_coins");
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "reel_request", C, 0L, 4, null);
        J(false);
        M(true);
    }

    @au.l(threadMode = ThreadMode.MAIN)
    public final void receiveUserRechargedEvent(@NotNull UserRechargedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        Logger.f41511a.h("ImmersionMiniWindow", "receive UserRechargedEvent");
        BaseEpisode baseEpisode = K;
        if (baseEpisode != null && baseEpisode.isLocked()) {
            K0(baseEpisode);
        }
    }

    @Override // com.startshorts.androidplayer.service.miniwindow.MiniWindowService
    public void w(boolean z10) {
        jf.b bVar;
        Logger logger = Logger.f41511a;
        logger.h("ImmersionMiniWindow", "onNext -> fromUser(" + z10 + ')');
        BaseEpisode baseEpisode = K;
        if (baseEpisode == null) {
            return;
        }
        if (baseEpisode.isLocked()) {
            logger.e("ImmersionMiniWindow", "onNext failed -> currentItem is locked");
            M(false);
            K0(baseEpisode);
            return;
        }
        jf.b bVar2 = this.f44795w;
        if (bVar2 != null && !bVar2.f() && (bVar = this.f44795w) != null) {
            bVar.i(true);
        }
    }

    @Override // com.startshorts.androidplayer.service.miniwindow.MiniWindowService
    public void x(boolean z10) {
        Logger logger = Logger.f41511a;
        logger.h("ImmersionMiniWindow", "onPause -> fromUser(" + z10 + ')');
        this.D = z10;
        F0();
    }

    @Override // com.startshorts.androidplayer.service.miniwindow.MiniWindowService
    public void y() {
        int i10;
        int videoType;
        BaseEpisode baseEpisode = K;
        if (baseEpisode == null) {
            return;
        }
        ImmersionActivity.a aVar = ImmersionActivity.V0;
        ImmersionParams immersionParams = new ImmersionParams();
        immersionParams.setFrom("pip_window");
        if (Intrinsics.areEqual(this.f44786n, "short_auto") && baseEpisode.isTrailer()) {
            i10 = 4;
        } else {
            i10 = 2;
        }
        immersionParams.setType(i10);
        if (baseEpisode.isTrailer()) {
            immersionParams.setEpisodeId(baseEpisode.getFirstDramId());
        } else {
            immersionParams.setEpisodeId(baseEpisode.getId());
        }
        immersionParams.setEpisodeList(CollectionsKt.t(baseEpisode));
        ImmersionShortsInfo immersionShortsInfo = new ImmersionShortsInfo();
        immersionShortsInfo.setShortsId(baseEpisode.getShortPlayId());
        if (Intrinsics.areEqual(this.f44786n, "short_auto") && baseEpisode.isTrailer()) {
            videoType = 1;
        } else {
            videoType = baseEpisode.getVideoType();
        }
        immersionShortsInfo.setVideoType(videoType);
        if (baseEpisode.isTrailer()) {
            immersionShortsInfo.setBindShortsId(baseEpisode.getBindShortPlayId());
            immersionShortsInfo.setShortPlayCode(String.valueOf(baseEpisode.getShortPlayId()));
        } else {
            immersionShortsInfo.setShortPlayCode(baseEpisode.getShortPlayCode());
        }
        immersionShortsInfo.setShortsName(baseEpisode.getShortPlayName());
        immersionShortsInfo.setCover(baseEpisode.getCoverId());
        immersionParams.setShortsInfo(immersionShortsInfo);
        immersionParams.setPlaySpeed(L);
        Unit unit = Unit.f60915a;
        aVar.a(this, immersionParams);
    }

    @Override // com.startshorts.androidplayer.service.miniwindow.MiniWindowService
    public void z(boolean z10) {
        Logger logger = Logger.f41511a;
        logger.h("ImmersionMiniWindow", "onResume -> fromUser(" + z10 + ") mUserPausePlay(" + this.D + ") mPlayError(" + this.E + ')');
        if (this.E) {
            this.E = false;
            this.D = false;
            MiniWindowEpisodeManager miniWindowEpisodeManager = this.f44796x;
            if (miniWindowEpisodeManager != null) {
                miniWindowEpisodeManager.o();
            }
        } else if (!z10 && this.D) {
            logger.e("ImmersionMiniWindow", "onResume failed -> mUserPausePlay is true");
        } else {
            this.D = false;
            I0();
        }
    }

    /* compiled from: ImmersionMiniWindow.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b implements f.b {
        b() {
        }

        @Override // com.startshorts.androidplayer.manager.player.feature.f.b
        public void b(String content) {
            Intrinsics.checkNotNullParameter(content, "content");
            ImmersionMiniWindow.this.l().f41087k.w(content);
        }

        @Override // com.startshorts.androidplayer.manager.player.feature.f.b
        public void a(int i10, int i11, boolean z10, boolean z11) {
        }
    }
}
