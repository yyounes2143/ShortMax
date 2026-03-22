package com.startshorts.androidplayer.ui.activity.immersion;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.view.MotionEvent;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.ContextCompat;
import androidx.databinding.ViewStubProxy;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.LifecycleOwnerKt;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.adjust.sdk.Constants;
import com.airbnb.lottie.LottieAnimationView;
import com.bytedance.vodsetting.Module;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.scwang.smart.refresh.layout.SmartRefreshLayout;
import com.scwang.smart.refresh.layout.constant.RefreshState;
import com.ss.texturerender.TextureRenderKeys;
import com.ss.ttvideoengine.strategy.source.StrategySource;
import com.startshorts.androidplayer.R$color;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.adapter.base.BaseAdapter;
import com.startshorts.androidplayer.adapter.immersion.ImmersionAdapter;
import com.startshorts.androidplayer.bean.account.Account;
import com.startshorts.androidplayer.bean.ad.AdConfig;
import com.startshorts.androidplayer.bean.ad.AdNewConfig;
import com.startshorts.androidplayer.bean.ad.FreeEpisodeInt;
import com.startshorts.androidplayer.bean.campaign.GoogleEventUploadInfo;
import com.startshorts.androidplayer.bean.checkin.NewbieWatchBonus;
import com.startshorts.androidplayer.bean.checkin.NewbieWatchTask;
import com.startshorts.androidplayer.bean.eventbus.AppStateEvent;
import com.startshorts.androidplayer.bean.eventbus.CampaignRefreshSuccessEvent;
import com.startshorts.androidplayer.bean.eventbus.DailyWatchDramaReceiveCoinEvent;
import com.startshorts.androidplayer.bean.eventbus.EpisodeListUnlockedEvent;
import com.startshorts.androidplayer.bean.eventbus.EpisodePlayingEvent;
import com.startshorts.androidplayer.bean.eventbus.FinishImmersionActivityEvent;
import com.startshorts.androidplayer.bean.eventbus.RefreshAccountEvent;
import com.startshorts.androidplayer.bean.eventbus.RefreshShortsCollectEvent;
import com.startshorts.androidplayer.bean.eventbus.ScrollToEpisodeEvent;
import com.startshorts.androidplayer.bean.eventbus.UserRechargedEvent;
import com.startshorts.androidplayer.bean.immersion.ImmersionParams;
import com.startshorts.androidplayer.bean.immersion.ImmersionShortsInfo;
import com.startshorts.androidplayer.bean.notification.ShortPlayNotification;
import com.startshorts.androidplayer.bean.player.PlayerHeaderInfo;
import com.startshorts.androidplayer.bean.purchase.AvailableExpansionSku;
import com.startshorts.androidplayer.bean.purchase.CoinSku;
import com.startshorts.androidplayer.bean.purchase.GPayPriceInfo;
import com.startshorts.androidplayer.bean.search.RedeemCode;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.shorts.ImmersionShortsRecord;
import com.startshorts.androidplayer.bean.shorts.PlayResolution;
import com.startshorts.androidplayer.bean.shorts.PlaySpeed;
import com.startshorts.androidplayer.bean.shorts.QueryEpisodesResult;
import com.startshorts.androidplayer.bean.shorts.ShortDiscountSku;
import com.startshorts.androidplayer.bean.shorts.ShortPlayContentInfo;
import com.startshorts.androidplayer.bean.shorts.ShortsLabel;
import com.startshorts.androidplayer.bean.subs.Ad2PayConfig;
import com.startshorts.androidplayer.bean.subs.SubsSku;
import com.startshorts.androidplayer.bean.unlock.UnlockEpisodeAdMethod;
import com.startshorts.androidplayer.bean.unlock.UnlockEpisodeMethod;
import com.startshorts.androidplayer.databinding.ActivityImmersionBinding;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.configure.abtest.ABTestFactory;
import com.startshorts.androidplayer.manager.discount.DiscountSubscribeManager;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.manager.immersion.core.ImmersionEpisodeManager;
import com.startshorts.androidplayer.manager.immersion.core.ImmersionJobsManager;
import com.startshorts.androidplayer.manager.immersion.core.ImmersionViewPagerManager;
import com.startshorts.androidplayer.manager.immersion.feature.AdMediaVideoFeature;
import com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature;
import com.startshorts.androidplayer.manager.immersion.feature.a;
import com.startshorts.androidplayer.manager.immersion.feature.e;
import com.startshorts.androidplayer.manager.immersion.feature.g;
import com.startshorts.androidplayer.manager.immersion.feature.i;
import com.startshorts.androidplayer.manager.immersion.feature.l;
import com.startshorts.androidplayer.manager.immersion.feature.m;
import com.startshorts.androidplayer.manager.immersion.feature.n;
import com.startshorts.androidplayer.manager.immersion.feature.o;
import com.startshorts.androidplayer.manager.immersion.feature.q;
import com.startshorts.androidplayer.manager.immersion.feature.s;
import com.startshorts.androidplayer.manager.immersion.feature.v;
import com.startshorts.androidplayer.manager.immersion.feature.w;
import com.startshorts.androidplayer.manager.player.feature.RequestHeadersFeature;
import com.startshorts.androidplayer.manager.player.feature.f;
import com.startshorts.androidplayer.manager.purchase.Ad2PayPresent;
import com.startshorts.androidplayer.manager.push.PushManager;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.repo.campaign.CampaignRepo;
import com.startshorts.androidplayer.repo.immersion.ImmersionRepo;
import com.startshorts.androidplayer.repo.rewards.RewardsRepo;
import com.startshorts.androidplayer.service.miniwindow.ImmersionMiniWindow;
import com.startshorts.androidplayer.ui.activity.base.PageStateActivity;
import com.startshorts.androidplayer.ui.activity.download.DownloadChooseActivity;
import com.startshorts.androidplayer.ui.activity.immersion.ImmersionActivity;
import com.startshorts.androidplayer.ui.activity.subs.SubsDetailActivity;
import com.startshorts.androidplayer.ui.dialog.immersion.TopUpDialog;
import com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment;
import com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment;
import com.startshorts.androidplayer.ui.fragment.immersion.ImmersionBackShortsFragment;
import com.startshorts.androidplayer.ui.fragment.immersion.ImmersionBottomBackShortsDialog;
import com.startshorts.androidplayer.ui.fragment.immersion.ImmersionEpisodeListDialog;
import com.startshorts.androidplayer.ui.fragment.immersion.ImmersionIntroductionDialog;
import com.startshorts.androidplayer.ui.fragment.immersion.ImmersionRedeemCodeDialog;
import com.startshorts.androidplayer.ui.fragment.immersion.ImmersionShortBackEarnCoinDialog;
import com.startshorts.androidplayer.ui.fragment.purchase.Ad2CoinsDialog;
import com.startshorts.androidplayer.ui.fragment.purchase.Ad2SubscribeDialog;
import com.startshorts.androidplayer.ui.fragment.purchase.SubsProExpiredDialog;
import com.startshorts.androidplayer.ui.fragment.purchase.v2.BaseUnlockEpisodeDialog;
import com.startshorts.androidplayer.ui.fragment.purchase.v2.SkuExpansionDialog;
import com.startshorts.androidplayer.ui.fragment.purchase.v2.SubsExpansionDialog;
import com.startshorts.androidplayer.ui.fragment.purchase.v2.SubsExpansionNewDialog;
import com.startshorts.androidplayer.ui.fragment.purchase.v2.UnlockTemplate21Dialog;
import com.startshorts.androidplayer.ui.fragment.purchase.v2.UnlockTemplate22Dialog;
import com.startshorts.androidplayer.ui.fragment.reward.RewardsFragment;
import com.startshorts.androidplayer.ui.fragment.tag.TagDrawerDialog;
import com.startshorts.androidplayer.ui.fragment.unlock.AdContinueDialogFragment;
import com.startshorts.androidplayer.ui.fragment.unlock.AdContinueRetentionDialogFragment;
import com.startshorts.androidplayer.ui.fragment.unlock.AdRetentionDialogFragment;
import com.startshorts.androidplayer.ui.fragment.unlock.PurePayingUserAdRetentionDBDialogFragment;
import com.startshorts.androidplayer.ui.fragment.unlock.PurePayingUserAdRetentionDialogFragment;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.discover.CollectTipsImmersionView;
import com.startshorts.androidplayer.ui.view.immersion.ImmersionTimeLayout;
import com.startshorts.androidplayer.ui.view.immersion.ShortDiscountView;
import com.startshorts.androidplayer.ui.view.immersion.menu.ImmersionClearScreenView;
import com.startshorts.androidplayer.ui.view.immersion.menu.ImmersionDownloadDramaView;
import com.startshorts.androidplayer.ui.view.immersion.menu.ImmersionMiniWindowView;
import com.startshorts.androidplayer.ui.view.immersion.menu.ImmersionPlayResolutionListView;
import com.startshorts.androidplayer.ui.view.immersion.menu.ImmersionPlayResolutionView;
import com.startshorts.androidplayer.ui.view.immersion.menu.ImmersionPlaySpeedListView;
import com.startshorts.androidplayer.ui.view.immersion.menu.ImmersionPlaySpeedView;
import com.startshorts.androidplayer.ui.view.immersion.notification.ImmersionNextEpisodeTipView;
import com.startshorts.androidplayer.ui.view.immersion.notification.ImmersionNotificationLayout;
import com.startshorts.androidplayer.ui.view.immersion.notification.ImmersionNotificationType;
import com.startshorts.androidplayer.ui.view.immersion.unlock.DiscountUnlockView;
import com.startshorts.androidplayer.ui.view.immersion.unlock.IaaSkuSubscribeUnlockView;
import com.startshorts.androidplayer.ui.view.immersion.unlock.PurePayingUserAdRetentionUnlockView;
import com.startshorts.androidplayer.ui.view.immersion.unlock.SkuSubscribeUnlockView;
import com.startshorts.androidplayer.ui.view.refresh.BallPulseFooter;
import com.startshorts.androidplayer.ui.view.refresh.MaterialHeader;
import com.startshorts.androidplayer.ui.view.seekbar.DiscreteSeekBar2;
import com.startshorts.androidplayer.ui.view.shortsV2.shortrating.ShortRatingHandler;
import com.startshorts.androidplayer.ui.view.shortsV2.shortrating.ShortRatingLayout;
import com.startshorts.androidplayer.ui.view.task.DailyWatchDramaTaskView;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.utils.IntentUtil;
import com.startshorts.androidplayer.utils.ResourceHandler;
import com.startshorts.androidplayer.utils.TimeUtil;
import com.startshorts.androidplayer.viewmodel.billing.BillingViewModel;
import com.startshorts.androidplayer.viewmodel.billing.a;
import com.startshorts.androidplayer.viewmodel.billing.b;
import com.startshorts.androidplayer.viewmodel.immersion.ImmersionViewModel;
import com.startshorts.androidplayer.viewmodel.immersion.UnlockViewModel;
import com.startshorts.androidplayer.viewmodel.immersion.c;
import com.startshorts.androidplayer.viewmodel.immersion.d;
import com.startshorts.androidplayer.viewmodel.immersion.e;
import com.startshorts.androidplayer.viewmodel.immersion.f;
import com.startshorts.androidplayer.viewmodel.mylist.CollectionViewModel;
import com.startshorts.androidplayer.viewmodel.mylist.a;
import com.startshorts.androidplayer.viewmodel.mylist.b;
import com.startshorts.androidplayer.viewmodel.player.PlayerViewModel;
import com.startshorts.androidplayer.viewmodel.player.a;
import com.startshorts.androidplayer.viewmodel.player.b;
import com.startshorts.androidplayer.viewmodel.player.c;
import com.tencent.wcdb.FileUtils;
import com.vungle.ads.internal.presenter.MRAIDPresenter;
import com.vungle.ads.internal.presenter.NativeAdPresenter;
import dk.f;
import gi.d;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import kotlinx.coroutines.r;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import uh.m1;
import yh.x2;
/* compiled from: ImmersionActivity.kt */
@Metadata
@SourceDebugExtension({"SMAP\nImmersionActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImmersionActivity.kt\ncom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,6800:1\n4827#1:6809\n4827#1:6811\n4827#1:6813\n4827#1:6815\n2998#1,7:6831\n4827#1:6838\n2998#1,7:6840\n4827#1:6847\n2998#1,7:6849\n2998#1,7:6856\n4827#1:6863\n2998#1,7:6865\n4827#1:6872\n4827#1:6874\n4827#1:6876\n4827#1:6880\n4827#1:6882\n4827#1:6884\n4827#1:6886\n4827#1:6888\n4827#1:6894\n4827#1:6896\n4827#1:6898\n2998#1,7:6904\n2998#1,7:6911\n4827#1:6918\n4827#1:6920\n2998#1,7:6929\n4827#1:6936\n4827#1:6938\n4827#1:6944\n4827#1:6946\n4827#1:6948\n4827#1:6950\n4827#1:6952\n4827#1:6954\n4827#1:6956\n1#2:6801\n1#2:6810\n1#2:6812\n1#2:6814\n1#2:6816\n1#2:6839\n1#2:6848\n1#2:6864\n1#2:6873\n1#2:6875\n1#2:6877\n1#2:6881\n1#2:6883\n1#2:6885\n1#2:6887\n1#2:6889\n1#2:6895\n1#2:6897\n1#2:6899\n1#2:6919\n1#2:6921\n1#2:6937\n1#2:6939\n1#2:6945\n1#2:6947\n1#2:6949\n1#2:6951\n1#2:6953\n1#2:6955\n1#2:6957\n360#3,7:6802\n1863#3,2:6817\n1863#3,2:6819\n1863#3,2:6821\n1863#3,2:6823\n1863#3,2:6825\n1863#3,2:6827\n1863#3,2:6829\n1863#3,2:6878\n1863#3,2:6890\n1863#3,2:6892\n1557#3:6900\n1628#3,3:6901\n1557#3:6922\n1628#3,3:6923\n1872#3,3:6926\n1863#3,2:6940\n1863#3,2:6942\n*S KotlinDebug\n*F\n+ 1 ImmersionActivity.kt\ncom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity\n*L\n2240#1:6809\n2241#1:6811\n2298#1:6813\n2823#1:6815\n3618#1:6831,7\n3699#1:6838\n3706#1:6840,7\n3734#1:6847\n3767#1:6849,7\n3909#1:6856,7\n3931#1:6863\n3945#1:6865,7\n4298#1:6872\n4466#1:6874\n4512#1:6876\n4672#1:6880\n4677#1:6882\n4681#1:6884\n4766#1:6886\n4779#1:6888\n4917#1:6894\n5414#1:6896\n5415#1:6898\n6048#1:6904,7\n6069#1:6911,7\n6093#1:6918\n6094#1:6920\n6658#1:6929,7\n6750#1:6936\n6753#1:6938\n1132#1:6944\n2557#1:6946\n2628#1:6948\n2655#1:6950\n2678#1:6952\n2684#1:6954\n2706#1:6956\n2240#1:6810\n2241#1:6812\n2298#1:6814\n2823#1:6816\n3699#1:6839\n3734#1:6848\n3931#1:6864\n4298#1:6873\n4466#1:6875\n4512#1:6877\n4672#1:6881\n4677#1:6883\n4681#1:6885\n4766#1:6887\n4779#1:6889\n4917#1:6895\n5414#1:6897\n5415#1:6899\n6093#1:6919\n6094#1:6921\n6750#1:6937\n6753#1:6939\n1132#1:6945\n2557#1:6947\n2628#1:6949\n2655#1:6951\n2678#1:6953\n2684#1:6955\n2706#1:6957\n2125#1:6802,7\n2825#1:6817,2\n3020#1:6819,2\n3046#1:6821,2\n3058#1:6823,2\n3066#1:6825,2\n3074#1:6827,2\n3103#1:6829,2\n4653#1:6878,2\n4791#1:6890,2\n4818#1:6892,2\n5926#1:6900\n5926#1:6901,3\n6576#1:6922\n6576#1:6923,3\n6626#1:6926,3\n6782#1:6940,2\n1036#1:6942,2\n*E\n"})
/* loaded from: classes7.dex */
public final class ImmersionActivity extends PageStateActivity<ActivityImmersionBinding> {
    @NotNull
    public static final a V0 = new a(null);
    private static final int W0 = jk.g.a(2.0f);
    private static final int X0 = jk.g.a(6.0f);
    private boolean B;
    private boolean B0;
    private boolean C0;
    private boolean D;
    @Nullable
    private CountDownTimer D0;
    private boolean E0;
    @Nullable
    private ViewPager2 F;
    private boolean F0;
    @Nullable
    private ImmersionAdapter G;
    private long G0;
    @Nullable
    private ImmersionViewPagerManager H;
    private boolean H0;
    @Nullable
    private SmartRefreshLayout I;
    @Nullable
    private UnlockEpisodeAdMethod I0;
    @Nullable
    private MaterialHeader J;
    @Nullable
    private String J0;
    @Nullable
    private BallPulseFooter K;
    private boolean K0;
    private boolean L;
    @Nullable
    private View L0;
    private boolean M;
    @Nullable
    private View M0;
    @Nullable
    private DiscreteSeekBar2 N;
    @Nullable
    private View N0;
    @Nullable
    private View O;
    private boolean O0;
    @Nullable
    private LottieAnimationView P;
    @Nullable
    private String P0;
    private boolean Q;
    @Nullable
    private SubsSku Q0;
    @Nullable
    private kotlinx.coroutines.r R0;
    @Nullable
    private ImmersionTimeLayout S;
    private boolean S0;
    private boolean T;
    private boolean T0;
    private boolean U;
    private boolean U0;
    private boolean V;
    private boolean W;
    private boolean X;
    private int Y;
    private int Z;
    @Nullable

    /* renamed from: d0  reason: collision with root package name */
    private Function0<Unit> f45256d0;
    @Nullable

    /* renamed from: g0  reason: collision with root package name */
    private ImmersionEpisodeManager f45259g0;
    @Nullable

    /* renamed from: i0  reason: collision with root package name */
    private Toast f45261i0;

    /* renamed from: m0  reason: collision with root package name */
    private boolean f45265m0;

    /* renamed from: o0  reason: collision with root package name */
    private boolean f45267o0;

    /* renamed from: p0  reason: collision with root package name */
    private boolean f45268p0;
    @Nullable

    /* renamed from: q0  reason: collision with root package name */
    private UnlockEpisodeAdMethod f45269q0;

    /* renamed from: r  reason: collision with root package name */
    private ImmersionParams f45270r;

    /* renamed from: r0  reason: collision with root package name */
    private boolean f45271r0;

    /* renamed from: s0  reason: collision with root package name */
    private boolean f45273s0;

    /* renamed from: t  reason: collision with root package name */
    private boolean f45274t;
    @Nullable

    /* renamed from: t0  reason: collision with root package name */
    private DailyWatchDramaTaskView f45275t0;
    @Nullable

    /* renamed from: u0  reason: collision with root package name */
    private dk.f f45277u0;
    @Nullable

    /* renamed from: v0  reason: collision with root package name */
    private ShortRatingLayout f45279v0;
    @Nullable

    /* renamed from: w  reason: collision with root package name */
    private Observer<Object> f45280w;
    @Nullable

    /* renamed from: w0  reason: collision with root package name */
    private ShortRatingHandler f45281w0;
    @Nullable

    /* renamed from: x  reason: collision with root package name */
    private Observer<Object> f45282x;
    @Nullable

    /* renamed from: x0  reason: collision with root package name */
    private String f45283x0;

    /* renamed from: y0  reason: collision with root package name */
    private boolean f45285y0;
    @Nullable

    /* renamed from: z  reason: collision with root package name */
    private Observer<Object> f45286z;

    /* renamed from: z0  reason: collision with root package name */
    private boolean f45287z0;

    /* renamed from: s  reason: collision with root package name */
    private boolean f45272s = true;
    @NotNull

    /* renamed from: u  reason: collision with root package name */
    private final ms.i f45276u = kotlin.c.b(new Function0() { // from class: yh.g
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            ViewModelProvider U7;
            U7 = ImmersionActivity.U7(ImmersionActivity.this);
            return U7;
        }
    });
    @NotNull

    /* renamed from: v  reason: collision with root package name */
    private final ms.i<PlayerViewModel> f45278v = kotlin.c.b(new Function0() { // from class: yh.h
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            PlayerViewModel R7;
            R7 = ImmersionActivity.R7(ImmersionActivity.this);
            return R7;
        }
    });
    @NotNull

    /* renamed from: y  reason: collision with root package name */
    private final ms.i f45284y = kotlin.c.b(new Function0() { // from class: yh.i
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            ImmersionViewModel O7;
            O7 = ImmersionActivity.O7(ImmersionActivity.this);
            return O7;
        }
    });
    @NotNull
    private final ms.i<CollectionViewModel> A = kotlin.c.b(new Function0() { // from class: yh.j
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            CollectionViewModel K7;
            K7 = ImmersionActivity.K7(ImmersionActivity.this);
            return K7;
        }
    });
    @NotNull
    private final ms.i<UnlockViewModel> C = kotlin.c.b(new Function0() { // from class: yh.k
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            UnlockViewModel T7;
            T7 = ImmersionActivity.T7(ImmersionActivity.this);
            return T7;
        }
    });
    @NotNull
    private final ms.i E = kotlin.c.b(new Function0() { // from class: yh.m
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            BillingViewModel I7;
            I7 = ImmersionActivity.I7(ImmersionActivity.this);
            return I7;
        }
    });
    private int R = -1;
    @NotNull

    /* renamed from: a0  reason: collision with root package name */
    private final ImmersionJobsManager f45253a0 = new ImmersionJobsManager();
    @NotNull

    /* renamed from: b0  reason: collision with root package name */
    private final ms.i f45254b0 = kotlin.c.b(new Function0() { // from class: yh.n
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            List S7;
            S7 = ImmersionActivity.S7();
            return S7;
        }
    });
    @NotNull

    /* renamed from: c0  reason: collision with root package name */
    private final ms.i f45255c0 = kotlin.c.b(new Function0() { // from class: yh.o
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            ve.g L7;
            L7 = ImmersionActivity.L7(ImmersionActivity.this);
            return L7;
        }
    });
    @NotNull

    /* renamed from: e0  reason: collision with root package name */
    private final ms.i<List<com.startshorts.androidplayer.manager.immersion.feature.k>> f45257e0 = kotlin.c.b(new Function0() { // from class: yh.p
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            List P7;
            P7 = ImmersionActivity.P7();
            return P7;
        }
    });
    @NotNull

    /* renamed from: f0  reason: collision with root package name */
    private final ImmersionActivity$mPropertyObserver$1 f45258f0 = new ImmersionActivity$mPropertyObserver$1(this);
    @NotNull

    /* renamed from: h0  reason: collision with root package name */
    private String f45260h0 = "other";
    @NotNull

    /* renamed from: j0  reason: collision with root package name */
    private List<Integer> f45262j0 = new ArrayList();
    @NotNull

    /* renamed from: k0  reason: collision with root package name */
    private final List<IImmersionFeature> f45263k0 = CollectionsKt.t(m5(), new com.startshorts.androidplayer.manager.immersion.feature.r(), new com.startshorts.androidplayer.manager.immersion.feature.c(), new com.startshorts.androidplayer.manager.immersion.feature.p(), n5(), new com.startshorts.androidplayer.manager.immersion.feature.d(), t5(), g5(), new com.startshorts.androidplayer.manager.immersion.feature.q(), new com.startshorts.androidplayer.manager.immersion.feature.f(), new com.startshorts.androidplayer.manager.immersion.feature.h(), new com.startshorts.androidplayer.manager.immersion.feature.b(), l5(), new com.startshorts.androidplayer.manager.immersion.feature.u(), i5(), e5(), f5(), new com.startshorts.androidplayer.manager.immersion.feature.j(), new com.startshorts.androidplayer.manager.immersion.feature.t(), k5(), u5(), q5(), h5());
    @NotNull

    /* renamed from: l0  reason: collision with root package name */
    private final ms.i f45264l0 = kotlin.c.b(new Function0() { // from class: yh.q
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            HashMap Q7;
            Q7 = ImmersionActivity.Q7();
            return Q7;
        }
    });

    /* renamed from: n0  reason: collision with root package name */
    private long f45266n0 = -1;
    private int A0 = -1;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: ImmersionActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class ResetReason {
        private static final /* synthetic */ ss.a $ENTRIES;
        private static final /* synthetic */ ResetReason[] $VALUES;
        public static final ResetReason URL_EXPIRED = new ResetReason("URL_EXPIRED", 0);
        public static final ResetReason ACCOUNT_CHANGED = new ResetReason("ACCOUNT_CHANGED", 1);
        public static final ResetReason SKIP_EPISODES = new ResetReason("SKIP_EPISODES", 2);

        private static final /* synthetic */ ResetReason[] $values() {
            return new ResetReason[]{URL_EXPIRED, ACCOUNT_CHANGED, SKIP_EPISODES};
        }

        static {
            ResetReason[] $values = $values();
            $VALUES = $values;
            $ENTRIES = kotlin.enums.a.a($values);
        }

        private ResetReason(String str, int i10) {
        }

        @NotNull
        public static ss.a<ResetReason> getEntries() {
            return $ENTRIES;
        }

        public static ResetReason valueOf(String str) {
            return (ResetReason) Enum.valueOf(ResetReason.class, str);
        }

        public static ResetReason[] values() {
            return (ResetReason[]) $VALUES.clone();
        }
    }

    /* compiled from: ImmersionActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(@NotNull Context context, @NotNull ImmersionParams params) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(params, "params");
            try {
                Intent intent = new Intent(context, ImmersionActivity.class);
                intent.putExtra("immersion_params", jk.l.d(params));
                if (Intrinsics.areEqual(params.getFrom(), "pip_window")) {
                    intent.setFlags(268435456);
                }
                context.startActivity(intent);
            } catch (Exception e10) {
                Logger logger = Logger.f41511a;
                logger.e("ImmersionActivity", "show failed -> " + e10.getMessage());
            }
        }

        private a() {
        }
    }

    /* compiled from: ImmersionActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a0 extends ImmersionAdapter.b {
        a0() {
        }

        @Override // com.startshorts.androidplayer.ui.view.base.SwipingFrameLayout.b
        public void a(MotionEvent event) {
            Intrinsics.checkNotNullParameter(event, "event");
            if (ImmersionActivity.this.l7()) {
                return;
            }
            ImmersionActivity.this.s("onActionDownAfterFirstLongClick");
            ImmersionActivity.this.b6(event, true);
        }

        @Override // com.startshorts.androidplayer.ui.view.base.SwipingFrameLayout.b
        public void b(MotionEvent event) {
            Intrinsics.checkNotNullParameter(event, "event");
            if (ImmersionActivity.this.l7()) {
                return;
            }
            ImmersionActivity.c6(ImmersionActivity.this, event, false, 2, null);
        }

        @Override // com.startshorts.androidplayer.ui.view.base.SwipingFrameLayout.b
        public void c(MotionEvent event) {
            Intrinsics.checkNotNullParameter(event, "event");
            if (ImmersionActivity.this.l7()) {
                return;
            }
            ImmersionActivity.this.s("onActionUpAfterFirstLongClick");
            ImmersionActivity.c6(ImmersionActivity.this, event, false, 2, null);
            ImmersionActivity.this.kb(true);
            int E5 = ImmersionActivity.this.E5();
            ImmersionActivity immersionActivity = ImmersionActivity.this;
            immersionActivity.U4(E5);
            immersionActivity.T4(E5);
        }

        @Override // com.startshorts.androidplayer.ui.view.base.SwipingFrameLayout.b
        public void d() {
            ImmersionActivity.this.s("onCancelFirstLongClick");
            ImmersionActivity.this.K8(IImmersionFeature.MessageType.PAGE_CANCEL_FIRST_LONG_CLICK);
            ImmersionActivity.this.kb(true);
            int E5 = ImmersionActivity.this.E5();
            ImmersionActivity immersionActivity = ImmersionActivity.this;
            immersionActivity.U4(E5);
            immersionActivity.T4(E5);
        }

        @Override // com.startshorts.androidplayer.ui.view.base.SwipingFrameLayout.b
        public void e() {
            ImmersionActivity.this.s("onCancelSecondLongClick");
            ImmersionActivity.this.K8(IImmersionFeature.MessageType.PAGE_CANCEL_SECOND_LONG_CLICK);
            ImmersionActivity.this.kb(true);
            int E5 = ImmersionActivity.this.E5();
            ImmersionActivity immersionActivity = ImmersionActivity.this;
            immersionActivity.U4(E5);
            immersionActivity.T4(E5);
        }

        @Override // com.startshorts.androidplayer.ui.view.base.SwipingFrameLayout.b
        public void f() {
            if (ImmersionActivity.this.l7()) {
                return;
            }
            ImmersionActivity immersionActivity = ImmersionActivity.this;
            immersionActivity.Z4(!immersionActivity.T0);
            if (!ImmersionActivity.this.T0 && !ImmersionActivity.this.V) {
                ImmersionActivity.this.L4(5000L);
            }
        }

        @Override // com.startshorts.androidplayer.ui.view.base.SwipingFrameLayout.b
        public void g() {
            if (!ImmersionActivity.this.l7() && !ImmersionActivity.this.C7() && !ImmersionActivity.this.D7() && ImmersionActivity.this.v7()) {
                ImmersionActivity.this.s("onFirstLongClick");
                ImmersionActivity immersionActivity = ImmersionActivity.this;
                IImmersionFeature.MessageType messageType = IImmersionFeature.MessageType.PAGE_FIRST_LONG_CLICK;
                HashMap hashMap = new HashMap();
                hashMap.put("activity", ImmersionActivity.this);
                Unit unit = Unit.f60915a;
                immersionActivity.L8(new com.startshorts.androidplayer.manager.immersion.feature.k(messageType, hashMap));
                ImmersionActivity.this.kb(false);
                ImmersionActivity.this.fb(false);
                ImmersionActivity.this.eb(false);
            }
        }

        @Override // com.startshorts.androidplayer.ui.view.base.SwipingFrameLayout.b
        public void h() {
            ImmersionActivity.this.s("onMultiPointerTouch");
            ImmersionActivity.this.K8(IImmersionFeature.MessageType.PAGE_MULTI_POINTER_TOUCH);
        }

        @Override // com.startshorts.androidplayer.ui.view.base.SwipingFrameLayout.b
        public void i() {
            super.i();
            if (ImmersionActivity.this.U) {
                if (ImmersionActivity.this.V) {
                    ImmersionActivity.this.A8();
                } else if (ImmersionActivity.this.X) {
                    ImmersionActivity.this.X = false;
                    ImmersionEpisodeManager immersionEpisodeManager = ImmersionActivity.this.f45259g0;
                    if (immersionEpisodeManager != null) {
                        ImmersionEpisodeManager.v(immersionEpisodeManager, null, 1, null);
                    }
                } else {
                    ImmersionActivity.this.W = true;
                    ImmersionActivity.this.c8();
                    ImmersionActivity.this.O4();
                }
            } else if (!ImmersionActivity.this.X) {
                ImmersionActivity.this.W = true;
                ImmersionActivity.this.c8();
            } else if (!ImmersionActivity.this.C7()) {
                ImmersionActivity.this.X = false;
                ImmersionEpisodeManager immersionEpisodeManager2 = ImmersionActivity.this.f45259g0;
                if (immersionEpisodeManager2 != null) {
                    ImmersionEpisodeManager.v(immersionEpisodeManager2, null, 1, null);
                }
            }
        }

        @Override // com.startshorts.androidplayer.ui.view.base.SwipingFrameLayout.b
        public void j() {
            if (!ImmersionActivity.this.l7() && !ImmersionActivity.this.W && !ImmersionActivity.this.C7() && !ImmersionActivity.this.D7() && ImmersionActivity.this.v7()) {
                ImmersionActivity.this.s("onSecondLongClick");
                ImmersionActivity.this.K8(IImmersionFeature.MessageType.PAGE_SECOND_LONG_CLICK);
            }
        }

        @Override // com.startshorts.androidplayer.ui.view.base.SwipingFrameLayout.b
        public void k() {
            ImmersionActivity.this.s("onSwipeFromLeft");
            if (!fk.v.f51778a.b()) {
                ImmersionActivity.this.onBackPressed();
            }
        }

        @Override // com.startshorts.androidplayer.ui.view.base.SwipingFrameLayout.b
        public void l() {
            ImmersionActivity.this.s("onSwipeFromRight");
            if (fk.v.f51778a.b()) {
                ImmersionActivity.this.onBackPressed();
            }
        }

        @Override // com.startshorts.androidplayer.adapter.immersion.ImmersionAdapter.b
        public void m(int i10, int i11) {
            if (ImmersionActivity.this.E5() == i10) {
                ImmersionActivity immersionActivity = ImmersionActivity.this;
                immersionActivity.s("onPositionUpdated -> oldPosition(" + i10 + ") newPosition(" + i11 + ')');
                ImmersionActivity.this.cb(i10, i11);
            }
        }
    }

    /* compiled from: ImmersionActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a1 implements BaseDialogFragment.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Function0<Unit> f45289a;

        a1(Function0<Unit> function0) {
            this.f45289a = function0;
        }

        @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment.b
        public void onDismiss() {
            this.f45289a.invoke();
        }
    }

    /* compiled from: ImmersionActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b1 implements SubsExpansionDialog.b {
        b1() {
        }

        @Override // com.startshorts.androidplayer.ui.fragment.purchase.v2.SubsExpansionDialog.b
        public void a() {
            ImmersionActivity.this.x6();
            BaseEpisode D5 = ImmersionActivity.this.D5();
            if (D5 != null) {
                ImmersionActivity immersionActivity = ImmersionActivity.this;
                immersionActivity.Va(D5, false, immersionActivity.f45260h0);
            }
            if (ImmersionActivity.this.z7()) {
                ImmersionActivity.this.ua();
            }
            if (ImmersionActivity.this.g7()) {
                ImmersionActivity.this.i9();
            }
        }
    }

    /* compiled from: ImmersionActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c implements a.InterfaceC0624a {
        c() {
        }

        @Override // com.startshorts.androidplayer.manager.immersion.feature.a.InterfaceC0624a
        public void a() {
            int i10;
            AccountRepo accountRepo = AccountRepo.f43052a;
            int g02 = accountRepo.g0();
            int e02 = accountRepo.e0();
            BaseEpisode D5 = ImmersionActivity.this.D5();
            if (D5 != null) {
                i10 = D5.getPrice();
            } else {
                i10 = 0;
            }
            BaseEpisode D52 = ImmersionActivity.this.D5();
            if (D52 != null && D52.isLocked() && g02 + e02 < i10) {
                ImmersionActivity.this.Ha("auto", "from_sale");
            }
        }
    }

    /* compiled from: ImmersionActivity.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nImmersionActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImmersionActivity.kt\ncom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$playEpisode$features$1$1$1\n+ 2 ImmersionActivity.kt\ncom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,6800:1\n4827#2:6801\n1#3:6802\n*S KotlinDebug\n*F\n+ 1 ImmersionActivity.kt\ncom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$playEpisode$features$1$1$1\n*L\n2272#1:6801\n2272#1:6802\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class c0 implements RequestHeadersFeature.a {
        c0() {
        }

        @Override // com.startshorts.androidplayer.manager.player.feature.RequestHeadersFeature.a
        public void a(PlayerHeaderInfo info) {
            com.startshorts.androidplayer.manager.immersion.feature.n nVar;
            Object obj;
            Intrinsics.checkNotNullParameter(info, "info");
            ImmersionActivity immersionActivity = ImmersionActivity.this;
            IImmersionFeature.MessageType messageType = IImmersionFeature.MessageType.PLAYER_ERROR_HEADERS;
            HashMap hashMap = new HashMap();
            ImmersionActivity immersionActivity2 = ImmersionActivity.this;
            hashMap.put("error_header_info", info);
            hashMap.put("episode", immersionActivity2.D5());
            Iterator it = immersionActivity2.f45263k0.iterator();
            while (true) {
                nVar = null;
                if (it.hasNext()) {
                    obj = it.next();
                    if (((IImmersionFeature) obj) instanceof com.startshorts.androidplayer.manager.immersion.feature.n) {
                        break;
                    }
                } else {
                    obj = null;
                    break;
                }
            }
            if (obj instanceof com.startshorts.androidplayer.manager.immersion.feature.n) {
                nVar = obj;
            }
            com.startshorts.androidplayer.manager.immersion.feature.n nVar2 = nVar;
            if (nVar2 != null) {
                hashMap.put("play_resolution", nVar2.l());
            }
            Unit unit = Unit.f60915a;
            immersionActivity.L8(new com.startshorts.androidplayer.manager.immersion.feature.k(messageType, hashMap));
        }
    }

    /* compiled from: ImmersionActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c1 implements BaseDialogFragment.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Function0<Unit> f45302a;

        c1(Function0<Unit> function0) {
            this.f45302a = function0;
        }

        @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment.b
        public void onDismiss() {
            this.f45302a.invoke();
        }
    }

    /* compiled from: ImmersionActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d implements AdMediaVideoFeature.c {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ AdMediaVideoFeature f45309b;

        d(AdMediaVideoFeature adMediaVideoFeature) {
            this.f45309b = adMediaVideoFeature;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final boolean e(AdMediaVideoFeature adMediaVideoFeature, final ImmersionActivity immersionActivity, BaseEpisode baseEpisode, final AdMediaVideoFeature.DisplayPosition displayPosition, final Function0 onSelfDialogDismiss) {
            Intrinsics.checkNotNullParameter(onSelfDialogDismiss, "onSelfDialogDismiss");
            return adMediaVideoFeature.q(immersionActivity, baseEpisode, displayPosition, new Function0() { // from class: yh.i2
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit f10;
                    f10 = ImmersionActivity.d.f(AdMediaVideoFeature.DisplayPosition.this, immersionActivity, onSelfDialogDismiss);
                    return f10;
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit f(AdMediaVideoFeature.DisplayPosition displayPosition, ImmersionActivity immersionActivity, Function0 function0) {
            if (displayPosition == AdMediaVideoFeature.DisplayPosition.POST) {
                immersionActivity.H8();
            }
            function0.invoke();
            return Unit.f60915a;
        }

        @Override // com.startshorts.androidplayer.manager.immersion.feature.AdMediaVideoFeature.c
        public void a(AdMediaVideoFeature.DisplayPosition displayPosition) {
            Intrinsics.checkNotNullParameter(displayPosition, "displayPosition");
            if (displayPosition == AdMediaVideoFeature.DisplayPosition.POST) {
                ImmersionActivity.this.H8();
            }
        }

        @Override // com.startshorts.androidplayer.manager.immersion.feature.AdMediaVideoFeature.c
        public void b(final BaseEpisode episode, final AdMediaVideoFeature.DisplayPosition displayPosition) {
            Intrinsics.checkNotNullParameter(episode, "episode");
            Intrinsics.checkNotNullParameter(displayPosition, "displayPosition");
            final ImmersionActivity immersionActivity = ImmersionActivity.this;
            final AdMediaVideoFeature adMediaVideoFeature = this.f45309b;
            ImmersionActivity.t9(immersionActivity, "AdMediaVideoDialog", null, new Function1() { // from class: yh.h2
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    boolean e10;
                    e10 = ImmersionActivity.d.e(AdMediaVideoFeature.this, immersionActivity, episode, displayPosition, (Function0) obj);
                    return Boolean.valueOf(e10);
                }
            }, true, null, 18, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ImmersionActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d0 implements Observer, FunctionAdapter {

        /* renamed from: a  reason: collision with root package name */
        private final /* synthetic */ Function1 f45310a;

        d0(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f45310a = function;
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
            return this.f45310a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f45310a.invoke(obj);
        }
    }

    /* compiled from: ImmersionActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d1 implements SubsExpansionNewDialog.b {
        d1() {
        }

        @Override // com.startshorts.androidplayer.ui.fragment.purchase.v2.SubsExpansionNewDialog.b
        public void a() {
            ImmersionActivity.this.x6();
            BaseEpisode D5 = ImmersionActivity.this.D5();
            if (D5 != null) {
                ImmersionActivity immersionActivity = ImmersionActivity.this;
                immersionActivity.Va(D5, false, immersionActivity.f45260h0);
            }
            if (ImmersionActivity.this.z7()) {
                ImmersionActivity.this.ua();
            }
            if (ImmersionActivity.this.g7()) {
                ImmersionActivity.this.i9();
            }
        }
    }

    /* compiled from: ImmersionActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class e implements e.b {

        /* compiled from: ImmersionActivity.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class a extends yd.d {

            /* renamed from: e  reason: collision with root package name */
            final /* synthetic */ ImmersionActivity f45313e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(ImmersionActivity immersionActivity) {
                super(0L, 1, null);
                this.f45313e = immersionActivity;
            }

            @Override // yd.d
            public void a(View v10) {
                Intrinsics.checkNotNullParameter(v10, "v");
                this.f45313e.c5("immersion_left_tip");
            }
        }

        e() {
        }

        @Override // com.startshorts.androidplayer.manager.immersion.feature.e.b
        public void a() {
            int i10;
            BaseEpisode D5 = ImmersionActivity.this.D5();
            if (D5 == null) {
                return;
            }
            String string = ImmersionActivity.this.getString(R$string.immersion_activity_collect_tips_1);
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            CollectTipsImmersionView collectTipsImmersionView = new CollectTipsImmersionView(ImmersionActivity.this, null);
            ImmersionActivity immersionActivity = ImmersionActivity.this;
            ((BaseTextView) collectTipsImmersionView.findViewById(R$id.collect_tips_tv)).setText(string);
            ImageView imageView = (ImageView) collectTipsImmersionView.findViewById(R$id.collect_tips_iv);
            if (D5.isCollected()) {
                i10 = R$drawable.ic_shorts_collected_tips;
            } else {
                i10 = R$drawable.ic_shorts_uncollect_tips;
            }
            imageView.setImageResource(i10);
            imageView.setOnClickListener(new a(immersionActivity));
            ImmersionActivity immersionActivity2 = ImmersionActivity.this;
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
            fk.z zVar = fk.z.f51786a;
            layoutParams.topMargin = zVar.b();
            layoutParams.setMarginStart(zVar.d());
            Unit unit = Unit.f60915a;
            ImmersionActivity.I4(immersionActivity2, collectTipsImmersionView, layoutParams, null, 4, null);
        }

        @Override // com.startshorts.androidplayer.manager.immersion.feature.e.b
        public void b(boolean z10) {
            ImmersionActivity.x8(ImmersionActivity.this, ImmersionNotificationType.SHORTS_COLLECTION, z10, null, 4, null);
        }
    }

    /* compiled from: ImmersionActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class e0 implements AdContinueDialogFragment.b {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f45315b;

        e0(String str) {
            this.f45315b = str;
        }

        @Override // com.startshorts.androidplayer.ui.fragment.unlock.AdContinueDialogFragment.b
        public void a(int i10, EpisodeListUnlockedEvent event) {
            Intrinsics.checkNotNullParameter(event, "event");
            ImmersionActivity.this.g9(i10, event);
        }

        @Override // com.startshorts.androidplayer.ui.fragment.unlock.AdContinueDialogFragment.b
        public void b() {
            ImmersionActivity.Ia(ImmersionActivity.this, this.f45315b, null, 2, null);
        }
    }

    /* compiled from: ImmersionActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class e1 implements BaseDialogFragment.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Function0<Unit> f45316a;

        e1(Function0<Unit> function0) {
            this.f45316a = function0;
        }

        @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment.b
        public void onDismiss() {
            this.f45316a.invoke();
        }
    }

    /* compiled from: ImmersionActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class f implements g.a {
        f() {
        }

        @Override // com.startshorts.androidplayer.manager.immersion.feature.g.a
        public void b() {
            BaseEpisode D5 = ImmersionActivity.this.D5();
            if (D5 != null && D5.isFreeEpisode()) {
                DailyWatchDramaTaskView dailyWatchDramaTaskView = ImmersionActivity.this.f45275t0;
                if (dailyWatchDramaTaskView != null) {
                    jk.b0.d(dailyWatchDramaTaskView);
                }
            } else if (!ImmersionActivity.this.H0) {
                ImmersionActivity.this.o9(vi.e.f68955a.a());
            }
        }

        @Override // com.startshorts.androidplayer.manager.immersion.feature.g.a
        public void c() {
            ImmersionActivity.this.b8();
        }

        @Override // com.startshorts.androidplayer.manager.immersion.feature.g.a
        public void d() {
            BaseEpisode D5 = ImmersionActivity.this.D5();
            if (D5 != null && D5.isLocked()) {
                ImmersionActivity.this.b8();
            }
        }

        @Override // com.startshorts.androidplayer.manager.immersion.feature.g.a
        public void onRelease() {
            dk.f fVar = ImmersionActivity.this.f45277u0;
            if (fVar != null) {
                fVar.i();
            }
        }
    }

    /* compiled from: ImmersionActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class f0 implements BaseDialogFragment.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Function0<Unit> f45318a;

        f0(Function0<Unit> function0) {
            this.f45318a = function0;
        }

        @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment.b
        public void onDismiss() {
            this.f45318a.invoke();
        }
    }

    /* compiled from: ImmersionActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class f1 implements BaseDialogFragment.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Function0<Unit> f45319a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ SubsProExpiredDialog f45320b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ ImmersionActivity f45321c;

        f1(Function0<Unit> function0, SubsProExpiredDialog subsProExpiredDialog, ImmersionActivity immersionActivity) {
            this.f45319a = function0;
            this.f45320b = subsProExpiredDialog;
            this.f45321c = immersionActivity;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment.b
        public void onDismiss() {
            Integer num;
            T t10;
            this.f45319a.invoke();
            if (!this.f45320b.V()) {
                Ref.ObjectRef objectRef = new Ref.ObjectRef();
                List I5 = this.f45321c.I5();
                Integer num2 = null;
                if (I5 != null) {
                    synchronized (I5) {
                        try {
                            Iterator it = I5.iterator();
                            while (true) {
                                if (it.hasNext()) {
                                    Object next = it.next();
                                    if (((BaseEpisode) next).isLocked()) {
                                        t10 = next;
                                        break;
                                    }
                                } else {
                                    t10 = 0;
                                    break;
                                }
                            }
                            objectRef.element = t10;
                            Unit unit = Unit.f60915a;
                        } catch (Throwable th2) {
                            throw th2;
                        }
                    }
                }
                BaseEpisode baseEpisode = (BaseEpisode) objectRef.element;
                if (baseEpisode != null) {
                    num = Integer.valueOf(baseEpisode.getId());
                } else {
                    num = null;
                }
                BaseEpisode D5 = this.f45321c.D5();
                if (D5 != null) {
                    num2 = Integer.valueOf(D5.getId());
                }
                if (Intrinsics.areEqual(num, num2)) {
                    this.f45321c.a5("other");
                } else {
                    BaseEpisode D52 = this.f45321c.D5();
                    if (D52 != null) {
                        ImmersionActivity immersionActivity = this.f45321c;
                        D52.setUnlockJustNow(true);
                        ImmersionActivity.D8(immersionActivity, D52.getShortPlayId(), D52.getId(), null, 4, null);
                    }
                }
            }
            ImmersionViewPagerManager immersionViewPagerManager = this.f45321c.H;
            if (immersionViewPagerManager != null) {
                immersionViewPagerManager.B(true);
            }
        }
    }

    /* compiled from: ImmersionActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class g implements i.a {
        g() {
        }

        @Override // com.startshorts.androidplayer.manager.immersion.feature.i.a
        public void a(ShortDiscountSku sku, String str, GPayPriceInfo priceInfo, String str2) {
            Intrinsics.checkNotNullParameter(sku, "sku");
            Intrinsics.checkNotNullParameter(priceInfo, "priceInfo");
            BaseEpisode D5 = ImmersionActivity.this.D5();
            if (D5 != null) {
                ImmersionActivity.this.a7();
                Object value = ImmersionActivity.this.C.getValue();
                ImmersionActivity immersionActivity = ImmersionActivity.this;
                UnlockViewModel unlockViewModel = (UnlockViewModel) value;
                unlockViewModel.j0(new e.d(D5));
                unlockViewModel.j0(new e.n(immersionActivity, sku, str, str2));
                ((CollectionViewModel) ImmersionActivity.this.A.getValue()).P(new a.g(D5.getShortPlayId(), true));
                EventManager.T0(EventManager.f42463a, "limited_time_discount", sku, priceInfo, str, D5, ud.a.f68411a.p(), null, null, null, FileUtils.S_IRWXU, null);
            }
        }

        @Override // com.startshorts.androidplayer.manager.immersion.feature.i.a
        public void b() {
            ImmersionActivity.this.F9();
        }

        @Override // com.startshorts.androidplayer.manager.immersion.feature.i.a
        public void c(int i10) {
            BaseEpisode D5 = ImmersionActivity.this.D5();
            if (D5 == null) {
                return;
            }
            if (D5.isLocked() && !ImmersionActivity.this.m7("UnlockEpisodeMethodDialog") && !ImmersionActivity.this.m7("CoinStoreDialog")) {
                ImmersionActivity.this.N5().e0(new c.e(ImmersionActivity.this, D5.getId(), 1, D5.getVideoType()));
            }
            ImmersionActivity.this.V5(i10);
        }

        @Override // com.startshorts.androidplayer.manager.immersion.feature.i.a
        public void d() {
            ImmersionActivity.this.E9();
            EventManager eventManager = EventManager.f42463a;
            Bundle C = eventManager.C(ImmersionActivity.this.D5());
            ImmersionParams immersionParams = ImmersionActivity.this.f45270r;
            if (immersionParams == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mImmersionParams");
                immersionParams = null;
            }
            C.putString("from", immersionParams.getFrom());
            C.putString("type", "limited_time_discount");
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "discount_pop_show", C, 0L, 4, null);
        }
    }

    /* compiled from: ImmersionActivity.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nImmersionActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImmersionActivity.kt\ncom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$showAdContinueRetentionDialog$1$1\n+ 2 ImmersionActivity.kt\ncom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,6800:1\n4827#2:6801\n1#3:6802\n*S KotlinDebug\n*F\n+ 1 ImmersionActivity.kt\ncom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$showAdContinueRetentionDialog$1$1\n*L\n5494#1:6801\n5494#1:6802\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class g0 implements AdContinueRetentionDialogFragment.b {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ EpisodeListUnlockedEvent f45324b;

        g0(EpisodeListUnlockedEvent episodeListUnlockedEvent) {
            this.f45324b = episodeListUnlockedEvent;
        }

        @Override // com.startshorts.androidplayer.ui.fragment.unlock.AdContinueRetentionDialogFragment.b
        public void a(int i10, boolean z10) {
            AdMediaVideoFeature adMediaVideoFeature;
            Object obj;
            BaseEpisode D5 = ImmersionActivity.this.D5();
            if (D5 == null) {
                return;
            }
            Iterator it = ImmersionActivity.this.f45263k0.iterator();
            while (true) {
                adMediaVideoFeature = null;
                if (it.hasNext()) {
                    obj = it.next();
                    if (((IImmersionFeature) obj) instanceof AdMediaVideoFeature) {
                        break;
                    }
                } else {
                    obj = null;
                    break;
                }
            }
            if (obj instanceof AdMediaVideoFeature) {
                adMediaVideoFeature = obj;
            }
            AdMediaVideoFeature adMediaVideoFeature2 = adMediaVideoFeature;
            if (adMediaVideoFeature2 != null) {
                adMediaVideoFeature2.u(D5, AdMediaVideoFeature.DisplayPosition.PRE);
            }
            ImmersionActivity.this.Q4(false, D5);
            ImmersionActivity.this.d6(this.f45324b, Integer.valueOf(i10), z10);
        }
    }

    /* compiled from: ImmersionActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class g1 implements BaseBottomSheetDialogFragment.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Function0<Unit> f45325a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ImmersionActivity f45326b;

        g1(Function0<Unit> function0, ImmersionActivity immersionActivity) {
            this.f45325a = function0;
            this.f45326b = immersionActivity;
        }

        @Override // com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment.b
        public void onDismiss() {
            this.f45325a.invoke();
            this.f45326b.L4(5000L);
        }
    }

    /* compiled from: ImmersionActivity.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nImmersionActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImmersionActivity.kt\ncom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$createDiscountUnlockView$2$1\n+ 2 ImmersionActivity.kt\ncom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,6800:1\n4827#2:6801\n1#3:6802\n*S KotlinDebug\n*F\n+ 1 ImmersionActivity.kt\ncom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$createDiscountUnlockView$2$1\n*L\n4501#1:6801\n4501#1:6802\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class h implements DiscountUnlockView.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BaseEpisode f45327a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ImmersionActivity f45328b;

        h(BaseEpisode baseEpisode, ImmersionActivity immersionActivity) {
            this.f45327a = baseEpisode;
            this.f45328b = immersionActivity;
        }

        @Override // com.startshorts.androidplayer.ui.view.immersion.unlock.DiscountUnlockView.a
        public void a() {
            this.f45328b.a5("other");
        }

        @Override // com.startshorts.androidplayer.ui.view.immersion.unlock.DiscountUnlockView.a
        public void b() {
            Object obj;
            EventManager eventManager = EventManager.f42463a;
            Bundle C = eventManager.C(this.f45327a);
            ImmersionParams immersionParams = this.f45328b.f45270r;
            com.startshorts.androidplayer.manager.immersion.feature.i iVar = null;
            if (immersionParams == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mImmersionParams");
                immersionParams = null;
            }
            C.putString("from", immersionParams.getFrom());
            C.putString(TextureRenderKeys.KEY_IS_ACTION, "order_create");
            C.putString("button_click", "limited_time_discount");
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "unlocked_ep_button_click", C, 0L, 4, null);
            Iterator it = this.f45328b.f45263k0.iterator();
            while (true) {
                if (it.hasNext()) {
                    obj = it.next();
                    if (((IImmersionFeature) obj) instanceof com.startshorts.androidplayer.manager.immersion.feature.i) {
                        break;
                    }
                } else {
                    obj = null;
                    break;
                }
            }
            if (obj instanceof com.startshorts.androidplayer.manager.immersion.feature.i) {
                iVar = obj;
            }
            com.startshorts.androidplayer.manager.immersion.feature.i iVar2 = iVar;
            if (iVar2 != null) {
                iVar2.p(this.f45327a);
            }
        }

        @Override // com.startshorts.androidplayer.ui.view.immersion.unlock.DiscountUnlockView.a
        public void c() {
            this.f45328b.x6();
        }
    }

    /* compiled from: ImmersionActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class h0 implements BaseBottomSheetDialogFragment.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Function0<Unit> f45329a;

        h0(Function0<Unit> function0) {
            this.f45329a = function0;
        }

        @Override // com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment.b
        public void onDismiss() {
            this.f45329a.invoke();
        }
    }

    /* compiled from: ImmersionActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class h1 implements BaseUnlockEpisodeDialog.a {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f45331b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f45332c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ Function0<Unit> f45333d;

        h1(String str, String str2, Function0<Unit> function0) {
            this.f45331b = str;
            this.f45332c = str2;
            this.f45333d = function0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit i(Function0 function0) {
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            bundle.putString("scene", "immersion_db_reward");
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "free_bonus_retention_close", bundle, 0L, 4, null);
            function0.invoke();
            return Unit.f60915a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit j(Function0 function0, ImmersionActivity immersionActivity) {
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            bundle.putString("scene", "immersion_db_reward");
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "free_bonus_retention_click", bundle, 0L, 4, null);
            Bundle bundle2 = new Bundle();
            bundle2.putString("scene", "immersion_db_reward");
            EventManager.s0(eventManager, "free_bonus_retention_close", bundle2, 0L, 4, null);
            function0.invoke();
            immersionActivity.f45285y0 = true;
            RewardsFragment.a.d(RewardsFragment.Y, immersionActivity, "immersion_db_reward", true, null, null, 24, null);
            return Unit.f60915a;
        }

        @Override // com.startshorts.androidplayer.ui.fragment.purchase.v2.BaseUnlockEpisodeDialog.a
        public void a(boolean z10) {
            ImmersionActivity.this.B8("UnlockEpisodeMethodDialog", true);
            ImmersionActivity.this.U0 = false;
            ImmersionActivity.this.Y9(z10, this.f45331b);
        }

        @Override // com.startshorts.androidplayer.ui.fragment.purchase.v2.BaseUnlockEpisodeDialog.a
        public void b(UnlockEpisodeAdMethod unlockEpisodeAdMethod) {
            ImmersionActivity.this.J0 = null;
            ImmersionActivity.this.I0 = unlockEpisodeAdMethod;
            ImmersionActivity.this.f45269q0 = unlockEpisodeAdMethod;
            this.f45333d.invoke();
        }

        @Override // com.startshorts.androidplayer.ui.fragment.purchase.v2.BaseUnlockEpisodeDialog.a
        public void c(boolean z10, boolean z11, UnlockEpisodeAdMethod unlockEpisodeAdMethod) {
            if (ae.a.f627a.k()) {
                ImmersionActivity.this.s("Block onShowAdRetention for xiaomi channel. ");
                return;
            }
            ve.h hVar = ve.h.f68906a;
            if (hVar.n() || hVar.o()) {
                ImmersionActivity.this.na(z10, unlockEpisodeAdMethod);
            } else if (z11) {
                ImmersionActivity.this.qa(z10, unlockEpisodeAdMethod);
            } else {
                ImmersionActivity.this.aa(z10, unlockEpisodeAdMethod);
            }
        }

        @Override // com.startshorts.androidplayer.ui.fragment.purchase.v2.BaseUnlockEpisodeDialog.a
        public void d() {
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            bundle.putString("scene", "immersion_db_reward");
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "free_bonus_retention_show", bundle, 0L, 4, null);
            ImmersionActivity immersionActivity = ImmersionActivity.this;
            final Function0<Unit> function0 = this.f45333d;
            Function0 function02 = new Function0() { // from class: yh.t2
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit i10;
                    i10 = ImmersionActivity.h1.i(Function0.this);
                    return i10;
                }
            };
            final Function0<Unit> function03 = this.f45333d;
            final ImmersionActivity immersionActivity2 = ImmersionActivity.this;
            immersionActivity.m9(function02, new Function0() { // from class: yh.u2
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit j10;
                    j10 = ImmersionActivity.h1.j(Function0.this, immersionActivity2);
                    return j10;
                }
            });
        }

        @Override // com.startshorts.androidplayer.ui.fragment.purchase.v2.BaseUnlockEpisodeDialog.a
        public void e(SubsSku subsSku, boolean z10) {
            Intrinsics.checkNotNullParameter(subsSku, "subsSku");
            if (Intrinsics.areEqual(this.f45332c, "from_sale")) {
                BaseEpisode D5 = ImmersionActivity.this.D5();
                if (D5 != null && D5.isLocked()) {
                    if (z10) {
                        ImmersionActivity.this.Aa(subsSku);
                    } else {
                        ImmersionActivity.this.ya(subsSku);
                    }
                }
            } else if (z10) {
                ImmersionActivity.this.Aa(subsSku);
            } else {
                ImmersionActivity.this.ya(subsSku);
            }
        }

        @Override // com.startshorts.androidplayer.ui.fragment.purchase.v2.BaseUnlockEpisodeDialog.a
        public void f(CoinSku coinSku, boolean z10) {
            Intrinsics.checkNotNullParameter(coinSku, "coinSku");
            if (Intrinsics.areEqual(this.f45332c, "from_sale")) {
                BaseEpisode D5 = ImmersionActivity.this.D5();
                if (D5 != null && D5.isLocked()) {
                    ImmersionActivity.this.wa(coinSku, z10);
                    return;
                }
                return;
            }
            ImmersionActivity.this.wa(coinSku, z10);
        }
    }

    /* compiled from: ImmersionActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class i0 implements ImmersionShortBackEarnCoinDialog.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Function0<Unit> f45335a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Function0<Unit> f45336b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Function0<Unit> f45337c;

        i0(Function0<Unit> function0, Function0<Unit> function02, Function0<Unit> function03) {
            this.f45335a = function0;
            this.f45336b = function02;
            this.f45337c = function03;
        }

        @Override // com.startshorts.androidplayer.ui.fragment.immersion.ImmersionShortBackEarnCoinDialog.a
        public void a() {
            this.f45335a.invoke();
            Function0<Unit> function0 = this.f45337c;
            if (function0 != null) {
                function0.invoke();
            }
        }

        @Override // com.startshorts.androidplayer.ui.fragment.immersion.ImmersionShortBackEarnCoinDialog.a
        public void onClose() {
            this.f45335a.invoke();
            Function0<Unit> function0 = this.f45336b;
            if (function0 != null) {
                function0.invoke();
            }
        }
    }

    /* compiled from: ImmersionActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class j implements m.b {
        j() {
        }

        @Override // com.startshorts.androidplayer.manager.immersion.feature.m.b
        public void a() {
            ImmersionActivity.this.l6();
        }

        @Override // com.startshorts.androidplayer.manager.immersion.feature.m.b
        public void b() {
            BaseEpisode R5 = ImmersionActivity.this.R5();
            if (R5 != null) {
                ImmersionActivity.this.G4(R5);
            }
        }

        @Override // com.startshorts.androidplayer.manager.immersion.feature.m.b
        public void c(BaseEpisode episode) {
            Intrinsics.checkNotNullParameter(episode, "episode");
            ImmersionActivity.this.K4(episode);
        }
    }

    /* compiled from: ImmersionActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class j0 implements DailyWatchDramaTaskView.b {
        j0() {
        }

        @Override // com.startshorts.androidplayer.ui.view.task.DailyWatchDramaTaskView.b
        public void a() {
            DailyWatchDramaTaskView dailyWatchDramaTaskView = ImmersionActivity.this.f45275t0;
            if (dailyWatchDramaTaskView != null) {
                dailyWatchDramaTaskView.V();
            }
            EventManager.e0(EventManager.f42463a, "immersion_page", "reward_floating_window", ImmersionActivity.this.D5(), "close", null, 16, null);
        }

        @Override // com.startshorts.androidplayer.ui.view.task.DailyWatchDramaTaskView.b
        public void b() {
            EventManager eventManager = EventManager.f42463a;
            EventManager.e0(eventManager, "immersion_page", "reward_floating_window", ImmersionActivity.this.D5(), MRAIDPresenter.OPEN, null, 16, null);
            Bundle bundle = new Bundle();
            bundle.putString("scene", "immersion_page_new");
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "reward_show", bundle, 0L, 4, null);
            Bundle bundle2 = new Bundle();
            bundle2.putString("scene", "immersion_page_new");
            EventManager.s0(eventManager, "reward_click", bundle2, 0L, 4, null);
            RewardsFragment.a.d(RewardsFragment.Y, ImmersionActivity.this, "immersion_page", true, Boolean.TRUE, null, 16, null);
        }

        @Override // com.startshorts.androidplayer.ui.view.task.DailyWatchDramaTaskView.b
        public void onClose() {
            ImmersionActivity.this.H0 = true;
            DailyWatchDramaTaskView dailyWatchDramaTaskView = ImmersionActivity.this.f45275t0;
            if (dailyWatchDramaTaskView != null) {
                dailyWatchDramaTaskView.setVisibility(8);
            }
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            bundle.putString("scene", "immersion_page");
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "reward_floating_window_close", bundle, 0L, 4, null);
        }
    }

    /* compiled from: ImmersionActivity.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nImmersionActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImmersionActivity.kt\ncom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$createPlayResolutionFeature$1$1\n+ 2 ImmersionActivity.kt\ncom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity\n*L\n1#1,6800:1\n2998#2,7:6801\n*S KotlinDebug\n*F\n+ 1 ImmersionActivity.kt\ncom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$createPlayResolutionFeature$1$1\n*L\n3828#1:6801,7\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class k implements n.b {
        k() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit i(ImmersionActivity immersionActivity) {
            immersionActivity.db();
            return Unit.f60915a;
        }

        @Override // com.startshorts.androidplayer.manager.immersion.feature.n.b
        public void a(int i10, PlayResolution selectedResolution, PlayResolution playableResolution, Integer num) {
            String string;
            Intrinsics.checkNotNullParameter(selectedResolution, "selectedResolution");
            Intrinsics.checkNotNullParameter(playableResolution, "playableResolution");
            ImmersionActivity.this.W = false;
            if (i10 == 1 || i10 == 5) {
                ImmersionActivity.this.o6();
                if (selectedResolution.isAuto()) {
                    string = ImmersionActivity.this.getString(R$string.immersion_activity_switch_resolution_auto_process_tip);
                } else {
                    string = ImmersionActivity.this.getString(R$string.immersion_activity_switch_resolution_process_tip, String.valueOf(selectedResolution.getResolutionValue()));
                }
                Intrinsics.checkNotNull(string);
                ImmersionActivity.this.Ea(string);
            }
            if (i10 == 2 || ImmersionActivity.this.X) {
                ImmersionEpisodeManager immersionEpisodeManager = ImmersionActivity.this.f45259g0;
                if (immersionEpisodeManager != null) {
                    immersionEpisodeManager.u(playableResolution);
                }
                ImmersionActivity.this.u6();
            } else {
                ((PlayerViewModel) ImmersionActivity.this.f45278v.getValue()).M(new b.l(playableResolution));
                ImmersionActivity.this.A8();
            }
            ImmersionActivity.this.L4(5000L);
            ImmersionActivity.this.db();
            ImmersionActivity immersionActivity = ImmersionActivity.this;
            IImmersionFeature.MessageType messageType = IImmersionFeature.MessageType.SWITCH_RESOLUTION;
            HashMap hashMap = new HashMap();
            ImmersionActivity immersionActivity2 = ImmersionActivity.this;
            hashMap.put("episode", immersionActivity2.D5());
            hashMap.put("immersion_job_manager", immersionActivity2.f45253a0);
            hashMap.put("play_resolution", selectedResolution);
            hashMap.put("player_error_resolution_value", num);
            hashMap.put("switch_resolution_from", Integer.valueOf(i10));
            Unit unit = Unit.f60915a;
            immersionActivity.L8(new com.startshorts.androidplayer.manager.immersion.feature.k(messageType, hashMap));
        }

        @Override // com.startshorts.androidplayer.manager.immersion.feature.n.b
        public void b() {
            ViewStubProxy cartonDowngradeResolutionLayoutViewstub = ImmersionActivity.W1(ImmersionActivity.this).f38279c;
            Intrinsics.checkNotNullExpressionValue(cartonDowngradeResolutionLayoutViewstub, "cartonDowngradeResolutionLayoutViewstub");
            jk.e0.b(cartonDowngradeResolutionLayoutViewstub, 0, 1, null);
        }

        @Override // com.startshorts.androidplayer.manager.immersion.feature.n.b
        public void c(String resolutionValue) {
            Intrinsics.checkNotNullParameter(resolutionValue, "resolutionValue");
            ImmersionActivity immersionActivity = ImmersionActivity.this;
            immersionActivity.s("onSwitchResolutionSuccess -> resolutionValue(" + resolutionValue + ')');
            ImmersionActivity.this.K8(IImmersionFeature.MessageType.SWITCH_RESOLUTION_SUCCESS);
            ImmersionActivity.this.u6();
        }

        @Override // com.startshorts.androidplayer.manager.immersion.feature.n.b
        public void d() {
            ImmersionActivity.this.o6();
            ImmersionActivity.this.Ha("1080P", ud.a.f68411a.q());
        }

        @Override // com.startshorts.androidplayer.manager.immersion.feature.n.b
        public void e(Function0<Unit> onSwitchClick) {
            Intrinsics.checkNotNullParameter(onSwitchClick, "onSwitchClick");
            ImmersionActivity.this.j9(onSwitchClick);
        }

        @Override // com.startshorts.androidplayer.manager.immersion.feature.n.b
        public void f(String str) {
            if (!ImmersionActivity.this.p()) {
                ImmersionActivity.this.x(R$string.common_play_failed);
            }
            ImmersionActivity.this.z6();
            ImmersionActivity.ga(ImmersionActivity.this, "onDowngradeResolutionFailed", false, 2, null);
            ResourceHandler resourceHandler = ResourceHandler.f48167a;
            final ImmersionActivity immersionActivity = ImmersionActivity.this;
            resourceHandler.l(str, new Function0() { // from class: yh.j2
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit i10;
                    i10 = ImmersionActivity.k.i(ImmersionActivity.this);
                    return i10;
                }
            });
        }

        @Override // com.startshorts.androidplayer.manager.immersion.feature.n.b
        public void g(PlayResolution selectedResolution, String resolutionStr) {
            int i10;
            nj.a aVar;
            Intrinsics.checkNotNullParameter(selectedResolution, "selectedResolution");
            Intrinsics.checkNotNullParameter(resolutionStr, "resolutionStr");
            try {
                i10 = Integer.parseInt(StringsKt.P(resolutionStr, TtmlNode.TAG_P, "", false, 4, null));
            } catch (Exception unused) {
                i10 = -1;
            }
            ImmersionEpisodeManager immersionEpisodeManager = ImmersionActivity.this.f45259g0;
            if (immersionEpisodeManager != null) {
                immersionEpisodeManager.s(i10);
            }
            ImmersionActivity immersionActivity = ImmersionActivity.this;
            int childCount = ImmersionActivity.W1(immersionActivity).f38295s.getChildCount();
            int i11 = 0;
            while (true) {
                if (i11 < childCount) {
                    View childAt = ImmersionActivity.W1(immersionActivity).f38295s.getChildAt(i11);
                    if (childAt instanceof nj.b) {
                        aVar = (nj.a) childAt;
                        break;
                    }
                    i11++;
                } else {
                    aVar = null;
                    break;
                }
            }
            nj.b bVar = (nj.b) aVar;
            if (bVar != null) {
                bVar.h(resolutionStr);
            }
            ImmersionActivity.this.jb(selectedResolution);
        }
    }

    /* compiled from: ImmersionActivity.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nImmersionActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImmersionActivity.kt\ncom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$showDailyWatchDramaTaskCoinView$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,6800:1\n1#2:6801\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class k0 implements f.b {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ NewbieWatchTask f45342b;

        k0(NewbieWatchTask newbieWatchTask) {
            this.f45342b = newbieWatchTask;
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
                dk.f fVar = ImmersionActivity.this.f45277u0;
                if (fVar != null) {
                    fVar.i();
                }
                ImmersionActivity.this.Qa(this.f45342b, newbieWatchBonus);
                return;
            }
            DailyWatchDramaTaskView dailyWatchDramaTaskView = ImmersionActivity.this.f45275t0;
            if (dailyWatchDramaTaskView != null) {
                dailyWatchDramaTaskView.U(vi.e.f68955a.b());
            }
        }
    }

    /* compiled from: ImmersionActivity.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nImmersionActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImmersionActivity.kt\ncom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$createPlaySpeedFeature$1$1\n+ 2 ImmersionActivity.kt\ncom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity\n*L\n1#1,6800:1\n2998#2,7:6801\n*S KotlinDebug\n*F\n+ 1 ImmersionActivity.kt\ncom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$createPlaySpeedFeature$1$1\n*L\n3648#1:6801,7\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class l implements o.b {
        l() {
        }

        @Override // com.startshorts.androidplayer.manager.immersion.feature.o.b
        public void a() {
            ImmersionActivity.this.q6();
        }

        @Override // com.startshorts.androidplayer.manager.immersion.feature.o.b
        public void b(boolean z10, PlaySpeed playSpeed, PlaySpeed newPlaySpeed, boolean z11) {
            nj.a aVar;
            Intrinsics.checkNotNullParameter(newPlaySpeed, "newPlaySpeed");
            ImmersionEpisodeManager immersionEpisodeManager = ImmersionActivity.this.f45259g0;
            if (immersionEpisodeManager != null) {
                immersionEpisodeManager.q(newPlaySpeed);
            }
            ImmersionActivity immersionActivity = ImmersionActivity.this;
            int childCount = ImmersionActivity.W1(immersionActivity).f38295s.getChildCount();
            int i10 = 0;
            while (true) {
                if (i10 < childCount) {
                    View childAt = ImmersionActivity.W1(immersionActivity).f38295s.getChildAt(i10);
                    if (childAt instanceof ImmersionPlaySpeedView) {
                        aVar = (nj.a) childAt;
                        break;
                    }
                    i10++;
                } else {
                    aVar = null;
                    break;
                }
            }
            ImmersionPlaySpeedView immersionPlaySpeedView = (ImmersionPlaySpeedView) aVar;
            if (immersionPlaySpeedView != null) {
                immersionPlaySpeedView.w(newPlaySpeed);
            }
            if (!z10) {
                ((PlayerViewModel) ImmersionActivity.this.f45278v.getValue()).M(new b.k(newPlaySpeed.getValue()));
            }
            if (!z11 || !ImmersionActivity.this.V || ImmersionActivity.this.W) {
                ImmersionActivity.this.L4(5000L);
            } else {
                ImmersionActivity.this.A8();
            }
        }

        @Override // com.startshorts.androidplayer.manager.immersion.feature.o.b
        public void c(PlaySpeed playSpeed) {
            Intrinsics.checkNotNullParameter(playSpeed, "playSpeed");
            ImmersionActivity.this.la(playSpeed);
        }
    }

    /* compiled from: ImmersionActivity.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nImmersionActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImmersionActivity.kt\ncom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$showDiscountLayout$1$1$1\n+ 2 ImmersionActivity.kt\ncom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,6800:1\n4827#2:6801\n1#3:6802\n*S KotlinDebug\n*F\n+ 1 ImmersionActivity.kt\ncom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$showDiscountLayout$1$1$1\n*L\n4723#1:6801\n4723#1:6802\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class l0 implements ShortDiscountView.a {
        l0() {
        }

        @Override // com.startshorts.androidplayer.ui.view.immersion.ShortDiscountView.a
        public void a() {
            ImmersionActivity.this.f45273s0 = true;
            ImmersionActivity.this.i6();
            EventManager eventManager = EventManager.f42463a;
            Bundle C = eventManager.C(ImmersionActivity.this.D5());
            ImmersionParams immersionParams = ImmersionActivity.this.f45270r;
            if (immersionParams == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mImmersionParams");
                immersionParams = null;
            }
            C.putString("from", immersionParams.getFrom());
            C.putString(TextureRenderKeys.KEY_IS_ACTION, "active_click");
            C.putString("type", "limited_time_discount");
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "discount_pop_close", C, 0L, 4, null);
        }

        @Override // com.startshorts.androidplayer.ui.view.immersion.ShortDiscountView.a
        public void b() {
            ImmersionParams immersionParams;
            Object obj;
            Iterator it = ImmersionActivity.this.f45263k0.iterator();
            while (true) {
                immersionParams = null;
                if (it.hasNext()) {
                    obj = it.next();
                    if (((IImmersionFeature) obj) instanceof com.startshorts.androidplayer.manager.immersion.feature.i) {
                        break;
                    }
                } else {
                    obj = null;
                    break;
                }
            }
            if (!(obj instanceof com.startshorts.androidplayer.manager.immersion.feature.i)) {
                obj = null;
            }
            com.startshorts.androidplayer.manager.immersion.feature.i iVar = (com.startshorts.androidplayer.manager.immersion.feature.i) obj;
            if (iVar != null) {
                iVar.p(ImmersionActivity.this.D5());
            }
            EventManager eventManager = EventManager.f42463a;
            Bundle C = eventManager.C(ImmersionActivity.this.D5());
            ImmersionParams immersionParams2 = ImmersionActivity.this.f45270r;
            if (immersionParams2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mImmersionParams");
            } else {
                immersionParams = immersionParams2;
            }
            C.putString("from", immersionParams.getFrom());
            C.putString("type", "limited_time_discount");
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "discount_pop_click", C, 0L, 4, null);
        }

        @Override // com.startshorts.androidplayer.ui.view.immersion.ShortDiscountView.a
        public void c() {
            ImmersionActivity.this.i6();
            EventManager eventManager = EventManager.f42463a;
            Bundle C = eventManager.C(ImmersionActivity.this.D5());
            ImmersionParams immersionParams = ImmersionActivity.this.f45270r;
            if (immersionParams == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mImmersionParams");
                immersionParams = null;
            }
            C.putString("from", immersionParams.getFrom());
            C.putString(TextureRenderKeys.KEY_IS_ACTION, "countdown_ends");
            C.putString("type", "limited_time_discount");
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "discount_pop_close", C, 0L, 4, null);
        }

        @Override // com.startshorts.androidplayer.ui.view.immersion.ShortDiscountView.a
        public void d() {
            ImmersionActivity.this.i6();
            EventManager eventManager = EventManager.f42463a;
            Bundle C = eventManager.C(ImmersionActivity.this.D5());
            ImmersionParams immersionParams = ImmersionActivity.this.f45270r;
            if (immersionParams == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mImmersionParams");
                immersionParams = null;
            }
            C.putString("from", immersionParams.getFrom());
            C.putString(TextureRenderKeys.KEY_IS_ACTION, "auto");
            C.putString("type", "limited_time_discount");
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "discount_pop_close", C, 0L, 4, null);
        }
    }

    /* compiled from: ImmersionActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class m implements PurePayingUserAdRetentionUnlockView.a {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f45346b;

        m(boolean z10) {
            this.f45346b = z10;
        }

        @Override // com.startshorts.androidplayer.ui.view.immersion.unlock.PurePayingUserAdRetentionUnlockView.a
        public void a() {
            ImmersionActivity.this.a5("unlock_select");
        }

        @Override // com.startshorts.androidplayer.ui.view.immersion.unlock.PurePayingUserAdRetentionUnlockView.a
        public void b() {
            ImmersionActivity.this.a7();
            ((UnlockViewModel) ImmersionActivity.this.C.getValue()).j0(new e.l(ImmersionActivity.this, this.f45346b, null, 4, null));
        }

        @Override // com.startshorts.androidplayer.ui.view.immersion.unlock.PurePayingUserAdRetentionUnlockView.a
        public void c() {
            ImmersionActivity.this.J0 = "sub_portal";
            ud.a.f68411a.t0("immersion_page");
            ImmersionActivity.this.a5("unlock_view_entrance");
            EventManager.e0(EventManager.f42463a, "ad", "sub_portal", ImmersionActivity.this.D5(), null, null, 24, null);
        }
    }

    /* compiled from: ImmersionActivity.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nImmersionActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImmersionActivity.kt\ncom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$showDiscountPurchaseFailedDialog$1$1$1\n+ 2 ImmersionActivity.kt\ncom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,6800:1\n4827#2:6801\n1#3:6802\n*S KotlinDebug\n*F\n+ 1 ImmersionActivity.kt\ncom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$showDiscountPurchaseFailedDialog$1$1$1\n*L\n5738#1:6801\n5738#1:6802\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class m0 implements d.b {
        m0() {
        }

        @Override // gi.d.b
        public void a() {
            com.startshorts.androidplayer.manager.immersion.feature.i iVar;
            Object obj;
            Iterator it = ImmersionActivity.this.f45263k0.iterator();
            while (true) {
                iVar = null;
                if (it.hasNext()) {
                    obj = it.next();
                    if (((IImmersionFeature) obj) instanceof com.startshorts.androidplayer.manager.immersion.feature.i) {
                        break;
                    }
                } else {
                    obj = null;
                    break;
                }
            }
            if (obj instanceof com.startshorts.androidplayer.manager.immersion.feature.i) {
                iVar = obj;
            }
            com.startshorts.androidplayer.manager.immersion.feature.i iVar2 = iVar;
            if (iVar2 != null) {
                iVar2.t();
            }
        }
    }

    /* compiled from: ImmersionActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class n implements s.a {
        n() {
        }

        @Override // com.startshorts.androidplayer.manager.immersion.feature.s.a
        public void a() {
            ImmersionActivity.this.va();
        }

        @Override // com.startshorts.androidplayer.manager.immersion.feature.s.a
        public void onRelease() {
            ShortRatingHandler shortRatingHandler = ImmersionActivity.this.f45281w0;
            if (shortRatingHandler != null) {
                shortRatingHandler.h();
            }
        }
    }

    /* compiled from: ImmersionActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class n0 implements BaseBottomSheetDialogFragment.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Function0<Unit> f45350a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ImmersionActivity f45351b;

        n0(Function0<Unit> function0, ImmersionActivity immersionActivity) {
            this.f45350a = function0;
            this.f45351b = immersionActivity;
        }

        @Override // com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment.b
        public void onDismiss() {
            this.f45350a.invoke();
            this.f45351b.L4(5000L);
        }
    }

    /* compiled from: ImmersionActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class o implements IaaSkuSubscribeUnlockView.a {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f45353b;

        o(boolean z10) {
            this.f45353b = z10;
        }

        @Override // com.startshorts.androidplayer.ui.view.immersion.unlock.IaaSkuSubscribeUnlockView.a
        public void a() {
            ImmersionActivity.this.a5("unlock_select_iaa");
        }

        @Override // com.startshorts.androidplayer.ui.view.immersion.unlock.IaaSkuSubscribeUnlockView.a
        public void b() {
            ImmersionActivity.this.a7();
            ((UnlockViewModel) ImmersionActivity.this.C.getValue()).j0(new e.l(ImmersionActivity.this, this.f45353b, null, 4, null));
        }
    }

    /* compiled from: ImmersionActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class o0 implements ImmersionBottomBackShortsDialog.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Function0<Unit> f45354a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ImmersionActivity f45355b;

        o0(Function0<Unit> function0, ImmersionActivity immersionActivity) {
            this.f45354a = function0;
            this.f45355b = immersionActivity;
        }

        @Override // com.startshorts.androidplayer.ui.fragment.immersion.ImmersionBottomBackShortsDialog.a
        public void a() {
            this.f45354a.invoke();
            this.f45355b.finish();
        }

        @Override // com.startshorts.androidplayer.ui.fragment.immersion.ImmersionBottomBackShortsDialog.a
        public void b(BaseEpisode shorts, boolean z10) {
            Intrinsics.checkNotNullParameter(shorts, "shorts");
            this.f45354a.invoke();
            EventManager eventManager = EventManager.f42463a;
            Bundle C = eventManager.C(shorts);
            C.putString("test_value", String.valueOf(ABTestFactory.f42224a.I0().abTestIntValue()));
            C.putString("scene", "immersion_back");
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "immersion_back_click", C, 0L, 4, null);
            this.f45355b.f45274t = true;
            this.f45355b.finish();
            a aVar = ImmersionActivity.V0;
            ImmersionActivity immersionActivity = this.f45355b;
            ImmersionParams immersionParams = new ImmersionParams();
            immersionParams.setFrom("immersion_back");
            if (z10) {
                immersionParams.setType(5);
                immersionParams.setEpisodeId(shorts.getId());
            } else if (shorts.getEpisodeNum() != 0) {
                immersionParams.setType(1);
                immersionParams.setEpisodeNum(shorts.getEpisodeNum());
            } else {
                immersionParams.setType(3);
            }
            ImmersionShortsInfo immersionShortsInfo = new ImmersionShortsInfo();
            immersionShortsInfo.setShortsId(shorts.getShortPlayId());
            immersionShortsInfo.setShortPlayCode(shorts.getShortPlayCode());
            immersionShortsInfo.setShortsName(shorts.getShortPlayName());
            immersionShortsInfo.setCover(shorts.getCoverId());
            immersionShortsInfo.setUpack(shorts.getUpack());
            immersionParams.setShortsInfo(immersionShortsInfo);
            aVar.a(immersionActivity, immersionParams);
        }
    }

    /* compiled from: ImmersionActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class p implements SkuSubscribeUnlockView.a {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f45357b;

        p(boolean z10) {
            this.f45357b = z10;
        }

        @Override // com.startshorts.androidplayer.ui.view.immersion.unlock.SkuSubscribeUnlockView.a
        public void a() {
            ImmersionActivity.this.a5("unlock_select");
        }

        @Override // com.startshorts.androidplayer.ui.view.immersion.unlock.SkuSubscribeUnlockView.a
        public void b() {
            ImmersionActivity.this.a7();
            ((UnlockViewModel) ImmersionActivity.this.C.getValue()).j0(new e.l(ImmersionActivity.this, this.f45357b, null, 4, null));
        }

        @Override // com.startshorts.androidplayer.ui.view.immersion.unlock.SkuSubscribeUnlockView.a
        public void c() {
            ImmersionActivity.this.J0 = "sub_portal";
            ud.a.f68411a.t0("immersion_page");
            ImmersionActivity.this.a5("unlock_view_entrance");
            EventManager.e0(EventManager.f42463a, "general", "sub_portal", ImmersionActivity.this.D5(), null, null, 24, null);
        }
    }

    /* compiled from: ImmersionActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class p0 implements ImmersionBackShortsFragment.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Function0<Unit> f45358a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ImmersionActivity f45359b;

        p0(Function0<Unit> function0, ImmersionActivity immersionActivity) {
            this.f45358a = function0;
            this.f45359b = immersionActivity;
        }

        @Override // com.startshorts.androidplayer.ui.fragment.immersion.ImmersionBackShortsFragment.a
        public void a() {
            this.f45358a.invoke();
            this.f45359b.finish();
        }

        @Override // com.startshorts.androidplayer.ui.fragment.immersion.ImmersionBackShortsFragment.a
        public void b(BaseEpisode shorts, boolean z10) {
            Intrinsics.checkNotNullParameter(shorts, "shorts");
            this.f45358a.invoke();
            EventManager eventManager = EventManager.f42463a;
            Bundle C = eventManager.C(shorts);
            C.putString("test_value", String.valueOf(ABTestFactory.f42224a.I0().abTestIntValue()));
            C.putString("scene", "immersion_back");
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "immersion_back_click", C, 0L, 4, null);
            this.f45359b.f45274t = true;
            this.f45359b.finish();
            a aVar = ImmersionActivity.V0;
            ImmersionActivity immersionActivity = this.f45359b;
            ImmersionParams immersionParams = new ImmersionParams();
            immersionParams.setFrom("immersion_back");
            if (z10) {
                immersionParams.setType(5);
                immersionParams.setEpisodeId(shorts.getId());
            } else if (shorts.getEpisodeNum() != 0) {
                immersionParams.setType(1);
                immersionParams.setEpisodeNum(shorts.getEpisodeNum());
            } else {
                immersionParams.setType(3);
            }
            ImmersionShortsInfo immersionShortsInfo = new ImmersionShortsInfo();
            immersionShortsInfo.setShortsId(shorts.getShortPlayId());
            immersionShortsInfo.setShortPlayCode(shorts.getShortPlayCode());
            immersionShortsInfo.setShortsName(shorts.getShortPlayName());
            immersionShortsInfo.setCover(shorts.getCoverId());
            immersionShortsInfo.setUpack(shorts.getUpack());
            immersionParams.setShortsInfo(immersionShortsInfo);
            aVar.a(immersionActivity, immersionParams);
        }
    }

    /* compiled from: ImmersionActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class q implements v.b {
        q() {
        }

        @Override // com.startshorts.androidplayer.manager.immersion.feature.v.b
        public void a() {
            ImmersionActivity.this.x(R$string.immersion_activity_switch_resolution_failed);
            ImmersionActivity.this.u6();
            ImmersionActivity immersionActivity = ImmersionActivity.this;
            IImmersionFeature.MessageType messageType = IImmersionFeature.MessageType.SWITCH_RESOLUTION_TIMEOUT;
            HashMap hashMap = new HashMap();
            hashMap.put("episode", ImmersionActivity.this.D5());
            Unit unit = Unit.f60915a;
            immersionActivity.L8(new com.startshorts.androidplayer.manager.immersion.feature.k(messageType, hashMap));
        }
    }

    /* compiled from: ImmersionActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class q0 implements ImmersionIntroductionDialog.b {
        q0() {
        }

        @Override // com.startshorts.androidplayer.ui.fragment.immersion.ImmersionIntroductionDialog.b
        public void a() {
            ImmersionActivity.J9(ImmersionActivity.this, 0L, 1, null);
        }

        @Override // com.startshorts.androidplayer.ui.fragment.immersion.ImmersionIntroductionDialog.b
        public void b() {
            ImmersionActivity.this.c5("introduction_pop");
        }

        @Override // com.startshorts.androidplayer.ui.fragment.immersion.ImmersionIntroductionDialog.b
        public void c() {
            ImmersionActivity.this.U8("introduction_pop");
        }
    }

    /* compiled from: ImmersionActivity.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nImmersionActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImmersionActivity.kt\ncom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$createUnlockEpisodeFeature$1$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,6800:1\n1863#2:6801\n1872#2,3:6802\n1864#2:6805\n*S KotlinDebug\n*F\n+ 1 ImmersionActivity.kt\ncom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$createUnlockEpisodeFeature$1$1\n*L\n6209#1:6801\n6210#1:6802,3\n6209#1:6805\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class r implements w.b {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ com.startshorts.androidplayer.manager.immersion.feature.w f45363b;

        r(com.startshorts.androidplayer.manager.immersion.feature.w wVar) {
            this.f45363b = wVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final boolean p(ImmersionActivity immersionActivity, final r rVar, final String str, final Function0 onSelfDialogDismiss) {
            Intrinsics.checkNotNullParameter(onSelfDialogDismiss, "onSelfDialogDismiss");
            com.startshorts.androidplayer.manager.configure.ad.c cVar = com.startshorts.androidplayer.manager.configure.ad.c.f42340a;
            ImmersionParams immersionParams = immersionActivity.f45270r;
            if (immersionParams == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mImmersionParams");
                immersionParams = null;
            }
            return cVar.q(immersionParams.getFrom(), immersionActivity, immersionActivity.D5(), new Function1() { // from class: yh.n2
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit q10;
                    q10 = ImmersionActivity.r.q(Function0.this, rVar, str, ((Boolean) obj).booleanValue());
                    return q10;
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit q(Function0 function0, r rVar, String str, boolean z10) {
            function0.invoke();
            rVar.h(str);
            return Unit.f60915a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final boolean r(ImmersionActivity immersionActivity, final r rVar, final String str, final Function0 onSelfDialogDismiss) {
            Intrinsics.checkNotNullParameter(onSelfDialogDismiss, "onSelfDialogDismiss");
            com.startshorts.androidplayer.manager.configure.ad.c cVar = com.startshorts.androidplayer.manager.configure.ad.c.f42340a;
            ImmersionParams immersionParams = immersionActivity.f45270r;
            if (immersionParams == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mImmersionParams");
                immersionParams = null;
            }
            return com.startshorts.androidplayer.manager.configure.ad.c.u(cVar, immersionParams.getFrom(), immersionActivity, immersionActivity.D5(), null, null, new Function1() { // from class: yh.m2
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit s10;
                    s10 = ImmersionActivity.r.s(Function0.this, rVar, str, ((Boolean) obj).booleanValue());
                    return s10;
                }
            }, 24, null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit s(Function0 function0, r rVar, String str, boolean z10) {
            function0.invoke();
            rVar.h(str);
            return Unit.f60915a;
        }

        @Override // com.startshorts.androidplayer.manager.immersion.feature.w.b
        public void a(int i10, EpisodeListUnlockedEvent event) {
            Intrinsics.checkNotNullParameter(event, "event");
            ImmersionActivity.this.g9(i10, event);
        }

        @Override // com.startshorts.androidplayer.manager.immersion.feature.w.b
        public void b() {
            ImmersionActivity.this.b5("UnlockEpisodeMethodDialog");
        }

        @Override // com.startshorts.androidplayer.manager.immersion.feature.w.b
        public void c(String action, BaseEpisode episode) {
            Intrinsics.checkNotNullParameter(action, "action");
            Intrinsics.checkNotNullParameter(episode, "episode");
            ImmersionActivity.Ia(ImmersionActivity.this, action, null, 2, null);
        }

        @Override // com.startshorts.androidplayer.manager.immersion.feature.w.b
        public void d(String action, BaseEpisode episode, String byAbScene, Ad2PayConfig config) {
            Intrinsics.checkNotNullParameter(action, "action");
            Intrinsics.checkNotNullParameter(episode, "episode");
            Intrinsics.checkNotNullParameter(byAbScene, "byAbScene");
            Intrinsics.checkNotNullParameter(config, "config");
            if (!CollectionsKt.q("unlock_select", "unlock_select_iaa", "unlock_view_entrance", NativeAdPresenter.DOWNLOAD, "1080P", "unlock_view_entrance", "sale_banner_entrance", "other").contains(action)) {
                ImmersionActivity.this.W8(byAbScene, config);
            } else {
                ImmersionActivity.Ia(ImmersionActivity.this, action, null, 2, null);
            }
        }

        @Override // com.startshorts.androidplayer.manager.immersion.feature.w.b
        public void e(final String action) {
            Intrinsics.checkNotNullParameter(action, "action");
            final ImmersionActivity immersionActivity = ImmersionActivity.this;
            ImmersionActivity.t9(immersionActivity, "AdInterstitialDialog", null, new Function1() { // from class: yh.k2
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    boolean r10;
                    r10 = ImmersionActivity.r.r(ImmersionActivity.this, this, action, (Function0) obj);
                    return Boolean.valueOf(r10);
                }
            }, true, null, 18, null);
        }

        @Override // com.startshorts.androidplayer.manager.immersion.feature.w.b
        public void f() {
            ImmersionActivity.oa(ImmersionActivity.this, false, null, 3, null);
        }

        @Override // com.startshorts.androidplayer.manager.immersion.feature.w.b
        public void g(final String action) {
            Intrinsics.checkNotNullParameter(action, "action");
            final ImmersionActivity immersionActivity = ImmersionActivity.this;
            ImmersionActivity.t9(immersionActivity, "AdFullScreenNativeDialog", null, new Function1() { // from class: yh.l2
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    boolean p10;
                    p10 = ImmersionActivity.r.p(ImmersionActivity.this, this, action, (Function0) obj);
                    return Boolean.valueOf(p10);
                }
            }, true, null, 18, null);
        }

        @Override // com.startshorts.androidplayer.manager.immersion.feature.w.b
        public void h(String action) {
            Intrinsics.checkNotNullParameter(action, "action");
            BaseEpisode D5 = ImmersionActivity.this.D5();
            if (D5 != null) {
                ImmersionActivity.this.f45260h0 = action;
                this.f45363b.e(action, D5, ImmersionActivity.this.I0);
                ImmersionActivity.this.i6();
            }
        }

        @Override // com.startshorts.androidplayer.manager.immersion.feature.w.b
        public void i(String action, BaseEpisode episode) {
            Intrinsics.checkNotNullParameter(action, "action");
            Intrinsics.checkNotNullParameter(episode, "episode");
            ImmersionActivity.this.a7();
            Object value = ImmersionActivity.this.C.getValue();
            ImmersionActivity immersionActivity = ImmersionActivity.this;
            UnlockViewModel unlockViewModel = (UnlockViewModel) value;
            unlockViewModel.j0(new e.d(episode));
            unlockViewModel.j0(new e.j(immersionActivity, action));
        }

        @Override // com.startshorts.androidplayer.manager.immersion.feature.w.b
        public void j(List<BaseEpisode> list) {
            Intrinsics.checkNotNullParameter(list, "list");
            List I5 = ImmersionActivity.this.I5();
            List list2 = I5;
            if (list2 != null && !list2.isEmpty()) {
                ImmersionActivity immersionActivity = ImmersionActivity.this;
                synchronized (I5) {
                    try {
                        ArrayList arrayList = new ArrayList();
                        Iterator<T> it = list.iterator();
                        while (true) {
                            int i10 = 0;
                            if (!it.hasNext()) {
                                break;
                            }
                            BaseEpisode baseEpisode = (BaseEpisode) it.next();
                            for (Object obj : I5) {
                                int i11 = i10 + 1;
                                if (i10 < 0) {
                                    CollectionsKt.y();
                                }
                                if (((BaseEpisode) obj).getId() == baseEpisode.getId()) {
                                    baseEpisode.setUnlockJustNow(true);
                                    I5.set(i10, baseEpisode);
                                    ImmersionAdapter immersionAdapter = immersionActivity.G;
                                    if (immersionAdapter != null) {
                                        immersionAdapter.d0(i10, baseEpisode);
                                    }
                                    arrayList.add(baseEpisode);
                                }
                                i10 = i11;
                            }
                        }
                        if (!arrayList.isEmpty()) {
                            immersionActivity.J4(arrayList);
                        }
                        Unit unit = Unit.f60915a;
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                BaseEpisode baseEpisode2 = (BaseEpisode) CollectionsKt.D0(list);
                if (baseEpisode2 == null) {
                    return;
                }
                if (baseEpisode2.getEpisodeNum() >= baseEpisode2.getTotalEpisodes()) {
                    ImmersionActivity.this.v8(baseEpisode2.getShortPlayId());
                    return;
                }
                BaseEpisode D5 = ImmersionActivity.this.D5();
                if (D5 != null) {
                    ImmersionActivity.this.Q4(false, D5);
                }
            }
        }

        @Override // com.startshorts.androidplayer.manager.immersion.feature.w.b
        public void k(EpisodeListUnlockedEvent event) {
            Intrinsics.checkNotNullParameter(event, "event");
            ImmersionActivity.e6(ImmersionActivity.this, event, null, true, 2, null);
        }
    }

    /* compiled from: ImmersionActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class r0 implements BaseBottomSheetDialogFragment.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Function0<Unit> f45364a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ImmersionActivity f45365b;

        r0(Function0<Unit> function0, ImmersionActivity immersionActivity) {
            this.f45364a = function0;
            this.f45365b = immersionActivity;
        }

        @Override // com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment.b
        public void onDismiss() {
            this.f45364a.invoke();
            this.f45365b.L4(5000L);
        }
    }

    /* compiled from: ImmersionActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class s implements ImmersionDownloadDramaView.b {
        s() {
        }

        @Override // com.startshorts.androidplayer.ui.view.immersion.menu.ImmersionDownloadDramaView.b
        public void a() {
            if (ImmersionActivity.this.r7()) {
                ImmersionActivity.this.Na();
            }
        }
    }

    /* compiled from: ImmersionActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class s0 implements TopUpDialog.b {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f45368b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Function0<Unit> f45369c;

        s0(String str, Function0<Unit> function0) {
            this.f45368b = str;
            this.f45369c = function0;
        }

        @Override // com.startshorts.androidplayer.ui.dialog.immersion.TopUpDialog.b
        public void a(boolean z10, Boolean bool) {
            if (!Intrinsics.areEqual(bool, Boolean.TRUE)) {
                ImmersionActivity.this.u8("UnlockEpisodeMethodDialog");
                ImmersionActivity.Ia(ImmersionActivity.this, this.f45368b, null, 2, null);
            } else {
                ImmersionActivity.this.M5().f();
                if (!ImmersionActivity.this.U0) {
                    ImmersionActivity.this.U0 = true;
                    BaseEpisode D5 = ImmersionActivity.this.D5();
                    if (D5 != null) {
                        ImmersionActivity.this.Va(D5, true, this.f45368b);
                    }
                }
            }
            this.f45369c.invoke();
        }
    }

    /* compiled from: ImmersionActivity.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nImmersionActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImmersionActivity.kt\ncom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$initEpisodeManager$1\n+ 2 ImmersionActivity.kt\ncom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,6800:1\n4827#2:6801\n4827#2:6803\n1#3:6802\n1#3:6804\n*S KotlinDebug\n*F\n+ 1 ImmersionActivity.kt\ncom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$initEpisodeManager$1\n*L\n1723#1:6801\n1835#1:6803\n1723#1:6802\n1835#1:6804\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class t implements ImmersionEpisodeManager.b {

        /* compiled from: ImmersionActivity.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public /* synthetic */ class a {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[ImmersionEpisodeManager.PlayFailedReason.values().length];
                try {
                    iArr[ImmersionEpisodeManager.PlayFailedReason.REASON_INVALID_URL.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[ImmersionEpisodeManager.PlayFailedReason.REASON_LOCKED.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[ImmersionEpisodeManager.PlayFailedReason.REASON_URL_EXPIRED.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        t() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit g(ImmersionActivity immersionActivity) {
            SubsDetailActivity.a.b(SubsDetailActivity.Q, immersionActivity, "immersion", null, null, false, "current_membership_upgrade", 28, null);
            return Unit.f60915a;
        }

        @Override // com.startshorts.androidplayer.manager.immersion.core.ImmersionEpisodeManager.b
        public void a(int i10, BaseEpisode lastEpisode) {
            int i11;
            com.startshorts.androidplayer.manager.immersion.feature.n nVar;
            Object obj;
            Intrinsics.checkNotNullParameter(lastEpisode, "lastEpisode");
            ImmersionEpisodeManager immersionEpisodeManager = ImmersionActivity.this.f45259g0;
            if (immersionEpisodeManager != null) {
                i11 = immersionEpisodeManager.i();
            } else {
                i11 = 0;
            }
            ImmersionActivity immersionActivity = ImmersionActivity.this;
            IImmersionFeature.MessageType messageType = IImmersionFeature.MessageType.PLAY_EPISODE_END;
            HashMap hashMap = new HashMap();
            ImmersionActivity immersionActivity2 = ImmersionActivity.this;
            hashMap.put("episode", lastEpisode);
            hashMap.put("real_watch_time", Integer.valueOf(i11));
            Iterator it = immersionActivity2.f45263k0.iterator();
            while (true) {
                nVar = null;
                if (it.hasNext()) {
                    obj = it.next();
                    if (((IImmersionFeature) obj) instanceof com.startshorts.androidplayer.manager.immersion.feature.n) {
                        break;
                    }
                } else {
                    obj = null;
                    break;
                }
            }
            if (obj instanceof com.startshorts.androidplayer.manager.immersion.feature.n) {
                nVar = obj;
            }
            com.startshorts.androidplayer.manager.immersion.feature.n nVar2 = nVar;
            if (nVar2 != null) {
                hashMap.put("play_resolution", nVar2.l());
            }
            hashMap.put("immersion_job_manager", immersionActivity2.f45253a0);
            Unit unit = Unit.f60915a;
            immersionActivity.L8(new com.startshorts.androidplayer.manager.immersion.feature.k(messageType, hashMap));
            ImmersionActivity.this.X4(i10);
        }

        @Override // com.startshorts.androidplayer.manager.immersion.core.ImmersionEpisodeManager.b
        public void b(BaseEpisode baseEpisode, BaseEpisode newEpisode, boolean z10) {
            Intrinsics.checkNotNullParameter(newEpisode, "newEpisode");
            ImmersionActivity.this.I0 = null;
            ImmersionActivity.this.i7();
            ImmersionActivity.this.K8(IImmersionFeature.MessageType.SWITCH_SHORTS);
            if (!newEpisode.isTrailer()) {
                ImmersionActivity.this.N5().e0(new c.j(newEpisode.getShortPlayId()));
                if (!ImmersionActivity.this.C0) {
                    ImmersionActivity.this.g8();
                }
            }
            ImmersionActivity.this.r8(newEpisode);
            ImmersionActivity.this.q8(newEpisode);
            boolean isTrailer = newEpisode.isTrailer();
            if (isTrailer) {
                ImmersionActivity.this.Z4(true);
            } else if (!newEpisode.isLocked()) {
                ImmersionActivity.this.L4(10000L);
            }
            if (isTrailer) {
                ImmersionActivity.this.b5("EpisodeListDialog");
                ImmersionActivity.this.b5("IntroductionDialog");
            } else if (!z10) {
                if (ImmersionActivity.this.m7("EpisodeListDialog")) {
                    ImmersionActivity.J9(ImmersionActivity.this, 0L, 1, null);
                }
                if (ImmersionActivity.this.m7("IntroductionDialog")) {
                    ImmersionActivity.this.S9();
                }
            }
        }

        @Override // com.startshorts.androidplayer.manager.immersion.core.ImmersionEpisodeManager.b
        public void c(boolean z10, BaseEpisode baseEpisode, BaseEpisode newEpisode) {
            ImmersionEpisodeManager immersionEpisodeManager;
            Intrinsics.checkNotNullParameter(newEpisode, "newEpisode");
            ud.b.f68412a.a(TimeUtil.f48175a.f(jk.f.a(new Date())));
            DiscountSubscribeManager discountSubscribeManager = DiscountSubscribeManager.f42447a;
            ImmersionActivity immersionActivity = ImmersionActivity.this;
            BaseEpisode D5 = immersionActivity.D5();
            final ImmersionActivity immersionActivity2 = ImmersionActivity.this;
            discountSubscribeManager.i(immersionActivity, D5, new Function0() { // from class: yh.o2
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit g10;
                    g10 = ImmersionActivity.t.g(ImmersionActivity.this);
                    return g10;
                }
            });
            String q10 = ud.a.f68411a.q();
            if (q10 != null) {
                ImmersionParams immersionParams = ImmersionActivity.this.f45270r;
                if (immersionParams == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mImmersionParams");
                    immersionParams = null;
                }
                fk.q.f(fk.q.f51745a, null, q10, immersionParams.getShortsInfo().getUpack(), 1, null);
            }
            au.c.d().l(new EpisodePlayingEvent(newEpisode.getShortPlayId(), newEpisode.getId(), newEpisode.getEpisodeNum()));
            ImmersionActivity.this.l8(newEpisode);
            ImmersionActivity.this.n8(newEpisode);
            ImmersionActivity.this.Q4(z10, newEpisode);
            if (!ImmersionActivity.this.E0) {
                ImmersionActivity.this.E0 = true;
            } else if (!newEpisode.isLocked()) {
                ImmersionActivity.this.O4();
                ImmersionActivity.this.Z4(true);
            }
            if (ImmersionActivity.this.K0 && (immersionEpisodeManager = ImmersionActivity.this.f45259g0) != null) {
                immersionEpisodeManager.c(newEpisode);
            }
        }

        @Override // com.startshorts.androidplayer.manager.immersion.core.ImmersionEpisodeManager.b
        public void d(BaseEpisode episode, ImmersionEpisodeManager.PlayFailedReason reason, boolean z10, boolean z11) {
            BaseEpisode D5;
            Intrinsics.checkNotNullParameter(episode, "episode");
            Intrinsics.checkNotNullParameter(reason, "reason");
            int i10 = a.$EnumSwitchMapping$0[reason.ordinal()];
            if (i10 == 1) {
                ImmersionActivity.this.X = true;
                ImmersionActivity.ga(ImmersionActivity.this, "REASON_INVALID_URL", false, 2, null);
                ImmersionActivity.this.p8(episode);
                ImmersionActivity.this.x(R$string.common_play_failed);
            } else if (i10 != 2) {
                if (i10 == 3) {
                    ImmersionActivity.this.W5();
                    return;
                }
                throw new NoWhenBranchMatchedException();
            } else {
                if (!ImmersionActivity.this.f45262j0.contains(Integer.valueOf(episode.getId()))) {
                    ImmersionActivity.this.f45262j0.add(Integer.valueOf(episode.getId()));
                }
                ImmersionActivity.this.p8(episode);
                if (z10 && z11) {
                    ImmersionActivity.this.f45260h0 = "auto";
                }
                if (!z10 && (D5 = ImmersionActivity.this.D5()) != null) {
                    ImmersionActivity immersionActivity = ImmersionActivity.this;
                    if (D5.isLocked() && !immersionActivity.V4("onEpisodePlayFailed(REASON_LOCKED)")) {
                        immersionActivity.Va(D5, false, immersionActivity.f45260h0);
                    }
                }
            }
        }

        @Override // com.startshorts.androidplayer.manager.immersion.core.ImmersionEpisodeManager.b
        public void e(int i10, BaseEpisode episode, PlayResolution playResolution) {
            ImmersionParams immersionParams;
            Object obj;
            Intrinsics.checkNotNullParameter(episode, "episode");
            ImmersionActivity immersionActivity = ImmersionActivity.this;
            immersionActivity.L6(immersionActivity.E5());
            ImmersionActivity.this.s("onEpisodeEnablePlay -> episodeNum(" + episode.getEpisodeNum() + ") startPosition(" + i10 + ") expectResolutionIfAuto(" + playResolution + ')');
            ImmersionActivity immersionActivity2 = ImmersionActivity.this;
            IImmersionFeature.MessageType messageType = IImmersionFeature.MessageType.PLAY_EPISODE_START;
            HashMap hashMap = new HashMap();
            ImmersionActivity immersionActivity3 = ImmersionActivity.this;
            hashMap.put("episode", episode);
            hashMap.put("expect_resolution_if_auto", playResolution);
            Iterator it = immersionActivity3.f45263k0.iterator();
            while (true) {
                immersionParams = null;
                if (it.hasNext()) {
                    obj = it.next();
                    if (((IImmersionFeature) obj) instanceof com.startshorts.androidplayer.manager.immersion.feature.n) {
                        break;
                    }
                } else {
                    obj = null;
                    break;
                }
            }
            if (!(obj instanceof com.startshorts.androidplayer.manager.immersion.feature.n)) {
                obj = null;
            }
            com.startshorts.androidplayer.manager.immersion.feature.n nVar = (com.startshorts.androidplayer.manager.immersion.feature.n) obj;
            if (nVar != null) {
                hashMap.put("play_resolution", nVar.l());
            }
            hashMap.put("immersion_job_manager", immersionActivity3.f45253a0);
            PlaySpeed.Companion companion = PlaySpeed.Companion;
            ImmersionParams immersionParams2 = immersionActivity3.f45270r;
            if (immersionParams2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mImmersionParams");
            } else {
                immersionParams = immersionParams2;
            }
            hashMap.put("default_play_speed", companion.create(immersionParams.getPlaySpeed()));
            Unit unit = Unit.f60915a;
            immersionActivity2.L8(new com.startshorts.androidplayer.manager.immersion.feature.k(messageType, hashMap));
            ImmersionActivity.this.f45260h0 = "other";
            ImmersionActivity.this.b5("UnlockEpisodeMethodDialog");
            ImmersionActivity.this.Ma();
            ImmersionActivity.this.m6();
            ImmersionActivity.this.o8(episode);
            ImmersionActivity.this.x6();
            ImmersionActivity.this.d8(i10, episode);
            ImmersionActivity.this.V4("onEpisodeEnablePlay");
        }
    }

    /* compiled from: ImmersionActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class t0 implements BaseDialogFragment.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Function0<Unit> f45371a;

        t0(Function0<Unit> function0) {
            this.f45371a = function0;
        }

        @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment.b
        public void onDismiss() {
            this.f45371a.invoke();
        }
    }

    /* compiled from: ImmersionActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class u implements ImmersionMiniWindowView.b {
        u() {
        }

        @Override // com.startshorts.androidplayer.ui.view.immersion.menu.ImmersionMiniWindowView.b
        public void a() {
            if (!ImmersionActivity.this.r7()) {
                return;
            }
            EventManager eventManager = EventManager.f42463a;
            EventManager.s0(eventManager, "pip_click", eventManager.C(ImmersionActivity.this.D5()), 0L, 4, null);
            ImmersionActivity.this.Ua("pip_click");
        }
    }

    /* compiled from: ImmersionActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class u0 implements ImmersionPlayResolutionListView.a {
        u0() {
        }

        @Override // com.startshorts.androidplayer.ui.view.immersion.menu.ImmersionPlayResolutionListView.a
        public void a(PlayResolution resolution) {
            Intrinsics.checkNotNullParameter(resolution, "resolution");
            ImmersionActivity.this.L4(5000L);
            ImmersionActivity immersionActivity = ImmersionActivity.this;
            IImmersionFeature.MessageType messageType = IImmersionFeature.MessageType.CLICK_RESOLUTION_OF_MENU;
            HashMap hashMap = new HashMap();
            ImmersionActivity immersionActivity2 = ImmersionActivity.this;
            hashMap.put("play_resolution", resolution);
            hashMap.put("episode", immersionActivity2.D5());
            Unit unit = Unit.f60915a;
            immersionActivity.L8(new com.startshorts.androidplayer.manager.immersion.feature.k(messageType, hashMap));
        }
    }

    /* compiled from: ImmersionActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class v extends yd.d {
        v() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            if (!ImmersionActivity.this.r7()) {
                return;
            }
            ImmersionActivity.this.onBackPressed();
        }
    }

    /* compiled from: ImmersionActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class v0 implements ImmersionPlaySpeedListView.a {
        v0() {
        }

        @Override // com.startshorts.androidplayer.ui.view.immersion.menu.ImmersionPlaySpeedListView.a
        public void a(PlaySpeed playSpeed) {
            Intrinsics.checkNotNullParameter(playSpeed, "playSpeed");
            ImmersionActivity immersionActivity = ImmersionActivity.this;
            immersionActivity.y(immersionActivity.getString(R$string.immersion_activity_update_speed_tip, String.valueOf(playSpeed.getValue())));
            ImmersionActivity.this.p6();
            ImmersionActivity.this.L4(5000L);
            ImmersionActivity immersionActivity2 = ImmersionActivity.this;
            IImmersionFeature.MessageType messageType = IImmersionFeature.MessageType.CLICK_PLAY_SPEED_OF_MENU;
            HashMap hashMap = new HashMap();
            hashMap.put("play_speed", playSpeed);
            Unit unit = Unit.f60915a;
            immersionActivity2.L8(new com.startshorts.androidplayer.manager.immersion.feature.k(messageType, hashMap));
        }
    }

    /* compiled from: ImmersionActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class w implements ImmersionPlayResolutionView.a {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ImmersionPlayResolutionView f45382b;

        w(ImmersionPlayResolutionView immersionPlayResolutionView) {
            this.f45382b = immersionPlayResolutionView;
        }

        @Override // com.startshorts.androidplayer.ui.view.immersion.menu.ImmersionPlayResolutionView.a
        public void a(boolean z10) {
            if (!ImmersionActivity.this.r7()) {
                return;
            }
            if (ImmersionActivity.this.s7()) {
                ImmersionActivity.this.o6();
                ImmersionActivity.this.L4(5000L);
                return;
            }
            EventManager.s0(EventManager.f42463a, "clarity_click", null, 0L, 6, null);
            ImmersionActivity.this.ha(this.f45382b, z10);
            ImmersionActivity.this.O4();
        }
    }

    /* compiled from: ImmersionActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class w0 implements PurePayingUserAdRetentionDBDialogFragment.b {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Function0<Unit> f45384b;

        w0(Function0<Unit> function0) {
            this.f45384b = function0;
        }

        @Override // com.startshorts.androidplayer.ui.fragment.unlock.PurePayingUserAdRetentionDBDialogFragment.b
        public void a(boolean z10, UnlockEpisodeAdMethod unlockEpisodeAdMethod, boolean z11) {
            if (!z10 && unlockEpisodeAdMethod != null) {
                ImmersionActivity.this.f45268p0 = true;
                ImmersionActivity.this.f45271r0 = z11;
            }
            this.f45384b.invoke();
        }
    }

    /* compiled from: ImmersionActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class x implements ImmersionPlaySpeedView.a {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ImmersionPlaySpeedView f45386b;

        x(ImmersionPlaySpeedView immersionPlaySpeedView) {
            this.f45386b = immersionPlaySpeedView;
        }

        @Override // com.startshorts.androidplayer.ui.view.immersion.menu.ImmersionPlaySpeedView.a
        public void a() {
            if (!ImmersionActivity.this.r7()) {
                return;
            }
            if (ImmersionActivity.this.t7()) {
                ImmersionActivity.this.p6();
                ImmersionActivity.this.L4(5000L);
                return;
            }
            EventManager.s0(EventManager.f42463a, "speed_click", null, 0L, 6, null);
            ImmersionActivity.this.ja(this.f45386b);
            ImmersionActivity.this.O4();
        }
    }

    /* compiled from: ImmersionActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class x0 implements PurePayingUserAdRetentionDialogFragment.b {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Function0<Unit> f45388b;

        x0(Function0<Unit> function0) {
            this.f45388b = function0;
        }

        @Override // com.startshorts.androidplayer.ui.fragment.unlock.PurePayingUserAdRetentionDialogFragment.b
        public void a(boolean z10, UnlockEpisodeAdMethod unlockEpisodeAdMethod, boolean z11) {
            if (!z10 && unlockEpisodeAdMethod != null) {
                ImmersionActivity.this.f45268p0 = true;
                ImmersionActivity.this.f45271r0 = z11;
                ImmersionActivity.this.I0 = unlockEpisodeAdMethod;
            }
            this.f45388b.invoke();
        }
    }

    /* compiled from: ImmersionActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class y implements vc.g {
        y() {
        }

        @Override // vc.f
        public void b(sc.f refreshLayout) {
            Intrinsics.checkNotNullParameter(refreshLayout, "refreshLayout");
            ImmersionViewPagerManager immersionViewPagerManager = ImmersionActivity.this.H;
            if (immersionViewPagerManager != null) {
                immersionViewPagerManager.z(true);
            }
        }

        @Override // vc.e
        public void c(sc.f refreshLayout) {
            Intrinsics.checkNotNullParameter(refreshLayout, "refreshLayout");
            ImmersionViewPagerManager immersionViewPagerManager = ImmersionActivity.this.H;
            if (immersionViewPagerManager != null) {
                immersionViewPagerManager.x(true);
            }
        }
    }

    /* compiled from: ImmersionActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class y0 implements BaseDialogFragment.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Function0<Unit> f45390a;

        y0(Function0<Unit> function0) {
            this.f45390a = function0;
        }

        @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment.b
        public void onDismiss() {
            this.f45390a.invoke();
        }
    }

    /* compiled from: ImmersionActivity.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nImmersionActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImmersionActivity.kt\ncom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$initSeekbar$1\n+ 2 ImmersionActivity.kt\ncom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,6800:1\n4827#2:6801\n1#3:6802\n*S KotlinDebug\n*F\n+ 1 ImmersionActivity.kt\ncom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$initSeekbar$1\n*L\n3353#1:6801\n3353#1:6802\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class z implements DiscreteSeekBar2.b {
        z() {
        }

        @Override // com.startshorts.androidplayer.ui.view.seekbar.DiscreteSeekBar2.b
        public void a(DiscreteSeekBar2 seekBar) {
            Intrinsics.checkNotNullParameter(seekBar, "seekBar");
            ImmersionActivity.this.s("onStopTrackingTouch");
            ImmersionActivity immersionActivity = ImmersionActivity.this;
            IImmersionFeature.MessageType messageType = IImmersionFeature.MessageType.SEEKBAR_STOP_TOUCH;
            HashMap hashMap = new HashMap();
            ImmersionActivity immersionActivity2 = ImmersionActivity.this;
            hashMap.put("seekbar", seekBar);
            hashMap.put("episode", immersionActivity2.D5());
            Unit unit = Unit.f60915a;
            immersionActivity.L8(new com.startshorts.androidplayer.manager.immersion.feature.k(messageType, hashMap));
            ImmersionActivity.this.R8();
            ImmersionActivity.this.kb(true);
            ImmersionActivity.this.r6();
            if (ImmersionActivity.this.R != -1) {
                int progress = seekBar.getProgress();
                if (Math.abs(ImmersionActivity.this.R - progress) >= 1000) {
                    ImmersionActivity.this.I8(progress);
                    ImmersionActivity.this.W = false;
                    if (ImmersionActivity.this.V) {
                        ImmersionActivity.this.s("auto resumePlay -> stop tracking touch");
                        ImmersionActivity.this.A8();
                    }
                }
            }
            ImmersionActivity.this.R = -1;
        }

        @Override // com.startshorts.androidplayer.ui.view.seekbar.DiscreteSeekBar2.b
        public void b(DiscreteSeekBar2 seekBar) {
            Intrinsics.checkNotNullParameter(seekBar, "seekBar");
            ImmersionActivity.this.s("onClickTracking");
            ImmersionActivity.this.I8(seekBar.getProgress());
            ImmersionActivity.this.W = false;
            if (ImmersionActivity.this.V) {
                ImmersionActivity.this.s("auto resumePlay -> click tracking");
                ImmersionActivity.this.A8();
            }
        }

        @Override // com.startshorts.androidplayer.ui.view.seekbar.DiscreteSeekBar2.b
        public void c(DiscreteSeekBar2 seekBar, int i10, boolean z10) {
            Intrinsics.checkNotNullParameter(seekBar, "seekBar");
            if (z10) {
                ImmersionActivity.this.ma(seekBar.getProgress(), seekBar.getMax());
            }
        }

        @Override // com.startshorts.androidplayer.ui.view.seekbar.DiscreteSeekBar2.b
        public void d(DiscreteSeekBar2 seekBar) {
            Intrinsics.checkNotNullParameter(seekBar, "seekBar");
            ImmersionActivity.this.s("onLongPressTracking");
            ImmersionActivity.this.R = seekBar.getProgress();
            ImmersionActivity.this.ma(seekBar.getProgress(), seekBar.getMax());
        }

        @Override // com.startshorts.androidplayer.ui.view.seekbar.DiscreteSeekBar2.b
        public void e(DiscreteSeekBar2 seekBar) {
            com.startshorts.androidplayer.manager.immersion.feature.n nVar;
            Object obj;
            Intrinsics.checkNotNullParameter(seekBar, "seekBar");
            ImmersionActivity.this.s("onStartTrackingTouch");
            ImmersionActivity immersionActivity = ImmersionActivity.this;
            IImmersionFeature.MessageType messageType = IImmersionFeature.MessageType.SEEKBAR_START_TOUCH;
            HashMap hashMap = new HashMap();
            ImmersionActivity immersionActivity2 = ImmersionActivity.this;
            hashMap.put("seekbar", seekBar);
            hashMap.put("episode", immersionActivity2.D5());
            Iterator it = immersionActivity2.f45263k0.iterator();
            while (true) {
                nVar = null;
                if (it.hasNext()) {
                    obj = it.next();
                    if (((IImmersionFeature) obj) instanceof com.startshorts.androidplayer.manager.immersion.feature.n) {
                        break;
                    }
                } else {
                    obj = null;
                    break;
                }
            }
            if (obj instanceof com.startshorts.androidplayer.manager.immersion.feature.n) {
                nVar = obj;
            }
            com.startshorts.androidplayer.manager.immersion.feature.n nVar2 = nVar;
            if (nVar2 != null) {
                hashMap.put("play_resolution", nVar2.l());
            }
            Unit unit = Unit.f60915a;
            immersionActivity.L8(new com.startshorts.androidplayer.manager.immersion.feature.k(messageType, hashMap));
            ImmersionActivity.this.R = seekBar.getProgress();
            ImmersionActivity.this.S8();
            ImmersionActivity.this.ma(seekBar.getProgress(), seekBar.getMax());
            ImmersionActivity.this.kb(false);
        }
    }

    /* compiled from: ImmersionActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class z0 implements ShortRatingHandler.b {
        z0() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void c(ImmersionActivity immersionActivity, ShortPlayContentInfo shortPlayContentInfo) {
            BaseEpisode D5;
            int shortPlayId;
            ShortRatingHandler shortRatingHandler;
            if (!immersionActivity.p() && (D5 = immersionActivity.D5()) != null) {
                if (D5.isTrailer()) {
                    shortPlayId = D5.getBindShortPlayId();
                } else {
                    shortPlayId = D5.getShortPlayId();
                }
                Integer shortPlayId2 = shortPlayContentInfo.getShortPlayId();
                if (shortPlayId2 != null && shortPlayId == shortPlayId2.intValue() && (shortRatingHandler = immersionActivity.f45281w0) != null) {
                    shortRatingHandler.j(shortPlayContentInfo);
                }
            }
        }

        @Override // com.startshorts.androidplayer.ui.view.shortsV2.shortrating.ShortRatingHandler.b
        public void a(final ShortPlayContentInfo shortPlayContentInfo) {
            Intrinsics.checkNotNullParameter(shortPlayContentInfo, "shortPlayContentInfo");
            final ImmersionActivity immersionActivity = ImmersionActivity.this;
            immersionActivity.runOnUiThread(new Runnable() { // from class: yh.s2
                @Override // java.lang.Runnable
                public final void run() {
                    ImmersionActivity.z0.c(ImmersionActivity.this, shortPlayContentInfo);
                }
            });
        }
    }

    private final List<nj.a> A5() {
        ArrayList arrayList = new ArrayList();
        int childCount = ((ActivityImmersionBinding) E()).f38295s.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = ((ActivityImmersionBinding) E()).f38295s.getChildAt(i10);
            if (childAt instanceof nj.a) {
                arrayList.add(childAt);
            }
        }
        return arrayList;
    }

    private final void A6(int i10) {
        ImmersionAdapter immersionAdapter = this.G;
        if (immersionAdapter != null) {
            immersionAdapter.K(i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean A7() {
        DiscreteSeekBar2 discreteSeekBar2 = this.N;
        if (discreteSeekBar2 == null || discreteSeekBar2.getVisibility() != 0) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void A8() {
        String str;
        BaseEpisode D5 = D5();
        if (D5 != null) {
            str = D5.getVideoUrl();
        } else {
            str = null;
        }
        if (str != null && str.length() != 0) {
            s("resumePlay");
            if (!this.W) {
                fa("resumePlay", false);
            }
            if (!this.T0) {
                if (this.F0) {
                    Z4(true);
                    this.F0 = false;
                } else {
                    O4();
                    L4(5000L);
                }
            } else {
                m6();
            }
            this.f45278v.getValue().M(b.g.f48941a);
            return;
        }
        m("resumePlay failed -> video url is null");
    }

    private final void A9(final String str, HashMap<String, Object> hashMap, final Function1<? super Function0<Unit>, ? extends DialogFragment> function1) {
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        t9(this, str, hashMap, new Function1() { // from class: yh.w0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean C9;
                C9 = ImmersionActivity.C9(Ref.ObjectRef.this, function1, this, str, (Function0) obj);
                return Boolean.valueOf(C9);
            }
        }, false, new Function0() { // from class: yh.x0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit D9;
                D9 = ImmersionActivity.D9(Ref.ObjectRef.this);
                return D9;
            }
        }, 8, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void Aa(final SubsSku subsSku) {
        ud.b.f68412a.b5(TimeUtil.f48175a.f(jk.f.a(new Date())), false);
        ve.h.f68906a.c();
        B9(this, "SubsExpansionNewDialog", null, new Function1() { // from class: yh.n1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                DialogFragment Ba;
                Ba = ImmersionActivity.Ba(SubsSku.this, this, (Function0) obj);
                return Ba;
            }
        }, 2, null);
    }

    private final void B6() {
        if (this.B) {
            return;
        }
        this.B = true;
        this.A.getValue().L().observe(this, new d0(new Function1() { // from class: yh.r
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit C6;
                C6 = ImmersionActivity.C6(ImmersionActivity.this, (com.startshorts.androidplayer.viewmodel.mylist.b) obj);
                return C6;
            }
        }));
    }

    private final boolean B7() {
        AccountRepo accountRepo = AccountRepo.f43052a;
        if ((!accountRepo.z0() && ud.b.f68412a.R1()) || (accountRepo.B0() && accountRepo.M0())) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void B8(String str, boolean z10) {
        ve.c<HashMap<String, Object>> F5 = F5(str);
        if (F5 != null) {
            F5.p(z10);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void B9(ImmersionActivity immersionActivity, String str, HashMap hashMap, Function1 function1, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            hashMap = null;
        }
        immersionActivity.A9(str, hashMap, function1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DialogFragment Ba(SubsSku subsSku, ImmersionActivity immersionActivity, Function0 onDismiss) {
        Intrinsics.checkNotNullParameter(onDismiss, "onDismiss");
        SubsExpansionNewDialog subsExpansionNewDialog = new SubsExpansionNewDialog();
        subsExpansionNewDialog.s0(subsSku);
        subsExpansionNewDialog.q0(immersionActivity.D5());
        subsExpansionNewDialog.r0(new d1());
        subsExpansionNewDialog.w(new e1(onDismiss));
        return subsExpansionNewDialog;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit C6(ImmersionActivity immersionActivity, com.startshorts.androidplayer.viewmodel.mylist.b bVar) {
        if (bVar instanceof b.a) {
            immersionActivity.ca("favorite_click");
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean C7() {
        ImmersionAdapter immersionAdapter = this.G;
        if (immersionAdapter != null) {
            return immersionAdapter.S(E5());
        }
        return false;
    }

    private final void C8(int i10, int i11, String str) {
        int i12;
        List<BaseEpisode> I5 = I5();
        List<BaseEpisode> list = I5;
        if (list != null && !list.isEmpty()) {
            synchronized (I5) {
                Iterator<BaseEpisode> it = I5.iterator();
                int i13 = 0;
                while (true) {
                    if (it.hasNext()) {
                        if (it.next().getId() == i11) {
                            break;
                        }
                        i13++;
                    } else {
                        i13 = -1;
                        break;
                    }
                }
                i12 = i13;
            }
            F8(this, i12, i10, i11, str, false, 16, null);
            return;
        }
        F8(this, -1, i10, i11, str, false, 16, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r2v1, types: [T, java.lang.Object] */
    public static final boolean C9(Ref.ObjectRef objectRef, Function1 function1, ImmersionActivity immersionActivity, String str, Function0 onSelfDialogDismiss) {
        Intrinsics.checkNotNullParameter(onSelfDialogDismiss, "onSelfDialogDismiss");
        ?? invoke = function1.invoke(onSelfDialogDismiss);
        objectRef.element = invoke;
        DialogFragment dialogFragment = (DialogFragment) invoke;
        if (dialogFragment != null) {
            dialogFragment.show(immersionActivity.getSupportFragmentManager(), str);
            return true;
        }
        return true;
    }

    private final void Ca(final int i10, final BaseEpisode baseEpisode) {
        Integer num;
        if (this.f45267o0) {
            m("showSubsProExpiredDialog failed -> mOnBackPressed is true");
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("showSubsProExpiredDialog -> subsType(");
        sb2.append(i10);
        sb2.append(") shortsId(");
        if (baseEpisode != null) {
            num = Integer.valueOf(baseEpisode.getShortPlayId());
        } else {
            num = null;
        }
        sb2.append(num);
        sb2.append(')');
        s(sb2.toString());
        B9(this, "SubsProExpiredDialog", null, new Function1() { // from class: yh.i0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                DialogFragment Da;
                Da = ImmersionActivity.Da(i10, baseEpisode, this, (Function0) obj);
                return Da;
            }
        }, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final BaseEpisode D5() {
        ImmersionEpisodeManager immersionEpisodeManager = this.f45259g0;
        if (immersionEpisodeManager != null) {
            return immersionEpisodeManager.f();
        }
        return null;
    }

    private final void D6() {
        nj.a aVar;
        if (uh.i0.f68447a.b()) {
            return;
        }
        ViewStubProxy downloadDramaViewstub = ((ActivityImmersionBinding) E()).f38283g;
        Intrinsics.checkNotNullExpressionValue(downloadDramaViewstub, "downloadDramaViewstub");
        jk.e0.h(downloadDramaViewstub);
        int childCount = W1(this).f38295s.getChildCount();
        int i10 = 0;
        while (true) {
            if (i10 < childCount) {
                View childAt = W1(this).f38295s.getChildAt(i10);
                if (childAt instanceof ImmersionDownloadDramaView) {
                    aVar = (nj.a) childAt;
                    break;
                }
                i10++;
            } else {
                aVar = null;
                break;
            }
        }
        ImmersionDownloadDramaView immersionDownloadDramaView = (ImmersionDownloadDramaView) aVar;
        if (immersionDownloadDramaView != null) {
            immersionDownloadDramaView.setMListener(new s());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean D7() {
        ImmersionViewPagerManager immersionViewPagerManager = this.H;
        if (immersionViewPagerManager != null) {
            return immersionViewPagerManager.r();
        }
        return false;
    }

    static /* synthetic */ void D8(ImmersionActivity immersionActivity, int i10, int i11, String str, int i12, Object obj) {
        if ((i12 & 4) != 0) {
            str = "auto";
        }
        immersionActivity.C8(i10, i11, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit D9(Ref.ObjectRef objectRef) {
        DialogFragment dialogFragment = (DialogFragment) objectRef.element;
        if (dialogFragment != null) {
            dialogFragment.dismissAllowingStateLoss();
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DialogFragment Da(int i10, BaseEpisode baseEpisode, ImmersionActivity immersionActivity, Function0 onDismiss) {
        Intrinsics.checkNotNullParameter(onDismiss, "onDismiss");
        SubsProExpiredDialog subsProExpiredDialog = new SubsProExpiredDialog();
        subsProExpiredDialog.v0(i10);
        subsProExpiredDialog.u0(baseEpisode);
        subsProExpiredDialog.w(new f1(onDismiss, subsProExpiredDialog, immersionActivity));
        return subsProExpiredDialog;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int E5() {
        ImmersionViewPagerManager immersionViewPagerManager = this.H;
        if (immersionViewPagerManager != null) {
            return immersionViewPagerManager.o();
        }
        return -1;
    }

    private final void E6() {
        if (this.f45259g0 != null) {
            return;
        }
        ImmersionParams immersionParams = this.f45270r;
        if (immersionParams == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mImmersionParams");
            immersionParams = null;
        }
        ImmersionViewPagerManager immersionViewPagerManager = this.H;
        Intrinsics.checkNotNull(immersionViewPagerManager);
        ImmersionAdapter immersionAdapter = this.G;
        Intrinsics.checkNotNull(immersionAdapter);
        this.f45259g0 = new ImmersionEpisodeManager(immersionParams, immersionViewPagerManager, immersionAdapter, new t());
    }

    private final void E7(boolean z10) {
        ImmersionViewPagerManager immersionViewPagerManager = this.H;
        if (immersionViewPagerManager != null) {
            immersionViewPagerManager.m();
        }
        if (w7()) {
            y5(z10);
        }
    }

    private final void E8(final int i10, int i11, int i12, String str, boolean z10) {
        List<BaseEpisode> I5 = I5();
        if (I5 == null) {
            return;
        }
        s("scrollToEpisodeByPosition -> position(" + i10 + ") shortsId(" + i11 + ") episodeId(" + i12 + ") action(" + str + ") enableSmoothScroll(" + z10 + ')');
        this.f45260h0 = str;
        if (i10 != -1 && CollectionsKt.t0(I5, i10) != null) {
            final boolean z11 = true;
            if (E5() == i10) {
                BaseEpisode D5 = D5();
                if (D5 == null) {
                    return;
                }
                if (D5.isLocked()) {
                    Va(D5, true, str);
                    return;
                }
                ImmersionEpisodeManager immersionEpisodeManager = this.f45259g0;
                if (immersionEpisodeManager != null) {
                    immersionEpisodeManager.p();
                    return;
                }
                return;
            }
            z11 = (!z10 || Math.abs(E5() - i10) > 1) ? false : false;
            runOnUiThread(new Runnable() { // from class: yh.s0
                @Override // java.lang.Runnable
                public final void run() {
                    ImmersionActivity.G8(ImmersionActivity.this, i10, z11);
                }
            });
        } else if (i12 != -1) {
            ImmersionViewModel N5 = N5();
            N5.w();
            N5.e0(new c.k(this, i11, i12, 1, ResetReason.SKIP_EPISODES));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void E9() {
        ShortDiscountView shortDiscountView;
        Object obj;
        if (this.f45273s0) {
            return;
        }
        i6();
        ViewStubProxy viewStubProxy = ((ActivityImmersionBinding) E()).f38281e;
        Intrinsics.checkNotNull(viewStubProxy);
        jk.e0.g(viewStubProxy);
        View root = viewStubProxy.getRoot();
        ShortDiscountSku shortDiscountSku = null;
        if (root instanceof ShortDiscountView) {
            shortDiscountView = (ShortDiscountView) root;
        } else {
            shortDiscountView = null;
        }
        if (shortDiscountView != null) {
            shortDiscountView.setMCallback(new l0());
            Iterator it = this.f45263k0.iterator();
            while (true) {
                if (it.hasNext()) {
                    obj = it.next();
                    if (((IImmersionFeature) obj) instanceof com.startshorts.androidplayer.manager.immersion.feature.i) {
                        break;
                    }
                } else {
                    obj = null;
                    break;
                }
            }
            if (!(obj instanceof com.startshorts.androidplayer.manager.immersion.feature.i)) {
                obj = null;
            }
            com.startshorts.androidplayer.manager.immersion.feature.i iVar = (com.startshorts.androidplayer.manager.immersion.feature.i) obj;
            if (iVar != null) {
                shortDiscountSku = iVar.k();
            }
            shortDiscountView.y(shortDiscountSku);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void Ea(String str) {
        ImmersionAdapter immersionAdapter = this.G;
        if (immersionAdapter != null) {
            immersionAdapter.a0(E5(), str);
        }
    }

    private final ve.c<HashMap<String, Object>> F5(String str) {
        Object obj;
        Iterator<T> it = M5().i().iterator();
        while (true) {
            obj = null;
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            HashMap hashMap = (HashMap) ((ve.c) next).i();
            if (hashMap != null) {
                obj = hashMap.get("dialog_name");
            }
            if (Intrinsics.areEqual(obj, str)) {
                obj = next;
                break;
            }
        }
        return (ve.c) obj;
    }

    private final void F6() {
        Observer<? super com.startshorts.androidplayer.viewmodel.immersion.d> observer = new Observer() { // from class: yh.s
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                ImmersionActivity.G6(ImmersionActivity.this, obj);
            }
        };
        this.f45286z = observer;
        N5().Q().observeForever(observer);
    }

    private final boolean F7() {
        ImmersionParams immersionParams;
        String stringExtra = getIntent().getStringExtra("immersion_params");
        ImmersionParams immersionParams2 = null;
        if (stringExtra != null) {
            immersionParams = (ImmersionParams) jk.l.b(stringExtra, ImmersionParams.class);
        } else {
            immersionParams = null;
        }
        if (immersionParams == null) {
            finish();
            return false;
        }
        this.f45270r = immersionParams;
        ud.a aVar = ud.a.f68411a;
        aVar.t0(immersionParams.getFrom());
        aVar.s0(immersionParams.getActResource());
        StringBuilder sb2 = new StringBuilder();
        sb2.append("mImmersionParams -> ");
        ImmersionParams immersionParams3 = this.f45270r;
        if (immersionParams3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mImmersionParams");
        } else {
            immersionParams2 = immersionParams3;
        }
        sb2.append(immersionParams2);
        m(sb2.toString());
        return true;
    }

    static /* synthetic */ void F8(ImmersionActivity immersionActivity, int i10, int i11, int i12, String str, boolean z10, int i13, Object obj) {
        int i14;
        int i15;
        if ((i13 & 2) != 0) {
            i14 = -1;
        } else {
            i14 = i11;
        }
        if ((i13 & 4) != 0) {
            i15 = -1;
        } else {
            i15 = i12;
        }
        if ((i13 & 16) != 0) {
            z10 = true;
        }
        immersionActivity.E8(i10, i14, i15, str, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void F9() {
        s9(this, "DiscountPurchaseFailedDialog", null, new Function1() { // from class: yh.c0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Dialog G9;
                G9 = ImmersionActivity.G9(ImmersionActivity.this, (Function0) obj);
                return G9;
            }
        }, 2, null);
    }

    private final void Fa(final ShortsLabel shortsLabel) {
        final BaseEpisode D5 = D5();
        if (D5 != null) {
            B9(this, "TagDrawerDialog", null, new Function1() { // from class: yh.a1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    DialogFragment Ga;
                    Ga = ImmersionActivity.Ga(ShortsLabel.this, D5, this, (Function0) obj);
                    return Ga;
                }
            }, 2, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void G4(BaseEpisode baseEpisode) {
        ImmersionNextEpisodeTipView immersionNextEpisodeTipView = new ImmersionNextEpisodeTipView(this);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        fk.z zVar = fk.z.f51786a;
        layoutParams.topMargin = zVar.b();
        layoutParams.setMarginStart(zVar.d());
        Unit unit = Unit.f60915a;
        I4(this, immersionNextEpisodeTipView, layoutParams, null, 4, null);
        ImmersionNotificationType immersionNotificationType = ImmersionNotificationType.NEXT_EPISODE_PREPARED;
        String string = getString(R$string.shorts_fragment_next_episode_tip, baseEpisode.getCheckedShortPlayName());
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        immersionNextEpisodeTipView.d(immersionNotificationType, string);
    }

    private final BaseEpisode G5() {
        List<BaseEpisode> I5 = I5();
        if (I5 != null) {
            return (BaseEpisode) CollectionsKt.firstOrNull(I5);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void G6(ImmersionActivity immersionActivity, Object it) {
        Object obj;
        BaseEpisode D5;
        String videoUrl;
        int i10;
        Intrinsics.checkNotNullParameter(it, "it");
        if (it instanceof d.h) {
            List<BaseEpisode> I5 = immersionActivity.I5();
            if (I5 == null) {
                return;
            }
            synchronized (I5) {
                try {
                    for (BaseEpisode baseEpisode : I5) {
                        if (baseEpisode.getShortPlayId() == ((d.h) it).a().getId()) {
                            baseEpisode.setShortPlayName(((d.h) it).a().getShortPlayName());
                        }
                    }
                    Unit unit = Unit.f60915a;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            BaseEpisode D52 = immersionActivity.D5();
            if (D52 != null && ((d.h) it).a().getId() == D52.getShortPlayId()) {
                immersionActivity.r8(D52);
                return;
            }
            return;
        }
        com.startshorts.androidplayer.manager.immersion.feature.i iVar = null;
        if (it instanceof d.C0663d) {
            ud.a aVar = ud.a.f68411a;
            if (Intrinsics.areEqual(aVar.q(), Constants.DEEPLINK)) {
                EventManager eventManager = EventManager.f42463a;
                Bundle a10 = jk.b.a(EventManager.x(eventManager, aVar.p(), false, 2, null), eventManager.C(immersionActivity.D5()));
                a10.putString("from", aVar.q());
                Unit unit2 = Unit.f60915a;
                EventManager.s0(eventManager, "enter_reel_query_episodes_success", a10, 0L, 4, null);
            }
            immersionActivity.c7();
            immersionActivity.R6();
            immersionActivity.E6();
            immersionActivity.W6();
            if (!immersionActivity.m7("SubsProExpiredDialog")) {
                d.C0663d c0663d = (d.C0663d) it;
                immersionActivity.Y5(c0663d.c(), c0663d.b(), c0663d.a(), c0663d.e(), c0663d.d());
                immersionActivity.S4("QueryEpisodesSuccess");
                return;
            }
            if (Intrinsics.areEqual(aVar.q(), Constants.DEEPLINK)) {
                EventManager eventManager2 = EventManager.f42463a;
                Bundle a11 = jk.b.a(EventManager.x(eventManager2, aVar.p(), false, 2, null), eventManager2.C(immersionActivity.D5()));
                a11.putString("from", aVar.q());
                a11.putString("err_msg", "SubsProExpiredDialog is showing");
                Unit unit3 = Unit.f60915a;
                EventManager.s0(eventManager2, "enter_reel_query_episodes_error", a11, 0L, 4, null);
            }
            immersionActivity.m("handle QueryEpisodesSuccess failed -> SubsProExpiredDialog is showing");
        } else if (it instanceof d.c) {
            ImmersionAdapter immersionAdapter = immersionActivity.G;
            if (immersionAdapter == null || (immersionAdapter != null && immersionAdapter.t())) {
                d.c cVar = (d.c) it;
                if (cVar.a().isNetworkError()) {
                    immersionActivity.V();
                } else {
                    immersionActivity.W(cVar.a().getMsg());
                }
                immersionActivity.U4(immersionActivity.E5());
                immersionActivity.T4(immersionActivity.E5());
                immersionActivity.y(cVar.b());
            }
        } else if (it instanceof d.b) {
            d.b bVar = (d.b) it;
            if (bVar.b() != 1 || (D5 = immersionActivity.D5()) == null) {
                return;
            }
            BaseEpisode a12 = bVar.a();
            if (a12.getId() == D5.getId() && (videoUrl = a12.getVideoUrl()) != null && videoUrl.length() != 0) {
                String videoUrl2 = D5.getVideoUrl();
                if (videoUrl2 == null || videoUrl2.length() == 0) {
                    List<BaseEpisode> I52 = immersionActivity.I5();
                    if (I52 != null) {
                        i10 = I52.indexOf(D5);
                    } else {
                        i10 = -1;
                    }
                    if (i10 == -1) {
                        return;
                    }
                    a12.setUnlockJustNow(true);
                    List<BaseEpisode> I53 = immersionActivity.I5();
                    if (I53 != null) {
                        I53.set(i10, a12);
                    }
                    ImmersionAdapter immersionAdapter2 = immersionActivity.G;
                    if (immersionAdapter2 != null) {
                        immersionAdapter2.d0(i10, a12);
                    }
                    immersionActivity.J4(CollectionsKt.t(a12));
                    immersionActivity.S4("QueryEpisodeDetailSuccess");
                    ImmersionViewPagerManager immersionViewPagerManager = immersionActivity.H;
                    if (immersionViewPagerManager != null) {
                        ImmersionViewPagerManager.C(immersionViewPagerManager, false, 1, null);
                    }
                    immersionActivity.T4(immersionActivity.E5());
                    ImmersionEpisodeManager immersionEpisodeManager = immersionActivity.f45259g0;
                    if (immersionEpisodeManager != null) {
                        immersionEpisodeManager.p();
                    }
                }
            }
        } else if (Intrinsics.areEqual(it, d.f.f48748a)) {
            immersionActivity.G7();
        } else if (it instanceof d.e) {
            immersionActivity.E7(((d.e) it).a());
        } else if (it instanceof d.g) {
            Iterator it2 = immersionActivity.f45263k0.iterator();
            while (true) {
                if (it2.hasNext()) {
                    obj = it2.next();
                    if (((IImmersionFeature) obj) instanceof com.startshorts.androidplayer.manager.immersion.feature.i) {
                        break;
                    }
                } else {
                    obj = null;
                    break;
                }
            }
            if (obj instanceof com.startshorts.androidplayer.manager.immersion.feature.i) {
                iVar = obj;
            }
            com.startshorts.androidplayer.manager.immersion.feature.i iVar2 = iVar;
            if (iVar2 != null) {
                d.g gVar = (d.g) it;
                iVar2.o(gVar.a(), gVar.b(), immersionActivity.D5());
            }
        } else if (it instanceof d.a) {
            GoogleEventUploadInfo a13 = ((d.a) it).a();
            if (!a13.isMatch()) {
                immersionActivity.K0 = true;
                ud.b bVar2 = ud.b.f68412a;
                if (!Intrinsics.areEqual(a13.getAdMatchId(), bVar2.J0())) {
                    bVar2.W3(null);
                    bVar2.V3(a13.getAdMatchId());
                    return;
                }
                return;
            }
            immersionActivity.K0 = false;
        }
    }

    private final void G7() {
        ImmersionViewPagerManager immersionViewPagerManager = this.H;
        if (immersionViewPagerManager != null) {
            immersionViewPagerManager.n();
        }
        if (x7()) {
            z5();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void G8(ImmersionActivity immersionActivity, int i10, boolean z10) {
        ImmersionViewPagerManager immersionViewPagerManager = immersionActivity.H;
        if (immersionViewPagerManager != null) {
            immersionViewPagerManager.v(i10, Boolean.valueOf(z10));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Dialog G9(ImmersionActivity immersionActivity, final Function0 onDismiss) {
        Intrinsics.checkNotNullParameter(onDismiss, "onDismiss");
        gi.d dVar = new gi.d(immersionActivity);
        dVar.x(new m0());
        dVar.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: yh.b1
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                ImmersionActivity.H9(Function0.this, dialogInterface);
            }
        });
        return dVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DialogFragment Ga(ShortsLabel shortsLabel, BaseEpisode baseEpisode, ImmersionActivity immersionActivity, Function0 onDismiss) {
        Intrinsics.checkNotNullParameter(onDismiss, "onDismiss");
        TagDrawerDialog tagDrawerDialog = new TagDrawerDialog();
        tagDrawerDialog.W(shortsLabel, baseEpisode, "immersion");
        tagDrawerDialog.u(new g1(onDismiss, immersionActivity));
        return tagDrawerDialog;
    }

    private final void H4(oj.a aVar, LinearLayout.LayoutParams layoutParams, yd.a aVar2) {
        ImmersionNotificationLayout immersionNotificationLayout;
        ViewStubProxy viewStubProxy = ((ActivityImmersionBinding) E()).f38287k;
        Intrinsics.checkNotNull(viewStubProxy);
        jk.e0.g(viewStubProxy);
        View root = viewStubProxy.getRoot();
        if (root instanceof ImmersionNotificationLayout) {
            immersionNotificationLayout = (ImmersionNotificationLayout) root;
        } else {
            immersionNotificationLayout = null;
        }
        if (immersionNotificationLayout != null) {
            immersionNotificationLayout.d(aVar, layoutParams, aVar2);
        }
    }

    private final int H5() {
        ImmersionAdapter immersionAdapter = this.G;
        if (immersionAdapter != null) {
            return immersionAdapter.getItemCount();
        }
        return 0;
    }

    private final void H7() {
        boolean z10;
        BaseEpisode D5 = D5();
        if (D5 != null && D5.isFreeEpisode()) {
            View view = this.M0;
            if (view != null) {
                jk.b0.d(view);
            }
            View view2 = this.L0;
            if (view2 != null) {
                jk.b0.d(view2);
            }
            View view3 = this.N0;
            if (view3 != null) {
                jk.b0.d(view3);
                return;
            }
            return;
        }
        Account a02 = AccountRepo.f43052a.a0();
        if (a02 != null) {
            z10 = a02.isSubscription();
        } else {
            z10 = false;
        }
        if (!z10) {
            s("loadSaleSkuData() -> user is not subscription, begin to request sale api");
            this.C.getValue().j0(new e.d(D5()));
            this.C.getValue().j0(new e.k(ve.h.f68906a.m()));
            return;
        }
        s("loadSaleSkuData() -> user is not subscription");
        View view4 = this.M0;
        if (view4 != null) {
            jk.b0.d(view4);
        }
        View view5 = this.N0;
        if (view5 != null) {
            jk.b0.d(view5);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void H8() {
        int E5 = E5() + 1;
        if (E5 < H5()) {
            F8(this, E5, 0, 0, "auto", false, 22, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void H9(Function0 function0, DialogInterface dialogInterface) {
        function0.invoke();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void Ha(final String str, final String str2) {
        if (this.f45267o0) {
            m("showUnlockEpisodeMethodDialog failed -> mOnBackPressed is true");
        } else if (m7("SubsProExpiredDialog")) {
            m("showUnlockEpisodeMethodDialog failed -> SubsProExpiredDialog is showing");
        } else {
            final BaseEpisode D5 = D5();
            if (D5 == null) {
                return;
            }
            B9(this, "UnlockEpisodeMethodDialog", null, new Function1() { // from class: yh.y
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    DialogFragment Ja;
                    Ja = ImmersionActivity.Ja(ImmersionActivity.this, str, D5, str2, (Function0) obj);
                    return Ja;
                }
            }, 2, null);
        }
    }

    static /* synthetic */ void I4(ImmersionActivity immersionActivity, oj.a aVar, LinearLayout.LayoutParams layoutParams, yd.a aVar2, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            aVar2 = null;
        }
        immersionActivity.H4(aVar, layoutParams, aVar2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<BaseEpisode> I5() {
        ImmersionAdapter immersionAdapter = this.G;
        if (immersionAdapter != null) {
            return immersionAdapter.m();
        }
        return null;
    }

    private final void I6() {
        if (this.f45265m0) {
            return;
        }
        this.f45265m0 = true;
        M6();
        N6();
        J6();
        D6();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final BillingViewModel I7(final ImmersionActivity immersionActivity) {
        BillingViewModel billingViewModel = (BillingViewModel) immersionActivity.Q5().get(BillingViewModel.class);
        billingViewModel.Q().observe(immersionActivity, new d0(new Function1() { // from class: yh.z
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit J7;
                J7 = ImmersionActivity.J7(ImmersionActivity.this, (com.startshorts.androidplayer.viewmodel.billing.b) obj);
                return J7;
            }
        }));
        return billingViewModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void I8(int i10) {
        s("seekTo -> " + i10 + "ms");
        this.f45278v.getValue().M(new b.h(i10));
    }

    private final void I9(final long j10) {
        ImmersionJobsManager.e(this.f45253a0, ImmersionJobsManager.JobType.SHOW_EPISODE_LIST_DIALOG, j10, null, new Function0() { // from class: yh.t
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit K9;
                K9 = ImmersionActivity.K9(ImmersionActivity.this, j10);
                return K9;
            }
        }, 4, null);
    }

    static /* synthetic */ void Ia(ImmersionActivity immersionActivity, String str, String str2, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str2 = null;
        }
        immersionActivity.Ha(str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final kotlinx.coroutines.r J4(List<BaseEpisode> list) {
        return CoroutineUtil.l(CoroutineUtil.f48072a, "addPreloadStrategyResources", false, new ImmersionActivity$addPreloadStrategyResources$1(this, list, null), 2, null);
    }

    private final BaseEpisode J5() {
        List<BaseEpisode> I5 = I5();
        if (I5 != null) {
            return (BaseEpisode) CollectionsKt.t0(I5, K5());
        }
        return null;
    }

    private final void J6() {
        nj.a aVar;
        ViewStubProxy miniWindowViewstub = ((ActivityImmersionBinding) E()).f38285i;
        Intrinsics.checkNotNullExpressionValue(miniWindowViewstub, "miniWindowViewstub");
        jk.e0.h(miniWindowViewstub);
        int childCount = W1(this).f38295s.getChildCount();
        int i10 = 0;
        while (true) {
            if (i10 < childCount) {
                View childAt = W1(this).f38295s.getChildAt(i10);
                if (childAt instanceof ImmersionMiniWindowView) {
                    aVar = (nj.a) childAt;
                    break;
                }
                i10++;
            } else {
                aVar = null;
                break;
            }
        }
        ImmersionMiniWindowView immersionMiniWindowView = (ImmersionMiniWindowView) aVar;
        if (immersionMiniWindowView != null) {
            immersionMiniWindowView.setMListener(new u());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit J7(ImmersionActivity immersionActivity, com.startshorts.androidplayer.viewmodel.billing.b bVar) {
        if (bVar instanceof b.q) {
            immersionActivity.j8();
        } else if (bVar instanceof b.m) {
            immersionActivity.X5(((b.m) bVar).a());
        }
        return Unit.f60915a;
    }

    private final void J8() {
        DiscreteSeekBar2 discreteSeekBar2;
        if (y7() && (discreteSeekBar2 = this.N) != null) {
            discreteSeekBar2.i();
            Unit unit = Unit.f60915a;
            s("seekbarFakeActionUp");
        }
    }

    static /* synthetic */ void J9(ImmersionActivity immersionActivity, long j10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            j10 = 0;
        }
        immersionActivity.I9(j10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DialogFragment Ja(ImmersionActivity immersionActivity, String str, BaseEpisode baseEpisode, String str2, Function0 onDismiss) {
        Intrinsics.checkNotNullParameter(onDismiss, "onDismiss");
        h1 h1Var = new h1(str, str2, onDismiss);
        String m10 = ve.h.f68906a.m();
        immersionActivity.s("unlockStyle : " + m10);
        immersionActivity.f45285y0 = false;
        if (Intrinsics.areEqual(m10, "22")) {
            UnlockTemplate22Dialog unlockTemplate22Dialog = new UnlockTemplate22Dialog();
            unlockTemplate22Dialog.R0(m10, "unlock_template_22", str, baseEpisode, ud.a.f68411a.q(), h1Var, Intrinsics.areEqual(str2, "from_sale"), immersionActivity.J0);
            return unlockTemplate22Dialog;
        }
        UnlockTemplate21Dialog unlockTemplate21Dialog = new UnlockTemplate21Dialog();
        unlockTemplate21Dialog.U0(m10, "unlock_template_21", str, baseEpisode, ud.a.f68411a.q(), h1Var, Intrinsics.areEqual(str2, "from_sale"), immersionActivity.J0);
        return unlockTemplate21Dialog;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void K4(BaseEpisode baseEpisode) {
        int i10;
        if (baseEpisode.isTrailer()) {
            BaseEpisode R5 = R5();
            if (R5 != null && R5.getShortPlayId() != baseEpisode.getBindShortPlayId()) {
                i10 = R$string.shorts_fragment_trailer_in_production;
            } else {
                i10 = -1;
            }
        } else if (baseEpisode.isUpdateFinished()) {
            i10 = R$string.shorts_fragment_current_episode_finished;
        } else {
            i10 = R$string.shorts_fragment_current_episode_updating;
        }
        if (i10 == -1) {
            return;
        }
        x8(this, ImmersionNotificationType.NEXT_EPISODE_PREPARED, false, null, 6, null);
        ImmersionNextEpisodeTipView immersionNextEpisodeTipView = new ImmersionNextEpisodeTipView(this);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        fk.z zVar = fk.z.f51786a;
        layoutParams.topMargin = zVar.b();
        layoutParams.setMarginStart(zVar.d());
        Unit unit = Unit.f60915a;
        I4(this, immersionNextEpisodeTipView, layoutParams, null, 4, null);
        ImmersionNotificationType immersionNotificationType = ImmersionNotificationType.CURR_EPISODE_END;
        String string = getString(i10);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        immersionNextEpisodeTipView.d(immersionNotificationType, string);
    }

    private final int K5() {
        return H5() - 1;
    }

    private final void K6() {
        ((ActivityImmersionBinding) E()).f38286j.setOnClickListener(new v());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CollectionViewModel K7(ImmersionActivity immersionActivity) {
        return (CollectionViewModel) immersionActivity.Q5().get(CollectionViewModel.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void K8(IImmersionFeature.MessageType messageType) {
        L8(new com.startshorts.androidplayer.manager.immersion.feature.k(messageType, null, 2, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit K9(final ImmersionActivity immersionActivity, final long j10) {
        final int shortsId;
        if (immersionActivity.m7("SubsProExpiredDialog")) {
            return Unit.f60915a;
        }
        BaseEpisode D5 = immersionActivity.D5();
        if (D5 != null) {
            shortsId = D5.getShortPlayId();
        } else {
            ImmersionParams immersionParams = immersionActivity.f45270r;
            if (immersionParams == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mImmersionParams");
                immersionParams = null;
            }
            shortsId = immersionParams.getShortsInfo().getShortsId();
        }
        HashMap<String, Object> hashMap = new HashMap<>();
        hashMap.put("enable_play_when_dialog_show", Boolean.TRUE);
        Unit unit = Unit.f60915a;
        immersionActivity.A9("EpisodeListDialog", hashMap, new Function1() { // from class: yh.j0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                DialogFragment L9;
                L9 = ImmersionActivity.L9(j10, immersionActivity, shortsId, (Function0) obj);
                return L9;
            }
        });
        return Unit.f60915a;
    }

    private final void Ka(String str) {
        w6();
        try {
            Toast makeText = Toast.makeText(this, str, 0);
            makeText.show();
            this.f45261i0 = makeText;
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void L4(long j10) {
        if (this.T0 || this.W || this.D0 != null) {
            return;
        }
        b bVar = new b(j10, this);
        this.D0 = bVar;
        bVar.start();
    }

    private final BillingViewModel L5() {
        return (BillingViewModel) this.E.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void L6(int i10) {
        ImmersionAdapter immersionAdapter = this.G;
        if (immersionAdapter != null) {
            immersionAdapter.R(i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ve.g L7(final ImmersionActivity immersionActivity) {
        return new ve.g(new Function1() { // from class: yh.a0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit N7;
                N7 = ImmersionActivity.N7(ImmersionActivity.this, (ve.c) obj);
                return N7;
            }
        }, new Function2() { // from class: yh.b0
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                Unit M7;
                M7 = ImmersionActivity.M7(ImmersionActivity.this, (ve.c) obj, (List) obj2);
                return M7;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void L8(com.startshorts.androidplayer.manager.immersion.feature.k kVar) {
        for (IImmersionFeature iImmersionFeature : this.f45263k0) {
            try {
                iImmersionFeature.a(kVar);
            } catch (Exception e10) {
                EventManager eventManager = EventManager.f42463a;
                Bundle bundle = new Bundle();
                bundle.putString("scene", "immersion");
                bundle.putString("feature_type", iImmersionFeature.type().toString());
                bundle.putString("message_type", kVar.b().toString());
                bundle.putString("err_msg", e10.getMessage());
                Unit unit = Unit.f60915a;
                EventManager.s0(eventManager, "send_feature_message_failed", bundle, 0L, 4, null);
                m("sendFeatureMessage exception -> featureType(" + iImmersionFeature.type() + ") messageType(" + kVar.b() + ") errMsg(" + e10.getMessage() + ')');
            }
        }
        HashMap<String, Object> a10 = kVar.a();
        if (a10 != null) {
            a10.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DialogFragment L9(long j10, ImmersionActivity immersionActivity, int i10, Function0 onDismiss) {
        boolean z10;
        Intrinsics.checkNotNullParameter(onDismiss, "onDismiss");
        if (j10 == 0) {
            EventManager eventManager = EventManager.f42463a;
            Bundle C = eventManager.C(immersionActivity.D5());
            C.putString("scene", "immersion");
            C.putString("from", TtmlNode.RIGHT);
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "short_menu_click", C, 0L, 4, null);
        }
        ImmersionParams immersionParams = immersionActivity.f45270r;
        ImmersionParams immersionParams2 = null;
        if (immersionParams == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mImmersionParams");
            immersionParams = null;
        }
        String from = immersionParams.getFrom();
        ImmersionParams immersionParams3 = immersionActivity.f45270r;
        if (immersionParams3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mImmersionParams");
        } else {
            immersionParams2 = immersionParams3;
        }
        if (immersionParams2.getShortsInfo().getVideoType() == 4) {
            z10 = true;
        } else {
            z10 = false;
        }
        return new ImmersionEpisodeListDialog(from, i10, z10, new n0(onDismiss, immersionActivity));
    }

    private final void La(String str) {
        boolean isLocked;
        BaseEpisode D5 = D5();
        if (D5 == null) {
            return;
        }
        BaseEpisode S5 = S5();
        if (S5 == null) {
            isLocked = D5.isLocked();
        } else if (S5.getShortPlayId() == D5.getShortPlayId()) {
            if (!S5.isLocked() && D5.isLocked()) {
                isLocked = true;
            } else {
                isLocked = false;
            }
        } else {
            isLocked = D5.isLocked();
        }
        if (isLocked) {
            if (this.C.getValue().Z() || m7("UnlockEpisodeMethodDialog")) {
                return;
            }
            s("showUnlockView -> from(" + str + ')');
            ImmersionAdapter immersionAdapter = this.G;
            if (immersionAdapter != null) {
                immersionAdapter.b0(E5(), v5());
            }
            K8(IImmersionFeature.MessageType.CANCEL_LONG_CLICK_SPEED);
            i6();
            return;
        }
        x6();
    }

    private final boolean M4() {
        int i10;
        BaseEpisode D5 = D5();
        boolean z10 = false;
        if (D5 != null && D5.isCollected()) {
            z10 = true;
        }
        BaseEpisode D52 = D5();
        if (D52 != null) {
            i10 = D52.getShortPlayId();
        } else {
            i10 = -1;
        }
        return x2.f70966a.c(i10, this.G0, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ve.g<HashMap<String, Object>> M5() {
        return (ve.g) this.f45255c0.getValue();
    }

    private final void M6() {
        nj.a aVar;
        ViewStubProxy playResolutionViewstub = ((ActivityImmersionBinding) E()).f38290n;
        Intrinsics.checkNotNullExpressionValue(playResolutionViewstub, "playResolutionViewstub");
        jk.e0.h(playResolutionViewstub);
        int childCount = W1(this).f38295s.getChildCount();
        int i10 = 0;
        while (true) {
            if (i10 < childCount) {
                View childAt = W1(this).f38295s.getChildAt(i10);
                if (childAt instanceof ImmersionPlayResolutionView) {
                    aVar = (nj.a) childAt;
                    break;
                }
                i10++;
            } else {
                aVar = null;
                break;
            }
        }
        ImmersionPlayResolutionView immersionPlayResolutionView = (ImmersionPlayResolutionView) aVar;
        if (immersionPlayResolutionView != null) {
            immersionPlayResolutionView.setMListener(new w(immersionPlayResolutionView));
            immersionPlayResolutionView.r(this, Q5());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit M7(ImmersionActivity immersionActivity, ve.c currentDelegate, List list) {
        Object obj;
        Intrinsics.checkNotNullParameter(currentDelegate, "currentDelegate");
        Intrinsics.checkNotNullParameter(list, "<unused var>");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("onDialogDismiss -> ");
        HashMap hashMap = (HashMap) currentDelegate.i();
        if (hashMap != null) {
            obj = hashMap.get("dialog_name");
        } else {
            obj = null;
        }
        sb2.append(obj);
        immersionActivity.s(sb2.toString());
        immersionActivity.Oa();
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void M8(String str, final boolean z10) {
        String str2;
        BaseEpisode D5 = D5();
        if (D5 != null && D5.isFreeEpisode()) {
            View view = this.N0;
            if (view != null) {
                jk.b0.d(view);
            }
        } else if (!AccountRepo.f43052a.z0()) {
            View view2 = this.N0;
            TextView textView = (TextView) findViewById(R$id.tv_sale_sub_day_price);
            if (str.length() == 0) {
                jk.b0.d(textView);
                jk.b0.d(view2);
                this.O0 = false;
                return;
            }
            jk.b0.l(textView);
            jk.b0.l(view2);
            this.O0 = true;
            s("setSaleDayPriceView() -> render sale dayPrice view");
            String e10 = fk.u.f51776a.e(R$string.template_unlock_dialog_day_price, str);
            textView.setText("≈ " + e10);
            if (view2 != null) {
                view2.setOnClickListener(new View.OnClickListener() { // from class: yh.z0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view3) {
                        ImmersionActivity.N8(z10, this, view3);
                    }
                });
            }
            if (z10) {
                EventManager eventManager = EventManager.f42463a;
                BaseEpisode D52 = D5();
                SubsSku subsSku = this.Q0;
                if (subsSku != null) {
                    str2 = subsSku.getSkuId();
                } else {
                    str2 = null;
                }
                eventManager.j0("immersion_page", "sub_portal", D52, str2);
                return;
            }
            EventManager.k0(EventManager.f42463a, "immersion_page", "episode_banner", D5(), null, 8, null);
        } else {
            this.O0 = false;
            jk.b0.d(this.N0);
        }
    }

    private final void M9() {
        ab();
        J9(this, 0L, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void Ma() {
        ImmersionAdapter immersionAdapter = this.G;
        if (immersionAdapter != null) {
            immersionAdapter.Y(E5());
        }
    }

    private final void N4() {
        this.f45253a0.b(ImmersionJobsManager.JobType.CHECK_ENABLE_PLAY_BY_DIALOG_COUNT);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ImmersionViewModel N5() {
        return (ImmersionViewModel) this.f45284y.getValue();
    }

    private final void N6() {
        nj.a aVar;
        ViewStubProxy playSpeedViewstub = ((ActivityImmersionBinding) E()).f38293q;
        Intrinsics.checkNotNullExpressionValue(playSpeedViewstub, "playSpeedViewstub");
        jk.e0.h(playSpeedViewstub);
        int childCount = W1(this).f38295s.getChildCount();
        int i10 = 0;
        while (true) {
            if (i10 < childCount) {
                View childAt = W1(this).f38295s.getChildAt(i10);
                if (childAt instanceof ImmersionPlaySpeedView) {
                    aVar = (nj.a) childAt;
                    break;
                }
                i10++;
            } else {
                aVar = null;
                break;
            }
        }
        ImmersionPlaySpeedView immersionPlaySpeedView = (ImmersionPlaySpeedView) aVar;
        if (immersionPlaySpeedView != null) {
            immersionPlaySpeedView.setMListener(new x(immersionPlaySpeedView));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit N7(ImmersionActivity immersionActivity, ve.c it) {
        Object obj;
        Intrinsics.checkNotNullParameter(it, "it");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("onDialogShow -> ");
        HashMap hashMap = (HashMap) it.i();
        if (hashMap != null) {
            obj = hashMap.get("dialog_name");
        } else {
            obj = null;
        }
        sb2.append(obj);
        immersionActivity.s(sb2.toString());
        immersionActivity.Oa();
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void N8(boolean z10, ImmersionActivity immersionActivity, View view) {
        String str;
        if (z10) {
            immersionActivity.J0 = "sub_portal";
            EventManager eventManager = EventManager.f42463a;
            BaseEpisode D5 = immersionActivity.D5();
            SubsSku subsSku = immersionActivity.Q0;
            if (subsSku != null) {
                str = subsSku.getSkuId();
            } else {
                str = null;
            }
            EventManager.e0(eventManager, "immersion_page", "sub_portal", D5, null, str, 8, null);
            immersionActivity.Ha("sale_banner_entrance", "immersion_page");
            return;
        }
        EventManager.e0(EventManager.f42463a, "immersion_page", "episode_banner", immersionActivity.D5(), null, null, 24, null);
        immersionActivity.Ha("sale_banner_entrance", "from_sale");
    }

    private final boolean N9() {
        final List<BaseEpisode> i10 = ImmersionRepo.f44129a.i();
        if (i10 == null || x5() || i10.isEmpty() || !M4()) {
            return false;
        }
        int abTestIntValue = ABTestFactory.f42224a.I0().abTestIntValue();
        if (abTestIntValue != 1) {
            if (abTestIntValue != 2) {
                B9(this, "ImmersionBackShortsDialog", null, new Function1() { // from class: yh.b
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        DialogFragment R9;
                        R9 = ImmersionActivity.R9(ImmersionActivity.this, i10, (Function0) obj);
                        return R9;
                    }
                }, 2, null);
            } else {
                EventManager eventManager = EventManager.f42463a;
                Bundle bundle = new Bundle();
                bundle.putString("scene", "immersion_back");
                Unit unit = Unit.f60915a;
                EventManager.s0(eventManager, "free_bonus_retention_show", bundle, 0L, 4, null);
                m9(new Function0() { // from class: yh.f2
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        Unit P9;
                        P9 = ImmersionActivity.P9(ImmersionActivity.this);
                        return P9;
                    }
                }, new Function0() { // from class: yh.g2
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        Unit Q9;
                        Q9 = ImmersionActivity.Q9(ImmersionActivity.this);
                        return Q9;
                    }
                });
            }
        } else {
            B9(this, "ImmersionBackShortsDialogA", null, new Function1() { // from class: yh.z1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    DialogFragment O9;
                    O9 = ImmersionActivity.O9(ImmersionActivity.this, i10, (Function0) obj);
                    return O9;
                }
            }, 2, null);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void Na() {
        Integer num;
        Object obj;
        Integer num2;
        Object obj2;
        PlayResolution l10;
        BaseEpisode D5 = D5();
        if ((D5 != null && D5.isFreeEpisode()) || uh.i0.f68447a.b()) {
            return;
        }
        if (this.f45267o0) {
            m("showVipChargeDialog failed -> mOnBackPressed is true");
        } else if (m7("VipChargeEpisodeDialog")) {
            m("showVipChargeDialog failed -> SubsProExpiredDialog is showing");
        } else if (D5() == null) {
            m("showVipChargeDialog failed -> currentEpisode() is null");
        } else {
            if (AccountRepo.f43052a.z0()) {
                DownloadChooseActivity.a aVar = DownloadChooseActivity.f45038x;
                Iterator it = this.f45263k0.iterator();
                while (true) {
                    num = null;
                    if (it.hasNext()) {
                        obj = it.next();
                        if (((IImmersionFeature) obj) instanceof com.startshorts.androidplayer.manager.immersion.feature.n) {
                            break;
                        }
                    } else {
                        obj = null;
                        break;
                    }
                }
                if (!(obj instanceof com.startshorts.androidplayer.manager.immersion.feature.n)) {
                    obj = null;
                }
                com.startshorts.androidplayer.manager.immersion.feature.n nVar = (com.startshorts.androidplayer.manager.immersion.feature.n) obj;
                if (nVar != null && (l10 = nVar.l()) != null) {
                    num2 = Integer.valueOf(l10.getResolutionValue());
                } else {
                    num2 = null;
                }
                Iterator it2 = this.f45263k0.iterator();
                while (true) {
                    if (it2.hasNext()) {
                        obj2 = it2.next();
                        if (((IImmersionFeature) obj2) instanceof com.startshorts.androidplayer.manager.immersion.feature.n) {
                            break;
                        }
                    } else {
                        obj2 = null;
                        break;
                    }
                }
                if (!(obj2 instanceof com.startshorts.androidplayer.manager.immersion.feature.n)) {
                    obj2 = null;
                }
                com.startshorts.androidplayer.manager.immersion.feature.n nVar2 = (com.startshorts.androidplayer.manager.immersion.feature.n) obj2;
                if (nVar2 != null) {
                    num = nVar2.n();
                }
                aVar.a(this, num2, num, D5());
            } else {
                Ha(NativeAdPresenter.DOWNLOAD, ud.a.f68411a.q());
            }
            EventManager.e0(EventManager.f42463a, "immersion_page", "download_icon", D5(), null, null, 24, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void O4() {
        CountDownTimer countDownTimer = this.D0;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        this.D0 = null;
    }

    private final HashMap<String, Object> O5() {
        return (HashMap) this.f45264l0.getValue();
    }

    private final void O6() {
        s("initPlayerVM");
        Observer<? super com.startshorts.androidplayer.viewmodel.player.c> observer = new Observer() { // from class: yh.l
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                ImmersionActivity.P6(ImmersionActivity.this, obj);
            }
        };
        this.f45280w = observer;
        s("add mPlayerState observer");
        this.f45278v.getValue().H().observeForever(observer);
        Observer<? super com.startshorts.androidplayer.viewmodel.player.a> observer2 = new Observer() { // from class: yh.w
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                ImmersionActivity.Q6(ImmersionActivity.this, obj);
            }
        };
        this.f45282x = observer2;
        s("add mPlaybackTimeState observer");
        this.f45278v.getValue().G().observeForever(observer2);
        this.f45278v.getValue().M(new b.i("ImmersionActivity"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ImmersionViewModel O7(ImmersionActivity immersionActivity) {
        return (ImmersionViewModel) immersionActivity.Q5().get(ImmersionViewModel.class);
    }

    private final void O8(int i10) {
        BaseEpisode D5 = D5();
        if (D5 != null && D5.isFreeEpisode()) {
            View view = this.M0;
            if (view != null) {
                jk.b0.d(view);
                return;
            }
            return;
        }
        View view2 = this.M0;
        jk.b0.l(view2);
        s("setSaleDiscountView() -> render sale discount view");
        if (i10 != 0 && i10 != 100) {
            jk.b0.d(findViewById(R$id.tv_sale));
            TextView textView = (TextView) findViewById(R$id.tv_sale_discount);
            textView.setText(String.valueOf(i10));
            jk.b0.l(textView);
            jk.b0.l(findViewById(R$id.tv_sale_off));
        } else {
            jk.b0.l(findViewById(R$id.tv_sale));
            jk.b0.d(findViewById(R$id.tv_sale_discount));
            jk.b0.d(findViewById(R$id.tv_sale_off));
        }
        ((ImageView) findViewById(R$id.iv_sale_close)).setOnClickListener(new View.OnClickListener() { // from class: yh.u0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view3) {
                ImmersionActivity.P8(ImmersionActivity.this, view3);
            }
        });
        if (view2 != null) {
            view2.setOnClickListener(new View.OnClickListener() { // from class: yh.v0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view3) {
                    ImmersionActivity.Q8(ImmersionActivity.this, view3);
                }
            });
        }
        EventManager.k0(EventManager.f42463a, "immersion_page", "episode_icon", D5(), null, 8, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DialogFragment O9(ImmersionActivity immersionActivity, List list, Function0 onDismiss) {
        int i10;
        Intrinsics.checkNotNullParameter(onDismiss, "onDismiss");
        BaseEpisode D5 = immersionActivity.D5();
        String str = (D5 == null || (str = D5.getShortPlayCode()) == null) ? "" : "";
        if (D5 != null) {
            i10 = D5.getEpisodeNum();
        } else {
            i10 = 1;
        }
        return ImmersionBottomBackShortsDialog.G.a(str, i10, list, new o0(onDismiss, immersionActivity));
    }

    private final void Oa() {
        ImmersionJobsManager.e(this.f45253a0, ImmersionJobsManager.JobType.CHECK_ENABLE_PLAY_BY_DIALOG_COUNT, 300L, null, new Function0() { // from class: yh.l1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit Pa;
                Pa = ImmersionActivity.Pa(ImmersionActivity.this);
                return Pa;
            }
        }, 4, null);
    }

    private final void P4() {
        kotlinx.coroutines.r rVar = this.R0;
        if (rVar != null) {
            r.a.b(rVar, null, 1, null);
            Unit unit = Unit.f60915a;
            Logger.f41511a.h("ImmersionActivity", "cancelCountDownJob");
        }
        this.R0 = null;
    }

    private final List<ImmersionShortsRecord> P5() {
        return (List) this.f45254b0.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void P6(ImmersionActivity immersionActivity, Object it) {
        Object obj;
        Object obj2;
        Object obj3;
        ImmersionEpisodeManager immersionEpisodeManager;
        Object obj4;
        Object obj5;
        Object obj6;
        Intrinsics.checkNotNullParameter(it, "it");
        if (it instanceof c.g) {
            immersionActivity.U = true;
            IImmersionFeature.MessageType messageType = IImmersionFeature.MessageType.PLAYER_PREPARED;
            HashMap hashMap = new HashMap();
            c.g gVar = (c.g) it;
            hashMap.put("player_resolution_before_downgrade", gVar.b());
            hashMap.put("player_resolution", gVar.a());
            hashMap.put("episode", immersionActivity.D5());
            Unit unit = Unit.f60915a;
            immersionActivity.L8(new com.startshorts.androidplayer.manager.immersion.feature.k(messageType, hashMap));
            if (immersionActivity.V8()) {
                immersionActivity.c8();
            }
        } else if (it instanceof c.j) {
            c.j jVar = (c.j) it;
            immersionActivity.Y = jVar.b();
            immersionActivity.Z = jVar.a();
            immersionActivity.s("OnTimeInfo -> isViewPagerDragging(" + immersionActivity.D7() + ") mTotalTime(" + immersionActivity.Y + ") mStartTime(" + immersionActivity.Z + ')');
            if (!immersionActivity.D7()) {
                immersionActivity.ua();
            } else {
                immersionActivity.s6(4);
            }
        } else {
            ImmersionParams immersionParams = null;
            if (it instanceof c.h) {
                immersionActivity.T = true;
                immersionActivity.z6();
                h6(immersionActivity, 8, false, 2, null);
                immersionActivity.T8();
                IImmersionFeature.MessageType messageType2 = IImmersionFeature.MessageType.PLAYER_RENDER_START;
                HashMap hashMap2 = new HashMap();
                hashMap2.put("episode", immersionActivity.D5());
                hashMap2.put(HiAnalyticsConstant.BI_KEY_COST_TIME, Long.valueOf(((c.h) it).a()));
                Iterator it2 = immersionActivity.f45263k0.iterator();
                while (true) {
                    if (it2.hasNext()) {
                        obj6 = it2.next();
                        if (((IImmersionFeature) obj6) instanceof com.startshorts.androidplayer.manager.immersion.feature.n) {
                            break;
                        }
                    } else {
                        obj6 = null;
                        break;
                    }
                }
                if (obj6 instanceof com.startshorts.androidplayer.manager.immersion.feature.n) {
                    immersionParams = obj6;
                }
                com.startshorts.androidplayer.manager.immersion.feature.n nVar = (com.startshorts.androidplayer.manager.immersion.feature.n) immersionParams;
                if (nVar != null) {
                    hashMap2.put("play_resolution", nVar.l());
                    Unit unit2 = Unit.f60915a;
                }
                Unit unit3 = Unit.f60915a;
                immersionActivity.L8(new com.startshorts.androidplayer.manager.immersion.feature.k(messageType2, hashMap2));
            } else if (it instanceof c.f) {
                if (immersionActivity.V8()) {
                    immersionActivity.c8();
                    return;
                }
                immersionActivity.W = false;
                immersionActivity.V = false;
                immersionActivity.X = false;
                immersionActivity.z6();
                h6(immersionActivity, 8, false, 2, null);
                IImmersionFeature.MessageType messageType3 = IImmersionFeature.MessageType.PLAYER_PLAYING;
                HashMap hashMap3 = new HashMap();
                ImmersionParams immersionParams2 = immersionActivity.f45270r;
                if (immersionParams2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mImmersionParams");
                } else {
                    immersionParams = immersionParams2;
                }
                hashMap3.put("immersion_params", immersionParams);
                hashMap3.put("activity", immersionActivity);
                hashMap3.put("episode", immersionActivity.D5());
                Unit unit4 = Unit.f60915a;
                immersionActivity.L8(new com.startshorts.androidplayer.manager.immersion.feature.k(messageType3, hashMap3));
            } else if (it instanceof c.e) {
                immersionActivity.V = true;
                immersionActivity.z6();
                if (immersionActivity.h7()) {
                    immersionActivity.gb(1.0f);
                    h6(immersionActivity, 4, false, 2, null);
                }
                ga(immersionActivity, "PlayerState.OnPaused", false, 2, null);
                IImmersionFeature.MessageType messageType4 = IImmersionFeature.MessageType.PLAYER_PAUSED;
                HashMap hashMap4 = new HashMap();
                hashMap4.put("paused_by_user", Boolean.valueOf(immersionActivity.W));
                Unit unit5 = Unit.f60915a;
                immersionActivity.L8(new com.startshorts.androidplayer.manager.immersion.feature.k(messageType4, hashMap4));
            } else if (it instanceof c.i) {
                IImmersionFeature.MessageType messageType5 = IImmersionFeature.MessageType.PLAYER_RESOLUTION_CHANGED;
                HashMap hashMap5 = new HashMap();
                hashMap5.put("player_resolution", ((c.i) it).a());
                hashMap5.put("episode", immersionActivity.D5());
                Unit unit6 = Unit.f60915a;
                immersionActivity.L8(new com.startshorts.androidplayer.manager.immersion.feature.k(messageType5, hashMap5));
            } else if (it instanceof c.b) {
                IImmersionFeature.MessageType messageType6 = IImmersionFeature.MessageType.PLAYER_BUFFER_START;
                HashMap hashMap6 = new HashMap();
                hashMap6.put("immersion_job_manager", immersionActivity.f45253a0);
                hashMap6.put("episode", immersionActivity.D5());
                c.b bVar = (c.b) it;
                hashMap6.put(Module.ResponseKey.Code, Integer.valueOf(bVar.c()));
                hashMap6.put("after_first_frame", Integer.valueOf(bVar.b()));
                hashMap6.put(TextureRenderKeys.KEY_IS_ACTION, Integer.valueOf(bVar.a()));
                Iterator it3 = immersionActivity.f45263k0.iterator();
                while (true) {
                    if (it3.hasNext()) {
                        obj5 = it3.next();
                        if (((IImmersionFeature) obj5) instanceof com.startshorts.androidplayer.manager.immersion.feature.n) {
                            break;
                        }
                    } else {
                        obj5 = null;
                        break;
                    }
                }
                if (!(obj5 instanceof com.startshorts.androidplayer.manager.immersion.feature.n)) {
                    obj5 = null;
                }
                com.startshorts.androidplayer.manager.immersion.feature.n nVar2 = (com.startshorts.androidplayer.manager.immersion.feature.n) obj5;
                if (nVar2 != null) {
                    hashMap6.put("player_resolution", nVar2.n());
                    hashMap6.put("play_resolution", nVar2.l());
                    Unit unit7 = Unit.f60915a;
                }
                Unit unit8 = Unit.f60915a;
                immersionActivity.L8(new com.startshorts.androidplayer.manager.immersion.feature.k(messageType6, hashMap6));
                if (immersionActivity.T) {
                    if (!immersionActivity.D7() && !immersionActivity.y7()) {
                        immersionActivity.i9();
                    } else {
                        immersionActivity.g6(4, true);
                    }
                    immersionActivity.gb(0.5f);
                    return;
                }
                immersionActivity.Ma();
                h6(immersionActivity, 8, false, 2, null);
            } else if (it instanceof c.a) {
                IImmersionFeature.MessageType messageType7 = IImmersionFeature.MessageType.PLAYER_BUFFER_END;
                HashMap hashMap7 = new HashMap();
                hashMap7.put("episode", immersionActivity.D5());
                Iterator it4 = immersionActivity.f45263k0.iterator();
                while (true) {
                    if (it4.hasNext()) {
                        obj4 = it4.next();
                        if (((IImmersionFeature) obj4) instanceof com.startshorts.androidplayer.manager.immersion.feature.n) {
                            break;
                        }
                    } else {
                        obj4 = null;
                        break;
                    }
                }
                if (!(obj4 instanceof com.startshorts.androidplayer.manager.immersion.feature.n)) {
                    obj4 = null;
                }
                com.startshorts.androidplayer.manager.immersion.feature.n nVar3 = (com.startshorts.androidplayer.manager.immersion.feature.n) obj4;
                if (nVar3 != null) {
                    hashMap7.put("play_resolution", nVar3.l());
                    Unit unit9 = Unit.f60915a;
                }
                Unit unit10 = Unit.f60915a;
                immersionActivity.L8(new com.startshorts.androidplayer.manager.immersion.feature.k(messageType7, hashMap7));
                immersionActivity.z6();
                h6(immersionActivity, 8, false, 2, null);
                immersionActivity.gb(1.0f);
            } else if (it instanceof c.C0672c) {
                c.C0672c c0672c = (c.C0672c) it;
                if (c0672c.a() > 0 && (immersionEpisodeManager = immersionActivity.f45259g0) != null) {
                    immersionEpisodeManager.r(c0672c.a(), c0672c.a());
                    Unit unit11 = Unit.f60915a;
                }
                IImmersionFeature.MessageType messageType8 = IImmersionFeature.MessageType.PLAYER_COMPLETE;
                HashMap hashMap8 = new HashMap();
                hashMap8.put("episode", immersionActivity.D5());
                Iterator it5 = immersionActivity.f45263k0.iterator();
                while (true) {
                    if (it5.hasNext()) {
                        obj2 = it5.next();
                        if (((IImmersionFeature) obj2) instanceof com.startshorts.androidplayer.manager.immersion.feature.n) {
                            break;
                        }
                    } else {
                        obj2 = null;
                        break;
                    }
                }
                if (!(obj2 instanceof com.startshorts.androidplayer.manager.immersion.feature.n)) {
                    obj2 = null;
                }
                com.startshorts.androidplayer.manager.immersion.feature.n nVar4 = (com.startshorts.androidplayer.manager.immersion.feature.n) obj2;
                if (nVar4 != null) {
                    hashMap8.put("play_resolution", nVar4.l());
                    Unit unit12 = Unit.f60915a;
                }
                Unit unit13 = Unit.f60915a;
                immersionActivity.L8(new com.startshorts.androidplayer.manager.immersion.feature.k(messageType8, hashMap8));
                Iterator it6 = immersionActivity.f45263k0.iterator();
                while (true) {
                    if (it6.hasNext()) {
                        obj3 = it6.next();
                        if (((IImmersionFeature) obj3) instanceof AdMediaVideoFeature) {
                            break;
                        }
                    } else {
                        obj3 = null;
                        break;
                    }
                }
                if (obj3 instanceof AdMediaVideoFeature) {
                    immersionParams = obj3;
                }
                if (immersionParams == null) {
                    immersionActivity.H8();
                }
            } else if (it instanceof c.d) {
                immersionActivity.V = false;
                immersionActivity.W = false;
                immersionActivity.U = false;
                immersionActivity.T = false;
                immersionActivity.X = true;
                immersionActivity.s6(8);
                h6(immersionActivity, 8, false, 2, null);
                IImmersionFeature.MessageType messageType9 = IImmersionFeature.MessageType.PLAYER_ERROR;
                HashMap hashMap9 = new HashMap();
                hashMap9.put("episode", immersionActivity.D5());
                c.d dVar = (c.d) it;
                hashMap9.put("err_code", dVar.b());
                hashMap9.put("err_msg", dVar.c());
                hashMap9.put("player_resolution", dVar.a());
                Iterator it7 = immersionActivity.f45263k0.iterator();
                while (true) {
                    if (it7.hasNext()) {
                        obj = it7.next();
                        if (((IImmersionFeature) obj) instanceof com.startshorts.androidplayer.manager.immersion.feature.n) {
                            break;
                        }
                    } else {
                        obj = null;
                        break;
                    }
                }
                if (obj instanceof com.startshorts.androidplayer.manager.immersion.feature.n) {
                    immersionParams = obj;
                }
                com.startshorts.androidplayer.manager.immersion.feature.n nVar5 = immersionParams;
                if (nVar5 != null) {
                    hashMap9.put("play_resolution", nVar5.l());
                    Unit unit14 = Unit.f60915a;
                }
                Unit unit15 = Unit.f60915a;
                immersionActivity.L8(new com.startshorts.androidplayer.manager.immersion.feature.k(messageType9, hashMap9));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List P7() {
        return new ArrayList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void P8(ImmersionActivity immersionActivity, View view) {
        View view2 = immersionActivity.M0;
        if (view2 != null) {
            jk.b0.d(view2);
        }
        ud.a.f68411a.L0(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit P9(ImmersionActivity immersionActivity) {
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        bundle.putString("scene", "immersion_back");
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "free_bonus_retention_close", bundle, 0L, 4, null);
        immersionActivity.finish();
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit Pa(ImmersionActivity immersionActivity) {
        immersionActivity.R4();
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void Q4(boolean z10, BaseEpisode baseEpisode) {
        com.startshorts.androidplayer.manager.immersion.feature.i iVar;
        Object obj;
        Object obj2;
        Object obj3;
        ShortDiscountSku k10;
        if (m7("ContinueRetentionAdDialog")) {
            return;
        }
        if (!z10) {
            Iterator it = this.f45263k0.iterator();
            while (true) {
                iVar = null;
                if (it.hasNext()) {
                    obj = it.next();
                    if (((IImmersionFeature) obj) instanceof com.startshorts.androidplayer.manager.immersion.feature.i) {
                        break;
                    }
                } else {
                    obj = null;
                    break;
                }
            }
            if (!(obj instanceof com.startshorts.androidplayer.manager.immersion.feature.i)) {
                obj = null;
            }
            com.startshorts.androidplayer.manager.immersion.feature.i iVar2 = (com.startshorts.androidplayer.manager.immersion.feature.i) obj;
            if (iVar2 == null || iVar2.j() != 0) {
                Iterator it2 = this.f45263k0.iterator();
                while (true) {
                    if (it2.hasNext()) {
                        obj2 = it2.next();
                        if (((IImmersionFeature) obj2) instanceof com.startshorts.androidplayer.manager.immersion.feature.i) {
                            break;
                        }
                    } else {
                        obj2 = null;
                        break;
                    }
                }
                if (!(obj2 instanceof com.startshorts.androidplayer.manager.immersion.feature.i)) {
                    obj2 = null;
                }
                com.startshorts.androidplayer.manager.immersion.feature.i iVar3 = (com.startshorts.androidplayer.manager.immersion.feature.i) obj2;
                if (iVar3 != null && iVar3.c(baseEpisode)) {
                    if (!n7()) {
                        E9();
                    }
                    Iterator it3 = this.f45263k0.iterator();
                    while (true) {
                        if (it3.hasNext()) {
                            obj3 = it3.next();
                            if (((IImmersionFeature) obj3) instanceof com.startshorts.androidplayer.manager.immersion.feature.i) {
                                break;
                            }
                        } else {
                            obj3 = null;
                            break;
                        }
                    }
                    if (obj3 instanceof com.startshorts.androidplayer.manager.immersion.feature.i) {
                        iVar = obj3;
                    }
                    com.startshorts.androidplayer.manager.immersion.feature.i iVar4 = iVar;
                    if (iVar4 != null && (k10 = iVar4.k()) != null) {
                        EventManager.O0(EventManager.f42463a, "limited_time_discount", k10, baseEpisode, ud.a.f68411a.p(), null, null, null, 112, null);
                        return;
                    }
                    return;
                }
                return;
            }
        }
        if (!baseEpisode.isTrailer()) {
            i6();
            N5().e0(new c.i(baseEpisode.getShortPlayId()));
        }
    }

    private final ViewModelProvider Q5() {
        return (ViewModelProvider) this.f45276u.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Q6(ImmersionActivity immersionActivity, Object it) {
        Intrinsics.checkNotNullParameter(it, "it");
        if (it instanceof a.C0670a) {
            a.C0670a c0670a = (a.C0670a) it;
            immersionActivity.hb(c0670a.a());
            ImmersionEpisodeManager immersionEpisodeManager = immersionActivity.f45259g0;
            if (immersionEpisodeManager != null) {
                immersionEpisodeManager.r(c0670a.a(), c0670a.b());
            }
            IImmersionFeature.MessageType messageType = IImmersionFeature.MessageType.PLAYER_TIME_CALLBACK;
            HashMap<String, Object> O5 = immersionActivity.O5();
            O5.put("episode", immersionActivity.D5());
            O5.put("total_time", Integer.valueOf(c0670a.b()));
            O5.put("playback_time", Integer.valueOf(c0670a.a()));
            Unit unit = Unit.f60915a;
            immersionActivity.L8(new com.startshorts.androidplayer.manager.immersion.feature.k(messageType, O5));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final HashMap Q7() {
        return new HashMap();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Q8(ImmersionActivity immersionActivity, View view) {
        immersionActivity.Ha("episode_icon", "from_sale");
        EventManager.e0(EventManager.f42463a, "immersion_page", "episode_icon", immersionActivity.D5(), null, null, 24, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit Q9(ImmersionActivity immersionActivity) {
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        bundle.putString("scene", "immersion_back");
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "free_bonus_retention_close", bundle, 0L, 4, null);
        Bundle bundle2 = new Bundle();
        bundle2.putString("scene", "immersion_back");
        EventManager.s0(eventManager, "free_bonus_retention_click", bundle2, 0L, 4, null);
        Bundle bundle3 = new Bundle();
        bundle3.putString("scene", "immersion_back");
        EventManager.s0(eventManager, "reward_click", bundle3, 0L, 4, null);
        Bundle bundle4 = new Bundle();
        bundle4.putString("scene", "immersion_back");
        EventManager.s0(eventManager, "reward_show", bundle4, 0L, 4, null);
        RewardsFragment.a.d(RewardsFragment.Y, immersionActivity, "immersion_back", true, null, null, 24, null);
        immersionActivity.finish();
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void Qa(NewbieWatchTask newbieWatchTask, NewbieWatchBonus newbieWatchBonus) {
        dk.f fVar = this.f45277u0;
        if (fVar != null) {
            fVar.n(newbieWatchBonus, newbieWatchTask);
        }
    }

    private final boolean R4() {
        int j10 = M5().j();
        s("checkEnablePlayByDialogCount -> mActivityPaused(" + p() + ") mVideoPaused(" + this.V + ") mUserPausePlay(" + this.W + ") showingDialogCount(" + j10 + ')');
        if (j10 != 0) {
            if (j10 != 1) {
                if (!this.V) {
                    s("auto pausePlay -> showingDialogCount=" + j10);
                    c8();
                }
                x6();
                return false;
            }
            boolean areEqual = Intrinsics.areEqual(M5().h().get(0).get("enable_play_when_dialog_show"), Boolean.TRUE);
            if (!areEqual) {
                if (!this.V) {
                    s("auto pausePlay -> showingDialogCount=1");
                    c8();
                }
            } else if (!p() && !this.W && this.V) {
                s("auto resumePlay -> showingDialogCount=1");
                A8();
            }
            x6();
            return areEqual;
        }
        if (!p() && !this.W && this.V) {
            s("auto resumePlay -> showingDialogCount = 0");
            A8();
        }
        com.startshorts.androidplayer.manager.configure.ad.c.f42340a.i().b();
        La("checkEnablePlayByDialogCount");
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final BaseEpisode R5() {
        List<BaseEpisode> I5 = I5();
        if (I5 != null) {
            return (BaseEpisode) CollectionsKt.t0(I5, E5() + 1);
        }
        return null;
    }

    private final void R6() {
        View view;
        SmartRefreshLayout smartRefreshLayout;
        MaterialHeader materialHeader;
        if (u7() && !((ActivityImmersionBinding) E()).f38294r.isInflated()) {
            s("initRefreshLayout");
            try {
                ViewStub viewStub = ((ActivityImmersionBinding) E()).f38294r.getViewStub();
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
                this.I = smartRefreshLayout;
                if (smartRefreshLayout != null) {
                    smartRefreshLayout.F(new y());
                }
                SmartRefreshLayout smartRefreshLayout2 = this.I;
                if (smartRefreshLayout2 != null) {
                    materialHeader = (MaterialHeader) smartRefreshLayout2.findViewById(R$id.refresh_header);
                } else {
                    materialHeader = null;
                }
                this.J = materialHeader;
                SmartRefreshLayout smartRefreshLayout3 = this.I;
                if (smartRefreshLayout3 != null) {
                    ballPulseFooter = (BallPulseFooter) smartRefreshLayout3.findViewById(R$id.loading_footer);
                }
                this.K = ballPulseFooter;
            } catch (Exception e10) {
                m("inflate RefreshLayout exception -> " + e10.getMessage());
            }
            ViewPager2 viewPager2 = this.F;
            if (viewPager2 != null) {
                s("add ViewPager to RefreshLayout");
                SmartRefreshLayout smartRefreshLayout4 = this.I;
                if (smartRefreshLayout4 != null) {
                    smartRefreshLayout4.G(viewPager2);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final PlayerViewModel R7(ImmersionActivity immersionActivity) {
        return (PlayerViewModel) immersionActivity.Q5().get(PlayerViewModel.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void R8() {
        DiscreteSeekBar2 discreteSeekBar2 = this.N;
        if (discreteSeekBar2 != null) {
            int i10 = W0;
            discreteSeekBar2.setTrackHeight(i10);
            discreteSeekBar2.setScrubberHeight(i10);
            discreteSeekBar2.E(i10);
            discreteSeekBar2.q();
        }
        if (g7()) {
            i9();
        }
        if (h7()) {
            gb(0.5f);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DialogFragment R9(ImmersionActivity immersionActivity, List list, Function0 onDismiss) {
        int i10;
        int i11;
        Intrinsics.checkNotNullParameter(onDismiss, "onDismiss");
        BaseEpisode D5 = immersionActivity.D5();
        String str = (D5 == null || (r1 = D5.getShortPlayCode()) == null) ? "" : "";
        if (D5 != null) {
            i10 = D5.getEpisodeNum();
        } else {
            i10 = 1;
        }
        int i12 = i10;
        ImmersionEpisodeManager immersionEpisodeManager = immersionActivity.f45259g0;
        if (immersionEpisodeManager != null) {
            i11 = immersionEpisodeManager.i();
        } else {
            i11 = 0;
        }
        return ImmersionBackShortsFragment.A.a(str, i12, i11, list, new p0(onDismiss, immersionActivity));
    }

    private final void Ra(List<? extends SubsSku> list) {
        List<? extends SubsSku> list2;
        qf.h hVar = qf.h.f65328a;
        if (list == null) {
            list2 = CollectionsKt.n();
        } else {
            list2 = list;
        }
        String c10 = hVar.c(list2);
        this.P0 = c10;
        if (list == null) {
            list = CollectionsKt.n();
        }
        this.Q0 = hVar.g(list);
        M8(c10, true);
    }

    private final void S4(String str) {
        List<BaseEpisode> I5;
        if (!qe.a.f65321a.value().getLockedEpisodeDisableSlideUp() || (I5 = I5()) == null) {
            return;
        }
        int E5 = E5();
        int i10 = -1;
        try {
            if (!AccountRepo.f43052a.i1()) {
                synchronized (I5) {
                    int size = I5.size();
                    int i11 = E5;
                    while (true) {
                        if (i11 >= size) {
                            break;
                        }
                        BaseEpisode baseEpisode = (BaseEpisode) CollectionsKt.t0(I5, i11);
                        if (baseEpisode != null && baseEpisode.isLocked() && !baseEpisode.isUnlockByDiscount()) {
                            i10 = i11;
                            break;
                        }
                        i11++;
                    }
                    Unit unit = Unit.f60915a;
                }
            }
        } catch (Exception e10) {
            m("checkEpisodeLockedPosition failed -> " + e10.getMessage());
        }
        s("checkEpisodeLockedPosition -> from(" + str + ") currentPosition(" + E5 + ") lockedPosition(" + i10 + ')');
        ImmersionAdapter immersionAdapter = this.G;
        if (immersionAdapter != null) {
            immersionAdapter.e0(i10);
        }
    }

    private final BaseEpisode S5() {
        List<BaseEpisode> I5 = I5();
        if (I5 != null) {
            return (BaseEpisode) CollectionsKt.t0(I5, E5() - 1);
        }
        return null;
    }

    private final void S6(List<? extends SubsSku> list, List<? extends CoinSku> list2) {
        List<? extends CoinSku> list3;
        List<? extends CoinSku> list4;
        List<? extends SubsSku> list5;
        View view;
        BaseEpisode D5 = D5();
        if (D5 != null && D5.isFreeEpisode()) {
            View view2 = this.M0;
            if (view2 != null) {
                jk.b0.d(view2);
            }
        } else if (DiscountSubscribeManager.f42447a.p() == null) {
            View view3 = null;
            if (this.M0 == null) {
                ViewStub viewStub = ((ActivityImmersionBinding) E()).f38297u.getViewStub();
                if (viewStub != null) {
                    view = viewStub.inflate();
                } else {
                    view = null;
                }
                this.M0 = view;
            }
            if (this.N0 == null) {
                ViewStub viewStub2 = ((ActivityImmersionBinding) E()).f38296t.getViewStub();
                if (viewStub2 != null) {
                    view3 = viewStub2.inflate();
                }
                this.N0 = view3;
            }
            List<? extends SubsSku> list6 = list;
            if ((list6 != null && !list6.isEmpty()) || ((list3 = list2) != null && !list3.isEmpty())) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("initSaleEntrance() -> and_subscribe_entrance_test: ");
                ABTestFactory aBTestFactory = ABTestFactory.f42224a;
                sb2.append(aBTestFactory.a1().isEnable().invoke().booleanValue());
                s(sb2.toString());
                if (aBTestFactory.a1().isEnable().invoke().booleanValue()) {
                    int abTestIntValue = aBTestFactory.a1().abTestIntValue();
                    if (ud.a.f68411a.W() && abTestIntValue == 3) {
                        if ((list6 == null || list6.isEmpty()) && (list4 = list2) != null && !list4.isEmpty()) {
                            O8(0);
                        } else {
                            qf.h hVar = qf.h.f65328a;
                            if (list == null) {
                                list5 = CollectionsKt.n();
                            } else {
                                list5 = list;
                            }
                            O8(hVar.j(list5));
                        }
                    } else {
                        jk.b0.d(this.M0);
                    }
                    qf.h hVar2 = qf.h.f65328a;
                    if (list == null) {
                        list = CollectionsKt.n();
                    }
                    M8(hVar2.c(list), false);
                    return;
                }
                jk.b0.d(this.M0);
                jk.b0.d(this.N0);
                Ra(list);
                return;
            }
            s("initSaleEntrance() -> sub and coin data is empty");
            jk.b0.d(this.M0);
            jk.b0.d(this.N0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List S7() {
        return new ArrayList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void S8() {
        DiscreteSeekBar2 discreteSeekBar2 = this.N;
        if (discreteSeekBar2 != null) {
            int i10 = X0;
            discreteSeekBar2.setTrackHeight(i10);
            discreteSeekBar2.setScrubberHeight(i10);
            discreteSeekBar2.E(i10);
            discreteSeekBar2.q();
        }
        if (h7()) {
            gb(1.0f);
            h6(this, 4, false, 2, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void S9() {
        HashMap<String, Object> hashMap = new HashMap<>();
        hashMap.put("enable_play_when_dialog_show", Boolean.TRUE);
        Unit unit = Unit.f60915a;
        A9("IntroductionDialog", hashMap, new Function1() { // from class: yh.h0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                DialogFragment T9;
                T9 = ImmersionActivity.T9(ImmersionActivity.this, (Function0) obj);
                return T9;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void Sa(boolean z10) {
        BaseEpisode J5 = J5();
        if (J5 != null && !J5.isLocked()) {
            N5().e0(new c.C0662c(J5, z10));
            return;
        }
        m("tryLoadNextEpisodes failed -> lastItem is locked");
        E7(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void T4(int i10) {
        boolean z10;
        boolean z11;
        boolean z12 = false;
        if (i10 != -1) {
            if (i10 == K5()) {
                z10 = true;
            } else {
                z10 = false;
            }
            BaseEpisode J5 = J5();
            if (J5 != null) {
                z11 = J5.isLocked();
            } else {
                z11 = true;
            }
            if (z10 && !z11) {
                ImmersionParams immersionParams = this.f45270r;
                if (immersionParams == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mImmersionParams");
                    immersionParams = null;
                }
                if (immersionParams.getEnableLoadMore()) {
                    z12 = true;
                }
            }
        }
        eb(z12);
    }

    private final ve.c<HashMap<String, Object>> T5() {
        return (ve.c) CollectionsKt.t0(M5().k(), 0);
    }

    private final void T6() {
        DiscreteSeekBar2 discreteSeekBar2 = this.N;
        if (discreteSeekBar2 != null) {
            discreteSeekBar2.setOnProgressChangeListener(new z());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final UnlockViewModel T7(ImmersionActivity immersionActivity) {
        return (UnlockViewModel) immersionActivity.Q5().get(UnlockViewModel.class);
    }

    private final void T8() {
        ImmersionAdapter immersionAdapter = this.G;
        if (immersionAdapter != null) {
            immersionAdapter.X(E5());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DialogFragment T9(ImmersionActivity immersionActivity, Function0 onDismiss) {
        Intrinsics.checkNotNullParameter(onDismiss, "onDismiss");
        ImmersionIntroductionDialog.a aVar = ImmersionIntroductionDialog.f46164w;
        ImmersionParams immersionParams = immersionActivity.f45270r;
        if (immersionParams == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mImmersionParams");
            immersionParams = null;
        }
        ImmersionIntroductionDialog a10 = aVar.a(immersionParams.getFrom(), immersionActivity.D5(), new q0());
        a10.u(new r0(onDismiss, immersionActivity));
        return a10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void Ta(boolean z10) {
        BaseEpisode G5 = G5();
        if (G5 == null) {
            return;
        }
        if (!G5.isTrailer() && G5.getEpisodeNum() != 1) {
            N5().e0(new c.d(G5.getId(), G5.getVideoType(), z10));
        } else if (G5.getImmersionShortsRecordIndex() == 0) {
            m("tryLoadPrevEpisodes failed -> no episodes to load");
            G7();
        } else if (((ImmersionShortsRecord) CollectionsKt.t0(P5(), G5.getImmersionShortsRecordIndex() - 1)) == null) {
            m("tryLoadPrevEpisodes failed -> shortsRecord is null");
            G7();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void U4(int i10) {
        BaseEpisode G5;
        boolean z10 = false;
        if (i10 == 0 && (G5 = G5()) != null && ((!G5.isTrailer() && G5.getEpisodeNum() != 1) || CollectionsKt.t0(P5(), G5.getImmersionShortsRecordIndex() - 1) != null)) {
            z10 = true;
        }
        fb(z10);
    }

    private final TextureView U5() {
        ImmersionAdapter immersionAdapter = this.G;
        if (immersionAdapter != null) {
            return immersionAdapter.J(E5());
        }
        return null;
    }

    @SuppressLint({"ClickableViewAccessibility"})
    private final void U6() {
        View view = this.O;
        if (view != null) {
            view.setOnTouchListener(new View.OnTouchListener() { // from class: yh.a
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view2, MotionEvent motionEvent) {
                    boolean V6;
                    V6 = ImmersionActivity.V6(ImmersionActivity.this, view2, motionEvent);
                    return V6;
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ViewModelProvider U7(ImmersionActivity immersionActivity) {
        return new ViewModelProvider(immersionActivity);
    }

    private final void U9() {
        if (AccountRepo.f43052a.J0()) {
            return;
        }
        final String f10 = TimeUtil.f48175a.f(jk.f.a(new Date()));
        if (!ud.b.f68412a.I1(f10)) {
            return;
        }
        s9(this, "LoginGuideDialog", null, new Function1() { // from class: yh.d0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Dialog V9;
                V9 = ImmersionActivity.V9(f10, this, (Function0) obj);
                return V9;
            }
        }, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void Ua(String str) {
        IImmersionFeature.MessageType messageType = IImmersionFeature.MessageType.SHOW_MINI_WINDOW;
        HashMap hashMap = new HashMap();
        hashMap.put("from", str);
        Unit unit = Unit.f60915a;
        L8(new com.startshorts.androidplayer.manager.immersion.feature.k(messageType, hashMap));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void V5(int i10) {
        List<BaseEpisode> I5 = I5();
        List<BaseEpisode> list = I5;
        if (list != null && !list.isEmpty()) {
            synchronized (I5) {
                try {
                    for (BaseEpisode baseEpisode : I5) {
                        if (baseEpisode.getShortPlayId() == i10) {
                            baseEpisode.setUnlockBy(1);
                        }
                    }
                    Unit unit = Unit.f60915a;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        S4("handleDiscountUnlockSuccess");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean V6(ImmersionActivity immersionActivity, View view, MotionEvent motionEvent) {
        Intrinsics.checkNotNull(motionEvent);
        return c6(immersionActivity, motionEvent, false, 2, null);
    }

    private final void V7() {
        AccountRepo.f43052a.O(this.f45258f0);
    }

    private final boolean V8() {
        if (p()) {
            return true;
        }
        if (M5().j() == 1 && !Intrinsics.areEqual(M5().h().get(0).get("enable_play_when_dialog_show"), Boolean.TRUE)) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Dialog V9(String str, ImmersionActivity immersionActivity, final Function0 onDismiss) {
        Intrinsics.checkNotNullParameter(onDismiss, "onDismiss");
        ud.b.f68412a.V4(str, false);
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        bundle.putString("scene", "immersion");
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "login_windows_show", bundle, 0L, 4, null);
        EventManager.s0(eventManager, "login_guide_show", null, 0L, 6, null);
        ii.i iVar = new ii.i(immersionActivity);
        iVar.y("immersion");
        iVar.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: yh.v1
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                ImmersionActivity.W9(Function0.this, dialogInterface);
            }
        });
        return iVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void Va(BaseEpisode baseEpisode, boolean z10, String str) {
        s("tryUnlockEpisode -> episodeId(" + baseEpisode.getId() + ") episodeNum(" + baseEpisode.getEpisodeNum() + ") fromUser(" + z10 + ") action(" + str + ')');
        a7();
        UnlockViewModel value = this.C.getValue();
        value.j0(new e.d(baseEpisode));
        ImmersionActivity immersionActivity = null;
        if (baseEpisode.isMembersOnly() && !AccountRepo.f43052a.z0()) {
            if (baseEpisode.isIaaUserEpisode()) {
                if (!Intrinsics.areEqual(str, "unlock_select_iaa")) {
                    oa(this, false, null, 3, null);
                } else {
                    Ia(this, "auto", null, 2, null);
                }
            } else {
                Ad2PayPresent.f42733a.e(this.I0, new Function2() { // from class: yh.e
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        Unit Wa;
                        Wa = ImmersionActivity.Wa(ImmersionActivity.this, (String) obj, (Ad2PayConfig) obj2);
                        return Wa;
                    }
                }, new Function0() { // from class: yh.f
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        Unit Xa;
                        Xa = ImmersionActivity.Xa(ImmersionActivity.this);
                        return Xa;
                    }
                });
            }
        } else {
            if (z10) {
                immersionActivity = this;
            }
            value.j0(new e.m(immersionActivity, AccountRepo.f43052a.P(), false, str));
        }
        if (baseEpisode.isLocked()) {
            K8(IImmersionFeature.MessageType.CANCEL_LONG_CLICK_SPEED);
        }
    }

    public static final /* synthetic */ ActivityImmersionBinding W1(ImmersionActivity immersionActivity) {
        return (ActivityImmersionBinding) immersionActivity.E();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit W4(ImmersionActivity immersionActivity, BaseEpisode baseEpisode, boolean z10) {
        int q02;
        AccountRepo accountRepo = AccountRepo.f43052a;
        if (!accountRepo.i1() && immersionActivity.t()) {
            ud.b bVar = ud.b.f68412a;
            if (bVar.R1()) {
                q02 = bVar.S0();
            } else {
                q02 = accountRepo.q0();
            }
            immersionActivity.Ca(q02, baseEpisode);
            ImmersionAdapter immersionAdapter = immersionActivity.G;
            if (immersionAdapter != null) {
                immersionAdapter.e0(-1);
                immersionAdapter.k(immersionActivity.E5() + 1);
            }
            immersionActivity.T4(immersionActivity.E5());
            immersionActivity.db();
            immersionActivity.N5().w();
            if (!z10) {
                accountRepo.U();
            }
            bVar.e5(false);
            bVar.e4(-1);
            if (baseEpisode != null) {
                immersionActivity.N5().e0(new c.i(baseEpisode.getShortPlayId()));
            }
            immersionActivity.S0 = false;
            return Unit.f60915a;
        }
        immersionActivity.S0 = false;
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void W5() {
        BaseEpisode D5 = D5();
        if (D5 == null) {
            return;
        }
        ImmersionViewModel N5 = N5();
        N5.w();
        N5.e0(new c.k(this, D5.getShortPlayId(), D5.getId(), D5.getVideoType(), ResetReason.URL_EXPIRED));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void W6() {
        BaseTextView baseTextView;
        long j10;
        View view;
        BaseEpisode D5 = D5();
        if (D5 != null && D5.isFreeEpisode()) {
            View view2 = this.L0;
            if (view2 != null) {
                jk.b0.d(view2);
                return;
            }
            return;
        }
        SubsSku p10 = DiscountSubscribeManager.f42447a.p();
        if (p10 == null) {
            View view3 = this.L0;
            if (view3 != null) {
                jk.b0.d(view3);
                return;
            }
            return;
        }
        final BaseTextView baseTextView2 = null;
        if (this.L0 == null) {
            ViewStub viewStub = ((ActivityImmersionBinding) E()).f38302z.getViewStub();
            if (viewStub != null) {
                view = viewStub.inflate();
            } else {
                view = null;
            }
            this.L0 = view;
        }
        View view4 = this.L0;
        if (view4 != null) {
            view4.setOnClickListener(new View.OnClickListener() { // from class: yh.l0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view5) {
                    ImmersionActivity.X6(ImmersionActivity.this, view5);
                }
            });
        }
        int d10 = jk.u.d(p10);
        View view5 = this.L0;
        if (view5 != null) {
            baseTextView = (BaseTextView) view5.findViewById(R$id.tv_sub_dicount);
        } else {
            baseTextView = null;
        }
        if (baseTextView != null) {
            fk.u uVar = fk.u.f51776a;
            int i10 = R$string.discount_label_off;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(d10);
            sb2.append(' ');
            baseTextView.setText(uVar.e(i10, sb2.toString()));
        }
        Long discountTime = p10.getDiscountTime();
        if (discountTime != null) {
            j10 = discountTime.longValue();
        } else {
            j10 = 0;
        }
        long K = (j10 - DeviceUtil.f48146a.K()) / 1000;
        if (K <= 0) {
            jk.b0.d(this.L0);
            return;
        }
        P4();
        View view6 = this.L0;
        if (view6 != null) {
            baseTextView2 = (BaseTextView) view6.findViewById(R$id.tv_sub_time);
        }
        if (baseTextView2 == null) {
            return;
        }
        this.R0 = CoroutineUtil.f48072a.d((int) K, new Function1() { // from class: yh.m0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit Y6;
                Y6 = ImmersionActivity.Y6(BaseTextView.this, ((Integer) obj).intValue());
                return Y6;
            }
        }, new Function0() { // from class: yh.n0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit Z6;
                Z6 = ImmersionActivity.Z6(ImmersionActivity.this);
                return Z6;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void W8(final String str, final Ad2PayConfig ad2PayConfig) {
        if (this.f45267o0) {
            m("showAd2PayDialog failed -> mOnBackPressed is true");
        } else if (m7("Ad2PayDialog")) {
            m("showAd2PayDialog failed -> showAd2PayDialog is showing");
        } else {
            final BaseEpisode D5 = D5();
            if (D5 == null) {
                m("showAd2PayDialog failed -> currentEpisode() is null");
                return;
            }
            CoinSku skuResp = ad2PayConfig.getSkuResp();
            SubsSku subscribeResp = ad2PayConfig.getSubscribeResp();
            BaseEpisode D52 = D5();
            if (D52 != null && D52.isMembersOnly() && subscribeResp == null && skuResp != null) {
                Ia(this, "auto", null, 2, null);
            } else if (skuResp == null && subscribeResp == null) {
                Ia(this, "auto", null, 2, null);
            } else {
                if (Intrinsics.areEqual(str, "B")) {
                    Ad2PayPresent.f42733a.w();
                }
                Ad2PayPresent ad2PayPresent = Ad2PayPresent.f42733a;
                ad2PayPresent.y(str, ad2PayPresent.m(str));
                if (subscribeResp != null) {
                    B9(this, "Ad2PayDialog", null, new Function1() { // from class: yh.v
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            DialogFragment X8;
                            X8 = ImmersionActivity.X8(Ad2PayConfig.this, D5, str, this, (Function0) obj);
                            return X8;
                        }
                    }, 2, null);
                } else {
                    B9(this, "Ad2PayDialog", null, new Function1() { // from class: yh.x
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            DialogFragment a92;
                            a92 = ImmersionActivity.a9(Ad2PayConfig.this, D5, str, this, (Function0) obj);
                            return a92;
                        }
                    }, 2, null);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void W9(Function0 function0, DialogInterface dialogInterface) {
        function0.invoke();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit Wa(ImmersionActivity immersionActivity, String scene, Ad2PayConfig config) {
        Intrinsics.checkNotNullParameter(scene, "scene");
        Intrinsics.checkNotNullParameter(config, "config");
        immersionActivity.W8(scene, config);
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void X4(int i10) {
        s("clearLastEpisodeInfo -> position(" + i10 + ')');
        this.W = false;
        this.T = false;
        this.U = false;
        this.V = false;
        this.X = false;
        this.Y = 0;
        this.Z = 0;
        this.Q = false;
        t8();
        s6(8);
        h6(this, 8, false, 2, null);
        p6();
        o6();
        R8();
        r6();
        J8();
        l6();
        if (i10 != -1) {
            k6(i10);
            A6(i10);
            n6(i10);
            y6(i10);
            v6(i10);
        }
        this.f45253a0.b(ImmersionJobsManager.JobType.CHECK_UNLOCK_EPISODE_DIALOG_HIDE);
        this.f45253a0.b(ImmersionJobsManager.JobType.CHECK_AD_CONTINUE_DIALOG_HIDE);
        N4();
        this.f45268p0 = false;
        this.f45269q0 = null;
        this.f45271r0 = false;
    }

    private final void X5(List<? extends Object> list) {
        this.C.getValue().j0(new e.c(list));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void X6(ImmersionActivity immersionActivity, View view) {
        SubsDetailActivity.a.b(SubsDetailActivity.Q, immersionActivity, "immersion", null, null, false, null, 60, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DialogFragment X8(Ad2PayConfig ad2PayConfig, final BaseEpisode baseEpisode, String str, final ImmersionActivity immersionActivity, final Function0 onDismiss) {
        Intrinsics.checkNotNullParameter(onDismiss, "onDismiss");
        Ad2SubscribeDialog a10 = Ad2SubscribeDialog.f46430o.a();
        a10.Z("immerse_page");
        a10.X(ad2PayConfig);
        a10.Y(baseEpisode);
        a10.a0(str);
        a10.c0(new Function0() { // from class: yh.s1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit Y8;
                Y8 = ImmersionActivity.Y8(ImmersionActivity.this);
                return Y8;
            }
        });
        a10.b0(new Function1() { // from class: yh.t1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit Z8;
                Z8 = ImmersionActivity.Z8(BaseEpisode.this, immersionActivity, onDismiss, ((Boolean) obj).booleanValue());
                return Z8;
            }
        });
        return a10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void X9(String str, BaseEpisode baseEpisode) {
        com.startshorts.androidplayer.manager.immersion.feature.n nVar;
        Object obj;
        float f10;
        Object obj2;
        int i10;
        PlayResolution l10;
        PlaySpeed e10;
        Iterator it = this.f45263k0.iterator();
        while (true) {
            nVar = null;
            if (it.hasNext()) {
                obj = it.next();
                if (((IImmersionFeature) obj) instanceof com.startshorts.androidplayer.manager.immersion.feature.o) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        if (!(obj instanceof com.startshorts.androidplayer.manager.immersion.feature.o)) {
            obj = null;
        }
        com.startshorts.androidplayer.manager.immersion.feature.o oVar = (com.startshorts.androidplayer.manager.immersion.feature.o) obj;
        if (oVar != null && (e10 = oVar.e()) != null) {
            f10 = e10.getValue();
        } else {
            f10 = 1.0f;
        }
        float f11 = f10;
        Iterator it2 = this.f45263k0.iterator();
        while (true) {
            if (it2.hasNext()) {
                obj2 = it2.next();
                if (((IImmersionFeature) obj2) instanceof com.startshorts.androidplayer.manager.immersion.feature.n) {
                    break;
                }
            } else {
                obj2 = null;
                break;
            }
        }
        if (obj2 instanceof com.startshorts.androidplayer.manager.immersion.feature.n) {
            nVar = obj2;
        }
        com.startshorts.androidplayer.manager.immersion.feature.n nVar2 = nVar;
        if (nVar2 != null && (l10 = nVar2.l()) != null) {
            i10 = l10.getResolutionValue();
        } else {
            i10 = 0;
        }
        ImmersionMiniWindow.J.f(fk.u.f51776a.b(), str, baseEpisode, this.W, f11, i10, 0L, "pip_window_scene");
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit Xa(ImmersionActivity immersionActivity) {
        Ia(immersionActivity, "auto", null, 2, null);
        return Unit.f60915a;
    }

    private final void Y4() {
        if (this.f45257e0.isInitialized()) {
            this.f45257e0.getValue().clear();
        }
    }

    private final void Y5(boolean z10, int i10, int i11, QueryEpisodesResult queryEpisodesResult, ResetReason resetReason) {
        RecyclerView b10;
        List<BaseEpisode> list;
        RecyclerView b11;
        List<BaseEpisode> list2;
        BaseEpisode currentEpisodesReponse = queryEpisodesResult.getCurrentEpisodesReponse();
        List<BaseEpisode> previousEpisodesReponse = queryEpisodesResult.getPreviousEpisodesReponse();
        List<BaseEpisode> nextEpisodesReponse = queryEpisodesResult.getNextEpisodesReponse();
        Object obj = null;
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
            if (resetReason != null) {
                t8();
                z8(resetReason);
                if (resetReason == ResetReason.URL_EXPIRED) {
                    X4(-1);
                }
            }
            int indexOf = currentEpisodesReponse != null ? arrayList.indexOf(currentEpisodesReponse) : 0;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("handleQueryEpisodesSuccess -> preload(false) expectPrevSize(");
            sb2.append(i10);
            sb2.append(") expectNextSize(");
            sb2.append(i11);
            sb2.append(") realPrevSize(");
            sb2.append(previousEpisodesReponse != null ? previousEpisodesReponse.size() : 0);
            sb2.append(") realNextSize(");
            sb2.append(nextEpisodesReponse != null ? nextEpisodesReponse.size() : 0);
            sb2.append(") curPosition(");
            sb2.append(indexOf);
            sb2.append(") resetReason(");
            sb2.append(resetReason);
            sb2.append(')');
            s(sb2.toString());
            ImmersionViewPagerManager immersionViewPagerManager = this.H;
            if (immersionViewPagerManager != null) {
                immersionViewPagerManager.u();
            }
            ImmersionAdapter immersionAdapter = this.G;
            if (immersionAdapter != null) {
                BaseAdapter.D(immersionAdapter, arrayList, false, 2, null);
            }
            ImmersionViewPagerManager immersionViewPagerManager2 = this.H;
            if (immersionViewPagerManager2 != null) {
                immersionViewPagerManager2.v(indexOf, Boolean.FALSE);
            }
            P();
            db();
            return;
        }
        StringBuilder sb3 = new StringBuilder();
        sb3.append("handleQueryEpisodesSuccess -> preload(true) expectPrevSize(");
        sb3.append(i10);
        sb3.append(") expectNextSize(");
        sb3.append(i11);
        sb3.append(") realPrevSize(");
        sb3.append(previousEpisodesReponse != null ? previousEpisodesReponse.size() : 0);
        sb3.append(") realNextSize(");
        sb3.append(nextEpisodesReponse != null ? nextEpisodesReponse.size() : 0);
        sb3.append(')');
        s(sb3.toString());
        if (i10 != 0 && i11 == 0) {
            List<BaseEpisode> I5 = I5();
            if (currentEpisodesReponse != null && (list2 = I5) != null && !list2.isEmpty()) {
                synchronized (I5) {
                    try {
                        Iterator<T> it = I5.iterator();
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
                            if (previousEpisodesReponse == null) {
                                previousEpisodesReponse = new ArrayList<>();
                            }
                            previousEpisodesReponse.add(currentEpisodesReponse);
                        }
                        Unit unit = Unit.f60915a;
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
            List<BaseEpisode> list4 = previousEpisodesReponse;
            if (list4 == null || list4.isEmpty()) {
                return;
            }
            ImmersionAdapter immersionAdapter2 = this.G;
            if (immersionAdapter2 != null) {
                Intrinsics.checkNotNull(previousEpisodesReponse);
                immersionAdapter2.d(0, previousEpisodesReponse);
                immersionAdapter2.c0(previousEpisodesReponse.size());
            }
            db();
            if (!x7() || (b11 = fk.i0.f51738a.b(this.F)) == null) {
                return;
            }
            b11.post(new Runnable() { // from class: yh.e0
                @Override // java.lang.Runnable
                public final void run() {
                    ImmersionActivity.Z5(ImmersionActivity.this);
                }
            });
        } else if (i10 != 0 || i11 == 0) {
        } else {
            List<BaseEpisode> I52 = I5();
            if (currentEpisodesReponse != null && (list = I52) != null && !list.isEmpty()) {
                synchronized (I52) {
                    try {
                        Iterator<T> it2 = I52.iterator();
                        while (true) {
                            if (!it2.hasNext()) {
                                break;
                            }
                            Object next2 = it2.next();
                            if (((BaseEpisode) next2).getId() == currentEpisodesReponse.getId()) {
                                obj = next2;
                                break;
                            }
                        }
                        if (obj == null) {
                            if (nextEpisodesReponse == null) {
                                nextEpisodesReponse = new ArrayList<>();
                            }
                            nextEpisodesReponse.add(0, currentEpisodesReponse);
                        }
                        Unit unit2 = Unit.f60915a;
                    } catch (Throwable th3) {
                        throw th3;
                    }
                }
            }
            List<BaseEpisode> list5 = nextEpisodesReponse;
            if (list5 == null || list5.isEmpty()) {
                return;
            }
            if (nextEpisodesReponse != null) {
                ImmersionAdapter immersionAdapter3 = this.G;
                if (immersionAdapter3 != null) {
                    immersionAdapter3.e(nextEpisodesReponse);
                }
                J4(nextEpisodesReponse);
            }
            if (!w7() || (b10 = fk.i0.f51738a.b(this.F)) == null) {
                return;
            }
            b10.post(new Runnable() { // from class: yh.f0
                @Override // java.lang.Runnable
                public final void run() {
                    ImmersionActivity.a6(ImmersionActivity.this);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit Y6(BaseTextView baseTextView, int i10) {
        baseTextView.setText(TimeUtil.f48175a.c(i10, true));
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit Y8(ImmersionActivity immersionActivity) {
        immersionActivity.x6();
        BaseEpisode D5 = immersionActivity.D5();
        if (D5 != null) {
            immersionActivity.Va(D5, false, immersionActivity.f45260h0);
        }
        if (immersionActivity.z7()) {
            immersionActivity.ua();
        }
        if (immersionActivity.g7()) {
            immersionActivity.i9();
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void Y9(boolean z10, final String str) {
        final BaseEpisode D5 = D5();
        if (D5 == null) {
            return;
        }
        B9(this, "MoreBenefitsDialog", null, new Function1() { // from class: yh.g1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                DialogFragment Z9;
                Z9 = ImmersionActivity.Z9(BaseEpisode.this, this, str, (Function0) obj);
                return Z9;
            }
        }, 2, null);
    }

    private final void Ya(int i10, boolean z10) {
        LottieAnimationView lottieAnimationView;
        LottieAnimationView lottieAnimationView2;
        LottieAnimationView lottieAnimationView3 = this.P;
        if (lottieAnimationView3 == null) {
            if (i10 == 0 || z10) {
                ViewStubProxy bufferingViewstub = ((ActivityImmersionBinding) E()).f38278b;
                Intrinsics.checkNotNullExpressionValue(bufferingViewstub, "bufferingViewstub");
                View c10 = jk.e0.c(bufferingViewstub);
                if (c10 instanceof LottieAnimationView) {
                    lottieAnimationView = (LottieAnimationView) c10;
                } else {
                    lottieAnimationView = null;
                }
                this.P = lottieAnimationView;
            }
            if (z10 && (lottieAnimationView2 = this.P) != null) {
                lottieAnimationView2.setVisibility(i10);
            }
        } else if (lottieAnimationView3 != null) {
            lottieAnimationView3.setVisibility(i10);
        }
        if (i10 == 0) {
            LottieAnimationView lottieAnimationView4 = this.P;
            if (lottieAnimationView4 != null) {
                lottieAnimationView4.y();
                return;
            }
            return;
        }
        LottieAnimationView lottieAnimationView5 = this.P;
        if (lottieAnimationView5 != null) {
            lottieAnimationView5.m();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void Z4(boolean z10) {
        int i10;
        View view;
        IImmersionFeature.MessageType messageType;
        this.T0 = z10;
        if (z10) {
            i10 = 4;
        } else {
            i10 = 0;
        }
        if (z10) {
            m6();
        } else {
            ga(this, "ClearScreen", false, 2, null);
        }
        ((ActivityImmersionBinding) E()).f38286j.setVisibility(i10);
        if (!ABTestFactory.f42224a.Z0().isEnable().invoke().booleanValue()) {
            ((ActivityImmersionBinding) E()).f38301y.setVisibility(i10);
            ((ActivityImmersionBinding) E()).f38284h.setVisibility(i10);
        }
        BaseEpisode D5 = D5();
        if (D5 != null && D5.isFreeEpisode()) {
            View view2 = this.N0;
            if (view2 != null) {
                jk.b0.d(view2);
            }
        } else if (this.O0 && !AccountRepo.f43052a.z0() && (view = this.N0) != null) {
            view.setVisibility(i10);
        }
        o6();
        p6();
        ImmersionAdapter immersionAdapter = this.G;
        if (immersionAdapter != null) {
            immersionAdapter.h0(E5(), i10);
        }
        for (nj.a aVar : A5()) {
            BaseEpisode D52 = D5();
            if (D52 != null && D52.isFreeEpisode() && (aVar instanceof ImmersionDownloadDramaView)) {
                ((ImmersionDownloadDramaView) aVar).a(4);
            } else if (aVar.f()) {
                aVar.a(i10);
            }
        }
        if (z10) {
            messageType = IImmersionFeature.MessageType.START_CLEAR_SCREEN;
        } else {
            messageType = IImmersionFeature.MessageType.CANCEL_CLEAR_SCREEN;
        }
        K8(messageType);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Z5(ImmersionActivity immersionActivity) {
        F8(immersionActivity, immersionActivity.E5() - 1, 0, 0, "auto", false, 22, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit Z6(ImmersionActivity immersionActivity) {
        jk.b0.d(immersionActivity.L0);
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit Z8(BaseEpisode baseEpisode, ImmersionActivity immersionActivity, Function0 function0, boolean z10) {
        if (!z10 && !AccountRepo.f43052a.z0() && baseEpisode.isLocked()) {
            Ia(immersionActivity, "auto", null, 2, null);
        }
        function0.invoke();
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DialogFragment Z9(BaseEpisode baseEpisode, ImmersionActivity immersionActivity, String str, Function0 onDismiss) {
        Intrinsics.checkNotNullParameter(onDismiss, "onDismiss");
        TopUpDialog topUpDialog = new TopUpDialog();
        topUpDialog.W0(ud.a.f68411a.q(), baseEpisode, new s0(str, onDismiss));
        return topUpDialog;
    }

    static /* synthetic */ void Za(ImmersionActivity immersionActivity, int i10, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z10 = false;
        }
        immersionActivity.Ya(i10, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a5(String str) {
        BaseEpisode D5 = D5();
        if (D5 == null) {
            return;
        }
        ab();
        EventManager eventManager = EventManager.f42463a;
        Bundle C = eventManager.C(D5);
        ImmersionParams immersionParams = this.f45270r;
        if (immersionParams == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mImmersionParams");
            immersionParams = null;
        }
        C.putString("from", immersionParams.getFrom());
        if (D5.isLocked()) {
            AccountRepo accountRepo = AccountRepo.f43052a;
            if (accountRepo.g0() + accountRepo.e0() >= D5.getPrice()) {
                C.putString(TextureRenderKeys.KEY_IS_ACTION, "unlock_ep");
            } else {
                C.putString(TextureRenderKeys.KEY_IS_ACTION, "recharge_show");
            }
        }
        C.putString("button_click", "unlock_now");
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "unlocked_ep_button_click", C, 0L, 4, null);
        Va(D5, true, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a6(ImmersionActivity immersionActivity) {
        F8(immersionActivity, immersionActivity.E5() + 1, 0, 0, "auto", false, 22, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a7() {
        if (this.D) {
            return;
        }
        this.D = true;
        this.C.getValue().a0().observe(this, new d0(new Function1() { // from class: yh.d
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit b72;
                b72 = ImmersionActivity.b7(ImmersionActivity.this, (com.startshorts.androidplayer.viewmodel.immersion.f) obj);
                return b72;
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DialogFragment a9(Ad2PayConfig ad2PayConfig, final BaseEpisode baseEpisode, String str, final ImmersionActivity immersionActivity, final Function0 onDismiss) {
        Intrinsics.checkNotNullParameter(onDismiss, "onDismiss");
        Ad2CoinsDialog a10 = Ad2CoinsDialog.f46414m.a();
        a10.U("immerse_page");
        a10.S(ad2PayConfig);
        a10.T(baseEpisode);
        a10.V(str);
        a10.X(new Function0() { // from class: yh.i1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit b92;
                b92 = ImmersionActivity.b9(ImmersionActivity.this);
                return b92;
            }
        });
        a10.W(new Function1() { // from class: yh.j1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit c92;
                c92 = ImmersionActivity.c9(BaseEpisode.this, immersionActivity, onDismiss, ((Boolean) obj).booleanValue());
                return c92;
            }
        });
        return a10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void aa(final boolean z10, final UnlockEpisodeAdMethod unlockEpisodeAdMethod) {
        B9(this, "NormalAdRetentionDialog", null, new Function1() { // from class: yh.f1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                DialogFragment ba2;
                ba2 = ImmersionActivity.ba(z10, unlockEpisodeAdMethod, this, (Function0) obj);
                return ba2;
            }
        }, 2, null);
    }

    private final void ab() {
        this.f45266n0 = DeviceUtil.f48146a.L();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b5(String str) {
        Object obj;
        HashMap<String, Object> i10;
        ve.c<HashMap<String, Object>> T5 = T5();
        if (T5 != null && (i10 = T5.i()) != null) {
            obj = i10.get("dialog_name");
        } else {
            obj = null;
        }
        if (Intrinsics.areEqual(obj, str)) {
            M5().g(T5);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean b6(MotionEvent motionEvent, boolean z10) {
        DiscreteSeekBar2 discreteSeekBar2 = this.N;
        if (discreteSeekBar2 != null) {
            return discreteSeekBar2.j(motionEvent, z10);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit b7(ImmersionActivity immersionActivity, com.startshorts.androidplayer.viewmodel.immersion.f fVar) {
        if (fVar instanceof f.C0665f) {
            if (!((f.C0665f) fVar).a()) {
                immersionActivity.d5();
            }
        } else if (fVar instanceof f.b) {
            immersionActivity.i8(((f.b) fVar).a());
        } else if (fVar instanceof f.c) {
            List<UnlockEpisodeMethod> a10 = ((f.c) fVar).a();
            if (a10 != null && !a10.isEmpty()) {
                immersionActivity.S6(immersionActivity.C.getValue().Y(), immersionActivity.C.getValue().V());
            }
        } else if (fVar instanceof f.d) {
            BaseEpisode D5 = immersionActivity.D5();
            if (D5 != null && D5.getId() == ((f.d) fVar).a()) {
                immersionActivity.La("UnlockEpisodeByCoinsFailed");
            }
        } else if (fVar instanceof f.e) {
            f.e eVar = (f.e) fVar;
            immersionActivity.v8(eVar.a());
            immersionActivity.V5(eVar.a());
            immersionActivity.y(immersionActivity.getString(R$string.immersion_activity_discount_unlock_tips, immersionActivity.getString(R$string.main_activity_tab_my_list), immersionActivity.getString(R$string.my_list_fragment_my_collection)));
        } else if (fVar instanceof f.a) {
            if (ae.a.f627a.k()) {
                immersionActivity.s("Block Immersion Activity watch reward AD  for xiaomi channel");
                Ia(immersionActivity, ((f.a) fVar).a(), null, 2, null);
                return Unit.f60915a;
            }
            BaseEpisode D52 = immersionActivity.D5();
            if (D52 == null) {
                return Unit.f60915a;
            }
            if (!D52.isLocked()) {
                return Unit.f60915a;
            }
            f.a aVar = (f.a) fVar;
            if (aVar.b()) {
                immersionActivity.d9(aVar.a(), D52);
            } else {
                Ia(immersionActivity, aVar.a(), null, 2, null);
            }
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b8() {
        dk.f fVar = this.f45277u0;
        if (fVar != null) {
            fVar.d();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit b9(ImmersionActivity immersionActivity) {
        immersionActivity.x6();
        BaseEpisode D5 = immersionActivity.D5();
        if (D5 != null) {
            immersionActivity.Va(D5, false, immersionActivity.f45260h0);
        }
        if (immersionActivity.z7()) {
            immersionActivity.ua();
        }
        if (immersionActivity.g7()) {
            immersionActivity.i9();
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DialogFragment ba(boolean z10, UnlockEpisodeAdMethod unlockEpisodeAdMethod, ImmersionActivity immersionActivity, Function0 onDismiss) {
        Intrinsics.checkNotNullParameter(onDismiss, "onDismiss");
        AdRetentionDialogFragment adRetentionDialogFragment = new AdRetentionDialogFragment();
        adRetentionDialogFragment.L(z10);
        adRetentionDialogFragment.O(unlockEpisodeAdMethod);
        ImmersionParams immersionParams = immersionActivity.f45270r;
        if (immersionParams == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mImmersionParams");
            immersionParams = null;
        }
        adRetentionDialogFragment.N(immersionParams.getFrom());
        adRetentionDialogFragment.M(immersionActivity.D5());
        adRetentionDialogFragment.w(new t0(onDismiss));
        return adRetentionDialogFragment;
    }

    private final void bb(boolean z10) {
        ImmersionNotificationLayout immersionNotificationLayout;
        int i10;
        ImmersionAdapter immersionAdapter;
        BaseEpisode D5 = D5();
        if (D5 != null && (immersionAdapter = this.G) != null) {
            immersionAdapter.f0(E5(), D5.createShortsInfo(), D5, k7());
        }
        ViewStubProxy viewStubProxy = ((ActivityImmersionBinding) E()).f38287k;
        Intrinsics.checkNotNull(viewStubProxy);
        if (jk.e0.f(viewStubProxy)) {
            View root = viewStubProxy.getRoot();
            View view = null;
            if (root instanceof ImmersionNotificationLayout) {
                immersionNotificationLayout = (ImmersionNotificationLayout) root;
            } else {
                immersionNotificationLayout = null;
            }
            if (immersionNotificationLayout != null) {
                view = immersionNotificationLayout.e(ImmersionNotificationType.SHORTS_COLLECTION);
            }
            if (view != null && view.getVisibility() == 0) {
                ImageView imageView = (ImageView) view.findViewById(R$id.collect_tips_iv);
                if (imageView != null) {
                    if (z10) {
                        i10 = R$drawable.ic_shorts_collected;
                    } else {
                        i10 = R$drawable.ic_shorts_uncollect;
                    }
                    imageView.setImageResource(i10);
                }
                if (z10) {
                    x8(this, ImmersionNotificationType.SHORTS_COLLECTION, true, null, 4, null);
                    x(R$string.immersion_activity_collect_tips_2);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void c5(String str) {
        BaseEpisode D5 = D5();
        if (D5 == null) {
            return;
        }
        B6();
        if (D5.isCollected()) {
            this.A.getValue().P(new a.b(this, 1, 1, D5, str, false));
        } else {
            this.A.getValue().P(new a.C0668a(this, 1, 1, D5, str, false));
        }
    }

    static /* synthetic */ boolean c6(ImmersionActivity immersionActivity, MotionEvent motionEvent, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return immersionActivity.b6(motionEvent, z10);
    }

    private final void c7() {
        if (this.F != null) {
            return;
        }
        s("initViewPager -> isRefreshLayoutEnable(" + u7() + ')');
        ViewPager2 viewPager2 = new ViewPager2(this);
        viewPager2.setLayoutParams(new ConstraintLayout.LayoutParams(-1, -1));
        viewPager2.setOrientation(1);
        kd.d.b(viewPager2, 2);
        fk.i0 i0Var = fk.i0.f51738a;
        RecyclerView b10 = i0Var.b(viewPager2);
        if (b10 != null) {
            b10.setItemAnimator(null);
        }
        viewPager2.setOffscreenPageLimit(2);
        RecyclerView b11 = i0Var.b(viewPager2);
        if (b11 != null) {
            b11.setOnTouchListener(new View.OnTouchListener() { // from class: yh.r0
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    boolean d72;
                    d72 = ImmersionActivity.d7(view, motionEvent);
                    return d72;
                }
            });
        }
        this.F = viewPager2;
        e7();
        f7(viewPager2);
        viewPager2.setAdapter(this.G);
        if (!u7()) {
            ConstraintLayout constraintLayout = ((ActivityImmersionBinding) E()).f38295s;
            ConstraintLayout.LayoutParams layoutParams = new ConstraintLayout.LayoutParams(-1, -1);
            ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = jk.g.a(29.0f);
            ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = jk.g.a(44.0f);
            Unit unit = Unit.f60915a;
            constraintLayout.addView(viewPager2, 0, layoutParams);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void c8() {
        s("pausePlay");
        this.f45278v.getValue().M(b.d.f48937a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit c9(BaseEpisode baseEpisode, ImmersionActivity immersionActivity, Function0 function0, boolean z10) {
        if (!z10 && !AccountRepo.f43052a.z0() && baseEpisode.isLocked()) {
            Ia(immersionActivity, "auto", null, 2, null);
        }
        function0.invoke();
        return Unit.f60915a;
    }

    private final boolean ca(final String str) {
        Object obj;
        int i10;
        boolean z10 = false;
        if (Intrinsics.areEqual(str, "immersion_back")) {
            Iterator it = this.f45263k0.iterator();
            while (true) {
                if (it.hasNext()) {
                    obj = it.next();
                    if (((IImmersionFeature) obj) instanceof com.startshorts.androidplayer.manager.immersion.feature.w) {
                        break;
                    }
                } else {
                    obj = null;
                    break;
                }
            }
            if (!(obj instanceof com.startshorts.androidplayer.manager.immersion.feature.w)) {
                obj = null;
            }
            com.startshorts.androidplayer.manager.immersion.feature.w wVar = (com.startshorts.androidplayer.manager.immersion.feature.w) obj;
            if (wVar != null) {
                i10 = wVar.k();
            } else {
                i10 = 0;
            }
            if (i10 > 0 && mk.a.d(mk.a.f62518a, str, false, 2, null)) {
                z10 = true;
            }
        } else {
            z10 = mk.a.d(mk.a.f62518a, str, false, 2, null);
        }
        if (z10) {
            B9(this, "NotificationPermissionDialog", null, new Function1() { // from class: yh.o1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    DialogFragment da2;
                    da2 = ImmersionActivity.da(ImmersionActivity.this, str, (Function0) obj2);
                    return da2;
                }
            }, 2, null);
        }
        return z10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void cb(int i10, int i11) {
        ImmersionViewPagerManager immersionViewPagerManager = this.H;
        if (immersionViewPagerManager != null) {
            immersionViewPagerManager.D(i10, i11);
        }
    }

    private final void d5() {
        L5().W(new a.c(this.C.getValue().S()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void d6(EpisodeListUnlockedEvent episodeListUnlockedEvent, Integer num, boolean z10) {
        BaseEpisode D5;
        int i10;
        if (m7("ContinueRetentionAdDialog") || (D5 = D5()) == null) {
            return;
        }
        if (CollectionsKt.t(3, 1, 2, 4).contains(Integer.valueOf(episodeListUnlockedEvent.getUnlockType())) && !AccountRepo.f43052a.i1() && !D5.isUnlockByDiscount() && D5.isLocked()) {
            if (episodeListUnlockedEvent.getUnlockType() == 2) {
                int i11 = R$string.batch_unlock_episode_dialog_fragment_unlock_success;
                List<BaseEpisode> list = episodeListUnlockedEvent.getList();
                if (list != null) {
                    i10 = list.size();
                } else {
                    i10 = 0;
                }
                String string = getString(i11, String.valueOf(i10));
                Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
                Ka(string);
            } else if (num == null) {
                String string2 = getString(R$string.immersion_activity_unlock_success, String.valueOf(D5.getEpisodeNum()));
                Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
                Ka(string2);
            } else {
                String string3 = getString(R$string.immersion_activity_unlock_success, num.toString());
                Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
                Ka(string3);
            }
        }
        S4("handleUnlockEpisodeSuccess");
        ImmersionViewPagerManager immersionViewPagerManager = this.H;
        if (immersionViewPagerManager != null) {
            ImmersionViewPagerManager.C(immersionViewPagerManager, false, 1, null);
        }
        T4(E5());
        ImmersionEpisodeManager immersionEpisodeManager = this.f45259g0;
        if (immersionEpisodeManager != null) {
            immersionEpisodeManager.p();
        }
        if ((episodeListUnlockedEvent.getUnlockType() == 3 || episodeListUnlockedEvent.getUserRecharged()) && z10) {
            U9();
        }
        H7();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean d7(View view, MotionEvent motionEvent) {
        try {
            return view.onTouchEvent(motionEvent);
        } catch (Exception unused) {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void d8(int i10, BaseEpisode baseEpisode) {
        com.startshorts.androidplayer.manager.immersion.feature.o oVar;
        Object obj;
        PlayResolution playResolution;
        Object obj2;
        PlayResolution playResolution2;
        PlayResolution playResolution3;
        Object obj3;
        float f10;
        PlaySpeed e10;
        Iterator it = this.f45263k0.iterator();
        while (true) {
            oVar = null;
            if (it.hasNext()) {
                obj = it.next();
                if (((IImmersionFeature) obj) instanceof com.startshorts.androidplayer.manager.immersion.feature.n) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        if (!(obj instanceof com.startshorts.androidplayer.manager.immersion.feature.n)) {
            obj = null;
        }
        com.startshorts.androidplayer.manager.immersion.feature.n nVar = (com.startshorts.androidplayer.manager.immersion.feature.n) obj;
        if (nVar != null) {
            playResolution = nVar.l();
        } else {
            playResolution = null;
        }
        Iterator it2 = this.f45263k0.iterator();
        while (true) {
            if (it2.hasNext()) {
                obj2 = it2.next();
                if (((IImmersionFeature) obj2) instanceof com.startshorts.androidplayer.manager.immersion.feature.n) {
                    break;
                }
            } else {
                obj2 = null;
                break;
            }
        }
        if (!(obj2 instanceof com.startshorts.androidplayer.manager.immersion.feature.n)) {
            obj2 = null;
        }
        com.startshorts.androidplayer.manager.immersion.feature.n nVar2 = (com.startshorts.androidplayer.manager.immersion.feature.n) obj2;
        if (nVar2 != null) {
            playResolution2 = nVar2.m();
        } else {
            playResolution2 = null;
        }
        StrategySource e11 = pf.l.e(pf.l.f64869a, baseEpisode, playResolution, playResolution2, false, 8, null);
        if (e11 == null) {
            z6();
            ga(this, "playEpisode", false, 2, null);
            x(R$string.common_play_failed);
            return;
        }
        PlayResolution i11 = pf.k.f64864a.i(baseEpisode);
        s("playEpisode(episodeNum(" + baseEpisode.getEpisodeNum() + ") episodeId(" + baseEpisode.getId() + ") needDecrypt(" + baseEpisode.getNeedDecrypt() + ")) -> maxPlayResolution(" + i11 + ')');
        if (playResolution2 == null) {
            if (playResolution == null) {
                playResolution = PlayResolution.Companion.getPLAY_RESOLUTION_AUTO();
            }
            playResolution3 = playResolution;
        } else {
            playResolution3 = playResolution2;
        }
        boolean enableSubtitle = baseEpisode.enableSubtitle();
        ArrayList arrayList = new ArrayList();
        arrayList.add(new com.startshorts.androidplayer.manager.player.feature.a());
        arrayList.add(new com.startshorts.androidplayer.manager.player.feature.e());
        if (enableSubtitle) {
            arrayList.add(s5());
        }
        if (qe.a.f65321a.value().getPlayerHeadersNotifyEnable()) {
            RequestHeadersFeature requestHeadersFeature = new RequestHeadersFeature();
            requestHeadersFeature.k(new c0());
            arrayList.add(requestHeadersFeature);
        }
        if (baseEpisode.getNeedDecrypt()) {
            arrayList.add(new com.startshorts.androidplayer.manager.player.feature.d());
        }
        PlayerViewModel value = this.f45278v.getValue();
        Context b10 = fk.u.f51776a.b();
        lf.s sVar = new lf.s();
        sVar.y("Episode");
        sVar.u(U5());
        sVar.n(3);
        sVar.t(200);
        sVar.w(e11);
        sVar.v(i10);
        sVar.p(false);
        Iterator it3 = this.f45263k0.iterator();
        while (true) {
            if (it3.hasNext()) {
                obj3 = it3.next();
                if (((IImmersionFeature) obj3) instanceof com.startshorts.androidplayer.manager.immersion.feature.o) {
                    break;
                }
            } else {
                obj3 = null;
                break;
            }
        }
        if (obj3 instanceof com.startshorts.androidplayer.manager.immersion.feature.o) {
            oVar = obj3;
        }
        com.startshorts.androidplayer.manager.immersion.feature.o oVar2 = oVar;
        if (oVar2 != null && (e10 = oVar2.e()) != null) {
            f10 = e10.getValue();
        } else {
            f10 = 1.0f;
        }
        sVar.s(f10);
        sVar.q(i11);
        sVar.z(pf.k.q(pf.k.f64864a, baseEpisode, playResolution3, false, 4, null));
        if (enableSubtitle) {
            sVar.x(baseEpisode.getSubtitlingConfig());
        }
        sVar.o(arrayList);
        Unit unit = Unit.f60915a;
        value.M(new b.e(b10, sVar));
        if (this.f45287z0 && !this.f45262j0.contains(Integer.valueOf(baseEpisode.getId()))) {
            this.f45262j0.add(Integer.valueOf(baseEpisode.getId()));
        }
    }

    private final void d9(final String str, final BaseEpisode baseEpisode) {
        if (this.f45267o0) {
            m("showAdContinueDialog failed -> mOnBackPressed is true");
        } else if (m7("SubsProExpiredDialog")) {
            m("showAdContinueDialog failed -> SubsProExpiredDialog is showing");
        } else {
            B9(this, "ContinueAdDialog", null, new Function1() { // from class: yh.o0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    DialogFragment e92;
                    e92 = ImmersionActivity.e9(BaseEpisode.this, this, str, (Function0) obj);
                    return e92;
                }
            }, 2, null);
            ImmersionJobsManager.e(this.f45253a0, ImmersionJobsManager.JobType.CHECK_AD_CONTINUE_DIALOG_HIDE, 500L, null, new Function0() { // from class: yh.p0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit f92;
                    f92 = ImmersionActivity.f9(ImmersionActivity.this);
                    return f92;
                }
            }, 4, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DialogFragment da(final ImmersionActivity immersionActivity, final String str, final Function0 onDismiss) {
        Intrinsics.checkNotNullParameter(onDismiss, "onDismiss");
        mk.a aVar = mk.a.f62518a;
        FragmentManager supportFragmentManager = immersionActivity.getSupportFragmentManager();
        Intrinsics.checkNotNullExpressionValue(supportFragmentManager, "getSupportFragmentManager(...)");
        return mk.a.b(aVar, supportFragmentManager, str, false, new Function1() { // from class: yh.t0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit ea2;
                ea2 = ImmersionActivity.ea(Function0.this, str, immersionActivity, ((Boolean) obj).booleanValue());
                return ea2;
            }
        }, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final kotlinx.coroutines.r db() {
        return CoroutineUtil.l(CoroutineUtil.f48072a, "updatePreloadStrategyResources", false, new ImmersionActivity$updatePreloadStrategyResources$1(this, null), 2, null);
    }

    private final com.startshorts.androidplayer.manager.immersion.feature.a e5() {
        com.startshorts.androidplayer.manager.immersion.feature.a aVar = new com.startshorts.androidplayer.manager.immersion.feature.a();
        aVar.d(new c());
        return aVar;
    }

    static /* synthetic */ void e6(ImmersionActivity immersionActivity, EpisodeListUnlockedEvent episodeListUnlockedEvent, Integer num, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            num = null;
        }
        immersionActivity.d6(episodeListUnlockedEvent, num, z10);
    }

    private final void e7() {
        ImmersionAdapter immersionAdapter = new ImmersionAdapter();
        immersionAdapter.W(new a0());
        this.G = immersionAdapter;
    }

    private final void e8(final View view, final View view2, final View view3) {
        view.setVisibility(4);
        view2.post(new Runnable() { // from class: yh.x1
            @Override // java.lang.Runnable
            public final void run() {
                ImmersionActivity.f8(view3, view2, view, this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DialogFragment e9(BaseEpisode baseEpisode, ImmersionActivity immersionActivity, String str, Function0 onDismiss) {
        Intrinsics.checkNotNullParameter(onDismiss, "onDismiss");
        AdContinueDialogFragment adContinueDialogFragment = new AdContinueDialogFragment();
        adContinueDialogFragment.L(baseEpisode);
        ImmersionParams immersionParams = immersionActivity.f45270r;
        if (immersionParams == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mImmersionParams");
            immersionParams = null;
        }
        adContinueDialogFragment.M(immersionParams.getFrom());
        adContinueDialogFragment.N(new e0(str));
        adContinueDialogFragment.w(new f0(onDismiss));
        return adContinueDialogFragment;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit ea(Function0 function0, String str, ImmersionActivity immersionActivity, boolean z10) {
        function0.invoke();
        if (Intrinsics.areEqual(str, "immersion_back")) {
            immersionActivity.finish();
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void eb(boolean z10) {
        if (this.M != z10) {
            this.M = z10;
            SmartRefreshLayout smartRefreshLayout = this.I;
            if (smartRefreshLayout != null && smartRefreshLayout.A(z10) != null) {
                s("updateRefreshLayoutLoadMoreEnable -> enable(" + z10 + ')');
            }
        }
    }

    private final AdMediaVideoFeature f5() {
        AdMediaVideoFeature adMediaVideoFeature = new AdMediaVideoFeature();
        adMediaVideoFeature.p(new d(adMediaVideoFeature));
        return adMediaVideoFeature;
    }

    private final void f6() {
        ImmersionAdapter immersionAdapter = this.G;
        if (immersionAdapter != null) {
            immersionAdapter.h0(E5(), 4);
        }
        for (nj.a aVar : A5()) {
            aVar.a(4);
        }
    }

    private final void f7(ViewPager2 viewPager2) {
        ImmersionViewPagerManager immersionViewPagerManager;
        this.H = new ImmersionViewPagerManager(viewPager2, new b0(new Ref.ObjectRef()));
        ImmersionParams immersionParams = this.f45270r;
        if (immersionParams == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mImmersionParams");
            immersionParams = null;
        }
        if (!immersionParams.getEnableLoadMore() && (immersionViewPagerManager = this.H) != null) {
            immersionViewPagerManager.l();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f8(View view, View view2, View view3, ImmersionActivity immersionActivity) {
        try {
            int[] iArr = new int[2];
            view.getLocationOnScreen(iArr);
            int i10 = iArr[0];
            int width = view.getWidth();
            int width2 = view2.getWidth();
            int i11 = i10 - ((width2 - width) / 2);
            if (i11 <= 0) {
                i11 = fk.z.f51786a.b();
            } else {
                int G = DeviceUtil.f48146a.G();
                if (i11 + width2 >= G) {
                    i11 = (G - width2) - fk.z.f51786a.b();
                }
            }
            view2.setX(i11);
            view3.setVisibility(0);
        } catch (Exception e10) {
            immersionActivity.m("popViewAlignCenterWithAnchor exception -> " + e10.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit f9(ImmersionActivity immersionActivity) {
        BaseEpisode D5 = immersionActivity.D5();
        if (D5 != null && !D5.isLocked()) {
            immersionActivity.b5("ContinueAdDialog");
        }
        return Unit.f60915a;
    }

    private final void fa(String str, boolean z10) {
        s("showPlayButton -> from(" + str + ')');
        ImmersionAdapter immersionAdapter = this.G;
        if (immersionAdapter != null) {
            immersionAdapter.Z(E5(), z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void fb(boolean z10) {
        if (this.L != z10) {
            this.L = z10;
            SmartRefreshLayout smartRefreshLayout = this.I;
            if (smartRefreshLayout != null && smartRefreshLayout.C(z10) != null) {
                s("updateRefreshLayoutRefreshEnable -> enable(" + z10 + ')');
            }
        }
    }

    private final com.startshorts.androidplayer.manager.immersion.feature.e g5() {
        com.startshorts.androidplayer.manager.immersion.feature.e eVar = new com.startshorts.androidplayer.manager.immersion.feature.e();
        eVar.i(new e());
        return eVar;
    }

    private final void g6(int i10, boolean z10) {
        Ya(i10, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean g7() {
        LottieAnimationView lottieAnimationView = this.P;
        if (lottieAnimationView == null || lottieAnimationView.getVisibility() != 4) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void g8() {
        if (ABTestFactory.f42224a.j1().isEnable().invoke().booleanValue()) {
            CoroutineUtil.g(CoroutineUtil.f48072a, 2000L, null, new Function0() { // from class: yh.q1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit h82;
                    h82 = ImmersionActivity.h8(ImmersionActivity.this);
                    return h82;
                }
            }, 2, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void g9(final int i10, final EpisodeListUnlockedEvent episodeListUnlockedEvent) {
        if (!m7("ContinueAdDialog") && !m7("ContinueRetentionAdDialog")) {
            if (ae.a.f627a.k()) {
                s("Block showAdContinueRetentionDialog for xiaomi channel. ");
            } else {
                B9(this, "ContinueRetentionAdDialog", null, new Function1() { // from class: yh.k0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        DialogFragment h92;
                        h92 = ImmersionActivity.h9(i10, episodeListUnlockedEvent, this, (Function0) obj);
                        return h92;
                    }
                }, 2, null);
            }
        }
    }

    static /* synthetic */ void ga(ImmersionActivity immersionActivity, String str, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = immersionActivity.V;
        }
        immersionActivity.fa(str, z10);
    }

    private final void gb(float f10) {
        DiscreteSeekBar2 discreteSeekBar2 = this.N;
        if (discreteSeekBar2 != null) {
            discreteSeekBar2.setAlpha(f10);
            s("updateSeekbarAlpha -> " + f10);
        }
    }

    private final com.startshorts.androidplayer.manager.immersion.feature.g h5() {
        RewardsRepo.f44515a.h();
        com.startshorts.androidplayer.manager.immersion.feature.g gVar = new com.startshorts.androidplayer.manager.immersion.feature.g();
        gVar.b(new f());
        return gVar;
    }

    static /* synthetic */ void h6(ImmersionActivity immersionActivity, int i10, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z10 = false;
        }
        immersionActivity.g6(i10, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean h7() {
        LottieAnimationView lottieAnimationView = this.P;
        if (lottieAnimationView == null || lottieAnimationView.getVisibility() != 0) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit h8(ImmersionActivity immersionActivity) {
        immersionActivity.C.getValue().j0(new e.d(immersionActivity.D5()));
        immersionActivity.C.getValue().j0(new e.g(ve.h.f68906a.m()));
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DialogFragment h9(int i10, EpisodeListUnlockedEvent episodeListUnlockedEvent, ImmersionActivity immersionActivity, Function0 onDismiss) {
        Intrinsics.checkNotNullParameter(onDismiss, "onDismiss");
        AdContinueRetentionDialogFragment a10 = AdContinueRetentionDialogFragment.f46899s.a(i10, episodeListUnlockedEvent.getNextDrama(), new g0(episodeListUnlockedEvent));
        a10.u(new h0(onDismiss));
        return a10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:51:? A[RETURN, SYNTHETIC] */
    @android.annotation.SuppressLint({"ClickableViewAccessibility"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void ha(android.view.View r8, boolean r9) {
        /*
            r7 = this;
            r7.p6()
            androidx.databinding.ViewDataBinding r0 = r7.E()
            com.startshorts.androidplayer.databinding.ActivityImmersionBinding r0 = (com.startshorts.androidplayer.databinding.ActivityImmersionBinding) r0
            androidx.databinding.ViewStubProxy r0 = r0.f38289m
            java.lang.String r1 = "playResolutionListViewstub"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            jk.e0.g(r0)
            com.startshorts.androidplayer.databinding.ActivityImmersionBinding r0 = W1(r7)
            androidx.constraintlayout.widget.ConstraintLayout r0 = r0.f38295s
            int r0 = r0.getChildCount()
            r1 = 0
            r2 = r1
        L1f:
            r3 = 0
            if (r2 >= r0) goto L36
            com.startshorts.androidplayer.databinding.ActivityImmersionBinding r4 = W1(r7)
            androidx.constraintlayout.widget.ConstraintLayout r4 = r4.f38295s
            android.view.View r4 = r4.getChildAt(r2)
            boolean r5 = r4 instanceof com.startshorts.androidplayer.ui.view.immersion.menu.ImmersionPlayResolutionListView
            if (r5 == 0) goto L33
            nj.a r4 = (nj.a) r4
            goto L37
        L33:
            int r2 = r2 + 1
            goto L1f
        L36:
            r4 = r3
        L37:
            com.startshorts.androidplayer.ui.view.immersion.menu.ImmersionPlayResolutionListView r4 = (com.startshorts.androidplayer.ui.view.immersion.menu.ImmersionPlayResolutionListView) r4
            if (r4 == 0) goto Lc3
            com.startshorts.androidplayer.ui.activity.immersion.ImmersionActivity$u0 r0 = new com.startshorts.androidplayer.ui.activity.immersion.ImmersionActivity$u0
            r0.<init>()
            r4.setMListener(r0)
            yh.m1 r0 = new yh.m1
            r0.<init>()
            r4.setOnTouchListener(r0)
            pf.k r0 = pf.k.f64864a
            com.startshorts.androidplayer.bean.shorts.BaseEpisode r2 = r7.D5()
            java.util.List r0 = r0.h(r2)
            java.util.List r2 = d2(r7)
            java.lang.Iterable r2 = (java.lang.Iterable) r2
            java.util.Iterator r2 = r2.iterator()
        L5f:
            boolean r5 = r2.hasNext()
            if (r5 == 0) goto L71
            java.lang.Object r5 = r2.next()
            r6 = r5
            com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature r6 = (com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature) r6
            boolean r6 = r6 instanceof com.startshorts.androidplayer.manager.immersion.feature.n
            if (r6 == 0) goto L5f
            goto L72
        L71:
            r5 = r3
        L72:
            boolean r2 = r5 instanceof com.startshorts.androidplayer.manager.immersion.feature.n
            if (r2 != 0) goto L77
            r5 = r3
        L77:
            com.startshorts.androidplayer.manager.immersion.feature.n r5 = (com.startshorts.androidplayer.manager.immersion.feature.n) r5
            if (r5 == 0) goto L80
            java.lang.Integer r2 = r5.n()
            goto L81
        L80:
            r2 = r3
        L81:
            r4.v(r2, r0)
            int r2 = com.startshorts.androidplayer.R$id.recycler_view
            android.view.View r2 = r4.findViewById(r2)
            kotlin.jvm.internal.Intrinsics.checkNotNull(r2)
            r7.e8(r4, r2, r8)
            if (r9 == 0) goto Lb2
            java.lang.Iterable r0 = (java.lang.Iterable) r0
            java.util.Iterator r8 = r0.iterator()
        L98:
            boolean r9 = r8.hasNext()
            if (r9 == 0) goto Lae
            java.lang.Object r9 = r8.next()
            r0 = r9
            com.startshorts.androidplayer.bean.shorts.PlayResolution r0 = (com.startshorts.androidplayer.bean.shorts.PlayResolution) r0
            int r0 = r0.getResolutionValue()
            r2 = 1080(0x438, float:1.513E-42)
            if (r0 != r2) goto L98
            r3 = r9
        Lae:
            if (r3 == 0) goto Lb2
            r8 = 1
            goto Lb3
        Lb2:
            r8 = r1
        Lb3:
            int r9 = com.startshorts.androidplayer.R$id.free_clarity_view
            android.view.View r9 = r4.findViewById(r9)
            if (r9 == 0) goto Lc3
            if (r8 == 0) goto Lbe
            goto Lc0
        Lbe:
            r1 = 8
        Lc0:
            r9.setVisibility(r1)
        Lc3:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.ui.activity.immersion.ImmersionActivity.ha(android.view.View, boolean):void");
    }

    private final void hb(int i10) {
        if (y7()) {
            return;
        }
        try {
            DiscreteSeekBar2 discreteSeekBar2 = this.N;
            if (discreteSeekBar2 != null) {
                if (discreteSeekBar2.getVisibility() != 0) {
                    return;
                }
                discreteSeekBar2.f();
                if (i10 > discreteSeekBar2.getProgress()) {
                    if (((i10 - discreteSeekBar2.getProgress()) * 1.0f) / (discreteSeekBar2.getMax() - discreteSeekBar2.getMin()) > 0.02f && this.Y > 50000) {
                        discreteSeekBar2.s(i10);
                    } else {
                        discreteSeekBar2.setProgress(i10);
                    }
                } else {
                    discreteSeekBar2.setProgress(i10);
                }
            }
        } catch (Exception e10) {
            m("updateSeekbarProgress exception -> " + e10.getMessage());
        }
    }

    private final com.startshorts.androidplayer.manager.immersion.feature.i i5() {
        return new com.startshorts.androidplayer.manager.immersion.feature.i(new WeakReference(this), new g());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void i6() {
        ShortDiscountView shortDiscountView;
        View root = ((ActivityImmersionBinding) E()).f38281e.getRoot();
        if (root instanceof ShortDiscountView) {
            shortDiscountView = (ShortDiscountView) root;
        } else {
            shortDiscountView = null;
        }
        if (shortDiscountView != null) {
            shortDiscountView.C();
            shortDiscountView.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void i7() {
        ud.b bVar = ud.b.f68412a;
        if (bVar.Z() || bVar.X()) {
            s("isCampaignCompleted() -> Campaign Completed!");
            if (!this.B0) {
                this.B0 = true;
                this.C0 = true;
                CoroutineUtil.g(CoroutineUtil.f48072a, 1000L, null, new Function0() { // from class: yh.u1
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        Unit j72;
                        j72 = ImmersionActivity.j7(ImmersionActivity.this);
                        return j72;
                    }
                }, 2, null);
            }
        }
    }

    private final void i8(List<zc.g> list) {
        L5().W(new a.h(list));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void i9() {
        Za(this, 0, false, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean ia(ImmersionActivity immersionActivity, View view, MotionEvent motionEvent) {
        immersionActivity.o6();
        immersionActivity.L4(5000L);
        return true;
    }

    private final void ib(int i10) {
        DiscreteSeekBar2 discreteSeekBar2;
        if (i10 != 0) {
            if (i10 != 4) {
                s("updateSeekbarVisibility -> View.GONE");
            } else {
                s("updateSeekbarVisibility -> View.INVISIBLE");
            }
        } else {
            s("updateSeekbarVisibility -> View.VISIBLE");
        }
        DiscreteSeekBar2 discreteSeekBar22 = this.N;
        if (discreteSeekBar22 == null) {
            if (i10 == 0) {
                ViewStubProxy seekbarViewstub = ((ActivityImmersionBinding) E()).f38299w;
                Intrinsics.checkNotNullExpressionValue(seekbarViewstub, "seekbarViewstub");
                View c10 = jk.e0.c(seekbarViewstub);
                if (c10 instanceof DiscreteSeekBar2) {
                    discreteSeekBar2 = (DiscreteSeekBar2) c10;
                } else {
                    discreteSeekBar2 = null;
                }
                this.N = discreteSeekBar2;
                ViewStubProxy seekbarTouchViewstub = ((ActivityImmersionBinding) E()).f38298v;
                Intrinsics.checkNotNullExpressionValue(seekbarTouchViewstub, "seekbarTouchViewstub");
                this.O = jk.e0.c(seekbarTouchViewstub);
                T6();
                U6();
            }
        } else {
            if (discreteSeekBar22 != null) {
                discreteSeekBar22.setVisibility(i10);
            }
            View view = this.O;
            if (view != null) {
                view.setVisibility(i10);
            }
            if (i10 == 0) {
                gb(1.0f);
            }
        }
        if (i10 == 0 && !this.Q) {
            this.Q = true;
            DiscreteSeekBar2 discreteSeekBar23 = this.N;
            if (discreteSeekBar23 != null) {
                discreteSeekBar23.setMin(0);
                discreteSeekBar23.setMax(this.Y);
                discreteSeekBar23.setProgress(this.Z);
                s("init seekbar -> min(0) max(" + this.Y + ") progress(" + this.Z + ')');
            }
        }
    }

    private final pj.a j5() {
        Object obj;
        ShortDiscountSku k10;
        Object obj2;
        BaseEpisode D5 = D5();
        EventManager eventManager = EventManager.f42463a;
        Bundle C = eventManager.C(D5);
        ImmersionParams immersionParams = this.f45270r;
        com.startshorts.androidplayer.manager.immersion.feature.i iVar = null;
        if (immersionParams == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mImmersionParams");
            immersionParams = null;
        }
        C.putString("from", immersionParams.getFrom());
        C.putString("button", "1,2");
        C.putString("scene", "1,2");
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "unlocked_page_show", C, 0L, 4, null);
        Iterator it = this.f45263k0.iterator();
        while (true) {
            if (it.hasNext()) {
                obj = it.next();
                if (((IImmersionFeature) obj) instanceof com.startshorts.androidplayer.manager.immersion.feature.i) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        if (!(obj instanceof com.startshorts.androidplayer.manager.immersion.feature.i)) {
            obj = null;
        }
        com.startshorts.androidplayer.manager.immersion.feature.i iVar2 = (com.startshorts.androidplayer.manager.immersion.feature.i) obj;
        if (iVar2 == null || (k10 = iVar2.k()) == null) {
            return null;
        }
        EventManager eventManager2 = EventManager.f42463a;
        ud.a aVar = ud.a.f68411a;
        EventManager.W0(eventManager2, "limited_time_discount", "other", D5, aVar.p(), null, null, 48, null);
        EventManager.Y0(eventManager2, "limited_time_discount", "other", D5, false, aVar.p(), 8, null);
        EventManager.O0(eventManager2, "limited_time_discount", k10, D5, aVar.p(), null, null, null, 112, null);
        DiscountUnlockView discountUnlockView = new DiscountUnlockView(this, k10);
        discountUnlockView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        discountUnlockView.setMCallBack(new h(D5, this));
        Iterator it2 = this.f45263k0.iterator();
        while (true) {
            if (it2.hasNext()) {
                obj2 = it2.next();
                if (((IImmersionFeature) obj2) instanceof com.startshorts.androidplayer.manager.immersion.feature.i) {
                    break;
                }
            } else {
                obj2 = null;
                break;
            }
        }
        if (obj2 instanceof com.startshorts.androidplayer.manager.immersion.feature.i) {
            iVar = obj2;
        }
        com.startshorts.androidplayer.manager.immersion.feature.i iVar3 = iVar;
        if (iVar3 != null) {
            iVar3.e();
        }
        return discountUnlockView;
    }

    private final void j6() {
        ((ActivityImmersionBinding) E()).f38284h.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit j7(ImmersionActivity immersionActivity) {
        immersionActivity.s("isCampaignCompleted() -> loadSaleSkuData()");
        immersionActivity.H7();
        return Unit.f60915a;
    }

    private final void j8() {
        this.C.getValue().j0(e.h.f48763b);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void j9(final Function0<Unit> function0) {
        final ViewStubProxy viewStubProxy = ((ActivityImmersionBinding) E()).f38279c;
        Intrinsics.checkNotNull(viewStubProxy);
        jk.e0.h(viewStubProxy);
        BaseTextView baseTextView = (BaseTextView) viewStubProxy.getRoot().findViewById(R$id.title_tv);
        Intrinsics.checkNotNull(baseTextView);
        String string = getString(R$string.immersion_activity_downgrade_resolution_due_to_net_caton);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        jk.y.l(baseTextView, string, new String[]{getString(R$string.immersion_activity_downgrade_resolution_due_to_net_caton_switch)}, ContextCompat.getColor(baseTextView.getContext(), R$color.colorPrimary), yf.a.f70794a.k(), 0.0f, true, null, 80, null);
        baseTextView.setOnClickListener(new View.OnClickListener() { // from class: yh.d2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ImmersionActivity.k9(Function0.this, viewStubProxy, view);
            }
        });
        viewStubProxy.getRoot().findViewById(R$id.close_iv).setOnClickListener(new View.OnClickListener() { // from class: yh.e2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ImmersionActivity.l9(ViewStubProxy.this, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"ClickableViewAccessibility"})
    public final void ja(View view) {
        PlaySpeed playSpeed;
        nj.a aVar;
        Object obj;
        o6();
        ViewStubProxy playSpeedListViewstub = ((ActivityImmersionBinding) E()).f38291o;
        Intrinsics.checkNotNullExpressionValue(playSpeedListViewstub, "playSpeedListViewstub");
        jk.e0.g(playSpeedListViewstub);
        int childCount = W1(this).f38295s.getChildCount();
        int i10 = 0;
        while (true) {
            playSpeed = null;
            if (i10 < childCount) {
                View childAt = W1(this).f38295s.getChildAt(i10);
                if (childAt instanceof ImmersionPlaySpeedListView) {
                    aVar = (nj.a) childAt;
                    break;
                }
                i10++;
            } else {
                aVar = null;
                break;
            }
        }
        ImmersionPlaySpeedListView immersionPlaySpeedListView = (ImmersionPlaySpeedListView) aVar;
        if (immersionPlaySpeedListView != null) {
            immersionPlaySpeedListView.setMListener(new v0());
            immersionPlaySpeedListView.setOnTouchListener(new View.OnTouchListener() { // from class: yh.w1
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view2, MotionEvent motionEvent) {
                    boolean ka2;
                    ka2 = ImmersionActivity.ka(ImmersionActivity.this, view2, motionEvent);
                    return ka2;
                }
            });
            Iterator it = this.f45263k0.iterator();
            while (true) {
                if (it.hasNext()) {
                    obj = it.next();
                    if (((IImmersionFeature) obj) instanceof com.startshorts.androidplayer.manager.immersion.feature.o) {
                        break;
                    }
                } else {
                    obj = null;
                    break;
                }
            }
            if (!(obj instanceof com.startshorts.androidplayer.manager.immersion.feature.o)) {
                obj = null;
            }
            com.startshorts.androidplayer.manager.immersion.feature.o oVar = (com.startshorts.androidplayer.manager.immersion.feature.o) obj;
            if (oVar != null) {
                playSpeed = oVar.e();
            }
            ArrayList arrayList = new ArrayList();
            PlaySpeed.Companion companion = PlaySpeed.Companion;
            arrayList.add(companion.getPLAY_SPEED_5());
            arrayList.add(companion.getPLAY_SPEED_6());
            arrayList.add(companion.getPLAY_SPEED_1());
            arrayList.add(companion.getPLAY_SPEED_2());
            arrayList.add(companion.getPLAY_SPEED_3());
            arrayList.add(companion.getPLAY_SPEED_4());
            Unit unit = Unit.f60915a;
            immersionPlaySpeedListView.i(playSpeed, arrayList);
            View findViewById = immersionPlaySpeedListView.findViewById(R$id.recycler_view);
            Intrinsics.checkNotNull(findViewById);
            e8(immersionPlaySpeedListView, findViewById, view);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void jb(PlayResolution playResolution) {
        nj.a aVar;
        if (s7()) {
            int childCount = W1(this).f38295s.getChildCount();
            int i10 = 0;
            while (true) {
                if (i10 < childCount) {
                    View childAt = W1(this).f38295s.getChildAt(i10);
                    if (childAt instanceof ImmersionPlayResolutionListView) {
                        aVar = (nj.a) childAt;
                        break;
                    }
                    i10++;
                } else {
                    aVar = null;
                    break;
                }
            }
            ImmersionPlayResolutionListView immersionPlayResolutionListView = (ImmersionPlayResolutionListView) aVar;
            if (immersionPlayResolutionListView != null) {
                immersionPlayResolutionListView.w(playResolution);
            }
        }
    }

    private final com.startshorts.androidplayer.manager.immersion.feature.l k5() {
        return new com.startshorts.androidplayer.manager.immersion.feature.l(new WeakReference(this), new i());
    }

    private final void k6(int i10) {
        ImmersionAdapter immersionAdapter = this.G;
        if (immersionAdapter != null) {
            immersionAdapter.L(i10);
        }
    }

    private final boolean k7() {
        return this.T0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit k8(ImmersionActivity immersionActivity) {
        immersionActivity.s("receiveCampaignRefreshSuccessEvent() -> Campaign Completed!, loadSaleSkuData()");
        immersionActivity.H7();
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k9(Function0 function0, ViewStubProxy viewStubProxy, View view) {
        function0.invoke();
        Intrinsics.checkNotNull(viewStubProxy);
        jk.e0.b(viewStubProxy, 0, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean ka(ImmersionActivity immersionActivity, View view, MotionEvent motionEvent) {
        immersionActivity.p6();
        immersionActivity.L4(5000L);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void kb(boolean z10) {
        ViewPager2 viewPager2 = this.F;
        if (viewPager2 != null) {
            if (z10) {
                if (!viewPager2.isUserInputEnabled()) {
                    viewPager2.setUserInputEnabled(true);
                    s("updateViewPagerScrollEnable -> enable(true)");
                }
            } else if (viewPager2.isUserInputEnabled()) {
                viewPager2.setUserInputEnabled(false);
                s("updateViewPagerScrollEnable -> enable(false)");
            }
        }
    }

    private final com.startshorts.androidplayer.manager.immersion.feature.m l5() {
        com.startshorts.androidplayer.manager.immersion.feature.m mVar = new com.startshorts.androidplayer.manager.immersion.feature.m();
        mVar.k(new j());
        return mVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void l6() {
        x8(this, ImmersionNotificationType.CURR_EPISODE_END, false, null, 4, null);
        x8(this, ImmersionNotificationType.NEXT_EPISODE_PREPARED, false, null, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean l7() {
        BaseEpisode D5 = D5();
        if (D5 != null) {
            return D5.isLocked();
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void l8(final BaseEpisode baseEpisode) {
        if (!ABTestFactory.f42224a.Z0().isEnable().invoke().booleanValue()) {
            final BaseTextView baseTextView = ((ActivityImmersionBinding) E()).f38284h;
            baseTextView.post(new Runnable() { // from class: yh.y1
                @Override // java.lang.Runnable
                public final void run() {
                    ImmersionActivity.m8(BaseTextView.this, baseEpisode, this);
                }
            });
            Intrinsics.checkNotNull(baseTextView);
            return;
        }
        jk.b0.d(((ActivityImmersionBinding) E()).f38284h);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l9(ViewStubProxy viewStubProxy, View view) {
        Intrinsics.checkNotNull(viewStubProxy);
        jk.e0.b(viewStubProxy, 0, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void la(PlaySpeed playSpeed) {
        BaseTextView baseTextView;
        ViewStubProxy viewStubProxy = ((ActivityImmersionBinding) E()).f38292p;
        Intrinsics.checkNotNull(viewStubProxy);
        jk.e0.g(viewStubProxy);
        View root = viewStubProxy.getRoot();
        if (root != null && (baseTextView = (BaseTextView) root.findViewById(R$id.speed_tips_tv)) != null) {
            String string = getString(R$string.immersion_activity_speed_playing, String.valueOf(playSpeed.getValue()));
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            jk.y.l(baseTextView, string, new String[]{getString(R$string.immersion_activity_speed_playing_unit, String.valueOf(playSpeed.getValue()))}, ContextCompat.getColor(this, R$color.colorPrimary), null, 0.0f, false, null, 120, null);
        }
    }

    private final com.startshorts.androidplayer.manager.immersion.feature.n m5() {
        com.startshorts.androidplayer.manager.immersion.feature.n nVar = new com.startshorts.androidplayer.manager.immersion.feature.n();
        nVar.v(new k());
        return nVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void m6() {
        n6(E5());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean m7(String str) {
        Object obj;
        HashMap<String, Object> i10;
        ve.c<HashMap<String, Object>> T5 = T5();
        if (T5 != null && (i10 = T5.i()) != null) {
            obj = i10.get("dialog_name");
        } else {
            obj = null;
        }
        return Intrinsics.areEqual(obj, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m8(BaseTextView baseTextView, BaseEpisode baseEpisode, ImmersionActivity immersionActivity) {
        String string;
        if (baseEpisode.isTrailer()) {
            string = immersionActivity.getString(R$string.shorts_fragment_trailer);
        } else {
            string = immersionActivity.getString(R$string.common_current_ep, String.valueOf(baseEpisode.getEpisodeNum()));
        }
        baseTextView.setText(string);
        if (!immersionActivity.k7()) {
            baseTextView.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void m9(final Function0<Unit> function0, final Function0<Unit> function02) {
        ve.h.f68906a.a();
        B9(this, "ImmersionBackShortsDialogB", null, new Function1() { // from class: yh.q0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                DialogFragment n92;
                n92 = ImmersionActivity.n9(Function0.this, function02, (Function0) obj);
                return n92;
            }
        }, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void ma(int i10, int i11) {
        ImmersionTimeLayout immersionTimeLayout;
        ImmersionTimeLayout immersionTimeLayout2 = this.S;
        if (immersionTimeLayout2 == null) {
            ViewStubProxy timeViewstub = ((ActivityImmersionBinding) E()).B;
            Intrinsics.checkNotNullExpressionValue(timeViewstub, "timeViewstub");
            View c10 = jk.e0.c(timeViewstub);
            if (c10 instanceof ImmersionTimeLayout) {
                immersionTimeLayout = (ImmersionTimeLayout) c10;
            } else {
                immersionTimeLayout = null;
            }
            this.S = immersionTimeLayout;
        } else if (immersionTimeLayout2 != null) {
            immersionTimeLayout2.setVisibility(0);
        }
        ImmersionTimeLayout immersionTimeLayout3 = this.S;
        if (immersionTimeLayout3 != null) {
            float f10 = 1000;
            immersionTimeLayout3.v(bt.a.e((i10 * 1.0f) / f10), bt.a.e((i11 * 1.0f) / f10));
        }
        Z4(true);
    }

    private final com.startshorts.androidplayer.manager.immersion.feature.o n5() {
        com.startshorts.androidplayer.manager.immersion.feature.o oVar = new com.startshorts.androidplayer.manager.immersion.feature.o();
        oVar.j(new l());
        return oVar;
    }

    private final void n6(int i10) {
        ImmersionAdapter immersionAdapter = this.G;
        if (immersionAdapter != null) {
            immersionAdapter.M(i10);
        }
    }

    private final boolean n7() {
        ViewStubProxy discountLayoutViewstub = ((ActivityImmersionBinding) E()).f38281e;
        Intrinsics.checkNotNullExpressionValue(discountLayoutViewstub, "discountLayoutViewstub");
        return jk.e0.f(discountLayoutViewstub);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void n8(BaseEpisode baseEpisode) {
        ImmersionAdapter immersionAdapter = this.G;
        if (immersionAdapter != null) {
            immersionAdapter.f0(E5(), baseEpisode.createShortsInfo(), baseEpisode, k7());
        }
        for (nj.a aVar : A5()) {
            if (!(aVar instanceof ImmersionPlayResolutionView) && !(aVar instanceof ImmersionPlaySpeedView) && !(aVar instanceof ImmersionMiniWindowView) && !(aVar instanceof ImmersionDownloadDramaView)) {
                aVar.k(baseEpisode, k7());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DialogFragment n9(Function0 function0, Function0 function02, Function0 onDismiss) {
        Intrinsics.checkNotNullParameter(onDismiss, "onDismiss");
        return ImmersionShortBackEarnCoinDialog.f46183l.a(new i0(onDismiss, function0, function02));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void na(final boolean z10, final UnlockEpisodeAdMethod unlockEpisodeAdMethod) {
        B9(this, "PurePayingUserAdRetentionDialog", null, new Function1() { // from class: yh.y0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                DialogFragment pa2;
                pa2 = ImmersionActivity.pa(z10, unlockEpisodeAdMethod, this, (Function0) obj);
                return pa2;
            }
        }, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<StrategySource> o5(List<BaseEpisode> list) {
        PlayResolution playResolution;
        Object obj;
        StrategySource e10;
        ArrayList arrayList = new ArrayList();
        Iterator it = this.f45263k0.iterator();
        while (true) {
            playResolution = null;
            if (it.hasNext()) {
                obj = it.next();
                if (((IImmersionFeature) obj) instanceof com.startshorts.androidplayer.manager.immersion.feature.n) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        if (!(obj instanceof com.startshorts.androidplayer.manager.immersion.feature.n)) {
            obj = null;
        }
        com.startshorts.androidplayer.manager.immersion.feature.n nVar = (com.startshorts.androidplayer.manager.immersion.feature.n) obj;
        if (nVar != null) {
            playResolution = nVar.l();
        }
        String str = "";
        for (BaseEpisode baseEpisode : list) {
            String videoUrl = baseEpisode.getVideoUrl();
            if (videoUrl != null && videoUrl.length() != 0 && (e10 = pf.l.e(pf.l.f64869a, baseEpisode, playResolution, null, false, 4, null)) != null) {
                str = str + '(' + baseEpisode.getId() + ',' + baseEpisode.getEpisodeNum() + ')';
                arrayList.add(e10);
            }
        }
        if (str.length() > 0) {
            s("createPreloadStrategyResources -> " + str);
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void o6() {
        ViewStubProxy playResolutionListViewstub = ((ActivityImmersionBinding) E()).f38289m;
        Intrinsics.checkNotNullExpressionValue(playResolutionListViewstub, "playResolutionListViewstub");
        jk.e0.b(playResolutionListViewstub, 0, 1, null);
    }

    private final boolean o7() {
        BaseEpisode D5 = D5();
        if (D5 != null) {
            return D5.isVideoExpired();
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void o8(BaseEpisode baseEpisode) {
        for (nj.a aVar : A5()) {
            if ((aVar instanceof ImmersionPlayResolutionView) || (aVar instanceof ImmersionPlaySpeedView) || (aVar instanceof ImmersionMiniWindowView) || (aVar instanceof ImmersionDownloadDramaView)) {
                aVar.k(baseEpisode, k7());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void o9(NewbieWatchTask newbieWatchTask) {
        DailyWatchDramaTaskView dailyWatchDramaTaskView;
        if (!newbieWatchTask.isInvalid() || this.H0) {
            return;
        }
        Object obj = null;
        if (this.f45275t0 == null) {
            ViewStubProxy dailyWatchDramaTaskCoinViewstub = ((ActivityImmersionBinding) E()).f38280d;
            Intrinsics.checkNotNullExpressionValue(dailyWatchDramaTaskCoinViewstub, "dailyWatchDramaTaskCoinViewstub");
            View e10 = jk.e0.e(dailyWatchDramaTaskCoinViewstub);
            if (e10 instanceof DailyWatchDramaTaskView) {
                dailyWatchDramaTaskView = (DailyWatchDramaTaskView) e10;
            } else {
                dailyWatchDramaTaskView = null;
            }
            this.f45275t0 = dailyWatchDramaTaskView;
            EventManager.k0(EventManager.f42463a, "immersion_page", "reward_floating_window", D5(), null, 8, null);
        }
        DailyWatchDramaTaskView dailyWatchDramaTaskView2 = this.f45275t0;
        if (dailyWatchDramaTaskView2 != null) {
            dailyWatchDramaTaskView2.setVisibility(0);
        }
        DailyWatchDramaTaskView dailyWatchDramaTaskView3 = this.f45275t0;
        if (dailyWatchDramaTaskView3 != null) {
            dailyWatchDramaTaskView3.setListener(new j0());
        }
        long X1 = ud.b.f68412a.X1();
        Logger logger = Logger.f41511a;
        logger.h("ImmersionActivity", "play time = " + X1);
        if (newbieWatchTask.isAllTaskComplete()) {
            logger.h("ImmersionActivity", "task is all done and receive");
            DailyWatchDramaTaskView dailyWatchDramaTaskView4 = this.f45275t0;
            if (dailyWatchDramaTaskView4 != null) {
                dailyWatchDramaTaskView4.S();
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
            Logger.f41511a.h("ImmersionActivity", "task is all done.，but not receive");
            DailyWatchDramaTaskView dailyWatchDramaTaskView5 = this.f45275t0;
            if (dailyWatchDramaTaskView5 != null) {
                dailyWatchDramaTaskView5.U(vi.e.f68955a.b());
                return;
            }
            return;
        }
        if (this.f45277u0 == null) {
            this.f45277u0 = new dk.f(this.f45275t0, new k0(newbieWatchTask));
        }
        Qa(newbieWatchTask, newbieWatchBonus);
    }

    static /* synthetic */ void oa(ImmersionActivity immersionActivity, boolean z10, UnlockEpisodeAdMethod unlockEpisodeAdMethod, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = true;
        }
        if ((i10 & 2) != 0) {
            unlockEpisodeAdMethod = null;
        }
        immersionActivity.na(z10, unlockEpisodeAdMethod);
    }

    private final pj.a p5(UnlockEpisodeAdMethod unlockEpisodeAdMethod, boolean z10) {
        ImmersionParams immersionParams = this.f45270r;
        if (immersionParams == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mImmersionParams");
            immersionParams = null;
        }
        String from = immersionParams.getFrom();
        BaseEpisode D5 = D5();
        EventManager eventManager = EventManager.f42463a;
        Bundle C = eventManager.C(D5);
        C.putString("from", from);
        C.putString("button", "1,3");
        C.putString("scene", "1,3");
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "unlocked_page_show", C, 0L, 4, null);
        PurePayingUserAdRetentionUnlockView purePayingUserAdRetentionUnlockView = new PurePayingUserAdRetentionUnlockView(this);
        purePayingUserAdRetentionUnlockView.z(from, unlockEpisodeAdMethod, D5);
        purePayingUserAdRetentionUnlockView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        purePayingUserAdRetentionUnlockView.setMListener(new m(z10));
        EventManager.k0(eventManager, "ad", "sub_portal", D5(), null, 8, null);
        return purePayingUserAdRetentionUnlockView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void p6() {
        ViewStubProxy playSpeedListViewstub = ((ActivityImmersionBinding) E()).f38291o;
        Intrinsics.checkNotNullExpressionValue(playSpeedListViewstub, "playSpeedListViewstub");
        jk.e0.b(playSpeedListViewstub, 0, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean p7() {
        return Intrinsics.areEqual(kf.b.f60715a.c(), ImmersionActivity.class.getSimpleName());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void p8(BaseEpisode baseEpisode) {
        for (nj.a aVar : A5()) {
            if ((aVar instanceof ImmersionPlayResolutionView) || (aVar instanceof ImmersionPlaySpeedView) || (aVar instanceof ImmersionMiniWindowView) || (aVar instanceof ImmersionDownloadDramaView)) {
                aVar.k(baseEpisode, k7());
            }
        }
    }

    private final void p9(String str, HashMap<String, Object> hashMap, final Function1<? super Function0<Unit>, ? extends Dialog> function1) {
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        t9(this, str, hashMap, new Function1() { // from class: yh.c1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean u92;
                u92 = ImmersionActivity.u9(Ref.ObjectRef.this, function1, (Function0) obj);
                return Boolean.valueOf(u92);
            }
        }, false, new Function0() { // from class: yh.e1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit v92;
                v92 = ImmersionActivity.v9(Ref.ObjectRef.this);
                return v92;
            }
        }, 8, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DialogFragment pa(boolean z10, UnlockEpisodeAdMethod unlockEpisodeAdMethod, ImmersionActivity immersionActivity, Function0 onDismiss) {
        Intrinsics.checkNotNullParameter(onDismiss, "onDismiss");
        PurePayingUserAdRetentionDBDialogFragment purePayingUserAdRetentionDBDialogFragment = new PurePayingUserAdRetentionDBDialogFragment();
        purePayingUserAdRetentionDBDialogFragment.L(z10);
        purePayingUserAdRetentionDBDialogFragment.P(unlockEpisodeAdMethod);
        ImmersionParams immersionParams = immersionActivity.f45270r;
        if (immersionParams == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mImmersionParams");
            immersionParams = null;
        }
        purePayingUserAdRetentionDBDialogFragment.N(immersionParams.getFrom());
        purePayingUserAdRetentionDBDialogFragment.M(immersionActivity.D5());
        purePayingUserAdRetentionDBDialogFragment.O(new w0(onDismiss));
        return purePayingUserAdRetentionDBDialogFragment;
    }

    private final com.startshorts.androidplayer.manager.immersion.feature.s q5() {
        com.startshorts.androidplayer.manager.immersion.feature.s sVar = new com.startshorts.androidplayer.manager.immersion.feature.s();
        sVar.b(new n());
        return sVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void q6() {
        ViewStubProxy playSpeedTipViewstub = ((ActivityImmersionBinding) E()).f38292p;
        Intrinsics.checkNotNullExpressionValue(playSpeedTipViewstub, "playSpeedTipViewstub");
        jk.e0.b(playSpeedTipViewstub, 0, 1, null);
    }

    private final boolean q7() {
        com.startshorts.androidplayer.manager.immersion.feature.o oVar;
        Object obj;
        Iterator it = this.f45263k0.iterator();
        while (true) {
            oVar = null;
            if (it.hasNext()) {
                obj = it.next();
                if (((IImmersionFeature) obj) instanceof com.startshorts.androidplayer.manager.immersion.feature.o) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        if (obj instanceof com.startshorts.androidplayer.manager.immersion.feature.o) {
            oVar = obj;
        }
        com.startshorts.androidplayer.manager.immersion.feature.o oVar2 = oVar;
        if (oVar2 != null) {
            return oVar2.f();
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void q8(BaseEpisode baseEpisode) {
        I6();
        ImmersionAdapter immersionAdapter = this.G;
        if (immersionAdapter != null) {
            immersionAdapter.f0(E5(), baseEpisode.createShortsInfo(), baseEpisode, k7());
        }
        for (nj.a aVar : A5()) {
            aVar.g(baseEpisode.createShortsInfo(), k7());
        }
    }

    private final void q9(String str, HashMap<String, Object> hashMap, final Function1<? super Function0<Unit>, Boolean> function1, final boolean z10, final Function0<Unit> function0) {
        final Function1 function12 = new Function1() { // from class: yh.a2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean x92;
                x92 = ImmersionActivity.x9(ImmersionActivity.this, function1, (Function0) obj);
                return Boolean.valueOf(x92);
            }
        };
        final Function0 function02 = new Function0() { // from class: yh.b2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit y92;
                y92 = ImmersionActivity.y9(Function0.this, this);
                return y92;
            }
        };
        if (hashMap == null) {
            hashMap = new HashMap<>();
        }
        final HashMap<String, Object> hashMap2 = hashMap;
        hashMap2.put("dialog_name", str);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("showDialog -> total=");
        sb2.append(M5().j());
        sb2.append(",list=");
        List<ve.c<HashMap<String, Object>>> k10 = M5().k();
        ArrayList arrayList = new ArrayList(CollectionsKt.z(k10, 10));
        Iterator<T> it = k10.iterator();
        while (it.hasNext()) {
            arrayList.add((HashMap) ((ve.c) it.next()).i());
        }
        sb2.append(arrayList);
        s(sb2.toString());
        r9(new Function0() { // from class: yh.c2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit z92;
                z92 = ImmersionActivity.z9(ImmersionActivity.this, hashMap2, function02, function12, z10);
                return z92;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void qa(final boolean z10, final UnlockEpisodeAdMethod unlockEpisodeAdMethod) {
        B9(this, "PurePayingUserAdRetentionDialog", null, new Function1() { // from class: yh.k1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                DialogFragment ra2;
                ra2 = ImmersionActivity.ra(z10, unlockEpisodeAdMethod, this, (Function0) obj);
                return ra2;
            }
        }, 2, null);
    }

    private final pj.a r5(UnlockEpisodeAdMethod unlockEpisodeAdMethod, boolean z10, String str, Boolean bool) {
        EventManager.k0(EventManager.f42463a, "general", "sub_portal", D5(), null, 8, null);
        BaseEpisode D5 = D5();
        ImmersionParams immersionParams = null;
        if (D5 != null && D5.isIaaUserEpisode()) {
            IaaSkuSubscribeUnlockView iaaSkuSubscribeUnlockView = new IaaSkuSubscribeUnlockView(this, str, bool);
            ImmersionParams immersionParams2 = this.f45270r;
            if (immersionParams2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mImmersionParams");
            } else {
                immersionParams = immersionParams2;
            }
            iaaSkuSubscribeUnlockView.z(immersionParams.getFrom(), D5());
            iaaSkuSubscribeUnlockView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
            iaaSkuSubscribeUnlockView.setMListener(new o(z10));
            return iaaSkuSubscribeUnlockView;
        }
        SkuSubscribeUnlockView skuSubscribeUnlockView = new SkuSubscribeUnlockView(this, str, bool);
        if (unlockEpisodeAdMethod != null) {
            ImmersionParams immersionParams3 = this.f45270r;
            if (immersionParams3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mImmersionParams");
            } else {
                immersionParams = immersionParams3;
            }
            skuSubscribeUnlockView.z(immersionParams.getFrom(), unlockEpisodeAdMethod, D5());
        }
        skuSubscribeUnlockView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        skuSubscribeUnlockView.setMListener(new p(z10));
        return skuSubscribeUnlockView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void r6() {
        ImmersionTimeLayout immersionTimeLayout = this.S;
        if (immersionTimeLayout != null) {
            immersionTimeLayout.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void r8(BaseEpisode baseEpisode) {
        if (!ABTestFactory.f42224a.Z0().isEnable().invoke().booleanValue()) {
            final String checkedShortPlayName = baseEpisode.getCheckedShortPlayName();
            if (checkedShortPlayName != null && checkedShortPlayName.length() != 0) {
                final BaseTextView baseTextView = ((ActivityImmersionBinding) E()).f38301y;
                baseTextView.post(new Runnable() { // from class: yh.g0
                    @Override // java.lang.Runnable
                    public final void run() {
                        ImmersionActivity.s8(BaseTextView.this, checkedShortPlayName);
                    }
                });
                return;
            }
            return;
        }
        jk.b0.d(((ActivityImmersionBinding) E()).f38301y);
    }

    private final void r9(Function0<Unit> function0) {
        if (p()) {
            m("Activity is paused, create mPendingShowDialog");
            this.f45256d0 = function0;
            return;
        }
        this.f45256d0 = null;
        function0.invoke();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DialogFragment ra(boolean z10, UnlockEpisodeAdMethod unlockEpisodeAdMethod, ImmersionActivity immersionActivity, Function0 onDismiss) {
        Intrinsics.checkNotNullParameter(onDismiss, "onDismiss");
        PurePayingUserAdRetentionDialogFragment purePayingUserAdRetentionDialogFragment = new PurePayingUserAdRetentionDialogFragment();
        purePayingUserAdRetentionDialogFragment.L(z10);
        purePayingUserAdRetentionDialogFragment.P(unlockEpisodeAdMethod);
        ImmersionParams immersionParams = immersionActivity.f45270r;
        if (immersionParams == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mImmersionParams");
            immersionParams = null;
        }
        purePayingUserAdRetentionDialogFragment.N(immersionParams.getFrom());
        purePayingUserAdRetentionDialogFragment.M(immersionActivity.D5());
        purePayingUserAdRetentionDialogFragment.O(new x0(onDismiss));
        return purePayingUserAdRetentionDialogFragment;
    }

    private final com.startshorts.androidplayer.manager.player.feature.f s5() {
        int i10;
        com.startshorts.androidplayer.manager.player.feature.f fVar = new com.startshorts.androidplayer.manager.player.feature.f();
        BaseEpisode D5 = D5();
        int i11 = 0;
        if (D5 != null) {
            i10 = D5.getShortPlayId();
        } else {
            i10 = 0;
        }
        fVar.g(i10);
        BaseEpisode D52 = D5();
        if (D52 != null) {
            i11 = D52.getId();
        }
        fVar.d(i11);
        ImmersionParams immersionParams = this.f45270r;
        if (immersionParams == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mImmersionParams");
            immersionParams = null;
        }
        fVar.e(immersionParams.isFromOfflineDownload());
        fVar.f(new f.b() { // from class: com.startshorts.androidplayer.ui.activity.immersion.ImmersionActivity$createSubtitleFeature$1$1
            @Override // com.startshorts.androidplayer.manager.player.feature.f.b
            public void a(int i12, int i13, boolean z10, boolean z11) {
                if (z10 && !z11) {
                    gt.g.d(LifecycleOwnerKt.getLifecycleScope(ImmersionActivity.this), null, null, new ImmersionActivity$createSubtitleFeature$1$1$onSubtitleLoad$1(i12, i13, ImmersionActivity.this, null), 3, null);
                }
            }

            @Override // com.startshorts.androidplayer.manager.player.feature.f.b
            public void b(String content) {
                Intrinsics.checkNotNullParameter(content, "content");
                ImmersionAdapter immersionAdapter = ImmersionActivity.this.G;
                if (immersionAdapter != null) {
                    immersionAdapter.g0(ImmersionActivity.this.E5(), content);
                }
            }
        });
        return fVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void s6(int i10) {
        ib(i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean s7() {
        ViewStubProxy playResolutionListViewstub = ((ActivityImmersionBinding) E()).f38289m;
        Intrinsics.checkNotNullExpressionValue(playResolutionListViewstub, "playResolutionListViewstub");
        return jk.e0.f(playResolutionListViewstub);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s8(BaseTextView baseTextView, String str) {
        baseTextView.setText(str);
        baseTextView.setVisibility(0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void s9(ImmersionActivity immersionActivity, String str, HashMap hashMap, Function1 function1, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            hashMap = null;
        }
        immersionActivity.p9(str, hashMap, function1);
    }

    private final void sa() {
        ImmersionParams immersionParams = this.f45270r;
        if (immersionParams == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mImmersionParams");
            immersionParams = null;
        }
        final RedeemCode redeemCode = immersionParams.getRedeemCode();
        if (redeemCode == null) {
            return;
        }
        B9(this, "ReemCodeDialog", null, new Function1() { // from class: yh.c
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                DialogFragment ta2;
                ta2 = ImmersionActivity.ta(RedeemCode.this, (Function0) obj);
                return ta2;
            }
        }, 2, null);
    }

    private final com.startshorts.androidplayer.manager.immersion.feature.v t5() {
        com.startshorts.androidplayer.manager.immersion.feature.v vVar = new com.startshorts.androidplayer.manager.immersion.feature.v();
        vVar.j(new q());
        return vVar;
    }

    private final void t6() {
        ShortRatingHandler shortRatingHandler = this.f45281w0;
        if (shortRatingHandler != null) {
            shortRatingHandler.f();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean t7() {
        ViewStubProxy playSpeedListViewstub = ((ActivityImmersionBinding) E()).f38291o;
        Intrinsics.checkNotNullExpressionValue(playSpeedListViewstub, "playSpeedListViewstub");
        return jk.e0.f(playSpeedListViewstub);
    }

    private final void t8() {
        s("releasePlay");
        this.f45278v.getValue().M(b.f.f48940a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void t9(ImmersionActivity immersionActivity, String str, HashMap hashMap, Function1 function1, boolean z10, Function0 function0, int i10, Object obj) {
        HashMap<String, Object> hashMap2 = hashMap;
        if ((i10 & 2) != 0) {
            hashMap2 = null;
        }
        HashMap<String, Object> hashMap3 = hashMap2;
        if ((i10 & 8) != 0) {
            z10 = false;
        }
        boolean z11 = z10;
        Function0 function02 = function0;
        if ((i10 & 16) != 0) {
            function02 = new Function0() { // from class: yh.p1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit w92;
                    w92 = ImmersionActivity.w9();
                    return w92;
                }
            };
        }
        immersionActivity.q9(str, hashMap3, function1, z11, function02);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DialogFragment ta(RedeemCode redeemCode, Function0 onDismiss) {
        Intrinsics.checkNotNullParameter(onDismiss, "onDismiss");
        return ImmersionRedeemCodeDialog.f46177k.a(redeemCode, new y0(onDismiss));
    }

    private final com.startshorts.androidplayer.manager.immersion.feature.w u5() {
        com.startshorts.androidplayer.manager.immersion.feature.w wVar = new com.startshorts.androidplayer.manager.immersion.feature.w();
        wVar.l(new r(wVar));
        return wVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void u6() {
        v6(E5());
    }

    private final boolean u7() {
        ImmersionParams immersionParams = this.f45270r;
        if (immersionParams == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mImmersionParams");
            immersionParams = null;
        }
        return immersionParams.getEnableRefreshLayout();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void u8(String str) {
        ve.c<HashMap<String, Object>> F5 = F5(str);
        if (F5 != null) {
            M5().g(F5);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r2v1, types: [T, java.lang.Object] */
    public static final boolean u9(Ref.ObjectRef objectRef, Function1 function1, Function0 onSelfDialogDismiss) {
        Intrinsics.checkNotNullParameter(onSelfDialogDismiss, "onSelfDialogDismiss");
        ?? invoke = function1.invoke(onSelfDialogDismiss);
        objectRef.element = invoke;
        Dialog dialog = (Dialog) invoke;
        if (dialog != null) {
            dialog.show();
            return true;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void ua() {
        if (this.Y <= 0) {
            return;
        }
        ib(0);
    }

    private final pj.a v5() {
        ImmersionParams immersionParams;
        Object obj;
        pj.a aVar;
        UnlockEpisodeAdMethod unlockEpisodeAdMethod;
        if (ABTestFactory.f42224a.y1().isEnable().invoke().booleanValue()) {
            aVar = r5(this.f45269q0, this.f45271r0, ve.h.f68906a.m(), Boolean.valueOf(this.f45285y0));
        } else {
            Iterator it = this.f45263k0.iterator();
            while (true) {
                immersionParams = null;
                if (it.hasNext()) {
                    obj = it.next();
                    if (((IImmersionFeature) obj) instanceof com.startshorts.androidplayer.manager.immersion.feature.i) {
                        break;
                    }
                } else {
                    obj = null;
                    break;
                }
            }
            if (!(obj instanceof com.startshorts.androidplayer.manager.immersion.feature.i)) {
                obj = null;
            }
            com.startshorts.androidplayer.manager.immersion.feature.i iVar = (com.startshorts.androidplayer.manager.immersion.feature.i) obj;
            if (iVar != null && iVar.c(D5())) {
                aVar = j5();
            } else if (this.f45268p0 && (unlockEpisodeAdMethod = this.f45269q0) != null) {
                aVar = p5(unlockEpisodeAdMethod, this.f45271r0);
            } else {
                aVar = null;
            }
            if (aVar == null || ae.a.f627a.k()) {
                EventManager eventManager = EventManager.f42463a;
                Bundle C = eventManager.C(D5());
                ImmersionParams immersionParams2 = this.f45270r;
                if (immersionParams2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mImmersionParams");
                } else {
                    immersionParams = immersionParams2;
                }
                C.putString("from", immersionParams.getFrom());
                C.putString("button", "1");
                C.putString("scene", "1");
                Unit unit = Unit.f60915a;
                EventManager.s0(eventManager, "unlocked_page_show", C, 0L, 4, null);
                aVar = r5(this.f45269q0, this.f45271r0, ve.h.f68906a.m(), Boolean.FALSE);
            }
        }
        Intrinsics.checkNotNull(aVar, "null cannot be cast to non-null type com.startshorts.androidplayer.ui.view.immersion.unlock.IUnlockView");
        return aVar;
    }

    private final void v6(int i10) {
        ImmersionAdapter immersionAdapter = this.G;
        if (immersionAdapter != null) {
            immersionAdapter.N(i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean v7() {
        RefreshState refreshState;
        MaterialHeader materialHeader = this.J;
        RefreshState refreshState2 = null;
        if (materialHeader != null) {
            refreshState = materialHeader.getMState();
        } else {
            refreshState = null;
        }
        if (refreshState != null && refreshState != RefreshState.None) {
            return false;
        }
        BallPulseFooter ballPulseFooter = this.K;
        if (ballPulseFooter != null) {
            refreshState2 = ballPulseFooter.getMState();
        }
        if (refreshState2 != null && refreshState2 != RefreshState.None) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void v8(int i10) {
        com.startshorts.androidplayer.manager.immersion.feature.i iVar;
        Object obj;
        Iterator it = this.f45263k0.iterator();
        while (true) {
            iVar = null;
            if (it.hasNext()) {
                obj = it.next();
                if (((IImmersionFeature) obj) instanceof com.startshorts.androidplayer.manager.immersion.feature.i) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        if (obj instanceof com.startshorts.androidplayer.manager.immersion.feature.i) {
            iVar = obj;
        }
        com.startshorts.androidplayer.manager.immersion.feature.i iVar2 = iVar;
        if (iVar2 != null) {
            iVar2.r(i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit v9(Ref.ObjectRef objectRef) {
        Dialog dialog = (Dialog) objectRef.element;
        if (dialog != null) {
            dialog.dismiss();
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void va() {
        ShortRatingLayout shortRatingLayout;
        BaseEpisode D5 = D5();
        if (D5 == null) {
            return;
        }
        ShortPlayContentInfo shortPlayContentRatingResponse = D5.getShortPlayContentRatingResponse();
        if (shortPlayContentRatingResponse == null) {
            ShortRatingHandler shortRatingHandler = this.f45281w0;
            if (shortRatingHandler != null) {
                shortRatingHandler.f();
                return;
            }
            return;
        }
        if (this.f45279v0 == null) {
            ViewStubProxy shortRatingViewstub = ((ActivityImmersionBinding) E()).f38300x;
            Intrinsics.checkNotNullExpressionValue(shortRatingViewstub, "shortRatingViewstub");
            View e10 = jk.e0.e(shortRatingViewstub);
            if (e10 instanceof ShortRatingLayout) {
                shortRatingLayout = (ShortRatingLayout) e10;
            } else {
                shortRatingLayout = null;
            }
            this.f45279v0 = shortRatingLayout;
        }
        if (this.f45281w0 == null) {
            this.f45281w0 = new ShortRatingHandler(new z0());
        }
        ShortRatingHandler shortRatingHandler2 = this.f45281w0;
        String str = (shortRatingHandler2 == null || (str = shortRatingHandler2.e(D5.getShortPlayId(), D5.isTrailer())) == null) ? "" : "";
        ShortRatingHandler shortRatingHandler3 = this.f45281w0;
        if (shortRatingHandler3 != null) {
            shortRatingHandler3.g(str, shortPlayContentRatingResponse, this.f45279v0);
        }
    }

    private final void w5() {
        getWindow().setFlags(8192, 8192);
    }

    private final void w6() {
        try {
            Toast toast = this.f45261i0;
            if (toast != null) {
                toast.cancel();
            }
        } catch (Exception unused) {
        }
        this.f45261i0 = null;
    }

    private final boolean w7() {
        SmartRefreshLayout smartRefreshLayout = this.I;
        if (smartRefreshLayout != null) {
            return smartRefreshLayout.u();
        }
        return false;
    }

    private final void w8(ImmersionNotificationType immersionNotificationType, boolean z10, yd.a aVar) {
        ImmersionNotificationLayout immersionNotificationLayout;
        ViewStubProxy viewStubProxy = ((ActivityImmersionBinding) E()).f38287k;
        if (viewStubProxy.isInflated()) {
            View root = viewStubProxy.getRoot();
            if (root instanceof ImmersionNotificationLayout) {
                immersionNotificationLayout = (ImmersionNotificationLayout) root;
            } else {
                immersionNotificationLayout = null;
            }
            if (immersionNotificationLayout != null) {
                immersionNotificationLayout.f(immersionNotificationType, z10, aVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit w9() {
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void wa(CoinSku coinSku, boolean z10) {
        long K = DeviceUtil.f48146a.K();
        if (z10) {
            ud.b.f68412a.a3(AccountRepo.f43052a.t0(), new AvailableExpansionSku(coinSku, K, K + (coinSku.getRetentionSeconds() * 1000)));
        }
        ud.b.f68412a.b5(TimeUtil.f48175a.f(jk.f.a(new Date())), false);
        ve.h.f68906a.b();
        B9(this, "SkuExpansionDialog", null, new Function1() { // from class: yh.r1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                DialogFragment xa2;
                xa2 = ImmersionActivity.xa(ImmersionActivity.this, (Function0) obj);
                return xa2;
            }
        }, 2, null);
    }

    private final boolean x5() {
        ImmersionParams immersionParams = this.f45270r;
        if (immersionParams != null) {
            q.a aVar = com.startshorts.androidplayer.manager.immersion.feature.q.f42658a;
            if (immersionParams == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mImmersionParams");
                immersionParams = null;
            }
            if (aVar.a(immersionParams) && !ABTestFactory.f42224a.f1().isEnable().invoke().booleanValue()) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void x6() {
        ImmersionAdapter immersionAdapter = this.G;
        if (immersionAdapter != null) {
            immersionAdapter.O(E5());
        }
    }

    private final boolean x7() {
        SmartRefreshLayout smartRefreshLayout = this.I;
        if (smartRefreshLayout != null) {
            return smartRefreshLayout.v();
        }
        return false;
    }

    static /* synthetic */ void x8(ImmersionActivity immersionActivity, ImmersionNotificationType immersionNotificationType, boolean z10, yd.a aVar, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = true;
        }
        if ((i10 & 4) != 0) {
            aVar = null;
        }
        immersionActivity.w8(immersionNotificationType, z10, aVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean x9(ImmersionActivity immersionActivity, Function1 function1, Function0 onDismiss) {
        Intrinsics.checkNotNullParameter(onDismiss, "onDismiss");
        try {
            immersionActivity.O4();
            immersionActivity.Z4(false);
            return ((Boolean) function1.invoke(onDismiss)).booleanValue();
        } catch (Exception e10) {
            immersionActivity.m("startShowDialog exception -> " + e10.getMessage());
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DialogFragment xa(ImmersionActivity immersionActivity, Function0 onDismiss) {
        Intrinsics.checkNotNullParameter(onDismiss, "onDismiss");
        SkuExpansionDialog skuExpansionDialog = new SkuExpansionDialog();
        skuExpansionDialog.r0(immersionActivity.D5());
        skuExpansionDialog.w(new a1(onDismiss));
        return skuExpansionDialog;
    }

    private final void y5(boolean z10) {
        int i10;
        SmartRefreshLayout smartRefreshLayout = this.I;
        if (smartRefreshLayout != null) {
            if (z10) {
                i10 = 0;
            } else {
                i10 = 500;
            }
            smartRefreshLayout.l(i10);
        }
    }

    private final void y6(int i10) {
        ImmersionAdapter immersionAdapter = this.G;
        if (immersionAdapter != null) {
            immersionAdapter.O(i10);
        }
    }

    private final boolean y7() {
        DiscreteSeekBar2 discreteSeekBar2 = this.N;
        if (discreteSeekBar2 != null) {
            return discreteSeekBar2.n();
        }
        return false;
    }

    private final void y8() {
        if (this.f45257e0.isInitialized()) {
            for (com.startshorts.androidplayer.manager.immersion.feature.k kVar : this.f45257e0.getValue()) {
                s("resendPendingFeatureMessage -> " + kVar.b());
                L8(kVar);
            }
            this.f45257e0.getValue().clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit y9(Function0 function0, ImmersionActivity immersionActivity) {
        try {
            function0.invoke();
        } catch (Exception e10) {
            immersionActivity.m("dismissShowingDialog exception -> " + e10.getMessage());
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void ya(final SubsSku subsSku) {
        ud.b.f68412a.b5(TimeUtil.f48175a.f(jk.f.a(new Date())), false);
        ve.h.f68906a.c();
        B9(this, "SubsExpansionDialog", null, new Function1() { // from class: yh.h1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                DialogFragment za2;
                za2 = ImmersionActivity.za(SubsSku.this, this, (Function0) obj);
                return za2;
            }
        }, 2, null);
    }

    private final void z5() {
        SmartRefreshLayout smartRefreshLayout = this.I;
        if (smartRefreshLayout != null) {
            smartRefreshLayout.o(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void z6() {
        A6(E5());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean z7() {
        DiscreteSeekBar2 discreteSeekBar2 = this.N;
        if (discreteSeekBar2 == null || discreteSeekBar2.getVisibility() != 4) {
            return false;
        }
        return true;
    }

    private final void z8(ResetReason resetReason) {
        ImmersionEpisodeManager immersionEpisodeManager;
        e7();
        ViewPager2 viewPager2 = this.F;
        if (viewPager2 != null) {
            viewPager2.setAdapter(this.G);
        }
        ImmersionAdapter immersionAdapter = this.G;
        if (immersionAdapter != null && (immersionEpisodeManager = this.f45259g0) != null) {
            immersionEpisodeManager.x(immersionAdapter, resetReason);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit z9(ImmersionActivity immersionActivity, HashMap hashMap, Function0 function0, Function1 function1, boolean z10) {
        ve.g<HashMap<String, Object>> M5 = immersionActivity.M5();
        ve.c<HashMap<String, Object>> cVar = new ve.c<>(hashMap, function0, function1);
        if (z10) {
            cVar.g();
        }
        M5.m(cVar);
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DialogFragment za(SubsSku subsSku, ImmersionActivity immersionActivity, Function0 onDismiss) {
        Intrinsics.checkNotNullParameter(onDismiss, "onDismiss");
        SubsExpansionDialog subsExpansionDialog = new SubsExpansionDialog();
        subsExpansionDialog.m0(subsSku);
        subsExpansionDialog.k0(immersionActivity.D5());
        subsExpansionDialog.l0(new b1());
        subsExpansionDialog.w(new c1(onDismiss));
        return subsExpansionDialog;
    }

    public final int B5() {
        BaseEpisode D5 = D5();
        if (D5 != null) {
            return D5.getId();
        }
        ImmersionParams immersionParams = this.f45270r;
        ImmersionParams immersionParams2 = null;
        if (immersionParams == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mImmersionParams");
            immersionParams = null;
        }
        if (immersionParams.getType() == 4) {
            ImmersionParams immersionParams3 = this.f45270r;
            if (immersionParams3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mImmersionParams");
            } else {
                immersionParams2 = immersionParams3;
            }
            return immersionParams2.getEpisodeId();
        }
        return -1;
    }

    public final int C5() {
        BaseEpisode D5 = D5();
        if (D5 != null) {
            return D5.getEpisodeNum();
        }
        ImmersionParams immersionParams = this.f45270r;
        ImmersionParams immersionParams2 = null;
        if (immersionParams == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mImmersionParams");
            immersionParams = null;
        }
        if (immersionParams.getType() == 1) {
            ImmersionParams immersionParams3 = this.f45270r;
            if (immersionParams3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mImmersionParams");
            } else {
                immersionParams2 = immersionParams3;
            }
            return immersionParams2.getEpisodeNum();
        }
        return -1;
    }

    public final void H6(int i10) {
        ImmersionAdapter immersionAdapter = this.G;
        if (immersionAdapter != null) {
            immersionAdapter.Q(i10);
        }
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.PageStateActivity
    public void S() {
        ImmersionViewModel N5 = N5();
        N5.w();
        ImmersionParams immersionParams = this.f45270r;
        ImmersionParams immersionParams2 = null;
        if (immersionParams == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mImmersionParams");
            immersionParams = null;
        }
        N5.e0(new c.a(immersionParams));
        ImmersionParams immersionParams3 = this.f45270r;
        if (immersionParams3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mImmersionParams");
            immersionParams3 = null;
        }
        if (immersionParams3.getType() == 7) {
            ImmersionParams immersionParams4 = this.f45270r;
            if (immersionParams4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mImmersionParams");
            } else {
                immersionParams2 = immersionParams4;
            }
            immersionParams2.setType(3);
        }
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.PageStateActivity
    public void U() {
        super.U();
        Q();
        R();
    }

    public final void U8(@NotNull String scene) {
        Intrinsics.checkNotNullParameter(scene, "scene");
        O4();
        BaseEpisode D5 = D5();
        if (D5 == null) {
            return;
        }
        EventManager eventManager = EventManager.f42463a;
        Bundle C = eventManager.C(D5);
        C.putString("scene", scene);
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "share", C, 0L, 4, null);
        IntentUtil.g(IntentUtil.f48164a, this, D5.getShareUrl(), null, 4, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:65:0x008e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0060 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean V4(@org.jetbrains.annotations.NotNull java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 245
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.ui.activity.immersion.ImmersionActivity.V4(java.lang.String):boolean");
    }

    public final void W7() {
        if (!r7()) {
            return;
        }
        c5("immersion_right_sidebar");
    }

    public final void X7() {
        if (!r7()) {
            return;
        }
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        bundle.putString("scene", "immersion");
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "drama_avatar_click", bundle, 0L, 4, null);
        if (ABTestFactory.f42224a.P0().isEnable().invoke().booleanValue()) {
            S9();
        } else {
            M9();
        }
    }

    public final void Y7() {
        if (!r7()) {
            return;
        }
        M9();
    }

    public final void Z7() {
        if (!r7()) {
            return;
        }
        U8("immersion");
    }

    public final void a8(@NotNull ShortsLabel shortsLabel) {
        Intrinsics.checkNotNullParameter(shortsLabel, "shortsLabel");
        Fa(shortsLabel);
    }

    @Override // android.app.Activity
    public void finish() {
        fk.q.f51745a.a();
        O4();
        IImmersionFeature.MessageType messageType = IImmersionFeature.MessageType.ACTIVITY_FINISH;
        HashMap hashMap = new HashMap();
        hashMap.put("episode", D5());
        hashMap.put("invalid_shorts_list", N5().R());
        Unit unit = Unit.f60915a;
        L8(new com.startshorts.androidplayer.manager.immersion.feature.k(messageType, hashMap));
        super.finish();
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.BaseActivity
    public int o() {
        return R$layout.activity_immersion;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        ud.a aVar = ud.a.f68411a;
        if (Intrinsics.areEqual(aVar.q(), Constants.DEEPLINK)) {
            EventManager eventManager = EventManager.f42463a;
            Bundle a10 = jk.b.a(EventManager.x(eventManager, aVar.p(), false, 2, null), eventManager.C(D5()));
            a10.putString("from", aVar.q());
            List<ve.c<HashMap<String, Object>>> k10 = M5().k();
            ArrayList arrayList = new ArrayList(CollectionsKt.z(k10, 10));
            Iterator<T> it = k10.iterator();
            while (it.hasNext()) {
                arrayList.add((HashMap) ((ve.c) it.next()).i());
            }
            a10.putString("dialog", String.valueOf(arrayList));
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "enter_reel_back", a10, 0L, 4, null);
        }
        if (DeviceUtil.f48146a.L() - this.f45266n0 <= 1000) {
            return;
        }
        this.f45267o0 = true;
        this.f45253a0.c();
        if (!ca("immersion_back") && !N9()) {
            super.onBackPressed();
        }
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.PageStateActivity, com.startshorts.androidplayer.ui.activity.base.BaseVDBActivity, com.startshorts.androidplayer.ui.activity.base.BaseActivity, com.hades.aar.activity.IDActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(@Nullable Bundle bundle) {
        String j10;
        AdConfig adConfig;
        boolean z10;
        int i10;
        Integer interval;
        super.onCreate(bundle);
        Logger logger = Logger.f41511a;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("campaignPopularShortsShowed:");
        ud.b bVar = ud.b.f68412a;
        sb2.append(bVar.Z());
        sb2.append(" || campaignInfoParsed:");
        sb2.append(bVar.X());
        logger.e("CampaignNewTag", sb2.toString());
        if (!F7()) {
            return;
        }
        AdNewConfig a10 = ud.a.f68411a.a();
        if (a10 != null && (adConfig = a10.getAdConfig()) != null) {
            FreeEpisodeInt freeEpisodeInt = adConfig.getFreeEpisodeInt();
            if (freeEpisodeInt != null) {
                z10 = freeEpisodeInt.isEnableShow();
            } else {
                z10 = false;
            }
            this.f45287z0 = z10;
            FreeEpisodeInt freeEpisodeInt2 = adConfig.getFreeEpisodeInt();
            if (freeEpisodeInt2 != null && (interval = freeEpisodeInt2.getInterval()) != null) {
                i10 = interval.intValue();
            } else {
                i10 = -1;
            }
            this.A0 = i10;
        }
        if (qe.a.f65321a.value().getOnlyOneImmersionActivity() && (j10 = j()) != null) {
            au.c.d().l(new FinishImmersionActivityEvent(j10));
        }
        this.f45283x0 = AccountRepo.f43052a.t0();
        w5();
        ed.a.f51339a.b(this, true);
        View toolbarView = ((ActivityImmersionBinding) E()).C;
        Intrinsics.checkNotNullExpressionValue(toolbarView, "toolbarView");
        DeviceUtil deviceUtil = DeviceUtil.f48146a;
        jk.b0.g(toolbarView, deviceUtil.J());
        IImmersionFeature.MessageType messageType = IImmersionFeature.MessageType.ACTIVITY_ON_CREATE;
        HashMap hashMap = new HashMap();
        hashMap.put("immersion_job_manager", this.f45253a0);
        Unit unit = Unit.f60915a;
        L8(new com.startshorts.androidplayer.manager.immersion.feature.k(messageType, hashMap));
        K6();
        V7();
        O6();
        F6();
        S();
        a7();
        this.G0 = System.currentTimeMillis();
        ImmersionParams immersionParams = null;
        if (!x5()) {
            ImmersionViewModel N5 = N5();
            ImmersionParams immersionParams2 = this.f45270r;
            if (immersionParams2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mImmersionParams");
                immersionParams2 = null;
            }
            N5.e0(new c.h(immersionParams2.getShortsInfo().getShortsId()));
        } else {
            CampaignRepo.f43678a.E();
        }
        ImmersionParams immersionParams3 = this.f45270r;
        if (immersionParams3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mImmersionParams");
        } else {
            immersionParams = immersionParams3;
        }
        if (immersionParams.getShowEpisodeListDialog()) {
            I9(1000L);
        }
        sa();
        ImmersionRepo.f44129a.f();
        Ad2PayPresent.f42733a.v();
        if (deviceUtil.n().length() > 0) {
            N5().e0(new c.b());
        }
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.PageStateActivity, com.startshorts.androidplayer.ui.activity.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        ImmersionEpisodeManager immersionEpisodeManager;
        ImmersionViewPagerManager immersionViewPagerManager;
        if (qe.a.f65321a.value().getUnregisterOnPageChangeCallbackOnPause() && (immersionViewPagerManager = this.H) != null) {
            immersionViewPagerManager.s(false, "onPause");
        }
        super.onPause();
        K8(IImmersionFeature.MessageType.ACTIVITY_ON_PAUSE);
        c8();
        BaseEpisode D5 = D5();
        if (D5 != null && (immersionEpisodeManager = this.f45259g0) != null) {
            immersionEpisodeManager.n(D5);
        }
        t6();
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.PageStateActivity, com.startshorts.androidplayer.ui.activity.base.PermissionActivity, com.startshorts.androidplayer.ui.activity.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        DailyWatchDramaTaskView dailyWatchDramaTaskView;
        ImmersionViewPagerManager immersionViewPagerManager;
        if (qe.a.f65321a.value().getUnregisterOnPageChangeCallbackOnPause() && (immersionViewPagerManager = this.H) != null) {
            immersionViewPagerManager.s(true, "onResume");
        }
        super.onResume();
        K8(IImmersionFeature.MessageType.ACTIVITY_ON_RESUME);
        if (this.f45272s) {
            this.f45272s = false;
        } else {
            boolean o72 = o7();
            this.W = false;
            this.F0 = true;
            s("onResume -> mUserPausePlay(" + this.W + ") episodeUrlExpired(" + o72 + ')');
            if (o72) {
                this.f45256d0 = null;
                Y4();
                W5();
            } else {
                List<BaseEpisode> I5 = I5();
                if (I5 != null && !I5.isEmpty() && !V4("onResume")) {
                    Function0<Unit> function0 = this.f45256d0;
                    if (function0 != null) {
                        function0.invoke();
                    }
                    this.f45256d0 = null;
                    R4();
                    y8();
                    va();
                    if (!this.H0 && (dailyWatchDramaTaskView = this.f45275t0) != null) {
                        dailyWatchDramaTaskView.V();
                    }
                } else {
                    this.f45256d0 = null;
                    Y4();
                    return;
                }
            }
        }
        m1.f68462a.d();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.startshorts.androidplayer.ui.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        dk.f fVar = this.f45277u0;
        if (fVar != null) {
            fVar.i();
        }
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.BaseActivity
    public boolean q() {
        return true;
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.PageStateActivity, com.startshorts.androidplayer.ui.activity.base.PermissionActivity, com.startshorts.androidplayer.ui.activity.base.BaseActivity
    @NotNull
    public String r() {
        return "ImmersionActivity";
    }

    public final boolean r7() {
        if (!D7() && !q7() && !y7()) {
            return true;
        }
        return false;
    }

    @au.l(threadMode = ThreadMode.MAIN)
    public final void receiveAppStateEvent(@NotNull AppStateEvent event) {
        BaseEpisode D5;
        Intrinsics.checkNotNullParameter(event, "event");
        if (event.getState() == 2 && Intrinsics.areEqual(kf.b.f60715a.c(), ImmersionActivity.class.getSimpleName()) && (D5 = D5()) != null) {
            ShortPlayNotification shortPlayNotification = new ShortPlayNotification();
            shortPlayNotification.setShortId(Integer.valueOf(D5.getShortPlayId()));
            shortPlayNotification.setShortPlayCode(D5.getShortPlayCode());
            shortPlayNotification.setTitle(D5.getCheckedShortPlayName());
            shortPlayNotification.setDramaNum(Integer.valueOf(D5.getEpisodeNum()));
            shortPlayNotification.setCover(D5.getCoverId());
            shortPlayNotification.setEpisodeId(Integer.valueOf(D5.getId()));
            shortPlayNotification.setVideoType(Integer.valueOf(D5.getVideoType()));
            shortPlayNotification.setUpack(D5.getUpack());
            PushManager.f42838a.h(shortPlayNotification);
        }
    }

    @au.l(threadMode = ThreadMode.MAIN)
    public final void receiveCampaignRefreshSuccessEvent(@NotNull CampaignRefreshSuccessEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        s("receive CampaignRefreshSuccessEvent");
        if (!this.B0) {
            this.B0 = true;
            this.C0 = true;
            CoroutineUtil.g(CoroutineUtil.f48072a, 1000L, null, new Function0() { // from class: yh.d1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit k82;
                    k82 = ImmersionActivity.k8(ImmersionActivity.this);
                    return k82;
                }
            }, 2, null);
        }
    }

    @au.l(threadMode = ThreadMode.MAIN)
    public final void receiveDailyWatchDramaCoinEvent(@NotNull DailyWatchDramaReceiveCoinEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        s("receive receiveDailyWatchDramaCoinEvent");
        dk.f fVar = this.f45277u0;
        if (fVar != null) {
            fVar.h();
        }
    }

    @au.l(threadMode = ThreadMode.MAIN)
    public final void receiveFinishImmersionActivityEvent(@NotNull FinishImmersionActivityEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        s("receive FinishImmersionActivityEvent -> current(" + j() + ") except(" + event.getExceptActivityId() + ')');
        if (!Intrinsics.areEqual(event.getExceptActivityId(), j())) {
            this.f45274t = true;
            finish();
        }
    }

    @au.l(threadMode = ThreadMode.MAIN)
    public final void receiveRefreshAccountEvent(@NotNull RefreshAccountEvent event) {
        boolean z10;
        nj.a aVar;
        Intrinsics.checkNotNullParameter(event, "event");
        s("receive RefreshAccountEvent");
        String t02 = AccountRepo.f43052a.t0();
        String str = this.f45283x0;
        if (str != null && !Intrinsics.areEqual(t02, str)) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.f45283x0 = t02;
        V7();
        j6();
        X4(-1);
        K8(IImmersionFeature.MessageType.CANCEL_LONG_CLICK_SPEED);
        kb(true);
        U();
        if (k7()) {
            int childCount = W1(this).f38295s.getChildCount();
            int i10 = 0;
            while (true) {
                if (i10 < childCount) {
                    View childAt = W1(this).f38295s.getChildAt(i10);
                    if (childAt instanceof ImmersionClearScreenView) {
                        aVar = (nj.a) childAt;
                        break;
                    }
                    i10++;
                } else {
                    aVar = null;
                    break;
                }
            }
            ImmersionClearScreenView immersionClearScreenView = (ImmersionClearScreenView) aVar;
            if (immersionClearScreenView != null) {
                immersionClearScreenView.performClick();
            }
        }
        f6();
        ImmersionParams immersionParams = this.f45270r;
        if (immersionParams == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mImmersionParams");
            immersionParams = null;
        }
        immersionParams.setType(3);
        immersionParams.setEpisodeNum(-1);
        immersionParams.setEpisodeId(-1);
        immersionParams.setEpisodeList(null);
        immersionParams.setShowEpisodeListDialog(false);
        immersionParams.setPushId(null);
        immersionParams.setRedeemCode(null);
        BaseEpisode D5 = D5();
        if (D5 != null) {
            if (!z10 && !D5.isTrailer()) {
                immersionParams.setType(1);
                immersionParams.setEpisodeNum(D5.getEpisodeNum());
            }
            ImmersionShortsInfo immersionShortsInfo = new ImmersionShortsInfo();
            immersionShortsInfo.setVideoType(D5.getVideoType());
            immersionShortsInfo.setShortsId(D5.getShortPlayId());
            if (D5.isTrailer()) {
                immersionShortsInfo.setShortPlayCode(String.valueOf(D5.getShortPlayId()));
            } else {
                immersionShortsInfo.setShortPlayCode(D5.getShortPlayCode());
            }
            immersionShortsInfo.setShortsName(D5.getShortPlayName());
            immersionShortsInfo.setCover(D5.getCoverId());
            immersionShortsInfo.setBindShortsId(D5.getBindShortPlayId());
            immersionShortsInfo.setUpack(D5.getUpack());
            immersionParams.setShortsInfo(immersionShortsInfo);
        }
        z8(ResetReason.ACCOUNT_CHANGED);
        ImmersionViewPagerManager immersionViewPagerManager = this.H;
        if (immersionViewPagerManager != null) {
            immersionViewPagerManager.u();
        }
        S();
    }

    @au.l(threadMode = ThreadMode.MAIN)
    public final void receiveRefreshCollectEvent(@NotNull RefreshShortsCollectEvent event) {
        BaseEpisode D5;
        Intrinsics.checkNotNullParameter(event, "event");
        s("receive RefreshShortsCollectEvent -> " + event);
        List<BaseEpisode> I5 = I5();
        if (I5 == null || (D5 = D5()) == null) {
            return;
        }
        synchronized (I5) {
            try {
                int i10 = 0;
                for (Object obj : I5) {
                    int i11 = i10 + 1;
                    if (i10 < 0) {
                        CollectionsKt.y();
                    }
                    BaseEpisode baseEpisode = (BaseEpisode) obj;
                    if (baseEpisode.getShortPlayId() == event.getShortsId()) {
                        if (event.getCollect()) {
                            baseEpisode.setCollected();
                        } else {
                            baseEpisode.cancelCollected();
                        }
                    }
                    i10 = i11;
                }
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (event.getShortsId() == D5.getShortPlayId()) {
            bb(event.getCollect());
        }
    }

    @au.l(threadMode = ThreadMode.MAIN)
    public final void receiveScrollToEpisodeEvent(@NotNull ScrollToEpisodeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        s("receive ScrollToEpisodeEvent -> " + event);
        C8(event.getEpisode().getShortPlayId(), event.getEpisode().getId(), event.getAction());
    }

    @au.l(threadMode = ThreadMode.MAIN)
    public final void receiveUserRechargedEvent(@NotNull UserRechargedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        s("receive UserRechargedEvent");
        IImmersionFeature.MessageType messageType = IImmersionFeature.MessageType.USER_RECHARGED;
        HashMap hashMap = new HashMap();
        ImmersionParams immersionParams = this.f45270r;
        if (immersionParams == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mImmersionParams");
            immersionParams = null;
        }
        hashMap.put("immersion_params", immersionParams);
        Unit unit = Unit.f60915a;
        L8(new com.startshorts.androidplayer.manager.immersion.feature.k(messageType, hashMap));
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.PageStateActivity, com.startshorts.androidplayer.ui.activity.base.BaseVDBActivity, com.startshorts.androidplayer.ui.activity.base.BaseActivity
    public void v() {
        Object obj;
        Boolean bool;
        int i10;
        Object obj2;
        super.v();
        s("release -> mFinishedByOtherImmersionActivity(" + this.f45274t + ')');
        if (this.f45270r != null) {
            IImmersionFeature.MessageType messageType = IImmersionFeature.MessageType.ACTIVITY_ON_RELEASE;
            HashMap hashMap = new HashMap();
            ImmersionParams immersionParams = this.f45270r;
            if (immersionParams == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mImmersionParams");
                immersionParams = null;
            }
            hashMap.put("immersion_params", immersionParams);
            if (this.f45274t) {
                bool = Boolean.FALSE;
            } else {
                Iterator it = this.f45263k0.iterator();
                while (true) {
                    if (it.hasNext()) {
                        obj = it.next();
                        if (((IImmersionFeature) obj) instanceof com.startshorts.androidplayer.manager.immersion.feature.l) {
                            break;
                        }
                    } else {
                        obj = null;
                        break;
                    }
                }
                if (!(obj instanceof com.startshorts.androidplayer.manager.immersion.feature.l)) {
                    obj = null;
                }
                com.startshorts.androidplayer.manager.immersion.feature.l lVar = (com.startshorts.androidplayer.manager.immersion.feature.l) obj;
                if (lVar != null) {
                    bool = Boolean.valueOf(lVar.f());
                } else {
                    bool = null;
                }
            }
            hashMap.put("show_mini_window", bool);
            hashMap.put("episode", D5());
            ImmersionEpisodeManager immersionEpisodeManager = this.f45259g0;
            if (immersionEpisodeManager != null) {
                i10 = immersionEpisodeManager.i();
            } else {
                i10 = 0;
            }
            hashMap.put("real_watch_time", Integer.valueOf(i10));
            Iterator it2 = this.f45263k0.iterator();
            while (true) {
                if (it2.hasNext()) {
                    obj2 = it2.next();
                    if (((IImmersionFeature) obj2) instanceof com.startshorts.androidplayer.manager.immersion.feature.n) {
                        break;
                    }
                } else {
                    obj2 = null;
                    break;
                }
            }
            if (!(obj2 instanceof com.startshorts.androidplayer.manager.immersion.feature.n)) {
                obj2 = null;
            }
            com.startshorts.androidplayer.manager.immersion.feature.n nVar = (com.startshorts.androidplayer.manager.immersion.feature.n) obj2;
            if (nVar != null) {
                hashMap.put("play_resolution", nVar.l());
            }
            hashMap.put("finished_by_other_immersion_activity", Boolean.valueOf(this.f45274t));
            Unit unit = Unit.f60915a;
            L8(new com.startshorts.androidplayer.manager.immersion.feature.k(messageType, hashMap));
        } else {
            s("release -> mImmersionParams not initialized, skipping feature message");
        }
        if (this.f45278v.isInitialized()) {
            Observer<? super com.startshorts.androidplayer.viewmodel.player.c> observer = this.f45280w;
            if (observer != null) {
                s("remove mPlayerState observer");
                this.f45278v.getValue().H().removeObserver(observer);
            }
            Observer<? super com.startshorts.androidplayer.viewmodel.player.a> observer2 = this.f45282x;
            if (observer2 != null) {
                s("remove mPlaybackTimeState observer");
                this.f45278v.getValue().G().removeObserver(observer2);
            }
        }
        Observer<? super com.startshorts.androidplayer.viewmodel.immersion.d> observer3 = this.f45286z;
        if (observer3 != null) {
            s("remove mImmersionState observer");
            N5().Q().removeObserver(observer3);
        }
        this.f45253a0.i();
        AccountRepo.f43052a.d1(this.f45258f0);
        ImmersionViewPagerManager immersionViewPagerManager = this.H;
        if (immersionViewPagerManager != null) {
            immersionViewPagerManager.t();
        }
        ImmersionEpisodeManager immersionEpisodeManager2 = this.f45259g0;
        if (immersionEpisodeManager2 != null) {
            immersionEpisodeManager2.t();
        }
        for (IImmersionFeature iImmersionFeature : this.f45263k0) {
            iImmersionFeature.release();
        }
        this.f45263k0.clear();
        ImmersionRepo.f44129a.A(null);
        DiscreteSeekBar2 discreteSeekBar2 = this.N;
        if (discreteSeekBar2 != null) {
            discreteSeekBar2.f();
        }
        pf.k.f64864a.g();
        ud.a.f68411a.s0(null);
        this.f45262j0.clear();
        this.I0 = null;
    }

    /* compiled from: ImmersionActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class i implements l.a {
        i() {
        }

        @Override // com.startshorts.androidplayer.manager.immersion.feature.l.a
        public void a(String from, boolean z10, boolean z11, IImmersionFeature.MessageType state) {
            Intrinsics.checkNotNullParameter(from, "from");
            Intrinsics.checkNotNullParameter(state, "state");
            BaseEpisode D5 = ImmersionActivity.this.D5();
            if (D5 != null && ImmersionActivity.this.p7()) {
                if (!D5.isTrailer() || !Intrinsics.areEqual(D5.getShortPlayIsRelease(), Boolean.FALSE)) {
                    if (z10 || !z11) {
                        ImmersionActivity.this.X9(from, D5);
                    }
                }
            }
        }

        @Override // com.startshorts.androidplayer.manager.immersion.feature.l.a
        public void b() {
        }
    }

    /* compiled from: ImmersionActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends CountDownTimer {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ImmersionActivity f45296a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(long j10, ImmersionActivity immersionActivity) {
            super(j10, 1000L);
            this.f45296a = immersionActivity;
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            this.f45296a.Z4(true);
            this.f45296a.D0 = null;
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j10) {
        }
    }

    /* compiled from: ImmersionActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b0 implements ImmersionViewPagerManager.b {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Ref.ObjectRef<ImmersionViewPagerManager.DraggingDirection> f45298b;

        b0(Ref.ObjectRef<ImmersionViewPagerManager.DraggingDirection> objectRef) {
            this.f45298b = objectRef;
        }

        @Override // com.startshorts.androidplayer.manager.immersion.core.ImmersionViewPagerManager.b
        public void a(boolean z10) {
            try {
                ImmersionActivity.this.Sa(z10);
            } catch (Exception e10) {
                ImmersionActivity immersionActivity = ImmersionActivity.this;
                immersionActivity.m("tryLoadNextEpisodes exception -> " + e10.getMessage());
            }
        }

        @Override // com.startshorts.androidplayer.manager.immersion.core.ImmersionViewPagerManager.b
        public void c(int i10, int i11, boolean z10, boolean z11) {
            int i12;
            ImmersionActivity.this.U4(i10);
            ImmersionActivity.this.T4(i10);
            ImmersionEpisodeManager immersionEpisodeManager = ImmersionActivity.this.f45259g0;
            if (immersionEpisodeManager != null) {
                immersionEpisodeManager.o(z10, z11);
            }
            ImmersionActivity.this.H6(i10);
            ImmersionActivity immersionActivity = ImmersionActivity.this;
            IImmersionFeature.MessageType messageType = IImmersionFeature.MessageType.EPISODE_SELECTED;
            HashMap hashMap = new HashMap();
            hashMap.put("episode", ImmersionActivity.this.D5());
            Unit unit = Unit.f60915a;
            immersionActivity.L8(new com.startshorts.androidplayer.manager.immersion.feature.k(messageType, hashMap));
            if (i11 != -1) {
                BaseEpisode D5 = ImmersionActivity.this.D5();
                boolean z12 = false;
                if (D5 != null) {
                    i12 = D5.getId();
                } else {
                    i12 = 0;
                }
                if (!ImmersionActivity.this.f45262j0.contains(Integer.valueOf(i12))) {
                    ImmersionActivity.this.f45262j0.add(Integer.valueOf(i12));
                }
                if (ImmersionActivity.this.f45262j0.size() > ImmersionActivity.this.A0) {
                    z12 = true;
                }
                ImmersionActivity immersionActivity2 = ImmersionActivity.this;
                IImmersionFeature.MessageType messageType2 = IImmersionFeature.MessageType.SWITCH_EPISODE;
                HashMap hashMap2 = new HashMap();
                ImmersionActivity immersionActivity3 = ImmersionActivity.this;
                hashMap2.put("episode", immersionActivity3.D5());
                hashMap2.put("immersion_job_manager", immersionActivity3.f45253a0);
                hashMap2.put("is_enable_interstitial_ad", Boolean.valueOf(immersionActivity3.f45287z0));
                hashMap2.put("is_show_interstitial_ad", Boolean.valueOf(z12));
                immersionActivity2.L8(new com.startshorts.androidplayer.manager.immersion.feature.k(messageType2, hashMap2));
                if (z12) {
                    ImmersionActivity.this.f45262j0.clear();
                    ImmersionActivity.this.f45262j0.add(Integer.valueOf(i12));
                }
            }
        }

        @Override // com.startshorts.androidplayer.manager.immersion.core.ImmersionViewPagerManager.b
        public void d(int i10, boolean z10) {
            BaseEpisode D5 = ImmersionActivity.this.D5();
            if (D5 != null) {
                ImmersionActivity immersionActivity = ImmersionActivity.this;
                if (D5.isLocked() && !immersionActivity.V4("onPageSelectedAndStopScroll")) {
                    immersionActivity.Va(D5, false, immersionActivity.f45260h0);
                }
            }
            if (ImmersionActivity.this.z7()) {
                ImmersionActivity.this.ua();
            }
            if (ImmersionActivity.this.g7()) {
                ImmersionActivity.this.i9();
            }
        }

        @Override // com.startshorts.androidplayer.manager.immersion.core.ImmersionViewPagerManager.b
        public void e() {
            ImmersionActivity.this.s("onUserDraggingEnd");
            this.f45298b.element = null;
            if (ImmersionActivity.this.z7()) {
                ImmersionActivity.this.ua();
            }
            if (ImmersionActivity.this.g7()) {
                ImmersionActivity.this.i9();
            }
        }

        @Override // com.startshorts.androidplayer.manager.immersion.core.ImmersionViewPagerManager.b
        public void f() {
            ImmersionActivity.this.s("onUserDraggingStart");
            this.f45298b.element = null;
            ImmersionAdapter immersionAdapter = ImmersionActivity.this.G;
            if (immersionAdapter != null) {
                immersionAdapter.G(ImmersionActivity.this.E5());
            }
            ImmersionActivity.this.K8(IImmersionFeature.MessageType.PAGE_USER_DRAGGING_START);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.startshorts.androidplayer.manager.immersion.core.ImmersionViewPagerManager.b
        public void g(ImmersionViewPagerManager.DraggingDirection direction) {
            Intrinsics.checkNotNullParameter(direction, "direction");
            ImmersionActivity immersionActivity = ImmersionActivity.this;
            immersionActivity.s("onUserDraggingDirectionChanged -> " + direction);
            Ref.ObjectRef<ImmersionViewPagerManager.DraggingDirection> objectRef = this.f45298b;
            if (objectRef.element == null) {
                objectRef.element = direction;
                if (ImmersionActivity.this.E5() == 0 && direction == ImmersionViewPagerManager.DraggingDirection.DOWN) {
                    return;
                }
                if (ImmersionActivity.this.A7()) {
                    ImmersionActivity.this.s6(4);
                }
                if (ImmersionActivity.this.h7()) {
                    ImmersionActivity.h6(ImmersionActivity.this, 4, false, 2, null);
                }
            }
        }

        @Override // com.startshorts.androidplayer.manager.immersion.core.ImmersionViewPagerManager.b
        public void h(boolean z10) {
            try {
                ImmersionActivity.this.Ta(z10);
            } catch (Exception e10) {
                ImmersionActivity immersionActivity = ImmersionActivity.this;
                immersionActivity.m("tryLoadPrevEpisodes exception -> " + e10.getMessage());
            }
        }

        @Override // com.startshorts.androidplayer.manager.immersion.core.ImmersionViewPagerManager.b
        public void b(int i10) {
        }
    }
}
