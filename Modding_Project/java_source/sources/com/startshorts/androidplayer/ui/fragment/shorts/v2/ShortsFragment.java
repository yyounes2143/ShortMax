package com.startshorts.androidplayer.ui.fragment.shorts.v2;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.ContextCompat;
import androidx.databinding.ViewStubProxy;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.airbnb.lottie.LottieAnimationView;
import com.bytedance.vodsetting.Module;
import com.hades.aar.admanager.core.AdFormat;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.scwang.smart.refresh.layout.SmartRefreshLayout;
import com.scwang.smart.refresh.layout.constant.RefreshState;
import com.ss.texturerender.TextureRenderKeys;
import com.ss.ttvideoengine.source.DirectUrlSource;
import com.ss.ttvideoengine.strategy.source.StrategySource;
import com.startshorts.androidplayer.R$color;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.adapter.shorts.ShortsAdapter;
import com.startshorts.androidplayer.bean.act.ActResource;
import com.startshorts.androidplayer.bean.act.ActResourceExtraInfo;
import com.startshorts.androidplayer.bean.ad.AdScene;
import com.startshorts.androidplayer.bean.api.ApiErrorState;
import com.startshorts.androidplayer.bean.checkin.NewbieWatchBonus;
import com.startshorts.androidplayer.bean.checkin.NewbieWatchTask;
import com.startshorts.androidplayer.bean.eventbus.DailyWatchDramaReceiveCoinEvent;
import com.startshorts.androidplayer.bean.eventbus.MainTabClickEvent;
import com.startshorts.androidplayer.bean.eventbus.MiniWindowPlayEvent;
import com.startshorts.androidplayer.bean.eventbus.RefreshAccountEvent;
import com.startshorts.androidplayer.bean.eventbus.RefreshReservationEvent;
import com.startshorts.androidplayer.bean.eventbus.RefreshShortsCollectEvent;
import com.startshorts.androidplayer.bean.eventbus.ReservationNotificationEvent;
import com.startshorts.androidplayer.bean.eventbus.ShortsPausePlayEvent;
import com.startshorts.androidplayer.bean.eventbus.ShortsPlayingEvent;
import com.startshorts.androidplayer.bean.eventbus.ShortsResumePlayEvent;
import com.startshorts.androidplayer.bean.eventbus.UpdateMainTabEvent;
import com.startshorts.androidplayer.bean.immersion.ImmersionParams;
import com.startshorts.androidplayer.bean.immersion.ImmersionShortsInfo;
import com.startshorts.androidplayer.bean.notification.ShortPlayNotification;
import com.startshorts.androidplayer.bean.player.PlayerHeaderInfo;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.shorts.PlaySpeed;
import com.startshorts.androidplayer.bean.shorts.ShortPlayContentInfo;
import com.startshorts.androidplayer.bean.shorts.ShortsEpisode;
import com.startshorts.androidplayer.bean.shorts.ShortsLabel;
import com.startshorts.androidplayer.bean.tab.MainTab;
import com.startshorts.androidplayer.databinding.FragmentShortsBinding;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.act.ActEntranceManager;
import com.startshorts.androidplayer.manager.act.ActResourceManager;
import com.startshorts.androidplayer.manager.ad.AdManager;
import com.startshorts.androidplayer.manager.configure.ad.AdSwitchConfigure;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature;
import com.startshorts.androidplayer.manager.immersion.feature.l;
import com.startshorts.androidplayer.manager.player.feature.RequestHeadersFeature;
import com.startshorts.androidplayer.manager.player.feature.f;
import com.startshorts.androidplayer.manager.shorts.core.ShortsEpisodeManager;
import com.startshorts.androidplayer.manager.shorts.core.ShortsJobsManager;
import com.startshorts.androidplayer.manager.shorts.core.ShortsViewPagerManager;
import com.startshorts.androidplayer.manager.shorts.feature.IShortsFeature;
import com.startshorts.androidplayer.manager.shorts.feature.c;
import com.startshorts.androidplayer.manager.shorts.feature.e;
import com.startshorts.androidplayer.manager.shorts.feature.f;
import com.startshorts.androidplayer.manager.shorts.feature.h;
import com.startshorts.androidplayer.manager.update.UpdateManager;
import com.startshorts.androidplayer.repo.shorts.ShortsRepo;
import com.startshorts.androidplayer.service.miniwindow.ImmersionMiniWindow;
import com.startshorts.androidplayer.ui.activity.MainActivity;
import com.startshorts.androidplayer.ui.activity.immersion.ImmersionActivity;
import com.startshorts.androidplayer.ui.activity.search.SearchActivity;
import com.startshorts.androidplayer.ui.fragment.base.PageStateFragment;
import com.startshorts.androidplayer.ui.fragment.reward.RewardsFragment;
import com.startshorts.androidplayer.ui.fragment.shorts.v2.ShortsFragment;
import com.startshorts.androidplayer.ui.fragment.tag.TagFilterFragment;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.refresh.BallPulseFooter;
import com.startshorts.androidplayer.ui.view.reward.DiscoverRewardBoxView;
import com.startshorts.androidplayer.ui.view.reward.ShortsRewardBoxView;
import com.startshorts.androidplayer.ui.view.seekbar.DiscreteSeekBar;
import com.startshorts.androidplayer.ui.view.shortsV2.ShortsTimeLayout;
import com.startshorts.androidplayer.ui.view.shortsV2.notification.ShortsNextEpisodeTipView;
import com.startshorts.androidplayer.ui.view.shortsV2.notification.ShortsNotificationType;
import com.startshorts.androidplayer.ui.view.shortsV2.shortrating.ShortRatingHandler;
import com.startshorts.androidplayer.ui.view.shortsV2.shortrating.ShortRatingLayout;
import com.startshorts.androidplayer.ui.view.task.DailyWatchDramaTaskView;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.utils.IntentUtil;
import com.startshorts.androidplayer.utils.ResourceHandler;
import com.startshorts.androidplayer.utils.TimeUtil;
import com.startshorts.androidplayer.utils.ext.FragmentExtKt;
import com.startshorts.androidplayer.viewmodel.mylist.CollectionViewModel;
import com.startshorts.androidplayer.viewmodel.mylist.a;
import com.startshorts.androidplayer.viewmodel.mylist.b;
import com.startshorts.androidplayer.viewmodel.player.PlayerViewModel;
import com.startshorts.androidplayer.viewmodel.player.a;
import com.startshorts.androidplayer.viewmodel.player.b;
import com.startshorts.androidplayer.viewmodel.player.c;
import com.startshorts.androidplayer.viewmodel.shorts.ShortsViewModel;
import com.startshorts.androidplayer.viewmodel.shorts.a;
import com.startshorts.androidplayer.viewmodel.shorts.b;
import com.vungle.ads.internal.presenter.MRAIDPresenter;
import dk.f;
import fk.i0;
import fk.u;
import fk.z;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.function.Predicate;
import jk.b0;
import jk.e0;
import jk.y;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import lf.s;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ShortsFragment.kt */
@Metadata
@SourceDebugExtension({"SMAP\nShortsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShortsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,2950:1\n2557#1:2972\n1863#2,2:2951\n360#2,7:2953\n1863#2,2:2960\n1872#2,3:2962\n1863#2,2:2965\n1872#2,3:2967\n1863#2,2:2970\n1863#2,2:2975\n1863#2,2:2977\n1#3:2973\n1#3:2974\n*S KotlinDebug\n*F\n+ 1 ShortsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment\n*L\n2548#1:2972\n635#1:2951,2\n673#1:2953,7\n2278#1:2960,2\n2304#1:2962,3\n2311#1:2965,2\n2323#1:2967,3\n2330#1:2970,2\n2797#1:2975,2\n2836#1:2977,2\n2548#1:2973\n*E\n"})
/* loaded from: classes7.dex */
public final class ShortsFragment extends PageStateFragment<FragmentShortsBinding> {
    @NotNull

    /* renamed from: f0 */
    public static final a f46802f0 = new a(null);

    /* renamed from: g0 */
    private static final int f46803g0 = jk.g.a(2.0f);

    /* renamed from: h0 */
    private static final int f46804h0 = jk.g.a(6.0f);
    private boolean A;
    private boolean B;
    private boolean C;
    private boolean D;
    private int E;
    private int F;
    private boolean G;
    @Nullable
    private DiscreteSeekBar H;
    @Nullable
    private LottieAnimationView I;
    private boolean J;
    @Nullable
    private ShortsTimeLayout L;
    @Nullable
    private ShortsViewModel Q;
    private boolean S;
    @Nullable
    private Observer<Object> T;
    @Nullable
    private Observer<Object> U;
    @Nullable
    private CollectionViewModel V;
    private boolean W;
    private boolean X;
    @Nullable
    private DailyWatchDramaTaskView Y;
    @Nullable
    private dk.f Z;
    @Nullable

    /* renamed from: a0 */
    private ShortRatingLayout f46805a0;
    @Nullable

    /* renamed from: b0 */
    private ShortRatingHandler f46806b0;
    @Nullable

    /* renamed from: c0 */
    private com.startshorts.androidplayer.manager.immersion.feature.l f46807c0;
    @Nullable

    /* renamed from: d0 */
    private MainTab.Type f46808d0;

    /* renamed from: e0 */
    private boolean f46809e0;
    @Nullable

    /* renamed from: o */
    private String f46810o;
    @Nullable

    /* renamed from: q */
    private ViewPager2 f46812q;
    @Nullable

    /* renamed from: r */
    private ShortsAdapter f46813r;
    @Nullable

    /* renamed from: s */
    private ShortsViewPagerManager f46814s;
    @Nullable

    /* renamed from: t */
    private SmartRefreshLayout f46815t;
    @Nullable

    /* renamed from: u */
    private BallPulseFooter f46816u;

    /* renamed from: v */
    private boolean f46817v;
    @Nullable

    /* renamed from: w */
    private ShortsRewardBoxView f46818w;
    @Nullable

    /* renamed from: x */
    private ShortsEpisodeManager f46819x;

    /* renamed from: z */
    private boolean f46821z;

    /* renamed from: p */
    private boolean f46811p = true;

    /* renamed from: y */
    private int f46820y = -1;
    private int K = -1;
    @NotNull
    private final List<IShortsFeature> M = CollectionsKt.t(new com.startshorts.androidplayer.manager.shorts.feature.b(), new com.startshorts.androidplayer.manager.shorts.feature.d(), V1(), new com.startshorts.androidplayer.manager.shorts.feature.g(), U1(), new com.startshorts.androidplayer.manager.shorts.feature.a(), X1(), S1());
    @NotNull
    private final ms.i N = kotlin.c.b(new Function0() { // from class: xi.n
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            HashMap n32;
            n32 = ShortsFragment.n3();
            return n32;
        }
    });
    @NotNull
    private final ms.i<ShortsJobsManager> O = kotlin.c.b(new Function0() { // from class: xi.o
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            ShortsJobsManager m32;
            m32 = ShortsFragment.m3();
            return m32;
        }
    });
    @NotNull
    private final ms.i P = kotlin.c.b(new Function0() { // from class: xi.p
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            ViewModelProvider p32;
            p32 = ShortsFragment.p3(ShortsFragment.this);
            return p32;
        }
    });
    @NotNull
    private final ms.i<PlayerViewModel> R = kotlin.c.b(new Function0() { // from class: xi.q
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            PlayerViewModel o32;
            o32 = ShortsFragment.o3(ShortsFragment.this);
            return o32;
        }
    });

    /* compiled from: ShortsFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: ShortsFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b implements c.a {
        b() {
            ShortsFragment.this = r1;
        }

        @Override // com.startshorts.androidplayer.manager.shorts.feature.c.a
        public void a() {
            dk.f fVar;
            if (ShortsFragment.this.Z1() && (fVar = ShortsFragment.this.Z) != null) {
                fVar.i();
            }
        }

        @Override // com.startshorts.androidplayer.manager.shorts.feature.c.a
        public void b() {
            if (!ShortsFragment.this.f46809e0) {
                ShortsFragment.this.S3(vi.e.f68955a.a());
            }
        }

        @Override // com.startshorts.androidplayer.manager.shorts.feature.c.a
        public void c() {
            ShortsFragment.this.t3();
        }

        @Override // com.startshorts.androidplayer.manager.shorts.feature.c.a
        public void d() {
            ShortsEpisode e22 = ShortsFragment.this.e2();
            if (e22 != null && e22.isLocked()) {
                ShortsFragment.this.t3();
            }
        }

        @Override // com.startshorts.androidplayer.manager.shorts.feature.c.a
        public void onRelease() {
            dk.f fVar = ShortsFragment.this.Z;
            if (fVar != null) {
                fVar.i();
            }
        }
    }

    /* compiled from: ShortsFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d implements e.b {
        d() {
            ShortsFragment.this = r1;
        }

        @Override // com.startshorts.androidplayer.manager.shorts.feature.e.b
        public void a() {
            ShortsFragment.this.u2();
        }

        @Override // com.startshorts.androidplayer.manager.shorts.feature.e.b
        public void b(ShortsEpisode episode) {
            Intrinsics.checkNotNullParameter(episode, "episode");
            BaseEpisode m10 = ShortsRepo.m(ShortsRepo.f44606a, episode.getId(), false, 2, null);
            if (m10 != null) {
                ShortsFragment.this.H1(m10);
            }
        }

        @Override // com.startshorts.androidplayer.manager.shorts.feature.e.b
        public void c(ShortsEpisode episode) {
            Intrinsics.checkNotNullParameter(episode, "episode");
            ShortsFragment.this.L1(episode);
        }
    }

    /* compiled from: ShortsFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class e implements f.b {
        e() {
            ShortsFragment.this = r1;
        }

        @Override // com.startshorts.androidplayer.manager.shorts.feature.f.b
        public void a() {
            ShortsFragment.this.x2();
        }

        @Override // com.startshorts.androidplayer.manager.shorts.feature.f.b
        public void b(boolean z10, PlaySpeed playSpeed, PlaySpeed newPlaySpeed, boolean z11) {
            Intrinsics.checkNotNullParameter(newPlaySpeed, "newPlaySpeed");
            ShortsEpisodeManager shortsEpisodeManager = ShortsFragment.this.f46819x;
            if (shortsEpisodeManager != null) {
                shortsEpisodeManager.m(newPlaySpeed);
            }
            if (!z10) {
                ((PlayerViewModel) ShortsFragment.this.R.getValue()).M(new b.k(newPlaySpeed.getValue()));
            }
            if (z11 && ShortsFragment.this.B) {
                ShortsFragment.this.F3();
            }
        }

        @Override // com.startshorts.androidplayer.manager.shorts.feature.f.b
        public void c(PlaySpeed playSpeed) {
            Intrinsics.checkNotNullParameter(playSpeed, "playSpeed");
            ShortsFragment.this.X3(playSpeed);
        }
    }

    /* compiled from: ShortsFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class f implements h.a {
        f() {
            ShortsFragment.this = r1;
        }

        @Override // com.startshorts.androidplayer.manager.shorts.feature.h.a
        public void a() {
            ShortRatingHandler shortRatingHandler = ShortsFragment.this.f46806b0;
            if (shortRatingHandler != null) {
                shortRatingHandler.i();
            }
            ShortsFragment.this.a4();
        }

        @Override // com.startshorts.androidplayer.manager.shorts.feature.h.a
        public void onRelease() {
            ShortRatingHandler shortRatingHandler = ShortsFragment.this.f46806b0;
            if (shortRatingHandler != null) {
                shortRatingHandler.h();
            }
        }
    }

    /* compiled from: ShortsFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class h implements ShortsEpisodeManager.b {
        h() {
            ShortsFragment.this = r1;
        }

        @Override // com.startshorts.androidplayer.manager.shorts.core.ShortsEpisodeManager.b
        public void a(int i10, ShortsEpisode episode) {
            ShortsViewModel shortsViewModel;
            Intrinsics.checkNotNullParameter(episode, "episode");
            ShortsFragment shortsFragment = ShortsFragment.this;
            shortsFragment.r("onEpisodeEnablePlay -> isAd(" + episode.isAd() + ") shortPlayId(" + episode.getShortPlayId() + ") startPosition(" + i10 + ')');
            ShortsFragment shortsFragment2 = ShortsFragment.this;
            IShortsFeature.MessageType messageType = IShortsFeature.MessageType.PLAY_EPISODE_START;
            HashMap hashMap = new HashMap();
            hashMap.put("shorts_job_manager", ShortsFragment.this.O.getValue());
            hashMap.put("episode", episode);
            Unit unit = Unit.f60915a;
            shortsFragment2.K3(new com.startshorts.androidplayer.manager.shorts.feature.i(messageType, hashMap));
            if (!episode.isAd()) {
                ShortsFragment.this.w3(i10, episode);
                ShortsFragment.this.b4();
                ShortsFragment.this.v2();
                ShortsEpisode e22 = ShortsFragment.this.e2();
                if (e22 != null && (shortsViewModel = ShortsFragment.this.Q) != null) {
                    shortsViewModel.a0(new a.c(e22));
                }
                ShortsFragment.this.M2();
                return;
            }
            if (episode.isProgrammaticAd()) {
                EventManager eventManager = EventManager.f42463a;
                Bundle bundle = new Bundle();
                bundle.putString("ad_placement", "shorts_native");
                bundle.putString("type", "3");
                EventManager.s0(eventManager, "ad_placement_show", bundle, 0L, 4, null);
                ShortsFragment shortsFragment3 = ShortsFragment.this;
                shortsFragment3.x3(shortsFragment3.f2());
            } else if (!episode.isBrandPicAd()) {
                ShortsFragment.this.w3(i10, episode);
                ShortsFragment.this.b4();
            }
            ShortsFragment.this.z2();
        }

        @Override // com.startshorts.androidplayer.manager.shorts.core.ShortsEpisodeManager.b
        public void b(ShortsEpisode shortsEpisode, ShortsEpisode newEpisode) {
            Intrinsics.checkNotNullParameter(newEpisode, "newEpisode");
            ud.b.f68412a.a(TimeUtil.f48175a.f(jk.f.a(new Date())));
            ShortsFragment shortsFragment = ShortsFragment.this;
            shortsFragment.G3(shortsFragment.f2(), newEpisode);
        }

        @Override // com.startshorts.androidplayer.manager.shorts.core.ShortsEpisodeManager.b
        public void c(ShortsEpisode episode, ShortsEpisodeManager.PlayFailedReason reason, boolean z10, boolean z11) {
            Intrinsics.checkNotNullParameter(episode, "episode");
            Intrinsics.checkNotNullParameter(reason, "reason");
            if (reason == ShortsEpisodeManager.PlayFailedReason.REASON_INVALID_URL) {
                ShortsFragment.this.C2();
                ShortsFragment.this.W3();
                ShortsFragment.this.w(R$string.common_play_failed);
                ShortsFragment.this.D = true;
            } else if (reason == ShortsEpisodeManager.PlayFailedReason.REASON_URL_EXPIRED) {
                ShortsFragment.this.P1();
            }
        }

        @Override // com.startshorts.androidplayer.manager.shorts.core.ShortsEpisodeManager.b
        public void d(int i10, ShortsEpisode lastEpisode) {
            int i11;
            Intrinsics.checkNotNullParameter(lastEpisode, "lastEpisode");
            ShortsEpisodeManager shortsEpisodeManager = ShortsFragment.this.f46819x;
            if (shortsEpisodeManager != null) {
                i11 = shortsEpisodeManager.e();
            } else {
                i11 = 0;
            }
            ShortsFragment shortsFragment = ShortsFragment.this;
            IShortsFeature.MessageType messageType = IShortsFeature.MessageType.PLAY_EPISODE_END;
            HashMap hashMap = new HashMap();
            hashMap.put("last_episode", lastEpisode);
            hashMap.put("real_watch_time", Integer.valueOf(i11));
            Unit unit = Unit.f60915a;
            shortsFragment.K3(new com.startshorts.androidplayer.manager.shorts.feature.i(messageType, hashMap));
            ShortsFragment.this.R1(i10);
        }
    }

    /* compiled from: ShortsFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class i implements vc.g {
        i() {
            ShortsFragment.this = r1;
        }

        @Override // vc.f
        public void b(sc.f refreshLayout) {
            Intrinsics.checkNotNullParameter(refreshLayout, "refreshLayout");
        }

        @Override // vc.e
        public void c(sc.f refreshLayout) {
            Intrinsics.checkNotNullParameter(refreshLayout, "refreshLayout");
            ShortsViewPagerManager shortsViewPagerManager = ShortsFragment.this.f46814s;
            if (shortsViewPagerManager != null) {
                shortsViewPagerManager.r(true);
            }
        }
    }

    /* compiled from: ShortsFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class j implements DiscoverRewardBoxView.b {

        /* renamed from: a */
        final /* synthetic */ ShortsRewardBoxView f46836a;

        j(ShortsRewardBoxView shortsRewardBoxView) {
            this.f46836a = shortsRewardBoxView;
        }

        @Override // com.startshorts.androidplayer.ui.view.reward.DiscoverRewardBoxView.b
        public void a() {
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            bundle.putString("scene", "shorts");
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "reward_click", bundle, 0L, 4, null);
            Bundle bundle2 = new Bundle();
            bundle2.putString("scene", "shorts");
            EventManager.s0(eventManager, "reward_show", bundle2, 0L, 4, null);
            RewardsFragment.a aVar = RewardsFragment.Y;
            Context context = this.f46836a.getContext();
            Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
            RewardsFragment.a.d(aVar, context, "shorts", true, null, null, 24, null);
        }
    }

    /* compiled from: ShortsFragment.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nShortsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShortsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$initSeekbar$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,2950:1\n1863#2,2:2951\n*S KotlinDebug\n*F\n+ 1 ShortsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$initSeekbar$1\n*L\n1667#1:2951,2\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class k implements DiscreteSeekBar.b {
        k() {
            ShortsFragment.this = r1;
        }

        @Override // com.startshorts.androidplayer.ui.view.seekbar.DiscreteSeekBar.b
        public void a(int i10, DiscreteSeekBar seekBar, MotionEvent motionEvent) {
            Intrinsics.checkNotNullParameter(seekBar, "seekBar");
            ShortsFragment shortsFragment = ShortsFragment.this;
            shortsFragment.r("onClickTracking -> from(" + i10 + ')');
            if (i10 != 2) {
                ShortsEpisode e22 = ShortsFragment.this.e2();
                if (e22 == null) {
                    return;
                }
                EventManager eventManager = EventManager.f42463a;
                Bundle C = eventManager.C(e22);
                C.putString("scene", "shorts");
                C.putString("from", "below");
                if (!TextUtils.isEmpty(e22.getUpack())) {
                    C.putString("upack", e22.getUpack());
                }
                Unit unit = Unit.f60915a;
                EventManager.s0(eventManager, "short_menu_click", C, 0L, 4, null);
                Bundle C2 = eventManager.C(e22);
                C2.putString("scene", "shorts");
                C2.putString("from", "below");
                if (!TextUtils.isEmpty(e22.getUpack())) {
                    C2.putString("upack", e22.getUpack());
                }
                EventManager.s0(eventManager, "shorts_feed_enter_immersion", C2, 0L, 4, null);
                ShortsFragment.U3(ShortsFragment.this, 2, null, e22, true, 2, null);
            } else if (motionEvent != null) {
                for (Number number : CollectionsKt.q(0, 1)) {
                    int intValue = number.intValue();
                    au.c d10 = au.c.d();
                    MotionEvent obtain = MotionEvent.obtain(motionEvent.getDownTime(), motionEvent.getEventTime(), intValue, motionEvent.getX(), motionEvent.getY(), motionEvent.getMetaState());
                    Intrinsics.checkNotNullExpressionValue(obtain, "obtain(...)");
                    d10.l(new MainTabClickEvent(obtain));
                }
            }
        }

        @Override // com.startshorts.androidplayer.ui.view.seekbar.DiscreteSeekBar.b
        public void b(DiscreteSeekBar seekBar, int i10, boolean z10) {
            Intrinsics.checkNotNullParameter(seekBar, "seekBar");
            if (z10) {
                ShortsFragment.this.Y3(seekBar.getProgress(), seekBar.getMax());
            }
        }

        @Override // com.startshorts.androidplayer.ui.view.seekbar.DiscreteSeekBar.b
        public void c(DiscreteSeekBar seekBar) {
            Intrinsics.checkNotNullParameter(seekBar, "seekBar");
            ShortsFragment.this.r("onLongPressTracking");
            ShortsFragment.this.K = seekBar.getProgress();
            ShortsFragment.this.Y3(seekBar.getProgress(), seekBar.getMax());
            ShortsAdapter shortsAdapter = ShortsFragment.this.f46813r;
            if (shortsAdapter != null) {
                shortsAdapter.S(ShortsFragment.this.f2());
            }
        }

        @Override // com.startshorts.androidplayer.ui.view.seekbar.DiscreteSeekBar.b
        public void d(DiscreteSeekBar seekBar) {
            Intrinsics.checkNotNullParameter(seekBar, "seekBar");
            ShortsFragment.this.r("onStartTrackingTouch");
            ShortsFragment shortsFragment = ShortsFragment.this;
            IShortsFeature.MessageType messageType = IShortsFeature.MessageType.SEEKBAR_START_TOUCH;
            HashMap hashMap = new HashMap();
            ShortsFragment shortsFragment2 = ShortsFragment.this;
            hashMap.put("seekbar", seekBar);
            hashMap.put("episode", shortsFragment2.e2());
            Unit unit = Unit.f60915a;
            shortsFragment.K3(new com.startshorts.androidplayer.manager.shorts.feature.i(messageType, hashMap));
            ShortsFragment.this.K = seekBar.getProgress();
            ShortsFragment.this.O3();
            ShortsFragment.this.Y3(seekBar.getProgress(), seekBar.getMax());
            ShortsFragment.this.p4(false);
            ShortsAdapter shortsAdapter = ShortsFragment.this.f46813r;
            if (shortsAdapter != null) {
                shortsAdapter.S(ShortsFragment.this.f2());
            }
        }

        @Override // com.startshorts.androidplayer.ui.view.seekbar.DiscreteSeekBar.b
        public void e(DiscreteSeekBar seekBar) {
            Intrinsics.checkNotNullParameter(seekBar, "seekBar");
            ShortsFragment.this.r("onStopTrackingTouch");
            ShortsFragment shortsFragment = ShortsFragment.this;
            IShortsFeature.MessageType messageType = IShortsFeature.MessageType.SEEKBAR_STOP_TOUCH;
            HashMap hashMap = new HashMap();
            ShortsFragment shortsFragment2 = ShortsFragment.this;
            hashMap.put("seekbar", seekBar);
            hashMap.put("episode", shortsFragment2.e2());
            Unit unit = Unit.f60915a;
            shortsFragment.K3(new com.startshorts.androidplayer.manager.shorts.feature.i(messageType, hashMap));
            ShortsFragment.this.N3();
            ShortsFragment.this.p4(true);
            ShortsFragment.this.y2();
            ShortsAdapter shortsAdapter = ShortsFragment.this.f46813r;
            if (shortsAdapter != null) {
                shortsAdapter.g0(ShortsFragment.this.f2());
            }
            if (ShortsFragment.this.K != -1) {
                int progress = seekBar.getProgress();
                if (Math.abs(ShortsFragment.this.K - progress) >= 1000) {
                    ShortsFragment.this.H3(progress);
                    if (ShortsFragment.this.B) {
                        ShortsFragment.this.r("auto resumePlay -> stop tracking touch");
                        ShortsFragment.this.F3();
                    }
                }
            }
            ShortsFragment.this.K = -1;
        }
    }

    /* compiled from: ShortsFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class n implements RequestHeadersFeature.a {
        n() {
            ShortsFragment.this = r1;
        }

        @Override // com.startshorts.androidplayer.manager.player.feature.RequestHeadersFeature.a
        public void a(PlayerHeaderInfo info) {
            Intrinsics.checkNotNullParameter(info, "info");
            ShortsFragment shortsFragment = ShortsFragment.this;
            IShortsFeature.MessageType messageType = IShortsFeature.MessageType.PLAYER_ERROR_HEADERS;
            HashMap hashMap = new HashMap();
            ShortsFragment shortsFragment2 = ShortsFragment.this;
            hashMap.put("error_header_info", info);
            hashMap.put("episode", shortsFragment2.e2());
            Unit unit = Unit.f60915a;
            shortsFragment.K3(new com.startshorts.androidplayer.manager.shorts.feature.i(messageType, hashMap));
        }
    }

    /* compiled from: ShortsFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class o implements Observer, FunctionAdapter {

        /* renamed from: a */
        private final /* synthetic */ Function1 f46846a;

        o(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f46846a = function;
        }

        public final boolean equals(@Nullable Object obj) {
            if (!(obj instanceof Observer) || !(obj instanceof FunctionAdapter)) {
                return false;
            }
            return Intrinsics.areEqual(getFunctionDelegate(), ((FunctionAdapter) obj).getFunctionDelegate());
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        @NotNull
        public final ms.f<?> getFunctionDelegate() {
            return this.f46846a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f46846a.invoke(obj);
        }
    }

    /* compiled from: ShortsFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class p implements DailyWatchDramaTaskView.b {
        p() {
            ShortsFragment.this = r1;
        }

        @Override // com.startshorts.androidplayer.ui.view.task.DailyWatchDramaTaskView.b
        public void a() {
            DailyWatchDramaTaskView dailyWatchDramaTaskView = ShortsFragment.this.Y;
            if (dailyWatchDramaTaskView != null) {
                dailyWatchDramaTaskView.V();
            }
            EventManager.e0(EventManager.f42463a, "shorts", "reward_floating_window", ShortsFragment.this.e2(), "close", null, 16, null);
        }

        @Override // com.startshorts.androidplayer.ui.view.task.DailyWatchDramaTaskView.b
        public void b() {
            EventManager eventManager = EventManager.f42463a;
            EventManager.e0(eventManager, "shorts", "reward_floating_window", ShortsFragment.this.e2(), MRAIDPresenter.OPEN, null, 16, null);
            Bundle bundle = new Bundle();
            bundle.putString("scene", "shorts_new");
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "reward_show", bundle, 0L, 4, null);
            Bundle bundle2 = new Bundle();
            bundle2.putString("scene", "shorts_new");
            EventManager.s0(eventManager, "reward_click", bundle2, 0L, 4, null);
            RewardsFragment.a aVar = RewardsFragment.Y;
            FragmentActivity requireActivity = ShortsFragment.this.requireActivity();
            Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
            RewardsFragment.a.d(aVar, requireActivity, "shorts_new", true, Boolean.TRUE, null, 16, null);
        }

        @Override // com.startshorts.androidplayer.ui.view.task.DailyWatchDramaTaskView.b
        public void onClose() {
            ShortsFragment.this.f46809e0 = true;
            DailyWatchDramaTaskView dailyWatchDramaTaskView = ShortsFragment.this.Y;
            if (dailyWatchDramaTaskView != null) {
                dailyWatchDramaTaskView.setVisibility(8);
            }
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            bundle.putString("scene", "shorts");
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "reward_floating_window_close", bundle, 0L, 4, null);
        }
    }

    /* compiled from: ShortsFragment.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nShortsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShortsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$showDailyWatchDramaTaskCoinView$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,2950:1\n1#2:2951\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class q implements f.b {

        /* renamed from: b */
        final /* synthetic */ NewbieWatchTask f46849b;

        q(NewbieWatchTask newbieWatchTask) {
            ShortsFragment.this = r1;
            this.f46849b = newbieWatchTask;
        }

        @Override // dk.f.b
        public void a(NewbieWatchBonus newbieWatchBonus) {
            Intrinsics.checkNotNullParameter(newbieWatchBonus, "newbieWatchBonus");
        }

        @Override // dk.f.b
        public void b() {
            Object obj;
            Iterator<T> it = vi.e.f68955a.a().getList().iterator();
            while (true) {
                if (it.hasNext()) {
                    obj = it.next();
                    if (((NewbieWatchBonus) obj).getPayTime() * 1000 > ud.b.f68412a.X1()) {
                        break;
                    }
                } else {
                    obj = null;
                    break;
                }
            }
            NewbieWatchBonus newbieWatchBonus = (NewbieWatchBonus) obj;
            if (newbieWatchBonus != null) {
                dk.f fVar = ShortsFragment.this.Z;
                if (fVar != null) {
                    fVar.i();
                }
                ShortsFragment.this.c4(this.f46849b, newbieWatchBonus);
                return;
            }
            DailyWatchDramaTaskView dailyWatchDramaTaskView = ShortsFragment.this.Y;
            if (dailyWatchDramaTaskView != null) {
                dailyWatchDramaTaskView.U(vi.e.f68955a.b());
            }
        }
    }

    /* compiled from: ShortsFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class r implements ShortRatingHandler.b {
        r() {
            ShortsFragment.this = r1;
        }

        public static final void c(ShortsFragment shortsFragment, ShortPlayContentInfo shortPlayContentInfo) {
            ShortsEpisode e22;
            int shortPlayId;
            ShortRatingHandler shortRatingHandler;
            if (!shortsFragment.n() && (e22 = shortsFragment.e2()) != null) {
                if (e22.isTrailer()) {
                    shortPlayId = e22.getBindShortPlayId();
                } else {
                    shortPlayId = e22.getShortPlayId();
                }
                Integer shortPlayId2 = shortPlayContentInfo.getShortPlayId();
                if (shortPlayId2 != null && shortPlayId == shortPlayId2.intValue() && (shortRatingHandler = shortsFragment.f46806b0) != null) {
                    shortRatingHandler.j(shortPlayContentInfo);
                }
            }
        }

        @Override // com.startshorts.androidplayer.ui.view.shortsV2.shortrating.ShortRatingHandler.b
        public void a(final ShortPlayContentInfo shortPlayContentInfo) {
            Intrinsics.checkNotNullParameter(shortPlayContentInfo, "shortPlayContentInfo");
            FragmentActivity requireActivity = ShortsFragment.this.requireActivity();
            final ShortsFragment shortsFragment = ShortsFragment.this;
            requireActivity.runOnUiThread(new Runnable() { // from class: xi.t
                @Override // java.lang.Runnable
                public final void run() {
                    ShortsFragment.r.c(ShortsFragment.this, shortPlayContentInfo);
                }
            });
        }
    }

    public final void A2(int i10) {
        o4(i10);
        a2();
    }

    private final void A3(int i10) {
        ShortsAdapter shortsAdapter = this.f46813r;
        if (shortsAdapter != null) {
            shortsAdapter.b0(i10);
        }
    }

    private final void B2() {
        ShortRatingHandler shortRatingHandler = this.f46806b0;
        if (shortRatingHandler != null) {
            shortRatingHandler.f();
        }
    }

    private final void B3(ShortsNotificationType shortsNotificationType, boolean z10, yd.a aVar) {
        ShortsAdapter shortsAdapter = this.f46813r;
        if (shortsAdapter != null) {
            shortsAdapter.c0(f2(), shortsNotificationType, z10, aVar);
        }
    }

    public final void C2() {
        D2(f2());
    }

    static /* synthetic */ void C3(ShortsFragment shortsFragment, ShortsNotificationType shortsNotificationType, boolean z10, yd.a aVar, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = true;
        }
        if ((i10 & 4) != 0) {
            aVar = null;
        }
        shortsFragment.B3(shortsNotificationType, z10, aVar);
    }

    private final void D2(int i10) {
        ShortsAdapter shortsAdapter = this.f46813r;
        if (shortsAdapter != null) {
            shortsAdapter.R(i10);
        }
    }

    private final void D3() {
        ShortsEpisodeManager shortsEpisodeManager;
        U2();
        ViewPager2 viewPager2 = this.f46812q;
        if (viewPager2 != null) {
            viewPager2.setAdapter(this.f46813r);
        }
        ShortsAdapter shortsAdapter = this.f46813r;
        if (shortsAdapter != null && (shortsEpisodeManager = this.f46819x) != null) {
            shortsEpisodeManager.r(shortsAdapter);
        }
    }

    private final void E2() {
        CollectionViewModel collectionViewModel = (CollectionViewModel) k2().get(CollectionViewModel.class);
        collectionViewModel.L().observe(this, new o(new Function1() { // from class: xi.m
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit F2;
                F2 = ShortsFragment.F2(ShortsFragment.this, (com.startshorts.androidplayer.viewmodel.mylist.b) obj);
                return F2;
            }
        }));
        this.V = collectionViewModel;
    }

    private final void E3() {
        ViewGroup M;
        ShortsEpisode e22 = e2();
        if (e22 != null && e22.isProgrammaticAd()) {
            r("resumeNativeAd");
            ShortsAdapter shortsAdapter = this.f46813r;
            if (shortsAdapter != null && (M = shortsAdapter.M(f2())) != null) {
                M.dispatchWindowVisibilityChanged(0);
            }
        }
    }

    public static final Unit F2(ShortsFragment shortsFragment, com.startshorts.androidplayer.viewmodel.mylist.b bVar) {
        if (bVar instanceof b.a) {
            mk.a aVar = mk.a.f62518a;
            FragmentManager childFragmentManager = shortsFragment.getChildFragmentManager();
            Intrinsics.checkNotNullExpressionValue(childFragmentManager, "getChildFragmentManager(...)");
            if (mk.a.g(aVar, childFragmentManager, "favorite_click", false, new Function1() { // from class: xi.r
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit G2;
                    G2 = ShortsFragment.G2(ShortsFragment.this, ((Boolean) obj).booleanValue());
                    return G2;
                }
            }, 4, null)) {
                shortsFragment.X = true;
                shortsFragment.v3();
            }
        }
        return Unit.f60915a;
    }

    public final void F3() {
        String str;
        if (!this.S) {
            g("resumePlay failed -> mPlayerVMObserved is false");
            return;
        }
        ShortsEpisode e22 = e2();
        if (e22 != null) {
            str = e22.getVideoUrl();
        } else {
            str = null;
        }
        if (str != null && str.length() != 0) {
            r("resumePlay");
            this.R.getValue().M(b.g.f48941a);
        }
    }

    public static final Unit G2(ShortsFragment shortsFragment, boolean z10) {
        shortsFragment.X = false;
        shortsFragment.F3();
        return Unit.f60915a;
    }

    public final void G3(int i10, ShortsEpisode shortsEpisode) {
        Logger logger = Logger.f41511a;
        logger.h("Feed_Check_New_Test", "saveMaxWatchedPosition position -> " + i10 + " mLastMaxWatchedPosition -> " + this.f46820y);
        if (i10 > this.f46820y && shortsEpisode.fromRecommendPool()) {
            this.f46820y = i10;
            if (shortsEpisode.getIndex() == 9) {
                logger.h("Feed_Check_New_Test", "saveMaxWatchedPosition resetPageNumber true pageNumber -> " + (shortsEpisode.getPageNumber() + 1) + " lastWatchIndex -> -1");
                ShortsRepo.f44606a.u(shortsEpisode.getPageNumber() + 1, -1);
                return;
            }
            logger.h("Feed_Check_New_Test", "saveMaxWatchedPosition resetPageNumber false pageNumber -> " + shortsEpisode.getPageNumber() + " lastWatchIndex -> " + shortsEpisode.getIndex());
            ShortsRepo.f44606a.u(shortsEpisode.getPageNumber(), shortsEpisode.getIndex());
        }
    }

    public final void H1(BaseEpisode baseEpisode) {
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        ShortsNextEpisodeTipView shortsNextEpisodeTipView = new ShortsNextEpisodeTipView(requireContext);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        z zVar = z.f51786a;
        layoutParams.topMargin = zVar.b();
        layoutParams.setMarginStart(zVar.b());
        Unit unit = Unit.f60915a;
        J1(this, shortsNextEpisodeTipView, layoutParams, null, 4, null);
        ShortsNotificationType shortsNotificationType = ShortsNotificationType.NEXT_EPISODE_PREPARED;
        String string = getString(R$string.shorts_fragment_next_episode_tip, baseEpisode.getCheckedShortPlayName());
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        shortsNextEpisodeTipView.d(shortsNotificationType, string);
    }

    private final void H2() {
        if (this.f46819x != null) {
            return;
        }
        ShortsViewPagerManager shortsViewPagerManager = this.f46814s;
        Intrinsics.checkNotNull(shortsViewPagerManager);
        ShortsAdapter shortsAdapter = this.f46813r;
        Intrinsics.checkNotNull(shortsAdapter);
        ShortsEpisodeManager shortsEpisodeManager = new ShortsEpisodeManager(shortsViewPagerManager, shortsAdapter, new h());
        this.f46819x = shortsEpisodeManager;
        String str = this.f46810o;
        if (str == null) {
            str = "shorts";
        }
        shortsEpisodeManager.s(str);
        this.f46810o = null;
    }

    public final void H3(int i10) {
        String str;
        if (!this.S) {
            return;
        }
        ShortsEpisode e22 = e2();
        if (e22 != null) {
            str = e22.getVideoUrl();
        } else {
            str = null;
        }
        if (str != null && str.length() != 0) {
            r("seekTo -> " + i10 + "ms");
            this.R.getValue().M(new b.h(i10));
        }
    }

    private final void I1(ak.a aVar, LinearLayout.LayoutParams layoutParams, yd.a aVar2) {
        ShortsAdapter shortsAdapter = this.f46813r;
        if (shortsAdapter != null) {
            shortsAdapter.K(f2(), aVar, layoutParams, aVar2);
        }
    }

    private final void I2() {
        if (this.S) {
            return;
        }
        r("initPlayerVM");
        this.S = true;
        Observer<? super com.startshorts.androidplayer.viewmodel.player.c> observer = new Observer() { // from class: xi.f
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                ShortsFragment.J2(ShortsFragment.this, obj);
            }
        };
        this.T = observer;
        r("add mPlayerState observer");
        this.R.getValue().H().observeForever(observer);
        Observer<? super com.startshorts.androidplayer.viewmodel.player.a> observer2 = new Observer() { // from class: xi.g
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                ShortsFragment.K2(ShortsFragment.this, obj);
            }
        };
        this.U = observer2;
        r("add mPlaybackTimeState observer");
        this.R.getValue().G().observeForever(observer2);
        this.R.getValue().M(new b.i("ShortsFragment"));
    }

    private final void I3() {
        DiscreteSeekBar discreteSeekBar;
        if (d3() && (discreteSeekBar = this.H) != null) {
            discreteSeekBar.g(5);
            Unit unit = Unit.f60915a;
            r("seekbarFakeActionUp");
        }
    }

    static /* synthetic */ void J1(ShortsFragment shortsFragment, ak.a aVar, LinearLayout.LayoutParams layoutParams, yd.a aVar2, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            aVar2 = null;
        }
        shortsFragment.I1(aVar, layoutParams, aVar2);
    }

    public static final void J2(ShortsFragment shortsFragment, Object it) {
        ShortsEpisode e22;
        ShortsEpisodeManager shortsEpisodeManager;
        Intrinsics.checkNotNullParameter(it, "it");
        if (it instanceof c.g) {
            shortsFragment.r("PlayerState.OnPrepared -> mPaused(" + shortsFragment.n() + ") mPausedForDialog(" + shortsFragment.X + ") RecommendShortsDialog(" + com.startshorts.androidplayer.manager.dialog.home.h.f42434a.a() + ')');
            shortsFragment.A = true;
            if (shortsFragment.Q3()) {
                shortsFragment.r("OnPrepared:shouldPausePlay");
                shortsFragment.v3();
                return;
            }
            IShortsFeature.MessageType messageType = IShortsFeature.MessageType.PLAYER_PREPARED;
            HashMap hashMap = new HashMap();
            hashMap.put("episode", shortsFragment.e2());
            Unit unit = Unit.f60915a;
            shortsFragment.K3(new com.startshorts.androidplayer.manager.shorts.feature.i(messageType, hashMap));
        } else if (it instanceof c.j) {
            c.j jVar = (c.j) it;
            shortsFragment.E = jVar.b();
            shortsFragment.F = jVar.a();
            shortsFragment.r("PlayerState.OnTimeInfo -> isViewPagerDragging(" + shortsFragment.j3() + ") mTotalTime(" + shortsFragment.E + ") mStartTime(" + shortsFragment.F + ')');
            if (!shortsFragment.j3()) {
                shortsFragment.Z3();
            } else {
                shortsFragment.A2(4);
            }
        } else if (it instanceof c.h) {
            shortsFragment.r("PlayerState.OnRenderStart -> mPaused(" + shortsFragment.n() + ") mPausedForDialog(" + shortsFragment.X + ')');
            shortsFragment.f46821z = true;
            shortsFragment.C2();
            t2(shortsFragment, 8, false, 2, null);
            shortsFragment.v2();
            shortsFragment.P3();
            IShortsFeature.MessageType messageType2 = IShortsFeature.MessageType.PLAYER_RENDER_START;
            HashMap hashMap2 = new HashMap();
            hashMap2.put("episode", shortsFragment.e2());
            hashMap2.put(HiAnalyticsConstant.BI_KEY_COST_TIME, Long.valueOf(((c.h) it).a()));
            Unit unit2 = Unit.f60915a;
            shortsFragment.K3(new com.startshorts.androidplayer.manager.shorts.feature.i(messageType2, hashMap2));
        } else if (it instanceof c.f) {
            shortsFragment.r("PlayerState.OnPlaying -> mPaused(" + shortsFragment.n() + ") mPausedForDialog(" + shortsFragment.X + ") RecommendShortsDialog(" + com.startshorts.androidplayer.manager.dialog.home.h.f42434a.a() + ')');
            if (shortsFragment.Q3()) {
                shortsFragment.r("OnPlaying:shouldPausePlay");
                shortsFragment.v3();
                return;
            }
            shortsFragment.C = false;
            shortsFragment.B = false;
            shortsFragment.D = false;
            shortsFragment.C2();
            t2(shortsFragment, 8, false, 2, null);
            shortsFragment.v2();
            au.c.d().l(new ShortsPlayingEvent());
            if (shortsFragment.G) {
                shortsFragment.G = false;
                shortsFragment.k4();
            }
            IImmersionFeature.MessageType messageType3 = IImmersionFeature.MessageType.PLAYER_PLAYING;
            HashMap hashMap3 = new HashMap();
            hashMap3.put("activity", shortsFragment.requireActivity());
            hashMap3.put("episode", shortsFragment.e2());
            Unit unit3 = Unit.f60915a;
            shortsFragment.M3(new com.startshorts.androidplayer.manager.immersion.feature.k(messageType3, hashMap3));
            IShortsFeature.MessageType messageType4 = IShortsFeature.MessageType.PLAYER_PLAYING;
            HashMap hashMap4 = new HashMap();
            hashMap4.put("episode", shortsFragment.e2());
            shortsFragment.K3(new com.startshorts.androidplayer.manager.shorts.feature.i(messageType4, hashMap4));
        } else if (it instanceof c.e) {
            shortsFragment.r("PlayerState.OnPaused");
            shortsFragment.B = true;
            shortsFragment.C2();
            if (shortsFragment.X2()) {
                shortsFragment.m4(1.0f);
                t2(shortsFragment, 4, false, 2, null);
            }
            shortsFragment.W3();
            IImmersionFeature.MessageType messageType5 = IImmersionFeature.MessageType.PLAYER_PAUSED;
            HashMap hashMap5 = new HashMap();
            hashMap5.put("paused_by_user", Boolean.valueOf(shortsFragment.C));
            Unit unit4 = Unit.f60915a;
            shortsFragment.M3(new com.startshorts.androidplayer.manager.immersion.feature.k(messageType5, hashMap5));
            shortsFragment.J3(IShortsFeature.MessageType.PLAYER_PAUSED);
        } else if (it instanceof c.b) {
            IShortsFeature.MessageType messageType6 = IShortsFeature.MessageType.PLAYER_BUFFER_START;
            HashMap hashMap6 = new HashMap();
            hashMap6.put("episode", shortsFragment.e2());
            c.b bVar = (c.b) it;
            hashMap6.put(Module.ResponseKey.Code, Integer.valueOf(bVar.c()));
            hashMap6.put("after_first_frame", Integer.valueOf(bVar.b()));
            hashMap6.put(TextureRenderKeys.KEY_IS_ACTION, Integer.valueOf(bVar.a()));
            Unit unit5 = Unit.f60915a;
            shortsFragment.K3(new com.startshorts.androidplayer.manager.shorts.feature.i(messageType6, hashMap6));
            if (shortsFragment.f46821z) {
                if (!shortsFragment.j3() && !shortsFragment.d3()) {
                    shortsFragment.R3();
                } else {
                    shortsFragment.s2(4, true);
                }
                shortsFragment.m4(0.5f);
            } else {
                shortsFragment.b4();
                t2(shortsFragment, 8, false, 2, null);
            }
            shortsFragment.v2();
        } else if (it instanceof c.a) {
            IShortsFeature.MessageType messageType7 = IShortsFeature.MessageType.PLAYER_BUFFER_END;
            HashMap hashMap7 = new HashMap();
            hashMap7.put("episode", shortsFragment.e2());
            Unit unit6 = Unit.f60915a;
            shortsFragment.K3(new com.startshorts.androidplayer.manager.shorts.feature.i(messageType7, hashMap7));
            shortsFragment.C2();
            t2(shortsFragment, 8, false, 2, null);
            shortsFragment.m4(1.0f);
        } else if (it instanceof c.C0672c) {
            shortsFragment.r("PlayerState.OnCompleted");
            IShortsFeature.MessageType messageType8 = IShortsFeature.MessageType.PLAYER_COMPLETE;
            HashMap hashMap8 = new HashMap();
            hashMap8.put("episode", shortsFragment.e2());
            Unit unit7 = Unit.f60915a;
            shortsFragment.K3(new com.startshorts.androidplayer.manager.shorts.feature.i(messageType8, hashMap8));
            c.C0672c c0672c = (c.C0672c) it;
            if (c0672c.a() > 0 && (shortsEpisodeManager = shortsFragment.f46819x) != null) {
                shortsEpisodeManager.n(c0672c.a(), c0672c.a());
            }
            ShortsEpisodeManager shortsEpisodeManager2 = shortsFragment.f46819x;
            if (shortsEpisodeManager2 != null) {
                shortsEpisodeManager2.l();
            }
            shortsFragment.I3();
            shortsFragment.J3(IShortsFeature.MessageType.CANCEL_LONG_CLICK_SPEED);
            if (!shortsFragment.n() && (e22 = shortsFragment.e2()) != null && !e22.isAd()) {
                shortsFragment.M1(e22);
            }
        } else if (it instanceof c.d) {
            shortsFragment.B = false;
            shortsFragment.C = false;
            shortsFragment.A = false;
            shortsFragment.f46821z = false;
            shortsFragment.D = true;
            shortsFragment.A2(8);
            shortsFragment.C2();
            t2(shortsFragment, 8, false, 2, null);
            shortsFragment.W3();
            ShortsEpisode e23 = shortsFragment.e2();
            if (e23 != null) {
                ResourceHandler.m(ResourceHandler.f48167a, shortsFragment.n2(e23), null, 2, null);
            }
            if (!shortsFragment.n()) {
                shortsFragment.w(R$string.common_play_failed);
            }
            IShortsFeature.MessageType messageType9 = IShortsFeature.MessageType.PLAYER_ERROR;
            HashMap hashMap9 = new HashMap();
            hashMap9.put("episode", shortsFragment.e2());
            c.d dVar = (c.d) it;
            hashMap9.put("err_code", dVar.b());
            hashMap9.put("err_msg", dVar.c());
            Unit unit8 = Unit.f60915a;
            shortsFragment.K3(new com.startshorts.androidplayer.manager.shorts.feature.i(messageType9, hashMap9));
        }
    }

    public final void J3(IShortsFeature.MessageType messageType) {
        K3(new com.startshorts.androidplayer.manager.shorts.feature.i(messageType, null, 2, null));
    }

    private final kotlinx.coroutines.r K1(List<ShortsEpisode> list) {
        return CoroutineUtil.l(CoroutineUtil.f48072a, "addPreloadStrategyResources", false, new ShortsFragment$addPreloadStrategyResources$1(this, list, null), 2, null);
    }

    public static final void K2(ShortsFragment shortsFragment, Object it) {
        Intrinsics.checkNotNullParameter(it, "it");
        if (it instanceof a.C0670a) {
            a.C0670a c0670a = (a.C0670a) it;
            shortsFragment.n4(c0670a.a());
            ShortsEpisodeManager shortsEpisodeManager = shortsFragment.f46819x;
            if (shortsEpisodeManager != null) {
                shortsEpisodeManager.n(c0670a.a(), c0670a.b());
            }
            IShortsFeature.MessageType messageType = IShortsFeature.MessageType.PLAYER_TIME_CALLBACK;
            HashMap<String, Object> j22 = shortsFragment.j2();
            j22.put("episode", shortsFragment.e2());
            j22.put("total_time", Integer.valueOf(c0670a.b()));
            j22.put("playback_time", Integer.valueOf(c0670a.a()));
            Unit unit = Unit.f60915a;
            shortsFragment.K3(new com.startshorts.androidplayer.manager.shorts.feature.i(messageType, j22));
        }
    }

    public final void K3(com.startshorts.androidplayer.manager.shorts.feature.i iVar) {
        for (IShortsFeature iShortsFeature : this.M) {
            try {
                iShortsFeature.a(iVar);
            } catch (Exception e10) {
                EventManager eventManager = EventManager.f42463a;
                Bundle bundle = new Bundle();
                bundle.putString("scene", "shorts");
                bundle.putString("feature_type", iShortsFeature.type().toString());
                bundle.putString("message_type", iVar.b().toString());
                bundle.putString("err_msg", e10.getMessage());
                Unit unit = Unit.f60915a;
                EventManager.s0(eventManager, "send_feature_message_failed", bundle, 0L, 4, null);
                g("sendFeatureMessage exception -> featureType(" + iShortsFeature.type() + ") messageType(" + iVar.b() + ") errMsg(" + e10.getMessage() + ')');
            }
        }
        HashMap<String, Object> a10 = iVar.a();
        if (a10 != null) {
            a10.clear();
        }
    }

    public final void L1(BaseEpisode baseEpisode) {
        int i10;
        if (baseEpisode.isUpdateFinished()) {
            i10 = R$string.shorts_fragment_current_episode_finished;
        } else {
            i10 = R$string.shorts_fragment_current_episode_updating;
        }
        C3(this, ShortsNotificationType.NEXT_EPISODE_PREPARED, false, null, 6, null);
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        ShortsNextEpisodeTipView shortsNextEpisodeTipView = new ShortsNextEpisodeTipView(requireContext);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        z zVar = z.f51786a;
        layoutParams.topMargin = zVar.b();
        layoutParams.setMarginStart(zVar.b());
        Unit unit = Unit.f60915a;
        J1(this, shortsNextEpisodeTipView, layoutParams, null, 4, null);
        ShortsNotificationType shortsNotificationType = ShortsNotificationType.CURR_EPISODE_END;
        String string = getString(i10);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        shortsNextEpisodeTipView.d(shortsNotificationType, string);
    }

    private final void L2() {
        View view;
        SmartRefreshLayout smartRefreshLayout;
        if (a3() && !((FragmentShortsBinding) A()).f39646g.isInflated()) {
            r("initRefreshLayout");
            try {
                ViewStub viewStub = ((FragmentShortsBinding) A()).f39646g.getViewStub();
                BallPulseFooter ballPulseFooter = null;
                if (viewStub != null) {
                    view = viewStub.inflate();
                } else {
                    view = null;
                }
                if (view instanceof SmartRefreshLayout) {
                    smartRefreshLayout = (SmartRefreshLayout) view;
                } else {
                    smartRefreshLayout = null;
                }
                this.f46815t = smartRefreshLayout;
                if (smartRefreshLayout != null) {
                    smartRefreshLayout.F(new i());
                }
                SmartRefreshLayout smartRefreshLayout2 = this.f46815t;
                if (smartRefreshLayout2 != null) {
                    ballPulseFooter = (BallPulseFooter) smartRefreshLayout2.findViewById(R$id.loading_footer);
                }
                this.f46816u = ballPulseFooter;
            } catch (Exception e10) {
                g("inflate RefreshLayout exception -> " + e10.getMessage());
            }
            ViewPager2 viewPager2 = this.f46812q;
            if (viewPager2 != null) {
                r("add ViewPager to RefreshLayout");
                SmartRefreshLayout smartRefreshLayout3 = this.f46815t;
                if (smartRefreshLayout3 != null) {
                    smartRefreshLayout3.G(viewPager2);
                }
            }
        }
    }

    private final void L3(IImmersionFeature.MessageType messageType) {
        com.startshorts.androidplayer.manager.immersion.feature.l lVar = this.f46807c0;
        if (lVar != null) {
            lVar.a(new com.startshorts.androidplayer.manager.immersion.feature.k(messageType, null, 2, null));
        }
    }

    private final void M1(ShortsEpisode shortsEpisode) {
        ShortsEpisode shortsEpisode2;
        int i10;
        RecyclerView.Adapter adapter;
        ViewPager2 viewPager2;
        ShortsEpisode shortsEpisode3 = shortsEpisode;
        if (shortsEpisode.isTrailer()) {
            if (Intrinsics.areEqual(shortsEpisode.isRelease(), Boolean.TRUE) && shortsEpisode.getFirstDramId() > 0) {
                EventManager eventManager = EventManager.f42463a;
                Bundle C = eventManager.C(shortsEpisode3);
                C.putString("scene", "shorts");
                C.putString("from", "auto_next");
                if (!TextUtils.isEmpty(shortsEpisode.getUpack())) {
                    C.putString("upack", shortsEpisode.getUpack());
                }
                Unit unit = Unit.f60915a;
                EventManager.s0(eventManager, "shorts_feed_enter_immersion", C, 0L, 4, null);
                U3(this, 8, null, shortsEpisode, false, 10, null);
                return;
            }
            ViewPager2 viewPager22 = this.f46812q;
            if (viewPager22 != null && (adapter = viewPager22.getAdapter()) != null && adapter.getItemCount() > f2() + 1 && (viewPager2 = this.f46812q) != null) {
                viewPager2.post(new Runnable() { // from class: xi.j
                    @Override // java.lang.Runnable
                    public final void run() {
                        ShortsFragment.N1(ShortsFragment.this);
                    }
                });
                return;
            }
            return;
        }
        BaseEpisode k10 = ShortsRepo.f44606a.k(shortsEpisode.getId(), false);
        if (shortsEpisode.isLastEpisode() || (k10 != 0 && k10.getShortPlayId() != shortsEpisode.getShortPlayId())) {
            shortsEpisode2 = shortsEpisode3;
        } else {
            shortsEpisode2 = null;
        }
        EventManager eventManager2 = EventManager.f42463a;
        Bundle C2 = eventManager2.C(shortsEpisode3);
        C2.putString("scene", "shorts");
        C2.putString("from", "auto_next");
        if (!TextUtils.isEmpty(shortsEpisode.getUpack())) {
            C2.putString("upack", shortsEpisode.getUpack());
        }
        Unit unit2 = Unit.f60915a;
        EventManager.s0(eventManager2, "shorts_feed_enter_immersion", C2, 0L, 4, null);
        if (k10 != null) {
            i10 = 2;
        } else {
            i10 = 5;
        }
        if (k10 != null) {
            shortsEpisode3 = k10;
        }
        U3(this, i10, shortsEpisode2, shortsEpisode3, false, 8, null);
    }

    public final void M2() {
        ShortsRewardBoxView shortsRewardBoxView;
        if (vi.e.f68955a.a().isInvalid()) {
            z2();
            return;
        }
        if (this.f46818w == null) {
            ViewStubProxy rewardBoxViewstub = ((FragmentShortsBinding) A()).f39647h;
            Intrinsics.checkNotNullExpressionValue(rewardBoxViewstub, "rewardBoxViewstub");
            View e10 = e0.e(rewardBoxViewstub);
            if (e10 instanceof ShortsRewardBoxView) {
                shortsRewardBoxView = (ShortsRewardBoxView) e10;
            } else {
                shortsRewardBoxView = null;
            }
            this.f46818w = shortsRewardBoxView;
            if (shortsRewardBoxView != null) {
                ImageView mBoxIV = shortsRewardBoxView.getMBoxIV();
                z zVar = z.f51786a;
                b0.i(mBoxIV, -zVar.b(), DeviceUtil.f48146a.J() + zVar.c(), 0, 0, 12, null);
                shortsRewardBoxView.setMListener(new j(shortsRewardBoxView));
            }
        }
        ShortsRewardBoxView shortsRewardBoxView2 = this.f46818w;
        if (shortsRewardBoxView2 != null) {
            shortsRewardBoxView2.setVisibility(0);
            shortsRewardBoxView2.C();
        }
    }

    private final void M3(com.startshorts.androidplayer.manager.immersion.feature.k kVar) {
        com.startshorts.androidplayer.manager.immersion.feature.l lVar = this.f46807c0;
        if (lVar != null) {
            lVar.a(kVar);
        }
    }

    public static final void N1(ShortsFragment shortsFragment) {
        ViewPager2 viewPager2 = shortsFragment.f46812q;
        if (viewPager2 != null) {
            viewPager2.setCurrentItem(shortsFragment.f2() + 1, true);
        }
    }

    private final void N2() {
        DiscreteSeekBar discreteSeekBar = this.H;
        if (discreteSeekBar != null) {
            discreteSeekBar.setOnProgressChangeListener(new k());
        }
    }

    public final void N3() {
        DiscreteSeekBar discreteSeekBar = this.H;
        if (discreteSeekBar != null) {
            int i10 = f46803g0;
            discreteSeekBar.setTrackHeight(i10);
            discreteSeekBar.setScrubberHeight(i10);
            discreteSeekBar.C(i10);
            discreteSeekBar.o();
        }
        if (W2()) {
            R3();
        }
        if (X2()) {
            m4(0.5f);
        }
    }

    public final void O1(int i10) {
        boolean z10 = false;
        if (i10 != -1 && i10 == i2()) {
            z10 = true;
        }
        l4(z10);
    }

    private final void O2() {
        ShortsViewModel shortsViewModel = (ShortsViewModel) k2().get(ShortsViewModel.class);
        shortsViewModel.o().observe(this, new o(new Function1() { // from class: xi.a
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit P2;
                P2 = ShortsFragment.P2(ShortsFragment.this, (ApiErrorState) obj);
                return P2;
            }
        }));
        shortsViewModel.J().observe(this, new o(new Function1() { // from class: xi.k
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit Q2;
                Q2 = ShortsFragment.Q2(ShortsFragment.this, (com.startshorts.androidplayer.viewmodel.shorts.b) obj);
                return Q2;
            }
        }));
        this.Q = shortsViewModel;
    }

    public final void O3() {
        DiscreteSeekBar discreteSeekBar = this.H;
        if (discreteSeekBar != null) {
            int i10 = f46804h0;
            discreteSeekBar.setTrackHeight(i10);
            discreteSeekBar.setScrubberHeight(i10);
            discreteSeekBar.C(i10);
            discreteSeekBar.o();
        }
        if (X2()) {
            m4(1.0f);
            t2(this, 4, false, 2, null);
        }
    }

    public final void P1() {
        boolean h32 = h3();
        r("checkShortsExpired ->  mUserPausePlay(" + this.C + ") mPauseForDialog(" + this.X + ") shortsExpired(" + h32 + ')');
        if (h32) {
            R1(-1);
            this.f46820y = -1;
            this.W = false;
            ShortsViewPagerManager shortsViewPagerManager = this.f46814s;
            if (shortsViewPagerManager != null) {
                shortsViewPagerManager.q();
            }
            D3();
            ShortsViewModel shortsViewModel = this.Q;
            if (shortsViewModel != null) {
                shortsViewModel.d0();
            }
            T();
            R();
            return;
        }
        if (!this.C && !this.X) {
            F3();
        }
        k4();
    }

    public static final Unit P2(ShortsFragment shortsFragment, ApiErrorState apiErrorState) {
        if (shortsFragment.Y2()) {
            if (apiErrorState.getState() == 1) {
                shortsFragment.U();
            } else {
                shortsFragment.V(apiErrorState.getMsg());
            }
        } else {
            shortsFragment.l3(false);
        }
        return Unit.f60915a;
    }

    private final void P3() {
        ShortsAdapter shortsAdapter = this.f46813r;
        if (shortsAdapter != null) {
            shortsAdapter.e0(f2());
        }
    }

    private final void Q1() {
        if (!this.S) {
            return;
        }
        this.R.getValue().M(b.C0671b.f48935a);
    }

    public static final Unit Q2(ShortsFragment shortsFragment, com.startshorts.androidplayer.viewmodel.shorts.b bVar) {
        RecyclerView b10;
        if (bVar instanceof b.a) {
            b.a aVar = (b.a) bVar;
            List<ShortsEpisode> a10 = aVar.a();
            if (a10 != null && !a10.isEmpty()) {
                shortsFragment.K();
                List<ShortsEpisode> a11 = aVar.a();
                if (a11.isEmpty()) {
                    shortsFragment.l3(false);
                    return Unit.f60915a;
                }
                shortsFragment.T2();
                shortsFragment.L2();
                shortsFragment.H2();
                boolean Y2 = shortsFragment.Y2();
                List<ShortsEpisode> d42 = shortsFragment.d4(a11);
                ShortsAdapter shortsAdapter = shortsFragment.f46813r;
                if (shortsAdapter != null) {
                    shortsAdapter.e(d42);
                }
                if (Y2) {
                    shortsFragment.k4();
                } else {
                    shortsFragment.K1(d42);
                    if (shortsFragment.c3() && (b10 = i0.f51738a.b(shortsFragment.f46812q)) != null) {
                        b10.post(new Runnable() { // from class: xi.b
                            @Override // java.lang.Runnable
                            public final void run() {
                                ShortsFragment.R2(ShortsFragment.this);
                            }
                        });
                    }
                    shortsFragment.l3(true);
                }
            } else if (shortsFragment.Y2()) {
                shortsFragment.a2();
                shortsFragment.S();
            } else {
                shortsFragment.l3(false);
            }
        }
        return Unit.f60915a;
    }

    private final boolean Q3() {
        if (!n() && !this.X && !UpdateManager.f42992a.m() && !com.startshorts.androidplayer.manager.dialog.home.h.f42434a.a()) {
            return false;
        }
        return true;
    }

    public final void R1(int i10) {
        ShortsEpisode shortsEpisode;
        ShortsAdapter shortsAdapter;
        View O;
        this.C = false;
        this.f46821z = false;
        this.A = false;
        this.B = false;
        this.D = false;
        this.E = 0;
        this.F = 0;
        this.J = false;
        z3();
        A2(8);
        t2(this, 8, false, 2, null);
        N3();
        y2();
        I3();
        if (i10 != -1) {
            D2(i10);
            w2(i10);
            A3(i10);
            List<ShortsEpisode> h22 = h2();
            if (h22 != null && (shortsEpisode = (ShortsEpisode) CollectionsKt.t0(h22, i10)) != null && shortsEpisode.isProgrammaticAd() && (shortsAdapter = this.f46813r) != null && (O = shortsAdapter.O(i10)) != null) {
                O.dispatchWindowVisibilityChanged(8);
            }
            ShortsViewModel shortsViewModel = this.Q;
            if (shortsViewModel != null) {
                shortsViewModel.a0(a.C0691a.f49400a);
            }
        }
    }

    public static final void R2(ShortsFragment shortsFragment) {
        ViewPager2 viewPager2 = shortsFragment.f46812q;
        if (viewPager2 != null) {
            viewPager2.post(new Runnable() { // from class: xi.h
                @Override // java.lang.Runnable
                public final void run() {
                    ShortsFragment.S2(ShortsFragment.this);
                }
            });
        }
    }

    public final void R3() {
        i4(this, 0, false, 2, null);
    }

    private final com.startshorts.androidplayer.manager.shorts.feature.c S1() {
        com.startshorts.androidplayer.manager.shorts.feature.c cVar = new com.startshorts.androidplayer.manager.shorts.feature.c();
        cVar.b(new b());
        return cVar;
    }

    public static final void S2(ShortsFragment shortsFragment) {
        ViewPager2 viewPager2 = shortsFragment.f46812q;
        if (viewPager2 != null) {
            viewPager2.setCurrentItem(shortsFragment.f2() + 1, true);
        }
    }

    public final void S3(NewbieWatchTask newbieWatchTask) {
        DailyWatchDramaTaskView dailyWatchDramaTaskView;
        ShortsEpisode e22 = e2();
        if (e22 != null && e22.isFreeEpisode()) {
            DailyWatchDramaTaskView dailyWatchDramaTaskView2 = this.Y;
            if (dailyWatchDramaTaskView2 != null) {
                b0.d(dailyWatchDramaTaskView2);
            }
        } else if (!newbieWatchTask.isInvalid()) {
        } else {
            Object obj = null;
            if (this.Y == null) {
                ViewStubProxy dailyWatchDramaTaskCoinViewstub = ((FragmentShortsBinding) A()).f39642c;
                Intrinsics.checkNotNullExpressionValue(dailyWatchDramaTaskCoinViewstub, "dailyWatchDramaTaskCoinViewstub");
                View e10 = e0.e(dailyWatchDramaTaskCoinViewstub);
                if (e10 instanceof DailyWatchDramaTaskView) {
                    dailyWatchDramaTaskView = (DailyWatchDramaTaskView) e10;
                } else {
                    dailyWatchDramaTaskView = null;
                }
                this.Y = dailyWatchDramaTaskView;
                EventManager.k0(EventManager.f42463a, "shorts", "reward_floating_window", e2(), null, 8, null);
            }
            DailyWatchDramaTaskView dailyWatchDramaTaskView3 = this.Y;
            if (dailyWatchDramaTaskView3 != null) {
                dailyWatchDramaTaskView3.setVisibility(0);
            }
            DailyWatchDramaTaskView dailyWatchDramaTaskView4 = this.Y;
            if (dailyWatchDramaTaskView4 != null) {
                dailyWatchDramaTaskView4.setListener(new p());
            }
            long X1 = ud.b.f68412a.X1();
            Logger logger = Logger.f41511a;
            logger.h("ShortsFragment", "play time = " + X1);
            if (newbieWatchTask.isAllTaskComplete()) {
                logger.h("ShortsFragment", "task is all done and receive");
                DailyWatchDramaTaskView dailyWatchDramaTaskView5 = this.Y;
                if (dailyWatchDramaTaskView5 != null) {
                    dailyWatchDramaTaskView5.S();
                    return;
                }
                return;
            }
            Iterator<T> it = newbieWatchTask.getList().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Object next = it.next();
                if (((NewbieWatchBonus) next).getPayTime() * 1000 > X1) {
                    obj = next;
                    break;
                }
            }
            NewbieWatchBonus newbieWatchBonus = (NewbieWatchBonus) obj;
            if (newbieWatchBonus == null) {
                Logger.f41511a.h("ShortsFragment", "task is all done.，but not receive");
                DailyWatchDramaTaskView dailyWatchDramaTaskView6 = this.Y;
                if (dailyWatchDramaTaskView6 != null) {
                    dailyWatchDramaTaskView6.U(vi.e.f68955a.b());
                    return;
                }
                return;
            }
            if (this.Z == null) {
                this.Z = new dk.f(this.Y, new q(newbieWatchTask));
            }
            c4(newbieWatchTask, newbieWatchBonus);
        }
    }

    private final com.startshorts.androidplayer.manager.immersion.feature.l T1() {
        return new com.startshorts.androidplayer.manager.immersion.feature.l(new WeakReference(requireActivity()), new c());
    }

    private final void T2() {
        if (this.f46812q != null) {
            return;
        }
        r("initViewPager -> isRefreshLayoutEnable(" + a3() + ')');
        ViewPager2 viewPager2 = new ViewPager2(requireContext());
        viewPager2.setLayoutParams(new ConstraintLayout.LayoutParams(-1, -1));
        viewPager2.setOrientation(1);
        kd.d.b(viewPager2, 2);
        RecyclerView b10 = i0.f51738a.b(viewPager2);
        if (b10 != null) {
            b10.setItemAnimator(null);
        }
        viewPager2.setOffscreenPageLimit(2);
        this.f46812q = viewPager2;
        U2();
        V2(viewPager2);
        viewPager2.setAdapter(this.f46813r);
        if (!a3()) {
            ((FragmentShortsBinding) A()).f39648i.addView(viewPager2, 0, new ConstraintLayout.LayoutParams(-1, -1));
        }
    }

    private final void T3(int i10, BaseEpisode baseEpisode, BaseEpisode baseEpisode2, boolean z10) {
        int i11;
        ImmersionActivity.a aVar = ImmersionActivity.V0;
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        ImmersionParams immersionParams = new ImmersionParams();
        immersionParams.setFrom("shorts");
        int i12 = 1;
        if (i10 != 2) {
            if (i10 != 5) {
                if (i10 == 8) {
                    if (baseEpisode2.isTrailer()) {
                        immersionParams.setEpisodeId(baseEpisode2.getFirstDramId());
                    } else {
                        immersionParams.setEpisodeId(baseEpisode2.getId());
                    }
                }
            } else {
                if (baseEpisode != null) {
                    immersionParams.setLastEpisode(baseEpisode.isLastEpisode());
                }
                if (baseEpisode2.isTrailer()) {
                    immersionParams.setEpisodeId(baseEpisode2.getFirstDramId());
                } else {
                    immersionParams.setEpisodeId(baseEpisode2.getId());
                }
            }
        } else {
            ArrayList arrayList = new ArrayList();
            if (baseEpisode != null) {
                arrayList.add(baseEpisode);
            }
            arrayList.add(baseEpisode2);
            immersionParams.setEpisodeList(arrayList);
            if (arrayList.size() > 1) {
                immersionParams.setEpisodeListStartPosition(CollectionsKt.p(arrayList));
            }
        }
        if (i10 == 8 && baseEpisode2.isTrailer()) {
            i11 = 4;
        } else {
            i11 = i10;
        }
        immersionParams.setType(i11);
        ImmersionShortsInfo immersionShortsInfo = new ImmersionShortsInfo();
        if (i10 != 8 || !baseEpisode2.isTrailer()) {
            i12 = baseEpisode2.getVideoType();
        }
        immersionShortsInfo.setVideoType(i12);
        immersionShortsInfo.setShortsId(baseEpisode2.getShortPlayId());
        immersionShortsInfo.setShortPlayCode(baseEpisode2.getShortPlayCode());
        immersionShortsInfo.setShortsName(baseEpisode2.getShortPlayName());
        immersionShortsInfo.setCover(baseEpisode2.getCoverId());
        immersionShortsInfo.setUpack(baseEpisode2.getUpack());
        immersionParams.setShortsInfo(immersionShortsInfo);
        immersionParams.setShowEpisodeListDialog(z10);
        Unit unit = Unit.f60915a;
        aVar.a(requireContext, immersionParams);
    }

    private final com.startshorts.androidplayer.manager.shorts.feature.e U1() {
        com.startshorts.androidplayer.manager.shorts.feature.e eVar = new com.startshorts.androidplayer.manager.shorts.feature.e();
        eVar.j(new d());
        return eVar;
    }

    private final void U2() {
        ShortsAdapter shortsAdapter = new ShortsAdapter(new WeakReference(requireActivity()));
        shortsAdapter.d0(new l());
        this.f46813r = shortsAdapter;
    }

    static /* synthetic */ void U3(ShortsFragment shortsFragment, int i10, BaseEpisode baseEpisode, BaseEpisode baseEpisode2, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            baseEpisode = null;
        }
        if ((i11 & 8) != 0) {
            z10 = false;
        }
        shortsFragment.T3(i10, baseEpisode, baseEpisode2, z10);
    }

    private final com.startshorts.androidplayer.manager.shorts.feature.f V1() {
        com.startshorts.androidplayer.manager.shorts.feature.f fVar = new com.startshorts.androidplayer.manager.shorts.feature.f();
        fVar.i(new e());
        return fVar;
    }

    private final void V2(ViewPager2 viewPager2) {
        this.f46814s = new ShortsViewPagerManager(viewPager2, new m(new Ref.ObjectRef()));
    }

    public final void V3(String str, BaseEpisode baseEpisode) {
        com.startshorts.androidplayer.manager.shorts.feature.f fVar;
        Object obj;
        float f10;
        PlaySpeed e10;
        Iterator<T> it = this.M.iterator();
        while (true) {
            fVar = null;
            if (it.hasNext()) {
                obj = it.next();
                if (((IShortsFeature) obj) instanceof com.startshorts.androidplayer.manager.shorts.feature.f) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        if (obj instanceof com.startshorts.androidplayer.manager.shorts.feature.f) {
            fVar = obj;
        }
        com.startshorts.androidplayer.manager.shorts.feature.f fVar2 = fVar;
        if (fVar2 != null && (e10 = fVar2.e()) != null) {
            f10 = e10.getValue();
        } else {
            f10 = 1.0f;
        }
        ImmersionMiniWindow.J.f(u.f51776a.b(), str, baseEpisode, this.C, f10, l2(baseEpisode), 0L, "pip_window_scene");
    }

    public final List<StrategySource> W1(List<ShortsEpisode> list) {
        ArrayList arrayList = new ArrayList();
        String str = "";
        for (ShortsEpisode shortsEpisode : list) {
            String n22 = n2(shortsEpisode);
            if (n22 != null && n22.length() != 0) {
                str = str + shortsEpisode.getShortPlayId() + ',';
                arrayList.add(pf.l.f64869a.b(n22));
            }
        }
        if (str.length() > 0) {
            r("createPreloadStrategyResources -> " + str);
        }
        return arrayList;
    }

    public final boolean W2() {
        LottieAnimationView lottieAnimationView = this.I;
        if (lottieAnimationView == null || lottieAnimationView.getVisibility() != 4) {
            return false;
        }
        return true;
    }

    public final void W3() {
        ShortsAdapter shortsAdapter = this.f46813r;
        if (shortsAdapter != null) {
            shortsAdapter.h0(f2());
        }
    }

    private final com.startshorts.androidplayer.manager.shorts.feature.h X1() {
        com.startshorts.androidplayer.manager.shorts.feature.h hVar = new com.startshorts.androidplayer.manager.shorts.feature.h();
        hVar.b(new f());
        return hVar;
    }

    public final boolean X2() {
        LottieAnimationView lottieAnimationView = this.I;
        if (lottieAnimationView == null || lottieAnimationView.getVisibility() != 0) {
            return false;
        }
        return true;
    }

    public final void X3(PlaySpeed playSpeed) {
        BaseTextView baseTextView;
        ViewStubProxy viewStubProxy = ((FragmentShortsBinding) A()).f39645f;
        Intrinsics.checkNotNull(viewStubProxy);
        e0.g(viewStubProxy);
        View root = viewStubProxy.getRoot();
        if (root != null && (baseTextView = (BaseTextView) root.findViewById(R$id.speed_tips_tv)) != null) {
            String string = getString(R$string.immersion_activity_speed_playing, String.valueOf(playSpeed.getValue()));
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            y.l(baseTextView, string, new String[]{getString(R$string.immersion_activity_speed_playing_unit, String.valueOf(playSpeed.getValue()))}, ContextCompat.getColor(requireContext(), R$color.colorPrimary), null, 0.0f, false, null, 120, null);
        }
    }

    private final com.startshorts.androidplayer.manager.player.feature.f Y1() {
        int i10;
        com.startshorts.androidplayer.manager.player.feature.f fVar = new com.startshorts.androidplayer.manager.player.feature.f();
        ShortsEpisode e22 = e2();
        if (e22 != null) {
            i10 = e22.getShortPlayId();
        } else {
            i10 = 0;
        }
        fVar.g(i10);
        fVar.f(new g());
        return fVar;
    }

    private final boolean Y2() {
        if (g2() == 0) {
            return true;
        }
        return false;
    }

    public final void Y3(int i10, int i11) {
        ShortsTimeLayout shortsTimeLayout;
        ShortsTimeLayout shortsTimeLayout2 = this.L;
        if (shortsTimeLayout2 == null) {
            ViewStubProxy timeViewstub = ((FragmentShortsBinding) A()).f39651l;
            Intrinsics.checkNotNullExpressionValue(timeViewstub, "timeViewstub");
            View c10 = e0.c(timeViewstub);
            if (c10 instanceof ShortsTimeLayout) {
                shortsTimeLayout = (ShortsTimeLayout) c10;
            } else {
                shortsTimeLayout = null;
            }
            this.L = shortsTimeLayout;
        } else if (shortsTimeLayout2 != null) {
            shortsTimeLayout2.setVisibility(0);
        }
        ShortsTimeLayout shortsTimeLayout3 = this.L;
        if (shortsTimeLayout3 != null) {
            float f10 = 1000;
            shortsTimeLayout3.v(bt.a.e((i10 * 1.0f) / f10), bt.a.e((i11 * 1.0f) / f10));
        }
    }

    public final boolean Z1() {
        ShortsEpisode e22 = e2();
        if (e22 != null) {
            return e22.isAd();
        }
        return false;
    }

    public final boolean Z2() {
        return Intrinsics.areEqual(kf.b.f60715a.c(), MainActivity.class.getSimpleName());
    }

    public final void Z3() {
        if (this.E > 0 && !Z1()) {
            o4(0);
            b2();
        }
    }

    private final void a2() {
        MainActivity mainActivity;
        FragmentActivity activity = getActivity();
        if (activity instanceof MainActivity) {
            mainActivity = (MainActivity) activity;
        } else {
            mainActivity = null;
        }
        if (mainActivity != null) {
            mainActivity.c0();
        }
    }

    private final boolean a3() {
        return qe.a.f65321a.value().getShortsRefreshLayoutEnable();
    }

    public final void a4() {
        ShortPlayContentInfo shortPlayContentInfo;
        ShortsEpisode e22 = e2();
        ShortRatingLayout shortRatingLayout = null;
        if (e22 != null) {
            shortPlayContentInfo = e22.getShortPlayContentRatingResponse();
        } else {
            shortPlayContentInfo = null;
        }
        if (!Z1() && shortPlayContentInfo != null) {
            if (this.f46805a0 == null) {
                ViewStubProxy shortRatingViewstub = ((FragmentShortsBinding) A()).f39650k;
                Intrinsics.checkNotNullExpressionValue(shortRatingViewstub, "shortRatingViewstub");
                View e10 = e0.e(shortRatingViewstub);
                if (e10 instanceof ShortRatingLayout) {
                    shortRatingLayout = (ShortRatingLayout) e10;
                }
                this.f46805a0 = shortRatingLayout;
            }
            if (this.f46806b0 == null) {
                this.f46806b0 = new ShortRatingHandler(new r());
            }
            ShortRatingHandler shortRatingHandler = this.f46806b0;
            String str = (shortRatingHandler == null || (str = shortRatingHandler.e(e22.getShortPlayId(), e22.isTrailer())) == null) ? "" : "";
            ShortRatingHandler shortRatingHandler2 = this.f46806b0;
            if (shortRatingHandler2 != null) {
                shortRatingHandler2.g(str, shortPlayContentInfo, this.f46805a0);
                return;
            }
            return;
        }
        B2();
    }

    private final void b2() {
        MainActivity mainActivity;
        FragmentActivity activity = getActivity();
        if (activity instanceof MainActivity) {
            mainActivity = (MainActivity) activity;
        } else {
            mainActivity = null;
        }
        if (mainActivity != null) {
            mainActivity.d0();
        }
    }

    public final boolean b3() {
        RefreshState refreshState;
        BallPulseFooter ballPulseFooter = this.f46816u;
        if (ballPulseFooter != null) {
            refreshState = ballPulseFooter.getMState();
        } else {
            refreshState = null;
        }
        if (refreshState != null && refreshState != RefreshState.None) {
            return false;
        }
        return true;
    }

    public final void b4() {
        ShortsAdapter shortsAdapter = this.f46813r;
        if (shortsAdapter != null) {
            shortsAdapter.f0(f2());
        }
    }

    private final void c2(boolean z10) {
        int i10;
        SmartRefreshLayout smartRefreshLayout = this.f46815t;
        if (smartRefreshLayout != null) {
            if (z10) {
                i10 = 0;
            } else {
                i10 = 500;
            }
            smartRefreshLayout.l(i10);
        }
    }

    private final boolean c3() {
        SmartRefreshLayout smartRefreshLayout = this.f46815t;
        if (smartRefreshLayout != null) {
            return smartRefreshLayout.u();
        }
        return false;
    }

    public final void c4(NewbieWatchTask newbieWatchTask, NewbieWatchBonus newbieWatchBonus) {
        dk.f fVar = this.Z;
        if (fVar != null) {
            fVar.n(newbieWatchBonus, newbieWatchTask);
        }
    }

    private final boolean d3() {
        DiscreteSeekBar discreteSeekBar = this.H;
        if (discreteSeekBar != null) {
            return discreteSeekBar.l();
        }
        return false;
    }

    private final List<ShortsEpisode> d4(List<ShortsEpisode> list) {
        final boolean z10;
        List<ShortsEpisode> list2;
        ShortsEpisode shortsEpisode;
        float f10;
        final Ref.IntRef intRef = new Ref.IntRef();
        intRef.element = AdManager.f41600a.D(AdFormat.NATIVE);
        int i10 = 0;
        if (AdSwitchConfigure.f42267a.value().b(AdScene.NATIVE) && com.startshorts.androidplayer.manager.configure.ad.a.f42306a.value().p("shorts") && intRef.element > 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        ActResource actResource = (ActResource) CollectionsKt.firstOrNull(ActResourceManager.f41582a.B());
        r("tryAddAds -> enableNativeAd(" + z10 + ") cacheCount(" + intRef.element + ')');
        if (!z10 && actResource == null) {
            return list;
        }
        List<ShortsEpisode> h22 = h2();
        ArrayList<Number> arrayList = new ArrayList();
        int o10 = com.startshorts.androidplayer.manager.configure.ad.a.f42306a.value().o("shorts");
        for (int i11 = 0; i11 < 30; i11++) {
            if (i11 == 0) {
                arrayList.add(1);
            } else {
                arrayList.add(Integer.valueOf(((Number) arrayList.get(i11 - 1)).intValue() + o10 + 1));
            }
        }
        List<ShortsEpisode> list3 = h22;
        if (list3 != null && !list3.isEmpty()) {
            list2 = CollectionsKt.g1(CollectionsKt.K0(list3, list));
        } else {
            list2 = list;
        }
        CollectionsKt.O(list2, new Function1() { // from class: xi.c
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean e42;
                e42 = ShortsFragment.e4((ShortsEpisode) obj);
                return Boolean.valueOf(e42);
            }
        });
        for (Number number : arrayList) {
            int intValue = number.intValue();
            if (intValue <= list2.size()) {
                ShortsEpisode shortsEpisode2 = list2.get(intValue - 1);
                if (intValue == 1) {
                    if (actResource == null) {
                        shortsEpisode = new ShortsEpisode();
                        shortsEpisode.setType(2);
                    } else {
                        shortsEpisode = null;
                        String str = null;
                        if (actResource.isBrandAd()) {
                            ShortsEpisode shortsEpisode3 = new ShortsEpisode();
                            shortsEpisode3.setType(3);
                            shortsEpisode3.setExtraAdInfo(actResource);
                            ActResourceExtraInfo extendInfo = actResource.getExtendInfo();
                            if (extendInfo != null) {
                                str = extendInfo.getAdsVideoUrl();
                            }
                            shortsEpisode3.setVideoUrl(str);
                            ActResourceExtraInfo extendInfo2 = actResource.getExtendInfo();
                            if (extendInfo2 != null) {
                                f10 = extendInfo2.getAspectRatio();
                            } else {
                                f10 = 0.5625f;
                            }
                            shortsEpisode3.setAspectRatio(f10);
                            shortsEpisode = shortsEpisode3;
                        }
                    }
                } else {
                    shortsEpisode = new ShortsEpisode();
                    shortsEpisode.setType(2);
                }
                if (shortsEpisode != null) {
                    shortsEpisode.setRound(shortsEpisode2.getRound());
                    shortsEpisode.setPageNumber(shortsEpisode2.getPageNumber());
                    list2.add(intValue, shortsEpisode);
                }
            }
        }
        if (list3 != null && !list3.isEmpty()) {
            ShortsEpisode shortsEpisode4 = (ShortsEpisode) CollectionsKt.r0(list);
            Iterator<ShortsEpisode> it = list2.iterator();
            while (true) {
                if (it.hasNext()) {
                    ShortsEpisode next = it.next();
                    if (next.getRound() == shortsEpisode4.getRound() && next.getPageNumber() == shortsEpisode4.getPageNumber() && next.getIndex() == shortsEpisode4.getIndex()) {
                        break;
                    }
                    i10++;
                } else {
                    i10 = -1;
                    break;
                }
            }
            if (i10 != -1) {
                list = list2.subList(i10, list2.size());
            }
        } else {
            list = list2;
        }
        int size = list.size();
        final Function1 function1 = new Function1() { // from class: xi.d
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean f42;
                f42 = ShortsFragment.f4(Ref.IntRef.this, z10, (ShortsEpisode) obj);
                return Boolean.valueOf(f42);
            }
        };
        list.removeIf(new Predicate() { // from class: xi.e
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean g42;
                g42 = ShortsFragment.g4(Function1.this, obj);
                return g42;
            }
        });
        r("tryAddAds -> sizeBeforeRemove(" + size + ") sizeAfterRemove(" + list.size() + ')');
        return list;
    }

    public final ShortsEpisode e2() {
        ShortsEpisodeManager shortsEpisodeManager = this.f46819x;
        if (shortsEpisodeManager != null) {
            return shortsEpisodeManager.c();
        }
        return null;
    }

    public final boolean e3() {
        DiscreteSeekBar discreteSeekBar = this.H;
        if (discreteSeekBar == null || discreteSeekBar.getVisibility() != 4) {
            return false;
        }
        return true;
    }

    public static final boolean e4(ShortsEpisode it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return it.isAd();
    }

    public final int f2() {
        ShortsViewPagerManager shortsViewPagerManager = this.f46814s;
        if (shortsViewPagerManager != null) {
            return shortsViewPagerManager.l();
        }
        return -1;
    }

    public static final boolean f4(Ref.IntRef intRef, boolean z10, ShortsEpisode it) {
        Intrinsics.checkNotNullParameter(it, "it");
        if (!it.isProgrammaticAd()) {
            return false;
        }
        int i10 = intRef.element;
        if (i10 != 0 && z10) {
            intRef.element = i10 - 1;
            return false;
        }
        return true;
    }

    private final int g2() {
        ShortsAdapter shortsAdapter = this.f46813r;
        if (shortsAdapter != null) {
            return shortsAdapter.getItemCount();
        }
        return 0;
    }

    public final boolean g3() {
        MainTab.Type type = this.f46808d0;
        if (type != MainTab.Type.SHORTS && type != null) {
            return false;
        }
        return true;
    }

    public static final boolean g4(Function1 function1, Object obj) {
        return ((Boolean) function1.invoke(obj)).booleanValue();
    }

    public final List<ShortsEpisode> h2() {
        ShortsAdapter shortsAdapter = this.f46813r;
        if (shortsAdapter != null) {
            return shortsAdapter.m();
        }
        return null;
    }

    private final boolean h3() {
        ActResource extraAdInfo;
        if (this.W) {
            return true;
        }
        ShortsEpisode e22 = e2();
        if (e22 == null) {
            return false;
        }
        if (e22.isAd() && (extraAdInfo = e22.getExtraAdInfo()) != null && !extraAdInfo.isBrandAdVideo()) {
            return false;
        }
        return e22.isVideoExpired();
    }

    private final void h4(int i10, boolean z10) {
        LottieAnimationView lottieAnimationView;
        LottieAnimationView lottieAnimationView2;
        if (Z1()) {
            return;
        }
        LottieAnimationView lottieAnimationView3 = this.I;
        if (lottieAnimationView3 == null) {
            if (i10 == 0 || z10) {
                ViewStubProxy bufferingViewstub = ((FragmentShortsBinding) A()).f39641b;
                Intrinsics.checkNotNullExpressionValue(bufferingViewstub, "bufferingViewstub");
                View c10 = e0.c(bufferingViewstub);
                if (c10 instanceof LottieAnimationView) {
                    lottieAnimationView = (LottieAnimationView) c10;
                } else {
                    lottieAnimationView = null;
                }
                this.I = lottieAnimationView;
            }
            if (z10 && (lottieAnimationView2 = this.I) != null) {
                lottieAnimationView2.setVisibility(i10);
            }
        } else if (lottieAnimationView3 != null) {
            lottieAnimationView3.setVisibility(i10);
        }
        if (i10 == 0) {
            LottieAnimationView lottieAnimationView4 = this.I;
            if (lottieAnimationView4 != null) {
                lottieAnimationView4.y();
                return;
            }
            return;
        }
        LottieAnimationView lottieAnimationView5 = this.I;
        if (lottieAnimationView5 != null) {
            lottieAnimationView5.m();
        }
    }

    private final int i2() {
        return g2() - 1;
    }

    public final boolean i3() {
        ShortsAdapter shortsAdapter = this.f46813r;
        if (shortsAdapter != null) {
            return shortsAdapter.Y(f2());
        }
        return false;
    }

    static /* synthetic */ void i4(ShortsFragment shortsFragment, int i10, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z10 = false;
        }
        shortsFragment.h4(i10, z10);
    }

    private final HashMap<String, Object> j2() {
        return (HashMap) this.N.getValue();
    }

    public final boolean j3() {
        ShortsViewPagerManager shortsViewPagerManager = this.f46814s;
        if (shortsViewPagerManager != null) {
            return shortsViewPagerManager.o();
        }
        return false;
    }

    private final ViewModelProvider k2() {
        return (ViewModelProvider) this.P.getValue();
    }

    public final void k3(boolean z10) {
        ShortsViewModel shortsViewModel = this.Q;
        if (shortsViewModel != null) {
            shortsViewModel.a0(new a.b(z10, h2(), f2(), 10));
        }
    }

    private final kotlinx.coroutines.r k4() {
        return CoroutineUtil.l(CoroutineUtil.f48072a, "updatePreloadStrategyResources", false, new ShortsFragment$updatePreloadStrategyResources$1(this, null), 2, null);
    }

    private final int l2(BaseEpisode baseEpisode) {
        if (pf.k.f64864a.s() && baseEpisode.contains1080pUrl()) {
            return 1080;
        }
        return 720;
    }

    private final void l3(boolean z10) {
        ShortsViewPagerManager shortsViewPagerManager = this.f46814s;
        if (shortsViewPagerManager != null) {
            shortsViewPagerManager.k();
        }
        if (c3()) {
            c2(z10);
        }
    }

    public final void l4(boolean z10) {
        if (this.f46817v != z10) {
            this.f46817v = z10;
            SmartRefreshLayout smartRefreshLayout = this.f46815t;
            if (smartRefreshLayout != null && smartRefreshLayout.A(z10) != null) {
                r("updateRefreshLayoutLoadMoreEnable -> enable(" + z10 + ')');
            }
        }
    }

    private final TextureView m2() {
        ShortsAdapter shortsAdapter = this.f46813r;
        if (shortsAdapter != null) {
            return shortsAdapter.Q(f2());
        }
        return null;
    }

    public static final ShortsJobsManager m3() {
        return new ShortsJobsManager();
    }

    private final void m4(float f10) {
        DiscreteSeekBar discreteSeekBar;
        if (!Z1() && (discreteSeekBar = this.H) != null) {
            discreteSeekBar.setAlpha(f10);
            r("updateSeekbarAlpha -> " + f10);
        }
    }

    private final String n2(BaseEpisode baseEpisode) {
        return baseEpisode.parseVideoUrl(l2(baseEpisode));
    }

    public static final HashMap n3() {
        return new HashMap();
    }

    private final void n4(int i10) {
        if (!d3() && !Z1()) {
            try {
                DiscreteSeekBar discreteSeekBar = this.H;
                if (discreteSeekBar != null) {
                    if (discreteSeekBar.getVisibility() != 0) {
                        return;
                    }
                    discreteSeekBar.e();
                    if (i10 > discreteSeekBar.getProgress()) {
                        if (((i10 - discreteSeekBar.getProgress()) * 1.0f) / (discreteSeekBar.getMax() - discreteSeekBar.getMin()) > 0.02f && this.E > 50000) {
                            discreteSeekBar.q(i10);
                        } else {
                            discreteSeekBar.setProgress(i10);
                        }
                    } else {
                        discreteSeekBar.setProgress(i10);
                    }
                }
            } catch (Exception e10) {
                g("updateSeekbarProgress exception -> " + e10.getMessage());
            }
        }
    }

    private final void o2(int i10) {
        List<ShortsEpisode> h22 = h2();
        if (h22 == null) {
            return;
        }
        synchronized (h22) {
            try {
                ArrayList<Number> arrayList = new ArrayList();
                int i11 = 0;
                for (Object obj : h22) {
                    int i12 = i11 + 1;
                    if (i11 < 0) {
                        CollectionsKt.y();
                    }
                    ShortsEpisode shortsEpisode = (ShortsEpisode) obj;
                    if (i10 == shortsEpisode.getShortPlayId()) {
                        shortsEpisode.cancelCollected();
                        arrayList.add(Integer.valueOf(i11));
                    }
                    i11 = i12;
                }
                r("handleCancelCollectSuccess -> indexList(" + arrayList + ')');
                for (Number number : arrayList) {
                    int intValue = number.intValue();
                    ShortsAdapter shortsAdapter = this.f46813r;
                    if (shortsAdapter != null) {
                        shortsAdapter.notifyItemChanged(intValue, "update_collect_info");
                    }
                }
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static final PlayerViewModel o3(ShortsFragment shortsFragment) {
        return (PlayerViewModel) shortsFragment.k2().get(PlayerViewModel.class);
    }

    private final void o4(int i10) {
        DiscreteSeekBar discreteSeekBar;
        if (i10 != 0) {
            if (i10 != 4) {
                r("updateSeekbarVisibility -> View.GONE");
            } else {
                r("updateSeekbarVisibility -> View.INVISIBLE");
            }
        } else {
            r("updateSeekbarVisibility -> View.VISIBLE");
        }
        DiscreteSeekBar discreteSeekBar2 = this.H;
        if (discreteSeekBar2 == null) {
            if (i10 == 0) {
                ViewStubProxy seekBarViewstub = ((FragmentShortsBinding) A()).f39649j;
                Intrinsics.checkNotNullExpressionValue(seekBarViewstub, "seekBarViewstub");
                View c10 = e0.c(seekBarViewstub);
                if (c10 instanceof DiscreteSeekBar) {
                    discreteSeekBar = (DiscreteSeekBar) c10;
                } else {
                    discreteSeekBar = null;
                }
                this.H = discreteSeekBar;
                N2();
            }
        } else {
            if (discreteSeekBar2 != null) {
                discreteSeekBar2.setVisibility(i10);
            }
            if (i10 == 0) {
                m4(1.0f);
            }
        }
        if (i10 == 0 && !this.J) {
            this.J = true;
            DiscreteSeekBar discreteSeekBar3 = this.H;
            if (discreteSeekBar3 != null) {
                discreteSeekBar3.setMin(0);
                discreteSeekBar3.setMax(this.E);
                discreteSeekBar3.setProgress(this.F);
                r("init seekbar -> min(0) max(" + this.E + ") progress(" + this.F + ')');
            }
        }
    }

    private final void p2(int i10) {
        List<ShortsEpisode> h22 = h2();
        if (h22 == null) {
            return;
        }
        synchronized (h22) {
            try {
                ArrayList<Number> arrayList = new ArrayList();
                int i11 = 0;
                for (Object obj : h22) {
                    int i12 = i11 + 1;
                    if (i11 < 0) {
                        CollectionsKt.y();
                    }
                    ShortsEpisode shortsEpisode = (ShortsEpisode) obj;
                    if (i10 == shortsEpisode.getShortPlayId()) {
                        shortsEpisode.setCollected();
                        arrayList.add(Integer.valueOf(i11));
                    }
                    i11 = i12;
                }
                r("handleCollectSuccess -> indexList(" + arrayList + ')');
                for (Number number : arrayList) {
                    int intValue = number.intValue();
                    ShortsAdapter shortsAdapter = this.f46813r;
                    if (shortsAdapter != null) {
                        shortsAdapter.notifyItemChanged(intValue, "update_collect_info");
                    }
                }
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static final ViewModelProvider p3(ShortsFragment shortsFragment) {
        return new ViewModelProvider(shortsFragment);
    }

    public final void p4(boolean z10) {
        ViewPager2 viewPager2 = this.f46812q;
        if (viewPager2 != null) {
            if (z10) {
                if (!viewPager2.isUserInputEnabled()) {
                    viewPager2.setUserInputEnabled(true);
                    r("updateViewPagerScrollEnable -> enable(true)");
                }
            } else if (viewPager2.isUserInputEnabled()) {
                viewPager2.setUserInputEnabled(false);
                r("updateViewPagerScrollEnable -> enable(false)");
            }
        }
    }

    public static /* synthetic */ boolean r2(ShortsFragment shortsFragment, int i10, MotionEvent motionEvent, boolean z10, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            z10 = false;
        }
        return shortsFragment.q2(i10, motionEvent, z10);
    }

    public static final Unit r3(ShortsFragment shortsFragment, final int i10) {
        ViewPager2 viewPager2 = shortsFragment.f46812q;
        if (viewPager2 != null) {
            viewPager2.post(new Runnable() { // from class: xi.s
                @Override // java.lang.Runnable
                public final void run() {
                    ShortsFragment.s3(ShortsFragment.this, i10);
                }
            });
        }
        return Unit.f60915a;
    }

    private final void s2(int i10, boolean z10) {
        h4(i10, z10);
    }

    public static final void s3(ShortsFragment shortsFragment, int i10) {
        ViewPager2 viewPager2 = shortsFragment.f46812q;
        if (viewPager2 != null) {
            viewPager2.setCurrentItem(i10 + 1, false);
        }
    }

    static /* synthetic */ void t2(ShortsFragment shortsFragment, int i10, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z10 = false;
        }
        shortsFragment.s2(i10, z10);
    }

    public final void t3() {
        dk.f fVar = this.Z;
        if (fVar != null) {
            fVar.d();
        }
    }

    public final void u2() {
        C3(this, ShortsNotificationType.CURR_EPISODE_END, false, null, 4, null);
        C3(this, ShortsNotificationType.NEXT_EPISODE_PREPARED, false, null, 4, null);
    }

    private final void u3() {
        ViewGroup M;
        ShortsEpisode e22 = e2();
        if (e22 != null && e22.isProgrammaticAd()) {
            r("pauseNativeAd");
            ShortsAdapter shortsAdapter = this.f46813r;
            if (shortsAdapter != null && (M = shortsAdapter.M(f2())) != null) {
                M.dispatchWindowVisibilityChanged(8);
            }
        }
    }

    public final void v2() {
        w2(f2());
    }

    public final void v3() {
        String str;
        if (!this.S) {
            g("pausePlay failed -> mPlayerVMObserved is false");
            return;
        }
        ShortsEpisode e22 = e2();
        if (e22 != null) {
            str = e22.getVideoUrl();
        } else {
            str = null;
        }
        if (str != null && str.length() != 0) {
            r("pausePlay");
            this.R.getValue().M(b.d.f48937a);
        }
    }

    private final void w2(int i10) {
        ShortsAdapter shortsAdapter = this.f46813r;
        if (shortsAdapter != null) {
            shortsAdapter.T(i10);
        }
    }

    public final void w3(int i10, ShortsEpisode shortsEpisode) {
        DirectUrlSource directUrlSource;
        String n22 = n2(shortsEpisode);
        if (n22 != null && n22.length() != 0) {
            directUrlSource = pf.l.f64869a.b(n22);
        } else {
            directUrlSource = null;
        }
        if (directUrlSource == null) {
            C2();
            W3();
            w(R$string.common_play_failed);
            return;
        }
        I2();
        boolean enableSubtitle = shortsEpisode.enableSubtitle();
        ArrayList arrayList = new ArrayList();
        if (enableSubtitle) {
            arrayList.add(Y1());
        }
        if (qe.a.f65321a.value().getPlayerHeadersNotifyEnable()) {
            RequestHeadersFeature requestHeadersFeature = new RequestHeadersFeature();
            requestHeadersFeature.k(new n());
            arrayList.add(requestHeadersFeature);
        }
        if (shortsEpisode.getNeedDecrypt()) {
            arrayList.add(new com.startshorts.androidplayer.manager.player.feature.d());
        }
        PlayerViewModel value = this.R.getValue();
        Context b10 = u.f51776a.b();
        s sVar = new s();
        sVar.y("Feed");
        sVar.u(m2());
        sVar.t(200);
        sVar.w(directUrlSource);
        if (shortsEpisode.isAd()) {
            sVar.n(3);
        } else {
            sVar.n(2);
        }
        sVar.v(i10);
        sVar.p(false);
        sVar.s(1.0f);
        if (enableSubtitle) {
            sVar.x(shortsEpisode.getSubtitlingConfig());
        }
        sVar.o(arrayList);
        Unit unit = Unit.f60915a;
        value.M(new b.e(b10, sVar));
    }

    public final void x2() {
        ViewStubProxy playSpeedTipViewstub = ((FragmentShortsBinding) A()).f39645f;
        Intrinsics.checkNotNullExpressionValue(playSpeedTipViewstub, "playSpeedTipViewstub");
        e0.b(playSpeedTipViewstub, 0, 1, null);
    }

    public final void x3(final int i10) {
        final ViewGroup viewGroup;
        ShortsAdapter shortsAdapter = this.f46813r;
        if (shortsAdapter != null) {
            viewGroup = shortsAdapter.M(i10);
        } else {
            viewGroup = null;
        }
        if (viewGroup != null && viewGroup.getChildCount() == 1) {
            if (Intrinsics.areEqual(viewGroup.getTag(), "showed")) {
                CoroutineUtil.g(CoroutineUtil.f48072a, 200L, null, new Function0() { // from class: xi.i
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        Unit y32;
                        y32 = ShortsFragment.y3(ShortsFragment.this, i10, viewGroup);
                        return y32;
                    }
                }, 2, null);
                return;
            }
            r("setTag(TAG_AD_SHOWED) -> position(" + i10 + ')');
            viewGroup.setTag("showed");
        }
    }

    public final void y2() {
        ShortsTimeLayout shortsTimeLayout = this.L;
        if (shortsTimeLayout != null) {
            shortsTimeLayout.setVisibility(8);
        }
    }

    public static final Unit y3(ShortsFragment shortsFragment, int i10, ViewGroup viewGroup) {
        int i11;
        AdManager adManager = AdManager.f41600a;
        boolean C = adManager.C(AdFormat.NATIVE);
        shortsFragment.r("refreshNativeAd -> position(" + i10 + ") existCache(" + C + ')');
        if (i10 == shortsFragment.f2()) {
            if (C) {
                shortsFragment.r("refreshNativeAd success -> position(" + i10 + ')');
                viewGroup.removeAllViews();
                WeakReference weakReference = new WeakReference(shortsFragment.requireActivity());
                if (adManager.M()) {
                    i11 = R$layout.view_native_ad_admob_2;
                } else {
                    i11 = R$layout.view_native_ad_tp_2;
                }
                AdManager.o0(adManager, weakReference, viewGroup, i11, "shorts_native", null, null, null, 112, null);
            } else {
                shortsFragment.E3();
            }
        }
        return Unit.f60915a;
    }

    public final void z2() {
        ShortsRewardBoxView shortsRewardBoxView = this.f46818w;
        if (shortsRewardBoxView != null) {
            shortsRewardBoxView.setVisibility(8);
        }
    }

    private final void z3() {
        String str;
        if (!this.S) {
            return;
        }
        ShortsEpisode e22 = e2();
        if (e22 != null) {
            str = e22.getVideoUrl();
        } else {
            str = null;
        }
        if (str != null && str.length() != 0) {
            r("releasePlay");
            this.R.getValue().M(b.f.f48940a);
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.PageStateFragment
    public void R() {
        a2();
        k3(false);
    }

    @Nullable
    public final ShortPlayNotification d2() {
        ShortsEpisode e22 = e2();
        if (e22 != null && !e22.isAd()) {
            if (!e22.isTrailer() || !Intrinsics.areEqual(e22.isRelease(), Boolean.FALSE)) {
                ShortPlayNotification shortPlayNotification = new ShortPlayNotification();
                shortPlayNotification.setShortId(Integer.valueOf(e22.getShortPlayId()));
                shortPlayNotification.setShortPlayCode(e22.getShortPlayCode());
                shortPlayNotification.setTitle(e22.getCheckedShortPlayName());
                shortPlayNotification.setDramaNum(Integer.valueOf(e22.getEpisodeNum()));
                shortPlayNotification.setVideoType(Integer.valueOf(e22.getVideoType()));
                shortPlayNotification.setEpisodeId(Integer.valueOf(e22.getId()));
                shortPlayNotification.setCover(e22.getCoverId());
                return shortPlayNotification;
            }
            return null;
        }
        return null;
    }

    public final boolean f3() {
        DiscreteSeekBar discreteSeekBar = this.H;
        if (discreteSeekBar == null || discreteSeekBar.getVisibility() != 0) {
            return false;
        }
        return true;
    }

    public final void j4(@NotNull String from) {
        Intrinsics.checkNotNullParameter(from, "from");
        this.f46810o = from;
        ShortsEpisodeManager shortsEpisodeManager = this.f46819x;
        if (shortsEpisodeManager != null) {
            shortsEpisodeManager.s(from);
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public int l() {
        return R$layout.fragment_shorts;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public boolean o() {
        return true;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.PageStateFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment, androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        L3(IImmersionFeature.MessageType.ACTIVITY_ON_PAUSE);
        v3();
        Q1();
        u3();
        B2();
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.PageStateFragment, com.startshorts.androidplayer.ui.fragment.base.PermissionFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        L3(IImmersionFeature.MessageType.ACTIVITY_ON_RESUME);
        if (this.f46811p) {
            this.f46811p = false;
            return;
        }
        P1();
        ActEntranceManager.f41563a.i();
        ShortsEpisode e22 = e2();
        if (e22 != null && !e22.isAd()) {
            M2();
        }
        p4(true);
        E3();
        a4();
        if (this.f46809e0) {
            this.f46809e0 = false;
            EventManager.k0(EventManager.f42463a, "shorts", "reward_floating_window", e2(), null, 8, null);
        }
        DailyWatchDramaTaskView dailyWatchDramaTaskView = this.Y;
        if (dailyWatchDramaTaskView != null) {
            dailyWatchDramaTaskView.V();
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseFragment, androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        dk.f fVar = this.Z;
        if (fVar != null) {
            fVar.i();
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public boolean p() {
        return true;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.PageStateFragment, com.startshorts.androidplayer.ui.fragment.base.PermissionFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    @NotNull
    public String q() {
        return "ShortsFragment";
    }

    public final boolean q2(int i10, @NotNull MotionEvent event, boolean z10) {
        DiscreteSeekBar discreteSeekBar;
        Intrinsics.checkNotNullParameter(event, "event");
        DiscreteSeekBar discreteSeekBar2 = this.H;
        if (discreteSeekBar2 == null || discreteSeekBar2.getVisibility() != 0 || (discreteSeekBar = this.H) == null) {
            return false;
        }
        return discreteSeekBar.h(i10, event, z10);
    }

    public final void q3(@NotNull String from, @NotNull ShortsEpisode episode) {
        Intrinsics.checkNotNullParameter(from, "from");
        Intrinsics.checkNotNullParameter(episode, "episode");
        if (episode.isVideoExpired()) {
            g("notifyShortsAdded failed -> video expired");
            return;
        }
        j4(from);
        try {
            List<ShortsEpisode> h22 = h2();
            if (h22 == null) {
                return;
            }
            rf.c.f65843a.v(null);
            final int f22 = f2();
            if (f22 == h22.size() - 1) {
                ShortsAdapter shortsAdapter = this.f46813r;
                if (shortsAdapter != null) {
                    shortsAdapter.c(episode);
                }
            } else {
                ShortsAdapter shortsAdapter2 = this.f46813r;
                if (shortsAdapter2 != null) {
                    shortsAdapter2.b(f22 + 1, episode);
                }
            }
            CoroutineUtil.g(CoroutineUtil.f48072a, 500L, null, new Function0() { // from class: xi.l
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit r32;
                    r32 = ShortsFragment.r3(ShortsFragment.this, f22);
                    return r32;
                }
            }, 2, null);
            k4();
        } catch (Exception e10) {
            g("notifyShortsAdded exception -> " + e10.getMessage());
        }
    }

    @au.l(threadMode = ThreadMode.MAIN)
    public final void receiveDailyWatchDramaCoinEvent(@NotNull DailyWatchDramaReceiveCoinEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        r("receive receiveDailyWatchDramaCoinEvent");
        dk.f fVar = this.Z;
        if (fVar != null) {
            fVar.h();
        }
    }

    @au.l(threadMode = ThreadMode.MAIN)
    public final void receiveMiniWindowPlayEvent(@NotNull MiniWindowPlayEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (!m()) {
            return;
        }
        this.G = true;
        if (!n()) {
            v3();
        }
    }

    @au.l(threadMode = ThreadMode.MAIN)
    public final void receiveRefreshAccountEvent(@NotNull RefreshAccountEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        ShortsRepo.f44606a.d();
        if (!m()) {
            return;
        }
        r("receiveRefreshAccountEvent");
        this.W = true;
    }

    @au.l(threadMode = ThreadMode.MAIN)
    public final void receiveRefreshReservationEvent(@NotNull RefreshReservationEvent event) {
        List<ShortsEpisode> m10;
        Object obj;
        Intrinsics.checkNotNullParameter(event, "event");
        if (!m()) {
            return;
        }
        r("receiveRefreshReservationEvent -> event(" + event + ')');
        ShortsAdapter shortsAdapter = this.f46813r;
        if (shortsAdapter != null && (m10 = shortsAdapter.m()) != null) {
            Iterator<T> it = m10.iterator();
            while (true) {
                if (it.hasNext()) {
                    obj = it.next();
                    if (((ShortsEpisode) obj).getShortPlayId() == event.getShortsId()) {
                        break;
                    }
                } else {
                    obj = null;
                    break;
                }
            }
            ShortsEpisode shortsEpisode = (ShortsEpisode) obj;
            if (shortsEpisode != null) {
                shortsEpisode.setReservation(Boolean.valueOf(event.getReservation()));
            }
        }
    }

    @au.l(threadMode = ThreadMode.MAIN)
    public final void receiveRefreshShortsCollectEvent(@NotNull RefreshShortsCollectEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (!m()) {
            return;
        }
        r("receive RefreshShortsCollectEvent -> " + event);
        if (event.getCollect()) {
            p2(event.getShortsId());
        } else {
            o2(event.getShortsId());
        }
    }

    @au.l(threadMode = ThreadMode.MAIN)
    public final void receiveReservationPushDialogEvent(@NotNull ReservationNotificationEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (!m()) {
            return;
        }
        r("receiveReservationPushDialogEvent -> event(" + event + ')');
        if (event.isShow()) {
            v3();
        } else {
            F3();
        }
    }

    @au.l(threadMode = ThreadMode.MAIN)
    public final void receiveShortsPausePlayEvent(@NotNull ShortsPausePlayEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (!m()) {
            return;
        }
        r("receiveShortsPausePlayEvent -> mPaused(" + n() + ')');
        if (!n()) {
            v3();
        }
    }

    @au.l(threadMode = ThreadMode.MAIN)
    public final void receiveShortsResumePlayEvent(@NotNull ShortsResumePlayEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (!m()) {
            return;
        }
        r("receiveResumeVideoPlayEvent -> mPaused(" + n() + ')');
        if (!n()) {
            F3();
        }
    }

    @au.l(threadMode = ThreadMode.MAIN)
    public final void receiveUpdateMainTabEvent(@NotNull UpdateMainTabEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.f46808d0 = event.getTabType();
        if (!g3()) {
            B2();
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public void t() {
        super.t();
        ud.a.f68411a.J0(true);
        O2();
        E2();
        R();
        this.f46807c0 = T1();
        IImmersionFeature.MessageType messageType = IImmersionFeature.MessageType.ACTIVITY_ON_CREATE;
        HashMap hashMap = new HashMap();
        hashMap.put("from", "ShortsFragment");
        Unit unit = Unit.f60915a;
        M3(new com.startshorts.androidplayer.manager.immersion.feature.k(messageType, hashMap));
        J3(IShortsFeature.MessageType.FIRST_USER_VISIBLE);
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.PageStateFragment, com.startshorts.androidplayer.ui.fragment.base.BaseVDBFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public void v() {
        super.v();
        ShortsAdapter shortsAdapter = this.f46813r;
        if (shortsAdapter != null) {
            shortsAdapter.z();
        }
        ShortsViewPagerManager shortsViewPagerManager = this.f46814s;
        if (shortsViewPagerManager != null) {
            shortsViewPagerManager.p();
        }
        ShortsEpisodeManager shortsEpisodeManager = this.f46819x;
        if (shortsEpisodeManager != null) {
            shortsEpisodeManager.o();
        }
        DiscreteSeekBar discreteSeekBar = this.H;
        if (discreteSeekBar != null) {
            discreteSeekBar.e();
        }
        if (this.O.isInitialized()) {
            this.O.getValue().g();
        }
        if (this.R.isInitialized()) {
            Observer<? super com.startshorts.androidplayer.viewmodel.player.c> observer = this.T;
            if (observer != null) {
                r("remove mPlayerState observer");
                this.R.getValue().H().removeObserver(observer);
            }
            Observer<? super com.startshorts.androidplayer.viewmodel.player.a> observer2 = this.U;
            if (observer2 != null) {
                r("remove mPlaybackTimeState observer");
                this.R.getValue().G().removeObserver(observer2);
            }
        }
        ud.a.f68411a.J0(false);
        for (IShortsFeature iShortsFeature : this.M) {
            iShortsFeature.release();
        }
        this.M.clear();
    }

    /* compiled from: ShortsFragment.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nShortsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShortsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$initViewPagerAdapter$1$1\n+ 2 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt\n*L\n1#1,2950:1\n15#2,9:2951\n15#2,9:2960\n*S KotlinDebug\n*F\n+ 1 ShortsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$initViewPagerAdapter$1$1\n*L\n1085#1:2951,9\n1102#1:2960,9\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class l extends ShortsAdapter.d {

        /* compiled from: FragmentExt.kt */
        @Metadata
        @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 ShortsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$initViewPagerAdapter$1$1\n*L\n1#1,20:1\n1087#2,12:21\n*E\n"})
        /* loaded from: classes7.dex */
        public static final class a implements Function0<Unit> {

            /* renamed from: a */
            final /* synthetic */ ShortsFragment f46839a;

            public a(ShortsFragment shortsFragment) {
                this.f46839a = shortsFragment;
            }

            public final void a() {
                ShortsFragment shortsFragment = this.f46839a;
                Intent intent = new Intent(this.f46839a.requireContext(), SearchActivity.class);
                intent.putExtra("from", "shorts");
                shortsFragment.startActivity(intent);
                EventManager eventManager = EventManager.f42463a;
                Bundle bundle = new Bundle();
                bundle.putString("from", "shorts");
                Unit unit = Unit.f60915a;
                EventManager.s0(eventManager, "search_click", bundle, 0L, 4, null);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                a();
                return Unit.f60915a;
            }
        }

        /* compiled from: FragmentExt.kt */
        @Metadata
        @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 ShortsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$initViewPagerAdapter$1$1\n*L\n1#1,20:1\n1104#2,2:21\n*E\n"})
        /* loaded from: classes7.dex */
        public static final class c implements Function0<Unit> {

            /* renamed from: a */
            final /* synthetic */ ShortsFragment f46840a;

            /* renamed from: b */
            final /* synthetic */ ShortsEpisode f46841b;

            /* renamed from: c */
            final /* synthetic */ ShortsLabel f46842c;

            public c(ShortsFragment shortsFragment, ShortsEpisode shortsEpisode, ShortsLabel shortsLabel) {
                this.f46840a = shortsFragment;
                this.f46841b = shortsEpisode;
                this.f46842c = shortsLabel;
            }

            public final void a() {
                TagFilterFragment.a aVar = TagFilterFragment.f46869v;
                Context requireContext = this.f46840a.requireContext();
                Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
                aVar.b(requireContext, this.f46841b, this.f46842c, "shorts");
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                a();
                return Unit.f60915a;
            }
        }

        l() {
            ShortsFragment.this = r1;
        }

        @Override // com.startshorts.androidplayer.ui.view.base.SwipingFrameLayout.b
        public void a(MotionEvent event) {
            Intrinsics.checkNotNullParameter(event, "event");
            ShortsFragment.this.r("onActionDownAfterFirstLongClick");
            ShortsFragment.this.q2(4, event, true);
        }

        @Override // com.startshorts.androidplayer.ui.view.base.SwipingFrameLayout.b
        public void b(MotionEvent event) {
            Intrinsics.checkNotNullParameter(event, "event");
            ShortsFragment.r2(ShortsFragment.this, 4, event, false, 4, null);
        }

        @Override // com.startshorts.androidplayer.ui.view.base.SwipingFrameLayout.b
        public void c(MotionEvent event) {
            Intrinsics.checkNotNullParameter(event, "event");
            ShortsFragment.this.r("onActionUpAfterFirstLongClick");
            ShortsFragment.r2(ShortsFragment.this, 4, event, false, 4, null);
            ShortsFragment.this.p4(true);
            ShortsFragment shortsFragment = ShortsFragment.this;
            shortsFragment.O1(shortsFragment.f2());
        }

        @Override // com.startshorts.androidplayer.ui.view.base.SwipingFrameLayout.b
        public void d() {
            ShortsFragment.this.r("onCancelFirstLongClick");
            ShortsFragment.this.J3(IShortsFeature.MessageType.PAGE_CANCEL_FIRST_LONG_CLICK);
            ShortsFragment.this.p4(true);
            ShortsFragment shortsFragment = ShortsFragment.this;
            shortsFragment.O1(shortsFragment.f2());
        }

        @Override // com.startshorts.androidplayer.ui.view.base.SwipingFrameLayout.b
        public void e() {
            ShortsFragment.this.r("onCancelSecondLongClick");
            ShortsFragment.this.J3(IShortsFeature.MessageType.PAGE_CANCEL_SECOND_LONG_CLICK);
            ShortsFragment.this.p4(true);
            ShortsFragment shortsFragment = ShortsFragment.this;
            shortsFragment.O1(shortsFragment.f2());
        }

        @Override // com.startshorts.androidplayer.ui.view.base.SwipingFrameLayout.b
        public void f() {
            String skipValue;
            ShortsEpisode e22 = ShortsFragment.this.e2();
            if (e22 == null) {
                return;
            }
            if (e22.isAd()) {
                ActResource extraAdInfo = e22.getExtraAdInfo();
                if (extraAdInfo != null && (skipValue = extraAdInfo.getSkipValue()) != null) {
                    ShortsFragment shortsFragment = ShortsFragment.this;
                    EventManager eventManager = EventManager.f42463a;
                    EventManager.s0(eventManager, "shorts_second_position_click", EventManager.x(eventManager, e22.getExtraAdInfo(), false, 2, null), 0L, 4, null);
                    IntentUtil intentUtil = IntentUtil.f48164a;
                    Context requireContext = shortsFragment.requireContext();
                    Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
                    intentUtil.c(requireContext, skipValue);
                    return;
                }
                return;
            }
            ShortsFragment shortsFragment2 = ShortsFragment.this;
            shortsFragment2.r("onClick -> mVideoPrepared(" + ShortsFragment.this.A + ") mVideoPaused(" + ShortsFragment.this.B + ") mPlayError(" + ShortsFragment.this.D + ") mUserPausePlay(" + ShortsFragment.this.C + ')');
            if (ShortsFragment.this.A) {
                if (ShortsFragment.this.B) {
                    ShortsFragment.this.F3();
                } else if (ShortsFragment.this.D) {
                    ShortsFragment.this.D = false;
                    ShortsEpisodeManager shortsEpisodeManager = ShortsFragment.this.f46819x;
                    if (shortsEpisodeManager != null) {
                        shortsEpisodeManager.p();
                    }
                } else {
                    ShortsFragment.this.C = true;
                    ShortsFragment.this.v3();
                }
            } else if (!ShortsFragment.this.D) {
                ShortsFragment.this.C = true;
                ShortsFragment.this.v3();
            } else if (!ShortsFragment.this.i3()) {
                ShortsFragment.this.D = false;
                ShortsEpisodeManager shortsEpisodeManager2 = ShortsFragment.this.f46819x;
                if (shortsEpisodeManager2 != null) {
                    shortsEpisodeManager2.p();
                }
            }
        }

        @Override // com.startshorts.androidplayer.ui.view.base.SwipingFrameLayout.b
        public void g() {
            if (!ShortsFragment.this.Z1() && !ShortsFragment.this.i3() && !ShortsFragment.this.j3() && ShortsFragment.this.b3()) {
                ShortsFragment.this.r("onFirstLongClick");
                ShortsFragment.this.p4(false);
                ShortsFragment.this.l4(false);
                ShortsFragment shortsFragment = ShortsFragment.this;
                IShortsFeature.MessageType messageType = IShortsFeature.MessageType.PAGE_FIRST_LONG_CLICK;
                HashMap hashMap = new HashMap();
                hashMap.put("activity", ShortsFragment.this.j());
                Unit unit = Unit.f60915a;
                shortsFragment.K3(new com.startshorts.androidplayer.manager.shorts.feature.i(messageType, hashMap));
            }
        }

        @Override // com.startshorts.androidplayer.ui.view.base.SwipingFrameLayout.b
        public void h() {
            ShortsFragment.this.r("onMultiPointerTouch");
            ShortsFragment.this.J3(IShortsFeature.MessageType.PAGE_MULTI_POINTER_TOUCH);
        }

        @Override // com.startshorts.androidplayer.ui.view.base.SwipingFrameLayout.b
        public void j() {
            if (!ShortsFragment.this.C && !ShortsFragment.this.Z1() && !ShortsFragment.this.i3() && !ShortsFragment.this.j3() && ShortsFragment.this.b3()) {
                ShortsFragment.this.r("onSecondLongClick");
                ShortsFragment.this.J3(IShortsFeature.MessageType.PAGE_SECOND_LONG_CLICK);
            }
        }

        @Override // com.startshorts.androidplayer.adapter.shorts.ShortsAdapter.d
        public void m(int i10, MotionEvent event, boolean z10) {
            Intrinsics.checkNotNullParameter(event, "event");
            ShortsFragment.this.q2(i10, event, z10);
        }

        @Override // com.startshorts.androidplayer.adapter.shorts.ShortsAdapter.d
        public void o(int i10, ShortsEpisode episode) {
            String skipValue;
            Intrinsics.checkNotNullParameter(episode, "episode");
            ActResource extraAdInfo = episode.getExtraAdInfo();
            if (extraAdInfo != null && (skipValue = extraAdInfo.getSkipValue()) != null) {
                ShortsFragment shortsFragment = ShortsFragment.this;
                EventManager eventManager = EventManager.f42463a;
                EventManager.s0(eventManager, "shorts_second_position_click", EventManager.x(eventManager, episode.getExtraAdInfo(), false, 2, null), 0L, 4, null);
                IntentUtil intentUtil = IntentUtil.f48164a;
                Context requireContext = shortsFragment.requireContext();
                Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
                intentUtil.c(requireContext, skipValue);
            }
        }

        @Override // com.startshorts.androidplayer.adapter.shorts.ShortsAdapter.d
        public void p(int i10, ShortsEpisode episode) {
            Intrinsics.checkNotNullParameter(episode, "episode");
            if (episode.isCollected()) {
                CollectionViewModel collectionViewModel = ShortsFragment.this.V;
                if (collectionViewModel != null) {
                    collectionViewModel.P(new a.b(ShortsFragment.this.getContext(), 1, 1, episode, "shorts", false));
                    return;
                }
                return;
            }
            CollectionViewModel collectionViewModel2 = ShortsFragment.this.V;
            if (collectionViewModel2 != null) {
                collectionViewModel2.P(new a.C0668a(ShortsFragment.this.getContext(), 1, 1, episode, "shorts", false));
            }
        }

        @Override // com.startshorts.androidplayer.adapter.shorts.ShortsAdapter.d
        public void q(int i10, ShortsEpisode episode) {
            int i11;
            Intrinsics.checkNotNullParameter(episode, "episode");
            EventManager eventManager = EventManager.f42463a;
            Bundle C = eventManager.C(episode);
            C.putString("scene", "shorts");
            C.putString("from", TtmlNode.RIGHT);
            if (!TextUtils.isEmpty(episode.getUpack())) {
                C.putString("upack", episode.getUpack());
            }
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "short_menu_click", C, 0L, 4, null);
            Bundle C2 = eventManager.C(episode);
            C2.putString("scene", "shorts");
            C2.putString("from", "cover");
            if (!TextUtils.isEmpty(episode.getUpack())) {
                C2.putString("upack", episode.getUpack());
            }
            EventManager.s0(eventManager, "shorts_feed_enter_immersion", C2, 0L, 4, null);
            Bundle bundle = new Bundle();
            bundle.putString("scene", "shorts");
            EventManager.s0(eventManager, "drama_avatar_click", bundle, 0L, 4, null);
            ShortsFragment shortsFragment = ShortsFragment.this;
            if (episode.isTrailer()) {
                i11 = 8;
            } else {
                i11 = 2;
            }
            ShortsFragment.U3(shortsFragment, i11, null, episode, true, 2, null);
        }

        @Override // com.startshorts.androidplayer.adapter.shorts.ShortsAdapter.d
        public void r(int i10, ShortsEpisode episode) {
            int i11;
            Intrinsics.checkNotNullParameter(episode, "episode");
            EventManager eventManager = EventManager.f42463a;
            Bundle C = eventManager.C(episode);
            C.putString("scene", "shorts");
            C.putString("from", TtmlNode.RIGHT);
            if (!TextUtils.isEmpty(episode.getUpack())) {
                C.putString("upack", episode.getUpack());
            }
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "short_menu_click", C, 0L, 4, null);
            Bundle C2 = eventManager.C(episode);
            C2.putString("scene", "shorts");
            C2.putString("from", TtmlNode.RIGHT);
            if (!TextUtils.isEmpty(episode.getUpack())) {
                C2.putString("upack", episode.getUpack());
            }
            EventManager.s0(eventManager, "shorts_feed_enter_immersion", C2, 0L, 4, null);
            ShortsFragment shortsFragment = ShortsFragment.this;
            if (episode.isTrailer()) {
                i11 = 8;
            } else {
                i11 = 2;
            }
            ShortsFragment.U3(shortsFragment, i11, null, episode, true, 2, null);
        }

        @Override // com.startshorts.androidplayer.adapter.shorts.ShortsAdapter.d
        public void s(int i10, ShortsEpisode episode) {
            Intrinsics.checkNotNullParameter(episode, "episode");
            ShortsFragment shortsFragment = ShortsFragment.this;
            FragmentExtKt.b(shortsFragment, new a(shortsFragment), new b());
        }

        @Override // com.startshorts.androidplayer.adapter.shorts.ShortsAdapter.d
        public void t(int i10, ShortsEpisode episode) {
            Intrinsics.checkNotNullParameter(episode, "episode");
            EventManager eventManager = EventManager.f42463a;
            Bundle C = eventManager.C(episode);
            C.putString("scene", "shorts");
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "share", C, 0L, 4, null);
            IntentUtil intentUtil = IntentUtil.f48164a;
            Context requireContext = ShortsFragment.this.requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
            IntentUtil.g(intentUtil, requireContext, episode.getShareUrl(), null, 4, null);
        }

        @Override // com.startshorts.androidplayer.adapter.shorts.ShortsAdapter.d
        public void u(int i10, ShortsEpisode episode, ShortsLabel shortsLabel) {
            Intrinsics.checkNotNullParameter(episode, "episode");
            Intrinsics.checkNotNullParameter(shortsLabel, "shortsLabel");
            ShortsFragment shortsFragment = ShortsFragment.this;
            FragmentExtKt.b(shortsFragment, new c(shortsFragment, episode, shortsLabel), new d());
        }

        @Override // com.startshorts.androidplayer.adapter.shorts.ShortsAdapter.d
        public void v(int i10, ShortsEpisode episode) {
            Intrinsics.checkNotNullParameter(episode, "episode");
            if (Intrinsics.areEqual(episode.isRelease(), Boolean.FALSE)) {
                return;
            }
            EventManager eventManager = EventManager.f42463a;
            Bundle C = eventManager.C(episode);
            C.putString("scene", "shorts");
            C.putString("from", "play");
            if (!TextUtils.isEmpty(episode.getUpack())) {
                C.putString("upack", episode.getUpack());
            }
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "shorts_feed_enter_immersion", C, 0L, 4, null);
            Bundle C2 = eventManager.C(episode);
            C2.putString("scene", "shorts");
            C2.putString("from", "play");
            EventManager.s0(eventManager, "watch_now_click", C2, 0L, 4, null);
            ShortsFragment.U3(ShortsFragment.this, 8, null, episode, false, 10, null);
        }

        /* compiled from: FragmentExt.kt */
        @Metadata
        @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$4\n+ 2 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$2\n*L\n1#1,21:1\n17#2:22\n*E\n"})
        /* loaded from: classes7.dex */
        public static final class b implements Function0<Unit> {
            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                a();
                return Unit.f60915a;
            }

            public final void a() {
            }
        }

        /* compiled from: FragmentExt.kt */
        @Metadata
        @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$4\n+ 2 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$2\n*L\n1#1,21:1\n17#2:22\n*E\n"})
        /* loaded from: classes7.dex */
        public static final class d implements Function0<Unit> {
            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                a();
                return Unit.f60915a;
            }

            public final void a() {
            }
        }
    }

    /* compiled from: ShortsFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c implements l.a {
        c() {
            ShortsFragment.this = r1;
        }

        @Override // com.startshorts.androidplayer.manager.immersion.feature.l.a
        public void a(String from, boolean z10, boolean z11, IImmersionFeature.MessageType state) {
            Intrinsics.checkNotNullParameter(from, "from");
            Intrinsics.checkNotNullParameter(state, "state");
            ShortsEpisode e22 = ShortsFragment.this.e2();
            if (e22 != null && !e22.isAd() && !z11) {
                if ((!e22.isTrailer() || !Intrinsics.areEqual(e22.isRelease(), Boolean.FALSE)) && !z10 && ShortsFragment.this.g3() && ShortsFragment.this.Z2()) {
                    ShortsFragment.this.V3(from, e22);
                }
            }
        }

        @Override // com.startshorts.androidplayer.manager.immersion.feature.l.a
        public void b() {
        }
    }

    /* compiled from: ShortsFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class m implements ShortsViewPagerManager.b {

        /* renamed from: b */
        final /* synthetic */ Ref.ObjectRef<ShortsViewPagerManager.DraggingDirection> f46844b;

        m(Ref.ObjectRef<ShortsViewPagerManager.DraggingDirection> objectRef) {
            ShortsFragment.this = r1;
            this.f46844b = objectRef;
        }

        @Override // com.startshorts.androidplayer.manager.shorts.core.ShortsViewPagerManager.b
        public void a(boolean z10) {
            ShortsFragment.this.k3(true);
        }

        @Override // com.startshorts.androidplayer.manager.shorts.core.ShortsViewPagerManager.b
        public void c(int i10, int i11, boolean z10, boolean z11) {
            ShortsFragment.this.O1(i10);
            ShortsEpisodeManager shortsEpisodeManager = ShortsFragment.this.f46819x;
            if (shortsEpisodeManager != null) {
                shortsEpisodeManager.k(z10, z11);
            }
            if (i11 != -1) {
                ShortsFragment.this.K3(new com.startshorts.androidplayer.manager.shorts.feature.i(IShortsFeature.MessageType.SWITCH_EPISODE, null, 2, null));
            }
        }

        @Override // com.startshorts.androidplayer.manager.shorts.core.ShortsViewPagerManager.b
        public void d(int i10, boolean z10) {
            if (ShortsFragment.this.e3()) {
                ShortsFragment.this.Z3();
            }
            if (ShortsFragment.this.W2()) {
                ShortsFragment.this.R3();
            }
        }

        @Override // com.startshorts.androidplayer.manager.shorts.core.ShortsViewPagerManager.b
        public void e() {
            ShortsFragment.this.r("onUserDraggingEnd");
            this.f46844b.element = null;
            if (ShortsFragment.this.e3()) {
                ShortsFragment.this.Z3();
            }
            if (ShortsFragment.this.W2()) {
                ShortsFragment.this.R3();
            }
        }

        @Override // com.startshorts.androidplayer.manager.shorts.core.ShortsViewPagerManager.b
        public void f() {
            ShortsFragment.this.r("onUserDraggingStart");
            this.f46844b.element = null;
            ShortsAdapter shortsAdapter = ShortsFragment.this.f46813r;
            if (shortsAdapter != null) {
                shortsAdapter.L(ShortsFragment.this.f2());
            }
            ShortsFragment.this.J3(IShortsFeature.MessageType.PAGE_USER_DRAGGING_START);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.startshorts.androidplayer.manager.shorts.core.ShortsViewPagerManager.b
        public void g(ShortsViewPagerManager.DraggingDirection direction) {
            Intrinsics.checkNotNullParameter(direction, "direction");
            ShortsFragment shortsFragment = ShortsFragment.this;
            shortsFragment.r("onUserDraggingDirectionChanged -> " + direction);
            Ref.ObjectRef<ShortsViewPagerManager.DraggingDirection> objectRef = this.f46844b;
            if (objectRef.element == null) {
                objectRef.element = direction;
                if (ShortsFragment.this.f2() == 0 && direction == ShortsViewPagerManager.DraggingDirection.DOWN) {
                    return;
                }
                if (ShortsFragment.this.f3()) {
                    ShortsFragment.this.A2(4);
                }
                if (ShortsFragment.this.X2()) {
                    ShortsFragment.t2(ShortsFragment.this, 4, false, 2, null);
                }
            }
        }

        @Override // com.startshorts.androidplayer.manager.shorts.core.ShortsViewPagerManager.b
        public void b(int i10) {
        }
    }

    /* compiled from: ShortsFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class g implements f.b {
        g() {
            ShortsFragment.this = r1;
        }

        @Override // com.startshorts.androidplayer.manager.player.feature.f.b
        public void b(String content) {
            Intrinsics.checkNotNullParameter(content, "content");
            ShortsAdapter shortsAdapter = ShortsFragment.this.f46813r;
            if (shortsAdapter != null) {
                shortsAdapter.j0(ShortsFragment.this.f2(), content);
            }
        }

        @Override // com.startshorts.androidplayer.manager.player.feature.f.b
        public void a(int i10, int i11, boolean z10, boolean z11) {
        }
    }
}
