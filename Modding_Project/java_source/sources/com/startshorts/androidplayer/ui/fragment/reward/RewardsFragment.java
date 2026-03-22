package com.startshorts.androidplayer.ui.fragment.reward;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.provider.Settings;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import bf.e;
import com.airbnb.lottie.LottieAnimationView;
import com.appsflyer.AdRevenueScheme;
import com.hades.aar.auth.base.AuthType;
import com.hades.aar.pagestate.State;
import com.hades.aar.pagestate.StateViewGroup;
import com.huawei.hms.support.api.entity.common.CommonConstant;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.adapter.base.BaseAdapter;
import com.startshorts.androidplayer.adapter.rewards.RewardsModuleAdapter;
import com.startshorts.androidplayer.bean.ad.WatchAdBonusTask;
import com.startshorts.androidplayer.bean.auth.AuthReason;
import com.startshorts.androidplayer.bean.bundle.BooleanBundle;
import com.startshorts.androidplayer.bean.bundle.IntBundle;
import com.startshorts.androidplayer.bean.bundle.StringBundle;
import com.startshorts.androidplayer.bean.checkin.CheckInInfo;
import com.startshorts.androidplayer.bean.checkin.NewbieWatchBonus;
import com.startshorts.androidplayer.bean.checkin.NewbieWatchTask;
import com.startshorts.androidplayer.bean.checkin.SignInAdInfoResult;
import com.startshorts.androidplayer.bean.checkin.WatchAdNumber;
import com.startshorts.androidplayer.bean.eventbus.AppStateEvent;
import com.startshorts.androidplayer.bean.eventbus.BindSuccessEvent;
import com.startshorts.androidplayer.bean.eventbus.DailyWatchDramaReceiveCoinEvent;
import com.startshorts.androidplayer.bean.eventbus.RefreshAccountEvent;
import com.startshorts.androidplayer.bean.eventbus.RewardsModuleRefreshEvent;
import com.startshorts.androidplayer.bean.eventbus.UpdateMainTabEvent;
import com.startshorts.androidplayer.bean.reward.RewardsModule;
import com.startshorts.androidplayer.bean.subs.Ad2PayConfig;
import com.startshorts.androidplayer.bean.tab.MainTab;
import com.startshorts.androidplayer.bean.task.Task;
import com.startshorts.androidplayer.databinding.FragmentRewardsBinding;
import com.startshorts.androidplayer.manager.act.ActResourceManager;
import com.startshorts.androidplayer.manager.ad.AdManager;
import com.startshorts.androidplayer.manager.auth.FirebaseAuthManager;
import com.startshorts.androidplayer.manager.configure.abtest.ABTestFactory;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.manager.purchase.Ad2PayPresent;
import com.startshorts.androidplayer.manager.push.PushManager;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.repo.campaign.CampaignRepo;
import com.startshorts.androidplayer.repo.notification.NotificationRepo;
import com.startshorts.androidplayer.repo.rewards.RewardsRepo;
import com.startshorts.androidplayer.ui.activity.MainActivity;
import com.startshorts.androidplayer.ui.activity.ad.ThirdAdActivity;
import com.startshorts.androidplayer.ui.activity.base.FragmentContainer;
import com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment;
import com.startshorts.androidplayer.ui.fragment.base.ListFragment;
import com.startshorts.androidplayer.ui.fragment.checkin.CheckInFailedDialog;
import com.startshorts.androidplayer.ui.fragment.checkin.CheckInSuccessDialog;
import com.startshorts.androidplayer.ui.fragment.purchase.Ad2CoinsDialog;
import com.startshorts.androidplayer.ui.fragment.purchase.Ad2SubscribeDialog;
import com.startshorts.androidplayer.ui.fragment.reward.RewardsFragment;
import com.startshorts.androidplayer.ui.view.pagestate.SNetworkErrorView;
import com.startshorts.androidplayer.ui.view.pagestate.SOtherErrorView;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.utils.ext.FragmentExtKt;
import com.startshorts.androidplayer.viewmodel.reward.RewardsViewModel;
import com.startshorts.androidplayer.viewmodel.reward.a;
import com.startshorts.androidplayer.viewmodel.reward.b;
import com.startshorts.androidplayer.viewmodel.reward.c;
import com.startshorts.androidplayer.viewmodel.reward.d;
import com.startshorts.androidplayer.viewmodel.reward.i;
import com.startshorts.androidplayer.viewmodel.reward.j;
import com.startshorts.androidplayer.viewmodel.reward.k;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import ji.a;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RewardsFragment.kt */
@Metadata
@SuppressLint({"NotifyDataSetChanged"})
@SourceDebugExtension({"SMAP\nRewardsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RewardsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment\n+ 2 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt\n*L\n1#1,1701:1\n15#2,9:1702\n15#2,9:1711\n15#2,9:1720\n15#2,9:1729\n15#2,9:1738\n15#2,9:1747\n15#2,9:1756\n15#2,9:1765\n15#2,9:1774\n15#2,9:1783\n15#2,9:1792\n15#2,9:1801\n15#2,9:1810\n15#2,9:1819\n15#2,9:1828\n15#2,9:1837\n15#2,9:1846\n15#2,9:1855\n15#2,9:1864\n15#2,9:1873\n15#2,9:1882\n*S KotlinDebug\n*F\n+ 1 RewardsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment\n*L\n464#1:1702,9\n723#1:1711,9\n796#1:1720,9\n823#1:1729,9\n889#1:1738,9\n916#1:1747,9\n941#1:1756,9\n960#1:1765,9\n991#1:1774,9\n1073#1:1783,9\n1135#1:1792,9\n1362#1:1801,9\n1390#1:1810,9\n1412#1:1819,9\n1448#1:1828,9\n1461#1:1837,9\n1477#1:1846,9\n181#1:1855,9\n189#1:1864,9\n206#1:1873,9\n839#1:1882,9\n*E\n"})
/* loaded from: classes7.dex */
public final class RewardsFragment extends ListFragment<RewardsModule, FragmentRewardsBinding> {
    @NotNull
    public static final a Y = new a(null);
    @NotNull
    private static String Z;
    @Nullable
    private String D;
    private boolean E;
    private boolean F;
    @Nullable
    private String I;
    @Nullable
    private hi.b J;
    @Nullable
    private WatchAdBonusTask K;
    private long L;
    @Nullable
    private SignInAdInfoResult M;
    private boolean P;
    @Nullable
    private Task Q;
    private boolean R;
    @Nullable
    private Task S;
    private int U;
    @Nullable
    private CheckInSuccessDialog V;
    @Nullable
    private CheckInFailedDialog W;
    private float X;
    @NotNull
    private final RewardsFragment$mPropertyObserver$1 A = new RewardsFragment$mPropertyObserver$1(this);
    @NotNull
    private final ms.i B = kotlin.c.b(new Function0() { // from class: vi.h
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            RewardsViewModel s22;
            s22 = RewardsFragment.s2(RewardsFragment.this);
            return s22;
        }
    });
    @NotNull
    private final ms.i<FirebaseAuthManager> C = kotlin.c.b(new Function0() { // from class: vi.i
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            FirebaseAuthManager q22;
            q22 = RewardsFragment.q2();
            return q22;
        }
    });
    @NotNull
    private final ms.i G = kotlin.c.b(new Function0() { // from class: vi.j
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            ve.g r22;
            r22 = RewardsFragment.r2();
            return r22;
        }
    });
    private boolean H = true;
    @NotNull
    private String N = "";
    private int O = -1;
    private boolean T = true;

    /* compiled from: RewardsFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ void d(a aVar, Context context, String str, boolean z10, Boolean bool, Boolean bool2, int i10, Object obj) {
            Boolean bool3;
            Boolean bool4;
            if ((i10 & 8) != 0) {
                bool3 = null;
            } else {
                bool3 = bool;
            }
            if ((i10 & 16) != 0) {
                bool4 = null;
            } else {
                bool4 = bool2;
            }
            aVar.c(context, str, z10, bool3, bool4);
        }

        @NotNull
        public final String a() {
            return RewardsFragment.Z;
        }

        public final void b(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            RewardsFragment.Z = str;
        }

        public final void c(@NotNull Context context, @NotNull String from, boolean z10, @Nullable Boolean bool, @Nullable Boolean bool2) {
            boolean z11;
            boolean z12;
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(from, "from");
            if (z10) {
                FragmentContainer.a aVar = FragmentContainer.f45006p;
                String j10 = com.startshorts.androidplayer.ui.fragment.a.f45609a.j();
                StringBundle stringBundle = new StringBundle("from", from);
                IntBundle a10 = aVar.a();
                IntBundle intBundle = new IntBundle("fragment_container_top_margin", 0);
                if (bool != null) {
                    z11 = bool.booleanValue();
                } else {
                    z11 = false;
                }
                BooleanBundle booleanBundle = new BooleanBundle("isLocateWatchTaskModule", z11);
                if (bool2 != null) {
                    z12 = bool2.booleanValue();
                } else {
                    z12 = false;
                }
                aVar.b(context, j10, stringBundle, a10, intBundle, booleanBundle, new BooleanBundle("isFromHomeCheckInDialog", z12));
                return;
            }
            au.c.d().l(new UpdateMainTabEvent(MainTab.Type.REWARDS, false, from, null, 10, null));
        }

        private a() {
        }
    }

    /* compiled from: RewardsFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a1 implements a.b {
        a1() {
            RewardsFragment.this = r1;
        }

        @Override // ji.a.b
        public void a() {
            ud.a.f68411a.q0(true);
            mk.c cVar = mk.c.f62521a;
            FragmentActivity requireActivity = RewardsFragment.this.requireActivity();
            Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
            cVar.f(requireActivity);
        }
    }

    /* compiled from: FragmentExt.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 RewardsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment\n*L\n1#1,20:1\n1463#2,8:21\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class b implements Function0<Unit> {

        /* renamed from: b */
        final /* synthetic */ Task f46669b;

        public b(Task task) {
            RewardsFragment.this = r1;
            this.f46669b = task;
        }

        public final void a() {
            if (!Settings.canDrawOverlays(RewardsFragment.this.requireContext())) {
                RewardsFragment.this.L2(this.f46669b);
            } else {
                jk.o.b(RewardsFragment.this.d2().N(), j.l.f49206a);
            }
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            a();
            return Unit.f60915a;
        }
    }

    /* compiled from: FragmentExt.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 RewardsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment\n*L\n1#1,20:1\n841#2,23:21\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class b0 implements Function0<Unit> {

        /* renamed from: a */
        final /* synthetic */ WatchAdBonusTask f46670a;

        /* renamed from: b */
        final /* synthetic */ RewardsFragment f46671b;

        public b0(WatchAdBonusTask watchAdBonusTask, RewardsFragment rewardsFragment) {
            this.f46670a = watchAdBonusTask;
            this.f46671b = rewardsFragment;
        }

        public final void a() {
            Ad2PayPresent.f42733a.z();
            String l10 = RewardsRepo.f44515a.l();
            ud.b bVar = ud.b.f68412a;
            WatchAdNumber d22 = bVar.d2(this.f46670a.getTaskId());
            if (d22 == null) {
                d22 = new WatchAdNumber(l10, 1);
            } else if (Intrinsics.areEqual(d22.getDay(), l10)) {
                d22.setCount(d22.getCount() + 1);
            } else {
                d22.setCount(1);
            }
            bVar.q5(this.f46670a.getTaskId(), d22);
            com.startshorts.androidplayer.manager.configure.ad.c.f42340a.n();
            if (d22.getCount() >= this.f46670a.getConditionValue()) {
                this.f46671b.d2().Q(new c.e(this.f46670a, this.f46671b.D, null, 4, null));
            }
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            a();
            return Unit.f60915a;
        }
    }

    /* compiled from: FragmentExt.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 RewardsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment\n*L\n1#1,20:1\n466#2,5:21\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class b1 implements Function0<Unit> {
        public b1() {
            RewardsFragment.this = r1;
        }

        public final void a() {
            RewardsFragment rewardsFragment = RewardsFragment.this;
            Context requireContext = RewardsFragment.this.requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
            hi.b bVar = new hi.b(requireContext);
            bVar.setCancelable(false);
            bVar.show();
            rewardsFragment.J = bVar;
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            a();
            return Unit.f60915a;
        }
    }

    /* compiled from: FragmentExt.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 RewardsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment\n*L\n1#1,20:1\n725#2,16:21\n767#2:37\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class d implements Function0<Unit> {

        /* renamed from: a */
        final /* synthetic */ Function0 f46673a;

        /* renamed from: b */
        final /* synthetic */ RewardsFragment f46674b;

        public d(Function0 function0, RewardsFragment rewardsFragment) {
            this.f46673a = function0;
            this.f46674b = rewardsFragment;
        }

        public final void a() {
            Ad2PayConfig u10 = Ad2PayPresent.f42733a.u();
            if (u10 != null && (u10.getSkuResp() != null || u10.getSubscribeResp() != null)) {
                this.f46674b.c2().m(new ve.c(null, null, new f(new g(new AtomicBoolean(false), this.f46673a), u10), 3, null));
                return;
            }
            Function0 function0 = this.f46673a;
            if (function0 != null) {
                function0.invoke();
            }
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            a();
            return Unit.f60915a;
        }
    }

    /* compiled from: FragmentExt.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 RewardsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,20:1\n1365#2,5:21\n1370#2,11:29\n2632#3,3:26\n*S KotlinDebug\n*F\n+ 1 RewardsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment\n*L\n1369#1:26,3\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class d0 implements Function0<Unit> {
        public d0() {
            RewardsFragment.this = r1;
        }

        public final void a() {
            List<Integer> arrayList;
            Task task = RewardsFragment.this.Q;
            if (task != null) {
                int taskType = task.getTaskType();
                String t02 = AccountRepo.f43052a.t0();
                List<Integer> x12 = ud.b.f68412a.x1(t02);
                if (x12 == null || (arrayList = CollectionsKt.g1(x12)) == null) {
                    arrayList = new ArrayList<>();
                }
                List<Integer> list = arrayList;
                if (!(list instanceof Collection) || !list.isEmpty()) {
                    for (Number number : list) {
                        if (number.intValue() == taskType) {
                            break;
                        }
                    }
                }
                arrayList.add(Integer.valueOf(taskType));
                ud.b.f68412a.K4(t02, arrayList);
                jk.o.b(RewardsFragment.this.d2().N(), new j.C0683j(taskType));
                RewardsFragment.this.R = false;
                ud.a.f68411a.D0(true);
            }
            RewardsFragment.this.Q = null;
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            a();
            return Unit.f60915a;
        }
    }

    /* compiled from: RewardsFragment.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nRewardsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RewardsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$checkShowAd2PayDialog$1$1\n+ 2 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt\n*L\n1#1,1701:1\n19#2,5:1702\n*S KotlinDebug\n*F\n+ 1 RewardsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$checkShowAd2PayDialog$1$1\n*L\n746#1:1702,5\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class f implements Function1<Function0<? extends Unit>, Boolean> {

        /* renamed from: b */
        final /* synthetic */ Function0<Unit> f46677b;

        /* renamed from: c */
        final /* synthetic */ Ad2PayConfig f46678c;

        /* compiled from: RewardsFragment.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class a implements Function0<Unit> {

            /* renamed from: a */
            final /* synthetic */ Function0<Unit> f46679a;

            /* renamed from: b */
            final /* synthetic */ Function0<Unit> f46680b;

            a(Function0<Unit> function0, Function0<Unit> function02) {
                this.f46679a = function0;
                this.f46680b = function02;
            }

            public final void a() {
                this.f46679a.invoke();
                this.f46680b.invoke();
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                a();
                return Unit.f60915a;
            }
        }

        /* compiled from: FragmentExt.kt */
        @Metadata
        @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 RewardsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$checkShowAd2PayDialog$1$1\n*L\n1#1,20:1\n748#2,14:21\n*E\n"})
        /* loaded from: classes7.dex */
        public static final class b implements Function0<Unit> {

            /* renamed from: a */
            final /* synthetic */ Ad2PayConfig f46681a;

            /* renamed from: b */
            final /* synthetic */ RewardsFragment f46682b;

            /* renamed from: c */
            final /* synthetic */ Function0 f46683c;

            public b(Ad2PayConfig ad2PayConfig, RewardsFragment rewardsFragment, Function0 function0) {
                this.f46681a = ad2PayConfig;
                this.f46682b = rewardsFragment;
                this.f46683c = function0;
            }

            public final void a() {
                try {
                    Ad2PayPresent ad2PayPresent = Ad2PayPresent.f42733a;
                    ad2PayPresent.y("C", ad2PayPresent.m("C"));
                    DialogFragment X1 = this.f46681a.getSubscribeResp() != null ? this.f46682b.X1(this.f46681a, this.f46683c) : this.f46682b.R1(this.f46681a, this.f46683c);
                    X1.show(this.f46682b.getChildFragmentManager(), X1.getClass().getSimpleName());
                } catch (Exception unused) {
                    this.f46683c.invoke();
                }
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                a();
                return Unit.f60915a;
            }
        }

        /* compiled from: FragmentExt.kt */
        @Metadata
        @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$4\n+ 2 RewardsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$checkShowAd2PayDialog$1$1\n*L\n1#1,21:1\n762#2:22\n*E\n"})
        /* loaded from: classes7.dex */
        public static final class c implements Function0<Unit> {

            /* renamed from: a */
            final /* synthetic */ Function0 f46684a;

            public c(Function0 function0) {
                this.f46684a = function0;
            }

            public final void a() {
                this.f46684a.invoke();
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                a();
                return Unit.f60915a;
            }
        }

        f(Function0<Unit> function0, Ad2PayConfig ad2PayConfig) {
            RewardsFragment.this = r1;
            this.f46677b = function0;
            this.f46678c = ad2PayConfig;
        }

        @Override // kotlin.jvm.functions.Function1
        /* renamed from: a */
        public final Boolean invoke(Function0<Unit> onDismiss) {
            Intrinsics.checkNotNullParameter(onDismiss, "onDismiss");
            a aVar = new a(onDismiss, this.f46677b);
            RewardsFragment rewardsFragment = RewardsFragment.this;
            FragmentExtKt.b(rewardsFragment, new b(this.f46678c, rewardsFragment, aVar), new c(aVar));
            return Boolean.TRUE;
        }
    }

    /* compiled from: FragmentExt.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 RewardsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment\n*L\n1#1,20:1\n1392#2,5:21\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class f0 implements Function0<Unit> {
        public f0() {
            RewardsFragment.this = r1;
        }

        public final void a() {
            if (Settings.canDrawOverlays(RewardsFragment.this.requireContext())) {
                jk.o.b(RewardsFragment.this.d2().N(), j.l.f49206a);
            }
            RewardsFragment.this.S = null;
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            a();
            return Unit.f60915a;
        }
    }

    /* compiled from: RewardsFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class g implements Function0<Unit> {

        /* renamed from: a */
        final /* synthetic */ AtomicBoolean f46686a;

        /* renamed from: b */
        final /* synthetic */ Function0<Unit> f46687b;

        g(AtomicBoolean atomicBoolean, Function0<Unit> function0) {
            this.f46686a = atomicBoolean;
            this.f46687b = function0;
        }

        public final void a() {
            Function0<Unit> function0;
            if (this.f46686a.compareAndSet(false, true) && (function0 = this.f46687b) != null) {
                function0.invoke();
            }
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            a();
            return Unit.f60915a;
        }
    }

    /* compiled from: RewardsFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class h0 extends mk.b {

        /* renamed from: a */
        final /* synthetic */ String f46709a;

        /* renamed from: b */
        final /* synthetic */ RewardsFragment f46710b;

        h0(String str, RewardsFragment rewardsFragment) {
            this.f46709a = str;
            this.f46710b = rewardsFragment;
        }

        @Override // mk.b
        public void a(List<String> permissions) {
            Intrinsics.checkNotNullParameter(permissions, "permissions");
            this.f46710b.S2();
            NotificationRepo.f44301a.j();
        }

        @Override // mk.b
        public void b(boolean z10, List<String> permissions) {
            Intrinsics.checkNotNullParameter(permissions, "permissions");
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            String str = this.f46709a;
            bundle.putString("scene", "task");
            bundle.putString("from", str);
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "not_permission_success", bundle, 0L, 4, null);
            PushManager.f(PushManager.f42838a, false, 1, null);
            this.f46710b.r("requestNotificationPermission onGranted");
            this.f46710b.S2();
        }

        @Override // mk.b
        public void c() {
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            String str = this.f46709a;
            bundle.putString("scene", "task");
            bundle.putString("from", str);
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "system_not_permission_show", bundle, 0L, 4, null);
        }
    }

    /* compiled from: FragmentExt.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 RewardsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment\n*L\n1#1,20:1\n1414#2,8:21\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class i implements Function0<Unit> {

        /* renamed from: b */
        final /* synthetic */ SignInAdInfoResult f46712b;

        public i(SignInAdInfoResult signInAdInfoResult) {
            RewardsFragment.this = r1;
            this.f46712b = signInAdInfoResult;
        }

        public final void a() {
            RewardsFragment.this.d2().Q(new c.C0682c(RewardsFragment.this.requireContext(), this.f46712b, RewardsFragment.this.N));
            com.startshorts.androidplayer.manager.configure.ad.c.f42340a.n();
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            a();
            return Unit.f60915a;
        }
    }

    /* compiled from: RewardsFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class i0 implements Observer, FunctionAdapter {

        /* renamed from: a */
        private final /* synthetic */ Function1 f46713a;

        i0(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f46713a = function;
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
            return this.f46713a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f46713a.invoke(obj);
        }
    }

    /* compiled from: FragmentExt.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 RewardsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment\n*L\n1#1,20:1\n183#2,2:21\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class j0 implements Function0<Unit> {
        public j0() {
            RewardsFragment.this = r1;
        }

        public final void a() {
            RewardsFragment.this.d2().Q(new c.h(RewardsFragment.this.requireContext()));
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            a();
            return Unit.f60915a;
        }
    }

    /* compiled from: FragmentExt.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 RewardsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment\n*L\n1#1,20:1\n1450#2,2:21\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class k implements Function0<Unit> {

        /* renamed from: b */
        final /* synthetic */ String f46716b;

        public k(String str) {
            RewardsFragment.this = r1;
            this.f46716b = str;
        }

        public final void a() {
            Context requireContext = RewardsFragment.this.requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
            new ek.e(requireContext, this.f46716b).show();
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            a();
            return Unit.f60915a;
        }
    }

    /* compiled from: FragmentExt.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 RewardsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment\n*L\n1#1,20:1\n192#2,6:21\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class l0 implements Function0<Unit> {

        /* renamed from: b */
        final /* synthetic */ com.startshorts.androidplayer.viewmodel.reward.k f46718b;

        public l0(com.startshorts.androidplayer.viewmodel.reward.k kVar) {
            RewardsFragment.this = r1;
            this.f46718b = kVar;
        }

        public final void a() {
            Context requireContext = RewardsFragment.this.requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
            WatchAdBonusTask.Companion companion = WatchAdBonusTask.Companion;
            Context requireContext2 = RewardsFragment.this.requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext2, "requireContext(...)");
            new ek.a(requireContext, companion.getFormatBonus(requireContext2, Integer.valueOf(((k.d) this.f46718b).a()))).show();
            au.c.d().l(new DailyWatchDramaReceiveCoinEvent());
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            a();
            return Unit.f60915a;
        }
    }

    /* compiled from: FragmentExt.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 RewardsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment\n*L\n1#1,20:1\n943#2,2:21\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class m implements Function0<Unit> {

        /* renamed from: b */
        final /* synthetic */ SignInAdInfoResult f46721b;

        public m(SignInAdInfoResult signInAdInfoResult) {
            RewardsFragment.this = r1;
            this.f46721b = signInAdInfoResult;
        }

        public final void a() {
            ThirdAdActivity.a aVar = ThirdAdActivity.f44952o;
            Context requireContext = RewardsFragment.this.requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
            String redirectUrl = this.f46721b.getRedirectUrl();
            if (redirectUrl == null) {
                redirectUrl = "";
            }
            aVar.a(requireContext, redirectUrl);
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            a();
            return Unit.f60915a;
        }
    }

    /* compiled from: FragmentExt.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 RewardsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment\n*L\n1#1,20:1\n208#2,2:21\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class n0 implements Function0<Unit> {
        public n0() {
            RewardsFragment.this = r1;
        }

        public final void a() {
            e.a j10 = bf.e.f2616a.j();
            FragmentActivity requireActivity = RewardsFragment.this.requireActivity();
            Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
            e.a.d(j10, requireActivity, null, null, 6, null);
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            a();
            return Unit.f60915a;
        }
    }

    /* compiled from: FragmentExt.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 RewardsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment\n*L\n1#1,20:1\n962#2,4:21\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class o implements Function0<Unit> {

        /* renamed from: b */
        final /* synthetic */ WatchAdBonusTask f46725b;

        public o(WatchAdBonusTask watchAdBonusTask) {
            RewardsFragment.this = r1;
            this.f46725b = watchAdBonusTask;
        }

        public final void a() {
            Ad2PayPresent.f42733a.z();
            ThirdAdActivity.a aVar = ThirdAdActivity.f44952o;
            Context requireContext = RewardsFragment.this.requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
            String redirectUrl = this.f46725b.getRedirectUrl();
            if (redirectUrl == null) {
                redirectUrl = "";
            }
            aVar.a(requireContext, redirectUrl);
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            a();
            return Unit.f60915a;
        }
    }

    /* compiled from: FragmentExt.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 RewardsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment\n*L\n1#1,20:1\n1137#2,2:21\n1160#2:23\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class p0 implements Function0<Unit> {

        /* renamed from: b */
        final /* synthetic */ SignInAdInfoResult f46732b;

        public p0(SignInAdInfoResult signInAdInfoResult) {
            RewardsFragment.this = r1;
            this.f46732b = signInAdInfoResult;
        }

        public final void a() {
            RewardsFragment.this.c2().m(new ve.c(null, null, new r0(this.f46732b), 3, null));
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            a();
            return Unit.f60915a;
        }
    }

    /* compiled from: FragmentExt.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 RewardsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment\n*L\n1#1,20:1\n891#2,7:21\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class q implements Function0<Unit> {

        /* renamed from: a */
        final /* synthetic */ SignInAdInfoResult f46733a;

        /* renamed from: b */
        final /* synthetic */ RewardsFragment f46734b;

        /* renamed from: c */
        final /* synthetic */ String f46735c;

        public q(SignInAdInfoResult signInAdInfoResult, RewardsFragment rewardsFragment, String str) {
            this.f46733a = signInAdInfoResult;
            this.f46734b = rewardsFragment;
            this.f46735c = str;
        }

        public final void a() {
            Integer taskContent = this.f46733a.getTaskContent();
            if (taskContent != null && taskContent.intValue() == 4) {
                this.f46734b.d2().Q(new c.l(this.f46734b.requireContext(), this.f46733a));
                return;
            }
            RewardsFragment rewardsFragment = this.f46734b;
            String str = this.f46735c;
            String taskName = this.f46733a.getTaskName();
            if (taskName == null) {
                taskName = "";
            }
            rewardsFragment.e2(str, taskName, false);
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            a();
            return Unit.f60915a;
        }
    }

    /* compiled from: RewardsFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class r0 implements Function1<Function0<? extends Unit>, Boolean> {

        /* renamed from: b */
        final /* synthetic */ SignInAdInfoResult f46737b;

        /* compiled from: RewardsFragment.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class a implements Function0<Unit> {

            /* renamed from: a */
            final /* synthetic */ RewardsFragment f46738a;

            /* renamed from: b */
            final /* synthetic */ SignInAdInfoResult f46739b;

            a(RewardsFragment rewardsFragment, SignInAdInfoResult signInAdInfoResult) {
                this.f46738a = rewardsFragment;
                this.f46739b = signInAdInfoResult;
            }

            public final void a() {
                this.f46738a.Z1(this.f46739b, "pop_up");
                this.f46738a.o2(this.f46739b, "pop_up");
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                a();
                return Unit.f60915a;
            }
        }

        /* compiled from: RewardsFragment.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class b implements BaseDialogFragment.b {

            /* renamed from: a */
            final /* synthetic */ RewardsFragment f46740a;

            /* renamed from: b */
            final /* synthetic */ Function0<Unit> f46741b;

            b(RewardsFragment rewardsFragment, Function0<Unit> function0) {
                this.f46740a = rewardsFragment;
                this.f46741b = function0;
            }

            @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment.b
            public void onDismiss() {
                this.f46740a.W = null;
                this.f46741b.invoke();
            }
        }

        r0(SignInAdInfoResult signInAdInfoResult) {
            RewardsFragment.this = r1;
            this.f46737b = signInAdInfoResult;
        }

        @Override // kotlin.jvm.functions.Function1
        /* renamed from: a */
        public final Boolean invoke(Function0<Unit> onDialogShowDelegateDismiss) {
            Intrinsics.checkNotNullParameter(onDialogShowDelegateDismiss, "onDialogShowDelegateDismiss");
            RewardsFragment.this.W = CheckInFailedDialog.f45792o.a(this.f46737b.getAdReward(), this.f46737b.getCompleteNum(), this.f46737b.getSumNum(), this.f46737b.getTaskDescription());
            CheckInFailedDialog checkInFailedDialog = RewardsFragment.this.W;
            if (checkInFailedDialog != null) {
                checkInFailedDialog.L(new a(RewardsFragment.this, this.f46737b));
            }
            CheckInFailedDialog checkInFailedDialog2 = RewardsFragment.this.W;
            if (checkInFailedDialog2 != null) {
                checkInFailedDialog2.w(new b(RewardsFragment.this, onDialogShowDelegateDismiss));
            }
            CheckInFailedDialog checkInFailedDialog3 = RewardsFragment.this.W;
            boolean z10 = false;
            if (checkInFailedDialog3 != null) {
                checkInFailedDialog3.setCancelable(false);
            }
            CheckInFailedDialog checkInFailedDialog4 = RewardsFragment.this.W;
            if (checkInFailedDialog4 != null) {
                FragmentManager childFragmentManager = RewardsFragment.this.getChildFragmentManager();
                Intrinsics.checkNotNullExpressionValue(childFragmentManager, "getChildFragmentManager(...)");
                if (checkInFailedDialog4.x(childFragmentManager)) {
                    z10 = true;
                }
            }
            return Boolean.valueOf(z10);
        }
    }

    /* compiled from: FragmentExt.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 RewardsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment\n*L\n1#1,20:1\n918#2,8:21\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class s implements Function0<Unit> {

        /* renamed from: a */
        final /* synthetic */ WatchAdBonusTask f46742a;

        /* renamed from: b */
        final /* synthetic */ RewardsFragment f46743b;

        /* renamed from: c */
        final /* synthetic */ String f46744c;

        public s(WatchAdBonusTask watchAdBonusTask, RewardsFragment rewardsFragment, String str) {
            this.f46742a = watchAdBonusTask;
            this.f46743b = rewardsFragment;
            this.f46744c = str;
        }

        public final void a() {
            Integer taskContent = this.f46742a.getTaskContent();
            if (taskContent == null || taskContent.intValue() != 4) {
                this.f46743b.e2(this.f46744c, this.f46742a.getTaskName(), true);
            } else {
                this.f46743b.d2().Q(new c.m(this.f46743b.requireContext(), this.f46742a));
            }
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            a();
            return Unit.f60915a;
        }
    }

    /* compiled from: FragmentExt.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 RewardsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment\n*L\n1#1,20:1\n1075#2,2:21\n1105#2:23\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class s0 implements Function0<Unit> {

        /* renamed from: b */
        final /* synthetic */ Ref.BooleanRef f46746b;

        /* renamed from: c */
        final /* synthetic */ SignInAdInfoResult f46747c;

        public s0(Ref.BooleanRef booleanRef, SignInAdInfoResult signInAdInfoResult) {
            RewardsFragment.this = r1;
            this.f46746b = booleanRef;
            this.f46747c = signInAdInfoResult;
        }

        public final void a() {
            RewardsFragment.this.c2().m(new ve.c(null, null, new u0(this.f46746b, this.f46747c), 3, null));
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            a();
            return Unit.f60915a;
        }
    }

    /* compiled from: RewardsFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class u implements ke.a {
        u() {
            RewardsFragment.this = r1;
        }

        @Override // ke.a
        public void a(AuthType authType) {
            Intrinsics.checkNotNullParameter(authType, "authType");
            if (authType == AuthType.FACEBOOK) {
                jk.o.b(RewardsFragment.this.d2().N(), new j.i(1));
            } else if (authType == AuthType.GOOGLE) {
                jk.o.b(RewardsFragment.this.d2().N(), new j.i(4));
            }
        }

        @Override // ke.a
        public void b(AuthType authType, int i10, String str) {
            Intrinsics.checkNotNullParameter(authType, "authType");
            RewardsFragment.this.x(str);
        }
    }

    /* compiled from: RewardsFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class u0 implements Function1<Function0<? extends Unit>, Boolean> {

        /* renamed from: b */
        final /* synthetic */ Ref.BooleanRef f46750b;

        /* renamed from: c */
        final /* synthetic */ SignInAdInfoResult f46751c;

        /* compiled from: RewardsFragment.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class a implements Function0<Unit> {

            /* renamed from: a */
            final /* synthetic */ RewardsFragment f46752a;

            /* renamed from: b */
            final /* synthetic */ SignInAdInfoResult f46753b;

            a(RewardsFragment rewardsFragment, SignInAdInfoResult signInAdInfoResult) {
                this.f46752a = rewardsFragment;
                this.f46753b = signInAdInfoResult;
            }

            public final void a() {
                this.f46752a.Z1(this.f46753b, "pop_up");
                this.f46752a.o2(this.f46753b, "pop_up");
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                a();
                return Unit.f60915a;
            }
        }

        /* compiled from: RewardsFragment.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class b implements Function0<Unit> {

            /* renamed from: a */
            final /* synthetic */ RewardsFragment f46754a;

            b(RewardsFragment rewardsFragment) {
                this.f46754a = rewardsFragment;
            }

            public final void a() {
                this.f46754a.y2();
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                a();
                return Unit.f60915a;
            }
        }

        /* compiled from: RewardsFragment.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class c implements BaseDialogFragment.b {

            /* renamed from: a */
            final /* synthetic */ RewardsFragment f46755a;

            /* renamed from: b */
            final /* synthetic */ Function0<Unit> f46756b;

            c(RewardsFragment rewardsFragment, Function0<Unit> function0) {
                this.f46755a = rewardsFragment;
                this.f46756b = function0;
            }

            @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment.b
            public void onDismiss() {
                this.f46755a.U = 0;
                this.f46755a.V = null;
                this.f46756b.invoke();
            }
        }

        u0(Ref.BooleanRef booleanRef, SignInAdInfoResult signInAdInfoResult) {
            RewardsFragment.this = r1;
            this.f46750b = booleanRef;
            this.f46751c = signInAdInfoResult;
        }

        @Override // kotlin.jvm.functions.Function1
        /* renamed from: a */
        public final Boolean invoke(Function0<Unit> onDialogShowDelegateDismiss) {
            Intrinsics.checkNotNullParameter(onDialogShowDelegateDismiss, "onDialogShowDelegateDismiss");
            RewardsFragment rewardsFragment = RewardsFragment.this;
            rewardsFragment.V = CheckInSuccessDialog.f45801v.a(this.f46750b.element, rewardsFragment.U, this.f46751c.getAdReward(), this.f46751c.getCompleteNum(), this.f46751c.getSumNum(), this.f46751c.getInterval(), this.f46751c.getTaskDescription());
            CheckInSuccessDialog checkInSuccessDialog = RewardsFragment.this.V;
            if (checkInSuccessDialog != null) {
                checkInSuccessDialog.Q(new a(RewardsFragment.this, this.f46751c));
            }
            CheckInSuccessDialog checkInSuccessDialog2 = RewardsFragment.this.V;
            if (checkInSuccessDialog2 != null) {
                checkInSuccessDialog2.P(new b(RewardsFragment.this));
            }
            CheckInSuccessDialog checkInSuccessDialog3 = RewardsFragment.this.V;
            if (checkInSuccessDialog3 != null) {
                checkInSuccessDialog3.w(new c(RewardsFragment.this, onDialogShowDelegateDismiss));
            }
            CheckInSuccessDialog checkInSuccessDialog4 = RewardsFragment.this.V;
            boolean z10 = false;
            if (checkInSuccessDialog4 != null) {
                checkInSuccessDialog4.setCancelable(false);
            }
            CheckInSuccessDialog checkInSuccessDialog5 = RewardsFragment.this.V;
            if (checkInSuccessDialog5 != null) {
                FragmentManager childFragmentManager = RewardsFragment.this.getChildFragmentManager();
                Intrinsics.checkNotNullExpressionValue(childFragmentManager, "getChildFragmentManager(...)");
                if (checkInSuccessDialog5.x(childFragmentManager)) {
                    z10 = true;
                }
            }
            return Boolean.valueOf(z10);
        }
    }

    /* compiled from: RewardsFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class v implements ke.b {
        v() {
            RewardsFragment.this = r1;
        }

        @Override // ke.b
        public void a(AuthType authType) {
            Intrinsics.checkNotNullParameter(authType, "authType");
            if (authType == AuthType.FACEBOOK) {
                jk.o.b(RewardsFragment.this.d2().N(), new j.b(null, 1, 1, null));
            } else if (authType == AuthType.GOOGLE) {
                jk.o.b(RewardsFragment.this.d2().N(), new j.b(null, 5, 1, null));
            }
        }

        @Override // ke.b
        public void b(AuthType authType, int i10, String str) {
            Intrinsics.checkNotNullParameter(authType, "authType");
            RewardsFragment.this.x(str);
        }
    }

    /* compiled from: FragmentExt.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 RewardsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment\n*L\n1#1,20:1\n993#2,2:21\n1015#2:23\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class v0 implements Function0<Unit> {
        public v0() {
            RewardsFragment.this = r1;
        }

        public final void a() {
            RewardsFragment.this.c2().m(new ve.c(null, null, new x0(), 3, null));
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            a();
            return Unit.f60915a;
        }
    }

    /* compiled from: RewardsFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class w implements la.a {

        /* renamed from: a */
        final /* synthetic */ StateViewGroup f46759a;

        /* renamed from: b */
        final /* synthetic */ Function0<Unit> f46760b;

        /* compiled from: RewardsFragment.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public /* synthetic */ class a {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[State.values().length];
                try {
                    iArr[State.EMPTY.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[State.NETWORK_ERROR.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[State.OTHER_ERROR.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        /* compiled from: RewardsFragment.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class b implements rj.a {

            /* renamed from: a */
            final /* synthetic */ Function0<Unit> f46761a;

            b(Function0<Unit> function0) {
                this.f46761a = function0;
            }

            @Override // rj.a
            public void onRefresh() {
                this.f46761a.invoke();
            }
        }

        /* compiled from: RewardsFragment.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class c implements rj.a {

            /* renamed from: a */
            final /* synthetic */ Function0<Unit> f46762a;

            c(Function0<Unit> function0) {
                this.f46762a = function0;
            }

            @Override // rj.a
            public void onRefresh() {
                this.f46762a.invoke();
            }
        }

        w(StateViewGroup stateViewGroup, Function0<Unit> function0) {
            this.f46759a = stateViewGroup;
            this.f46760b = function0;
        }

        @Override // la.a
        public void a(State state) {
            Object obj;
            la.b bVar;
            Intrinsics.checkNotNullParameter(state, "state");
            int i10 = a.$EnumSwitchMapping$0[state.ordinal()];
            SNetworkErrorView sNetworkErrorView = null;
            SOtherErrorView sOtherErrorView = null;
            if (i10 != 2) {
                if (i10 == 3) {
                    WeakReference<la.b> a10 = this.f46759a.a(State.OTHER_ERROR);
                    if (a10 != null) {
                        bVar = a10.get();
                    } else {
                        bVar = null;
                    }
                    if (bVar instanceof SOtherErrorView) {
                        sOtherErrorView = (SOtherErrorView) bVar;
                    }
                    if (sOtherErrorView != null) {
                        sOtherErrorView.setMOnRefreshListener(new c(this.f46760b));
                        return;
                    }
                    return;
                }
                return;
            }
            WeakReference<la.b> a11 = this.f46759a.a(State.NETWORK_ERROR);
            if (a11 != null) {
                obj = (la.b) a11.get();
            } else {
                obj = null;
            }
            if (obj instanceof SNetworkErrorView) {
                sNetworkErrorView = (SNetworkErrorView) obj;
            }
            if (sNetworkErrorView != null) {
                sNetworkErrorView.setMOnRefreshListener(new b(this.f46760b));
            }
        }
    }

    /* compiled from: FragmentExt.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 RewardsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment\n*L\n1#1,20:1\n1479#2,2:21\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class x implements Function0<Unit> {
        public x() {
            RewardsFragment.this = r1;
        }

        public final void a() {
            RewardsFragment.this.requireActivity().onBackPressed();
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            a();
            return Unit.f60915a;
        }
    }

    /* compiled from: RewardsFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class x0 implements Function1<Function0<? extends Unit>, Boolean> {

        /* compiled from: RewardsFragment.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class a implements BaseDialogFragment.b {

            /* renamed from: a */
            final /* synthetic */ RewardsFragment f46765a;

            /* renamed from: b */
            final /* synthetic */ Function0<Unit> f46766b;

            a(RewardsFragment rewardsFragment, Function0<Unit> function0) {
                this.f46765a = rewardsFragment;
                this.f46766b = function0;
            }

            @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment.b
            public void onDismiss() {
                this.f46765a.V = null;
                this.f46766b.invoke();
                this.f46765a.d2().Q(new c.f("1"));
            }
        }

        x0() {
            RewardsFragment.this = r1;
        }

        @Override // kotlin.jvm.functions.Function1
        /* renamed from: a */
        public final Boolean invoke(Function0<Unit> onDialogShowDelegateDismiss) {
            Intrinsics.checkNotNullParameter(onDialogShowDelegateDismiss, "onDialogShowDelegateDismiss");
            RewardsFragment rewardsFragment = RewardsFragment.this;
            rewardsFragment.V = CheckInSuccessDialog.f45801v.a(false, rewardsFragment.U, 0, 0, 0, 0, "");
            CheckInSuccessDialog checkInSuccessDialog = RewardsFragment.this.V;
            if (checkInSuccessDialog != null) {
                checkInSuccessDialog.w(new a(RewardsFragment.this, onDialogShowDelegateDismiss));
            }
            CheckInSuccessDialog checkInSuccessDialog2 = RewardsFragment.this.V;
            boolean z10 = false;
            if (checkInSuccessDialog2 != null) {
                checkInSuccessDialog2.setCancelable(false);
            }
            CheckInSuccessDialog checkInSuccessDialog3 = RewardsFragment.this.V;
            if (checkInSuccessDialog3 != null) {
                FragmentManager childFragmentManager = RewardsFragment.this.getChildFragmentManager();
                Intrinsics.checkNotNullExpressionValue(childFragmentManager, "getChildFragmentManager(...)");
                if (checkInSuccessDialog3.x(childFragmentManager)) {
                    z10 = true;
                }
            }
            return Boolean.valueOf(z10);
        }
    }

    /* compiled from: FragmentExt.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 RewardsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment\n*L\n1#1,20:1\n798#2,12:21\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class y0 implements Function0<Unit> {

        /* renamed from: b */
        final /* synthetic */ Task f46768b;

        public y0(Task task) {
            RewardsFragment.this = r1;
            this.f46768b = task;
        }

        public final void a() {
            FragmentActivity requireActivity = RewardsFragment.this.requireActivity();
            Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
            new ji.a(requireActivity, "task_center", this.f46768b.getId(), new a1()).show();
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            a();
            return Unit.f60915a;
        }
    }

    /* compiled from: FragmentExt.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 RewardsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment\n*L\n1#1,20:1\n825#2,4:21\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class z implements Function0<Unit> {

        /* renamed from: b */
        final /* synthetic */ WatchAdBonusTask f46770b;

        public z(WatchAdBonusTask watchAdBonusTask) {
            RewardsFragment.this = r1;
            this.f46770b = watchAdBonusTask;
        }

        public final void a() {
            RewardsFragment.this.M2();
            RewardsFragment.this.d2().Q(new c.e(this.f46770b, RewardsFragment.this.D, null, 4, null));
            com.startshorts.androidplayer.manager.configure.ad.c.f42340a.n();
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            a();
            return Unit.f60915a;
        }
    }

    static {
        String e22 = ud.b.f68412a.e2();
        if (e22 == null) {
            e22 = "UTC+0";
        }
        Z = e22;
    }

    public static final Unit A2(RewardsFragment rewardsFragment, com.startshorts.androidplayer.viewmodel.reward.k kVar) {
        if (kVar instanceof k.a) {
            rewardsFragment.U = ((k.a) kVar).a();
            FragmentExtKt.b(rewardsFragment, new j0(), new k0());
        } else if (kVar instanceof k.d) {
            FragmentExtKt.b(rewardsFragment, new l0(kVar), new m0());
        }
        return Unit.f60915a;
    }

    public static final Unit B2(RewardsFragment rewardsFragment, com.startshorts.androidplayer.viewmodel.reward.d dVar) {
        if (dVar instanceof d.a) {
            FragmentExtKt.b(rewardsFragment, new n0(), new o0());
        }
        return Unit.f60915a;
    }

    public static final Unit C2(RewardsFragment rewardsFragment, com.startshorts.androidplayer.viewmodel.reward.b bVar) {
        List<NewbieWatchBonus> list;
        if (bVar instanceof b.a) {
            b.a aVar = (b.a) bVar;
            NewbieWatchTask a10 = aVar.a();
            final RewardsModuleAdapter rewardsModuleAdapter = null;
            if (a10 != null) {
                list = a10.getList();
            } else {
                list = null;
            }
            List<NewbieWatchBonus> list2 = list;
            if (list2 != null && !list2.isEmpty()) {
                RecyclerView.Adapter<?> e02 = rewardsFragment.e0();
                if (e02 instanceof RewardsModuleAdapter) {
                    rewardsModuleAdapter = (RewardsModuleAdapter) e02;
                }
                if (rewardsModuleAdapter == null) {
                    return Unit.f60915a;
                }
                int intValue = ((Number) new Function0() { // from class: vi.l
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        int D2;
                        D2 = RewardsFragment.D2(RewardsModuleAdapter.this);
                        return Integer.valueOf(D2);
                    }
                }.invoke()).intValue();
                if (intValue != -1) {
                    rewardsModuleAdapter.A(intValue, new RewardsModule(6, null, aVar.a(), 2, null));
                }
                return Unit.f60915a;
            }
            return Unit.f60915a;
        }
        throw new NoWhenBranchMatchedException();
    }

    public static final int D2(RewardsModuleAdapter rewardsModuleAdapter) {
        int itemCount = rewardsModuleAdapter.getItemCount();
        for (int i10 = 0; i10 < itemCount; i10++) {
            if (rewardsModuleAdapter.getItemViewType(i10) == 6) {
                return i10;
            }
        }
        return -1;
    }

    public static final Unit E2(RewardsFragment rewardsFragment, com.startshorts.androidplayer.viewmodel.reward.i iVar) {
        if (iVar instanceof i.a) {
            i.a aVar = (i.a) iVar;
            if (!aVar.a()) {
                return Unit.f60915a;
            }
            String redirectUrl = aVar.b().getRedirectUrl();
            if (redirectUrl == null) {
                redirectUrl = "";
            }
            rewardsFragment.e2(redirectUrl, aVar.b().getTaskName(), true);
        }
        return Unit.f60915a;
    }

    public static final Unit F2(RewardsFragment rewardsFragment, com.startshorts.androidplayer.viewmodel.reward.i iVar) {
        if (iVar instanceof el.a) {
            el.a aVar = (el.a) iVar;
            if (!aVar.a()) {
                return Unit.f60915a;
            }
            String redirectUrl = aVar.b().getRedirectUrl();
            String str = "";
            if (redirectUrl == null) {
                redirectUrl = "";
            }
            String taskName = aVar.b().getTaskName();
            if (taskName != null) {
                str = taskName;
            }
            rewardsFragment.e2(redirectUrl, str, false);
        }
        return Unit.f60915a;
    }

    private final void G2(final SignInAdInfoResult signInAdInfoResult, final String str) {
        AdManager.q0(AdManager.f41600a, this.D, getActivity(), "check_in", null, new Function1() { // from class: vi.u
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit H2;
                H2 = RewardsFragment.H2(RewardsFragment.this, signInAdInfoResult, str, ((Boolean) obj).booleanValue());
                return H2;
            }
        }, 8, null);
    }

    public static final Unit H2(RewardsFragment rewardsFragment, SignInAdInfoResult signInAdInfoResult, String str, boolean z10) {
        if (z10) {
            rewardsFragment.d2().Q(new c.C0682c(AdManager.f41600a.G(rewardsFragment), signInAdInfoResult, str));
        } else {
            rewardsFragment.I2(signInAdInfoResult);
        }
        return Unit.f60915a;
    }

    private final void I2(SignInAdInfoResult signInAdInfoResult) {
        FragmentExtKt.b(this, new p0(signInAdInfoResult), new q0());
    }

    private final void J1(List<RewardsModule> list) {
        list.add(new RewardsModule(3, d2().O(), null, 4, null));
    }

    public final void J2(SignInAdInfoResult signInAdInfoResult) {
        if (c2().j() > 0) {
            return;
        }
        if (signInAdInfoResult == null) {
            K2();
            return;
        }
        Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        if (signInAdInfoResult.getSumNum() == 0) {
            booleanRef.element = false;
        } else {
            String l10 = RewardsRepo.f44515a.l();
            if (signInAdInfoResult.getCompleteNum() == 0) {
                if (this.F) {
                    booleanRef.element = true;
                    this.U = signInAdInfoResult.getSumBonus();
                    ud.b.f68412a.M4(l10, true);
                } else {
                    int i10 = this.O;
                    if (i10 <= 0) {
                        booleanRef.element = true;
                        ud.b bVar = ud.b.f68412a;
                        if (!bVar.z1(l10)) {
                            this.U = signInAdInfoResult.getSumBonus();
                            bVar.M4(l10, true);
                        } else {
                            this.U = 0;
                        }
                    } else {
                        booleanRef.element = false;
                        this.U = i10;
                        ud.b.f68412a.M4(l10, true);
                    }
                }
                p2();
            } else {
                booleanRef.element = false;
            }
        }
        if (this.U <= 0) {
            return;
        }
        FragmentExtKt.b(this, new s0(booleanRef, signInAdInfoResult), new t0());
    }

    private final void K1(List<RewardsModule> list) {
        list.add(new RewardsModule(8, null, null, 6, null));
        ud.b bVar = ud.b.f68412a;
        NewbieWatchTask l02 = bVar.l0();
        if (l02 != null && l02.isInvalid()) {
            list.add(new RewardsModule(6, null, bVar.l0(), 2, null));
        }
        list.add(new RewardsModule(2, d2().N(), null, 4, null));
    }

    private final void K2() {
        if (this.U <= 0) {
            return;
        }
        FragmentExtKt.b(this, new v0(), new w0());
    }

    private final void L1(List<RewardsModule> list) {
        if (ABTestFactory.f42224a.l1().isEnable().invoke().booleanValue()) {
            J1(list);
            K1(list);
            return;
        }
        K1(list);
        J1(list);
    }

    public final void L2(Task task) {
        this.S = task;
        FragmentExtKt.b(this, new y0(task), new z0());
    }

    private final void M1() {
        PushManager.f42838a.b();
    }

    public final void M2() {
        j2();
        FragmentExtKt.b(this, new b1(), new c1());
    }

    public final void N1(Task task) {
        FragmentExtKt.b(this, new b(task), new c());
    }

    private final void N2() {
        final RewardsModuleAdapter rewardsModuleAdapter;
        boolean Q1 = Q1();
        this.T = Q1;
        if (this.E && !Q1) {
            RecyclerView.Adapter<?> e02 = e0();
            if (e02 instanceof RewardsModuleAdapter) {
                rewardsModuleAdapter = (RewardsModuleAdapter) e02;
            } else {
                rewardsModuleAdapter = null;
            }
            if (rewardsModuleAdapter == null) {
                return;
            }
            int intValue = ((Number) new Function0() { // from class: vi.v
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    int O2;
                    O2 = RewardsFragment.O2(RewardsModuleAdapter.this);
                    return Integer.valueOf(O2);
                }
            }.invoke()).intValue();
            final int i10 = intValue + 1;
            if (i10 > rewardsModuleAdapter.getItemCount() - 1) {
                i10 = intValue;
            }
            if (intValue != -1) {
                CoroutineUtil.g(CoroutineUtil.f48072a, 1200L, null, new Function0() { // from class: vi.g
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        Unit P2;
                        P2 = RewardsFragment.P2(RewardsFragment.this, i10);
                        return P2;
                    }
                }, 2, null);
            }
        }
    }

    private final void O1(Function0<Unit> function0) {
        FragmentExtKt.b(this, new d(function0, this), new e());
    }

    public static final int O2(RewardsModuleAdapter rewardsModuleAdapter) {
        int itemCount = rewardsModuleAdapter.getItemCount();
        for (int i10 = 0; i10 < itemCount; i10++) {
            if (rewardsModuleAdapter.getItemViewType(i10) == 6) {
                return i10;
            }
        }
        return -1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void P1(RewardsFragment rewardsFragment, Function0 function0, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            function0 = null;
        }
        rewardsFragment.O1(function0);
    }

    public static final Unit P2(RewardsFragment rewardsFragment, int i10) {
        RecyclerView g02 = rewardsFragment.g0();
        if (g02 != null) {
            g02.smoothScrollToPosition(i10);
        }
        return Unit.f60915a;
    }

    private final boolean Q1() {
        NewbieWatchTask l02 = ud.b.f68412a.l0();
        if (l02 != null) {
            return l02.isAllTaskComplete();
        }
        return true;
    }

    public final void Q2(String str, String str2) {
        x("Cannot be opened temporarily");
    }

    public final Ad2CoinsDialog R1(Ad2PayConfig ad2PayConfig, final Function0<Unit> function0) {
        Ad2CoinsDialog a10 = Ad2CoinsDialog.f46414m.a();
        a10.S(ad2PayConfig);
        a10.U("mission_center");
        a10.V("C");
        a10.X(function0);
        a10.W(new Function1() { // from class: vi.k
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit S1;
                S1 = RewardsFragment.S1(Function0.this, ((Boolean) obj).booleanValue());
                return S1;
            }
        });
        return a10;
    }

    public static final Unit S1(Function0 function0, boolean z10) {
        function0.invoke();
        return Unit.f60915a;
    }

    public final void S2() {
        jk.o.b(d2().N(), j.k.f49205a);
    }

    private final void T1() {
        PushManager.f42838a.g();
    }

    private final BaseAdapter<?> U1() {
        return new RewardsModuleAdapter(new h(), this, new Function0() { // from class: vi.f
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                String V1;
                V1 = RewardsFragment.V1(RewardsFragment.this);
                return V1;
            }
        }, new Function0() { // from class: vi.n
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                boolean W1;
                W1 = RewardsFragment.W1(RewardsFragment.this);
                return Boolean.valueOf(W1);
            }
        }, new WeakReference(requireActivity()), getLifecycle());
    }

    public static final String V1(RewardsFragment rewardsFragment) {
        return rewardsFragment.D;
    }

    public static final boolean W1(RewardsFragment rewardsFragment) {
        return rewardsFragment.P;
    }

    public final Ad2SubscribeDialog X1(Ad2PayConfig ad2PayConfig, final Function0<Unit> function0) {
        Ad2SubscribeDialog a10 = Ad2SubscribeDialog.f46430o.a();
        a10.X(ad2PayConfig);
        a10.Z("mission_center");
        a10.a0("C");
        a10.c0(function0);
        a10.b0(new Function1() { // from class: vi.o
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit Y1;
                Y1 = RewardsFragment.Y1(Function0.this, ((Boolean) obj).booleanValue());
                return Y1;
            }
        });
        return a10;
    }

    public static final Unit Y1(Function0 function0, boolean z10) {
        function0.invoke();
        return Unit.f60915a;
    }

    public final void Z1(SignInAdInfoResult signInAdInfoResult, String str) {
        if (signInAdInfoResult.isAd()) {
            G2(signInAdInfoResult, str);
        } else if (signInAdInfoResult.isOutsideH5()) {
            i2(signInAdInfoResult, str);
        } else if (signInAdInfoResult.isInnerH5()) {
            g2(signInAdInfoResult, str);
        }
    }

    public static final /* synthetic */ FragmentRewardsBinding a1(RewardsFragment rewardsFragment) {
        return (FragmentRewardsBinding) rewardsFragment.A();
    }

    private final void a2() {
        SignInAdInfoResult signInAdInfoResult = this.M;
        if (signInAdInfoResult != null) {
            if (signInAdInfoResult != null) {
                if (signInAdInfoResult.validH5(this.L)) {
                    FragmentExtKt.b(this, new i(signInAdInfoResult), new j());
                } else {
                    I2(signInAdInfoResult);
                }
            }
            this.M = null;
        }
    }

    private final void b2() {
        WatchAdBonusTask watchAdBonusTask = this.K;
        if (watchAdBonusTask != null) {
            if (watchAdBonusTask != null) {
                if (watchAdBonusTask.validH5(this.L)) {
                    d2().Q(new c.e(watchAdBonusTask, this.D, null, 4, null));
                    com.startshorts.androidplayer.manager.configure.ad.c.f42340a.n();
                } else {
                    P1(this, null, 1, null);
                    String H = d2().H();
                    if (H != null && H.length() != 0) {
                        FragmentExtKt.b(this, new k(H), new l());
                    }
                }
            }
            this.K = null;
        }
    }

    public final ve.g<Unit> c2() {
        return (ve.g) this.G.getValue();
    }

    public final RewardsViewModel d2() {
        return (RewardsViewModel) this.B.getValue();
    }

    public final void e2(String str, String str2, boolean z10) {
        try {
            Intent intent = new Intent(CommonConstant.ACTION.HWID_SCHEME_URL, Uri.parse(str));
            intent.addFlags(268435456);
            Context context = getContext();
            if (context != null) {
                context.startActivity(intent);
            }
            if (z10) {
                Ad2PayPresent.f42733a.z();
            }
        } catch (Exception e10) {
            g(" WatchAd click failed from " + str2 + " link " + str + " -> " + e10.getMessage());
        }
    }

    private final void f2(WatchAdBonusTask watchAdBonusTask, String str) {
        String redirectUrl = watchAdBonusTask.getRedirectUrl();
        if (redirectUrl == null) {
            redirectUrl = "";
        }
        if (redirectUrl.length() == 0 || !jk.v.g(redirectUrl)) {
            g(" WatchAd click failed from " + watchAdBonusTask.getTaskName() + " link null");
            return;
        }
        this.K = watchAdBonusTask;
        this.M = null;
        this.L = DeviceUtil.f48146a.L();
        this.N = str;
        FragmentExtKt.b(this, new o(watchAdBonusTask), new p());
    }

    private final void g2(SignInAdInfoResult signInAdInfoResult, String str) {
        String redirectUrl = signInAdInfoResult.getRedirectUrl();
        if (redirectUrl == null) {
            redirectUrl = "";
        }
        if (redirectUrl.length() == 0 || !jk.v.g(redirectUrl)) {
            g(" WatchAd click failed from " + signInAdInfoResult.getTaskDescription() + " link null");
            return;
        }
        this.M = signInAdInfoResult;
        this.K = null;
        this.L = DeviceUtil.f48146a.L();
        this.N = str;
        FragmentExtKt.b(this, new m(signInAdInfoResult), new n());
    }

    private final void h2(WatchAdBonusTask watchAdBonusTask, String str) {
        String redirectUrl = watchAdBonusTask.getRedirectUrl();
        if (redirectUrl == null) {
            redirectUrl = "";
        }
        if (redirectUrl.length() == 0) {
            g(" WatchAd click failed from " + watchAdBonusTask.getTaskName() + " link null");
            return;
        }
        this.K = watchAdBonusTask;
        this.M = null;
        this.L = DeviceUtil.f48146a.L();
        this.N = str;
        FragmentExtKt.b(this, new s(watchAdBonusTask, this, redirectUrl), new t());
    }

    private final void i2(SignInAdInfoResult signInAdInfoResult, String str) {
        String redirectUrl = signInAdInfoResult.getRedirectUrl();
        if (redirectUrl == null) {
            redirectUrl = "";
        }
        if (redirectUrl.length() == 0) {
            g(" WatchAd click failed from " + signInAdInfoResult.getTaskDescription() + " link null");
            return;
        }
        this.M = signInAdInfoResult;
        this.K = null;
        this.L = DeviceUtil.f48146a.L();
        this.N = str;
        FragmentExtKt.b(this, new q(signInAdInfoResult, this, redirectUrl), new r());
    }

    public final void j2() {
        hi.b bVar = this.J;
        if (bVar != null) {
            bVar.cancel();
        }
        this.J = null;
    }

    public final void k2(String str) {
        if (this.C.isInitialized()) {
            this.C.getValue().F(str);
            return;
        }
        r("initAuthManager");
        FirebaseAuthManager value = this.C.getValue();
        value.p(new WeakReference<>(requireActivity()));
        value.F(str);
        if (AccountRepo.f43052a.J0()) {
            value.r(new u());
        } else {
            value.s(new v());
        }
    }

    public final void l2() {
        jk.o.b(d2().I(), a.i.f49157a);
    }

    public final void m2(StateViewGroup stateViewGroup, Function0<Unit> function0) {
        stateViewGroup.setMOnInflatedListener(new w(stateViewGroup, function0));
        stateViewGroup.f(R$layout.viewstub_page_state_loading, State.LOADING);
        stateViewGroup.f(R$layout.viewstub_page_state_network_error, State.NETWORK_ERROR);
        stateViewGroup.f(R$layout.viewstub_page_state_other_error, State.OTHER_ERROR);
    }

    private final void n2() {
        CoroutineUtil.l(CoroutineUtil.f48072a, "loadTodayAllBonus", false, new RewardsFragment$loadTodayAllBonus$1(null), 2, null);
    }

    public final void o2(SignInAdInfoResult signInAdInfoResult, String str) {
        String str2;
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        bundle.putString("type", "check_in");
        bundle.putString("task_id", String.valueOf(signInAdInfoResult.getTaskId()));
        bundle.putString("task_type_id", String.valueOf(signInAdInfoResult.getTaskType()));
        Integer taskType = signInAdInfoResult.getTaskType();
        if (taskType != null && taskType.intValue() == 1) {
            str2 = "广告类";
        } else {
            str2 = "";
        }
        bundle.putString("task_type_name", str2);
        bundle.putString("task_sort_id", String.valueOf(signInAdInfoResult.getTaskSortId()));
        bundle.putString(AdRevenueScheme.PLACEMENT, str);
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "task_click", bundle, 0L, 4, null);
    }

    private final void p2() {
        String str;
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        if (this.F) {
            str = "checkdone_ads_reward";
        } else {
            str = "checknot_ads_reward";
        }
        bundle.putString("popup_name", str);
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "popup_show", bundle, 0L, 4, null);
    }

    public static final FirebaseAuthManager q2() {
        return new FirebaseAuthManager();
    }

    public static final ve.g r2() {
        return new ve.g(null, null, 3, null);
    }

    public static final RewardsViewModel s2(RewardsFragment rewardsFragment) {
        FragmentActivity requireActivity = rewardsFragment.requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
        return (RewardsViewModel) new ViewModelProvider(requireActivity).get(RewardsViewModel.class);
    }

    private final void t2() {
        AccountRepo.f43052a.O(this.A);
    }

    public final void u2(final WatchAdBonusTask watchAdBonusTask) {
        if (watchAdBonusTask.isAd()) {
            String l10 = RewardsRepo.f44515a.l();
            WatchAdNumber d22 = ud.b.f68412a.d2(watchAdBonusTask.getTaskId());
            if (d22 != null && Intrinsics.areEqual(d22.getDay(), l10) && d22.getCount() >= watchAdBonusTask.getConditionValue()) {
                FragmentExtKt.b(this, new z(watchAdBonusTask), new a0());
            }
            AdManager.q0(AdManager.f41600a, this.D, requireActivity(), "daily_reward", null, new Function1() { // from class: vi.m
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit v22;
                    v22 = RewardsFragment.v2(RewardsFragment.this, watchAdBonusTask, ((Boolean) obj).booleanValue());
                    return v22;
                }
            }, 8, null);
        } else if (watchAdBonusTask.isOutsideH5()) {
            h2(watchAdBonusTask, "");
        } else if (watchAdBonusTask.isInnerH5()) {
            f2(watchAdBonusTask, "");
        }
    }

    public static final Unit v2(RewardsFragment rewardsFragment, WatchAdBonusTask watchAdBonusTask, boolean z10) {
        if (z10) {
            FragmentExtKt.b(rewardsFragment, new b0(watchAdBonusTask, rewardsFragment), new c0());
        }
        return Unit.f60915a;
    }

    private final void w2() {
        k0(U1());
        RecyclerView g02 = g0();
        if (g02 != null) {
            g02.setAdapter(e0());
        }
        d2().W(this);
        ArrayList arrayList = new ArrayList();
        arrayList.add(new RewardsModule(1, d2().I(), null, 4, null));
        if (!ActResourceManager.f41582a.C().isEmpty()) {
            RewardsModule rewardsModule = new RewardsModule(7, null, null, 6, null);
            rewardsModule.setTopMargin(jk.g.a(16.0f));
            arrayList.add(rewardsModule);
        }
        L1(arrayList);
        arrayList.add(new RewardsModule(4, null, null, 4, null));
        y0(true, arrayList);
        t2();
        l2();
    }

    public final void x2(String str) {
        E(id.d.f53400a.a(), true, 2001, new h0(str, this));
    }

    public final void y2() {
        int i10;
        RecyclerView.LayoutManager layoutManager;
        RecyclerView.Adapter adapter;
        RecyclerView g02 = g0();
        if (g02 != null && (adapter = g02.getAdapter()) != null) {
            int itemCount = adapter.getItemCount();
            i10 = -1;
            for (int i11 = 0; i11 < itemCount; i11++) {
                if (adapter.getItemViewType(i11) == 3) {
                    i10 = i11;
                }
            }
        } else {
            i10 = -1;
        }
        if (i10 != -1) {
            RecyclerView g03 = g0();
            if (g03 != null) {
                layoutManager = g03.getLayoutManager();
            } else {
                layoutManager = null;
            }
            if (layoutManager instanceof LinearLayoutManager) {
                ((LinearLayoutManager) layoutManager).scrollToPositionWithOffset(i10, 0);
            }
        }
    }

    private final void z2() {
        d2().O().observe(getViewLifecycleOwner(), new i0(new Function1() { // from class: vi.p
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit A2;
                A2 = RewardsFragment.A2(RewardsFragment.this, (com.startshorts.androidplayer.viewmodel.reward.k) obj);
                return A2;
            }
        }));
        d2().K().observe(getViewLifecycleOwner(), new i0(new Function1() { // from class: vi.q
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit B2;
                B2 = RewardsFragment.B2(RewardsFragment.this, (com.startshorts.androidplayer.viewmodel.reward.d) obj);
                return B2;
            }
        }));
        d2().J().observe(getViewLifecycleOwner(), new i0(new Function1() { // from class: vi.r
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit C2;
                C2 = RewardsFragment.C2(RewardsFragment.this, (com.startshorts.androidplayer.viewmodel.reward.b) obj);
                return C2;
            }
        }));
        d2().M().observe(getViewLifecycleOwner(), new i0(new Function1() { // from class: vi.s
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit E2;
                E2 = RewardsFragment.E2(RewardsFragment.this, (com.startshorts.androidplayer.viewmodel.reward.i) obj);
                return E2;
            }
        }));
        d2().L().observe(getViewLifecycleOwner(), new i0(new Function1() { // from class: vi.t
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit F2;
                F2 = RewardsFragment.F2(RewardsFragment.this, (com.startshorts.androidplayer.viewmodel.reward.i) obj);
                return F2;
            }
        }));
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.ListFragment
    public void A0(@NotNull RecyclerView recyclerView, int i10, int i11) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        super.A0(recyclerView, i10, i11);
        float m10 = kotlin.ranges.e.m(recyclerView.computeVerticalScrollOffset() / this.X, 0.0f, 1.0f);
        if (m10 >= 1.0f && ((FragmentRewardsBinding) A()).f39625a.getAlpha() != 1.0f) {
            ((FragmentRewardsBinding) A()).f39625a.setAlpha(1.0f);
        } else if (m10 < 1.0f) {
            ((FragmentRewardsBinding) A()).f39625a.setAlpha(m10);
        }
    }

    public final void R2(@NotNull String from) {
        Intrinsics.checkNotNullParameter(from, "from");
        this.D = from;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.ListFragment, com.startshorts.androidplayer.ui.fragment.base.RecyclerViewFragment
    public void i0() {
        l0(20);
        k0(U1());
        super.i0();
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.ListFragment, com.startshorts.androidplayer.ui.fragment.base.RecyclerViewFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public int l() {
        return R$layout.fragment_rewards;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public boolean o() {
        return true;
    }

    @Override // androidx.fragment.app.Fragment
    @ms.c
    public void onActivityResult(int i10, int i11, @Nullable Intent intent) {
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
        if (!this.C.getValue().l(requireActivity, i10, i11, intent)) {
            super.onActivityResult(i10, i11, intent);
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseVDBFragment, androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        MainActivity mainActivity;
        boolean z10;
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        FragmentActivity activity = getActivity();
        if (activity instanceof MainActivity) {
            mainActivity = (MainActivity) activity;
        } else {
            mainActivity = null;
        }
        if (mainActivity != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.P = z10;
        ed.a aVar = ed.a.f51339a;
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
        aVar.b(requireActivity, true);
        this.X = getResources().getDisplayMetrics().widthPixels / 2.0f;
        return super.onCreateView(inflater, viewGroup, bundle);
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.PageStateFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment, androidx.fragment.app.Fragment
    public void onPause() {
        RewardsModuleAdapter rewardsModuleAdapter;
        super.onPause();
        RecyclerView.Adapter<?> e02 = e0();
        if (e02 instanceof RewardsModuleAdapter) {
            rewardsModuleAdapter = (RewardsModuleAdapter) e02;
        } else {
            rewardsModuleAdapter = null;
        }
        if (rewardsModuleAdapter != null) {
            rewardsModuleAdapter.C0(false);
        }
        jk.o.b(d2().I(), a.f.f49154a);
        jk.o.b(d2().O(), k.b.f49208a);
        jk.o.b(d2().N(), j.c.f49197a);
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.PageStateFragment, com.startshorts.androidplayer.ui.fragment.base.PermissionFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment, androidx.fragment.app.Fragment
    public void onResume() {
        RewardsModuleAdapter rewardsModuleAdapter;
        super.onResume();
        RecyclerView.Adapter<?> e02 = e0();
        if (e02 instanceof RewardsModuleAdapter) {
            rewardsModuleAdapter = (RewardsModuleAdapter) e02;
        } else {
            rewardsModuleAdapter = null;
        }
        if (rewardsModuleAdapter != null) {
            rewardsModuleAdapter.C0(true);
        }
        jk.o.b(d2().I(), a.g.f49155a);
        jk.o.b(d2().O(), k.c.f49209a);
        jk.o.b(d2().N(), j.d.f49198a);
        if (this.H) {
            this.H = false;
            this.I = CampaignRepo.f43678a.p();
        } else {
            if (!RewardsRepo.f44515a.q()) {
                AccountRepo.Z0(AccountRepo.f43052a, true, null, null, 6, null);
            }
            String p10 = CampaignRepo.f43678a.p();
            if (!Intrinsics.areEqual(p10, this.I)) {
                this.I = p10;
                d2().Q(new c.k(5));
                d2().Q(new c.k(1));
            }
        }
        if (this.K != null || this.M != null) {
            if (this.M != null) {
                a2();
            } else {
                b2();
            }
        }
        if (this.Q != null && this.R) {
            FragmentExtKt.b(this, new d0(), new e0());
        }
        n2();
        ud.a aVar = ud.a.f68411a;
        if (aVar.n()) {
            aVar.q0(false);
            if (this.S != null) {
                FragmentExtKt.b(this, new f0(), new g0());
            }
        }
        if (aVar.o() && (getActivity() instanceof MainActivity)) {
            aVar.r0(false);
            d2().Q(new c.j(false));
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.PageStateFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        float f10;
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        LottieAnimationView lottieAnimationView = ((FragmentRewardsBinding) A()).f39626b;
        if (fk.v.f51778a.b()) {
            f10 = -1.0f;
        } else {
            f10 = 1.0f;
        }
        lottieAnimationView.setScaleX(f10);
        z2();
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public boolean p() {
        return true;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.ListFragment, com.startshorts.androidplayer.ui.fragment.base.RecyclerViewFragment, com.startshorts.androidplayer.ui.fragment.base.PageStateFragment, com.startshorts.androidplayer.ui.fragment.base.PermissionFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    @NotNull
    public String q() {
        return "RewardsFragment";
    }

    @au.l(threadMode = ThreadMode.MAIN)
    public final void receiveAppStateEvent(@NotNull AppStateEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (event.getState() == 2) {
            if ((getActivity() instanceof FragmentContainer) && ud.a.f68411a.H() > 0) {
                T1();
            }
            if (this.Q != null) {
                this.R = true;
            }
        } else if (event.getState() == 1 && (getActivity() instanceof FragmentContainer)) {
            M1();
        }
    }

    @au.l(threadMode = ThreadMode.MAIN)
    public final void receiveBindSuccessEvent(@NotNull BindSuccessEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        r("receive BindSuccessEvent -> " + event);
        if (!m()) {
            return;
        }
        jk.o.b(d2().N(), new j.i(event.getBindType()));
    }

    @au.l(threadMode = ThreadMode.MAIN)
    public final void receiveRefreshAccountEvent(@NotNull RefreshAccountEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (!m()) {
            return;
        }
        r("receiveRefreshAccountEvent");
        w2();
    }

    @au.l(threadMode = ThreadMode.MAIN)
    public final void receiveRewardsAlertWindowEvent(@NotNull RewardsModuleRefreshEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (getActivity() instanceof MainActivity) {
            ud.a aVar = ud.a.f68411a;
            if (aVar.R()) {
                aVar.D0(false);
                d2().Q(c.i.f49182a);
                w2();
            }
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    @ms.c
    public void s() {
        FragmentExtKt.b(this, new x(), new y());
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public void t() {
        String string;
        super.t();
        Bundle arguments = getArguments();
        if (arguments != null && (string = arguments.getString("from")) != null) {
            this.D = string;
        }
        Bundle arguments2 = getArguments();
        if (arguments2 != null) {
            this.E = arguments2.getBoolean("isLocateWatchTaskModule");
        }
        Bundle arguments3 = getArguments();
        if (arguments3 != null) {
            this.F = arguments3.getBoolean("isFromHomeCheckInDialog");
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(new RewardsModule(1, d2().I(), null, 4, null));
        if (!ActResourceManager.f41582a.C().isEmpty()) {
            RewardsModule rewardsModule = new RewardsModule(7, null, null, 6, null);
            rewardsModule.setTopMargin(jk.g.a(16.0f));
            arrayList.add(rewardsModule);
        }
        L1(arrayList);
        arrayList.add(new RewardsModule(4, null, null, 4, null));
        y0(true, arrayList);
        t2();
        AccountRepo.Z0(AccountRepo.f43052a, true, null, null, 6, null);
        if (ud.a.f68411a.V()) {
            CoroutineUtil.l(CoroutineUtil.f48072a, "taskCenterFloatingList", false, new RewardsFragment$onFirstUserVisible$5(this, null), 2, null);
        }
        N2();
        Ad2PayPresent.f42733a.v();
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.ListFragment, com.startshorts.androidplayer.ui.fragment.base.RecyclerViewFragment, com.startshorts.androidplayer.ui.fragment.base.PageStateFragment, com.startshorts.androidplayer.ui.fragment.base.BaseVDBFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public void v() {
        RewardsModuleAdapter rewardsModuleAdapter;
        super.v();
        j2();
        M1();
        AccountRepo.f43052a.d1(this.A);
        if (this.C.isInitialized()) {
            this.C.getValue().n();
        }
        if ((getActivity() instanceof FragmentContainer) && ud.a.f68411a.R()) {
            au.c.d().l(new RewardsModuleRefreshEvent());
        }
        RecyclerView.Adapter<?> e02 = e0();
        if (e02 instanceof RewardsModuleAdapter) {
            rewardsModuleAdapter = (RewardsModuleAdapter) e02;
        } else {
            rewardsModuleAdapter = null;
        }
        if (rewardsModuleAdapter != null) {
            rewardsModuleAdapter.z();
        }
    }

    /* compiled from: RewardsFragment.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nRewardsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RewardsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$createRecyclerAdapter$1\n+ 2 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt\n*L\n1#1,1701:1\n15#2,9:1702\n15#2,9:1711\n15#2,9:1720\n15#2,9:1729\n15#2,9:1738\n15#2,9:1747\n15#2,9:1756\n15#2,9:1765\n15#2,9:1774\n15#2,9:1783\n*S KotlinDebug\n*F\n+ 1 RewardsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$createRecyclerAdapter$1\n*L\n486#1:1702,9\n495#1:1711,9\n504#1:1720,9\n518#1:1729,9\n535#1:1738,9\n608#1:1747,9\n616#1:1756,9\n648#1:1765,9\n669#1:1774,9\n679#1:1783,9\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class h implements RewardsModuleAdapter.d {

        /* compiled from: FragmentExt.kt */
        @Metadata
        @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 RewardsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$createRecyclerAdapter$1\n*L\n1#1,20:1\n537#2,10:21\n*E\n"})
        /* loaded from: classes7.dex */
        public static final class a implements Function0<Unit> {

            /* renamed from: a */
            final /* synthetic */ RewardsFragment f46689a;

            /* renamed from: b */
            final /* synthetic */ Task f46690b;

            public a(RewardsFragment rewardsFragment, Task task) {
                this.f46689a = rewardsFragment;
                this.f46690b = task;
            }

            public final void a() {
                RewardsViewModel d22 = this.f46689a.d2();
                Context requireContext = this.f46689a.requireContext();
                Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
                d22.Q(new c.a(requireContext, String.valueOf(this.f46690b.getId()), this.f46690b.getTaskType(), this.f46690b.getTaskBonus(), this.f46689a.D));
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                a();
                return Unit.f60915a;
            }
        }

        /* compiled from: FragmentExt.kt */
        @Metadata
        @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 RewardsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$createRecyclerAdapter$1\n*L\n1#1,20:1\n520#2,11:21\n*E\n"})
        /* loaded from: classes7.dex */
        public static final class c implements Function0<Unit> {

            /* renamed from: a */
            final /* synthetic */ RewardsFragment f46691a;

            /* renamed from: b */
            final /* synthetic */ boolean f46692b;

            /* renamed from: c */
            final /* synthetic */ int f46693c;

            /* renamed from: d */
            final /* synthetic */ CheckInInfo f46694d;

            public c(RewardsFragment rewardsFragment, boolean z10, int i10, CheckInInfo checkInInfo) {
                this.f46691a = rewardsFragment;
                this.f46692b = z10;
                this.f46693c = i10;
                this.f46694d = checkInInfo;
            }

            public final void a() {
                Context requireContext;
                RewardsViewModel d22 = this.f46691a.d2();
                if (this.f46692b) {
                    requireContext = null;
                } else {
                    requireContext = this.f46691a.requireContext();
                }
                d22.Q(new c.b(requireContext, this.f46693c, this.f46694d.getDay(), this.f46694d.getBonus(), this.f46691a.D, this.f46692b));
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                a();
                return Unit.f60915a;
            }
        }

        /* compiled from: FragmentExt.kt */
        @Metadata
        @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 RewardsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$createRecyclerAdapter$1\n*L\n1#1,20:1\n488#2,3:21\n*E\n"})
        /* loaded from: classes7.dex */
        public static final class e implements Function0<Unit> {

            /* renamed from: a */
            final /* synthetic */ RewardsFragment f46695a;

            /* renamed from: b */
            final /* synthetic */ int f46696b;

            public e(RewardsFragment rewardsFragment, int i10) {
                this.f46695a = rewardsFragment;
                this.f46696b = i10;
            }

            public final void a() {
                this.f46695a.O = this.f46696b;
                this.f46695a.d2().Q(new c.h(this.f46695a.requireContext()));
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                a();
                return Unit.f60915a;
            }
        }

        /* compiled from: FragmentExt.kt */
        @Metadata
        @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 RewardsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$createRecyclerAdapter$1\n*L\n1#1,20:1\n681#2,26:21\n*E\n"})
        /* loaded from: classes7.dex */
        public static final class g implements Function0<Unit> {

            /* renamed from: a */
            final /* synthetic */ Task f46697a;

            /* renamed from: b */
            final /* synthetic */ RewardsFragment f46698b;

            public g(Task task, RewardsFragment rewardsFragment) {
                this.f46697a = task;
                this.f46698b = rewardsFragment;
            }

            public final void a() {
                String taskUrl = this.f46697a.getTaskUrl();
                if (taskUrl != null && jk.v.g(taskUrl)) {
                    this.f46698b.Q = this.f46697a;
                    try {
                        Intent intent = new Intent(CommonConstant.ACTION.HWID_SCHEME_URL, Uri.parse(taskUrl));
                        intent.addFlags(268435456);
                        PackageManager packageManager = this.f46698b.requireContext().getPackageManager();
                        if (intent.resolveActivity(packageManager) != null) {
                            this.f46698b.startActivity(intent);
                        } else {
                            Intent intent2 = new Intent(CommonConstant.ACTION.HWID_SCHEME_URL, Uri.parse(taskUrl));
                            Intent createChooser = Intent.createChooser(intent2, "Choose application to open link");
                            if (intent2.resolveActivity(packageManager) == null) {
                                this.f46698b.Q2(taskUrl, null);
                            } else {
                                this.f46698b.startActivity(createChooser);
                            }
                        }
                    } catch (Exception e10) {
                        this.f46698b.Q2(taskUrl, e10.getMessage());
                    }
                }
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                a();
                return Unit.f60915a;
            }
        }

        /* compiled from: FragmentExt.kt */
        @Metadata
        @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 RewardsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$createRecyclerAdapter$1\n*L\n1#1,20:1\n497#2,2:21\n*E\n"})
        /* loaded from: classes7.dex */
        public static final class i implements Function0<Unit> {

            /* renamed from: a */
            final /* synthetic */ RewardsFragment f46699a;

            /* renamed from: b */
            final /* synthetic */ SignInAdInfoResult f46700b;

            public i(RewardsFragment rewardsFragment, SignInAdInfoResult signInAdInfoResult) {
                this.f46699a = rewardsFragment;
                this.f46700b = signInAdInfoResult;
            }

            public final void a() {
                this.f46699a.J2(this.f46700b);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                a();
                return Unit.f60915a;
            }
        }

        /* compiled from: FragmentExt.kt */
        @Metadata
        @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 RewardsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$createRecyclerAdapter$1\n*L\n1#1,20:1\n671#2,4:21\n*E\n"})
        /* loaded from: classes7.dex */
        public static final class k implements Function0<Unit> {

            /* renamed from: a */
            final /* synthetic */ RewardsFragment f46701a;

            public k(RewardsFragment rewardsFragment) {
                this.f46701a = rewardsFragment;
            }

            public final void a() {
                FragmentActivity activity;
                if ((this.f46701a.getActivity() instanceof FragmentContainer) && (activity = this.f46701a.getActivity()) != null) {
                    activity.finish();
                }
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                a();
                return Unit.f60915a;
            }
        }

        /* compiled from: FragmentExt.kt */
        @Metadata
        @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 RewardsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$createRecyclerAdapter$1\n*L\n1#1,20:1\n618#2,8:21\n*E\n"})
        /* loaded from: classes7.dex */
        public static final class m implements Function0<Unit> {

            /* renamed from: a */
            final /* synthetic */ RewardsFragment f46702a;

            /* renamed from: b */
            final /* synthetic */ List f46703b;

            /* renamed from: c */
            final /* synthetic */ int f46704c;

            public m(RewardsFragment rewardsFragment, List list, int i10) {
                this.f46702a = rewardsFragment;
                this.f46703b = list;
                this.f46704c = i10;
            }

            public final void a() {
                this.f46702a.d2().Q(new c.d(this.f46703b, this.f46704c, "reward_page"));
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                a();
                return Unit.f60915a;
            }
        }

        /* compiled from: FragmentExt.kt */
        @Metadata
        @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 RewardsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$createRecyclerAdapter$1\n*L\n1#1,20:1\n650#2,8:21\n*E\n"})
        /* loaded from: classes7.dex */
        public static final class o implements Function0<Unit> {

            /* renamed from: a */
            final /* synthetic */ RewardsFragment f46705a;

            /* renamed from: b */
            final /* synthetic */ String f46706b;

            public o(RewardsFragment rewardsFragment, String str) {
                this.f46705a = rewardsFragment;
                this.f46706b = str;
            }

            public final void a() {
                this.f46705a.j2();
                RewardsFragment.P1(this.f46705a, null, 1, null);
                if (this.f46706b.length() > 0) {
                    Context requireContext = this.f46705a.requireContext();
                    Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
                    new ek.e(requireContext, this.f46706b).show();
                }
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                a();
                return Unit.f60915a;
            }
        }

        /* compiled from: FragmentExt.kt */
        @Metadata
        @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 RewardsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$createRecyclerAdapter$1\n*L\n1#1,20:1\n610#2,2:21\n*E\n"})
        /* loaded from: classes7.dex */
        public static final class q implements Function0<Unit> {

            /* renamed from: a */
            final /* synthetic */ RewardsFragment f46707a;

            /* renamed from: b */
            final /* synthetic */ SignInAdInfoResult f46708b;

            public q(RewardsFragment rewardsFragment, SignInAdInfoResult signInAdInfoResult) {
                this.f46707a = rewardsFragment;
                this.f46708b = signInAdInfoResult;
            }

            public final void a() {
                this.f46707a.Z1(this.f46708b, "reward_page");
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                a();
                return Unit.f60915a;
            }
        }

        h() {
            RewardsFragment.this = r1;
        }

        public static final Unit s(RewardsFragment rewardsFragment, com.startshorts.androidplayer.viewmodel.reward.c cVar) {
            rewardsFragment.d2().Q(cVar);
            return Unit.f60915a;
        }

        @Override // com.startshorts.androidplayer.adapter.rewards.RewardsModuleAdapter.d
        public void a(SignInAdInfoResult signInAdInfoResult) {
            RewardsFragment rewardsFragment = RewardsFragment.this;
            FragmentExtKt.b(rewardsFragment, new i(rewardsFragment, signInAdInfoResult), new j());
        }

        @Override // com.startshorts.androidplayer.adapter.rewards.RewardsModuleAdapter.d
        public void b(int i10, String errorMsg) {
            Intrinsics.checkNotNullParameter(errorMsg, "errorMsg");
            RewardsFragment rewardsFragment = RewardsFragment.this;
            FragmentExtKt.b(rewardsFragment, new o(rewardsFragment, errorMsg), new p());
        }

        @Override // com.startshorts.androidplayer.adapter.rewards.RewardsModuleAdapter.d
        public void c(int i10, CheckInInfo checkInInfo, boolean z10) {
            Intrinsics.checkNotNullParameter(checkInInfo, "checkInInfo");
            RewardsFragment.this.U = checkInInfo.getBonus();
            RewardsFragment rewardsFragment = RewardsFragment.this;
            FragmentExtKt.b(rewardsFragment, new c(rewardsFragment, z10, i10, checkInInfo), new d());
        }

        @Override // com.startshorts.androidplayer.adapter.rewards.RewardsModuleAdapter.d
        public void d(WatchAdBonusTask adBonus) {
            Intrinsics.checkNotNullParameter(adBonus, "adBonus");
            RewardsFragment.this.u2(adBonus);
        }

        @Override // com.startshorts.androidplayer.adapter.rewards.RewardsModuleAdapter.d
        public void e(AuthReason reason) {
            Intrinsics.checkNotNullParameter(reason, "reason");
            RewardsFragment.this.k2("task_facebook_login");
            ((FirebaseAuthManager) RewardsFragment.this.C.getValue()).a(reason);
        }

        @Override // com.startshorts.androidplayer.adapter.rewards.RewardsModuleAdapter.d
        public void f(int i10) {
            RewardsFragment.this.j2();
            RewardsFragment.this.K = null;
            RewardsFragment.this.L = 0L;
            RewardsFragment.P1(RewardsFragment.this, null, 1, null);
            RewardsFragment.this.d2().Q(new c.j(false));
        }

        @Override // com.startshorts.androidplayer.adapter.rewards.RewardsModuleAdapter.d
        public void g(Task task) {
            Intrinsics.checkNotNullParameter(task, "task");
            RewardsFragment rewardsFragment = RewardsFragment.this;
            FragmentExtKt.b(rewardsFragment, new a(rewardsFragment, task), new b());
        }

        @Override // com.startshorts.androidplayer.adapter.rewards.RewardsModuleAdapter.d
        public void h(int i10) {
            RewardsFragment.this.U = i10;
            RewardsFragment rewardsFragment = RewardsFragment.this;
            FragmentExtKt.b(rewardsFragment, new e(rewardsFragment, i10), new f());
        }

        @Override // com.startshorts.androidplayer.adapter.rewards.RewardsModuleAdapter.d
        public void i(String from) {
            Intrinsics.checkNotNullParameter(from, "from");
            RewardsFragment.this.x2(from);
        }

        @Override // com.startshorts.androidplayer.adapter.rewards.RewardsModuleAdapter.d
        public void j(List<NewbieWatchBonus> waitReceiveTasks, int i10) {
            Intrinsics.checkNotNullParameter(waitReceiveTasks, "waitReceiveTasks");
            RewardsFragment rewardsFragment = RewardsFragment.this;
            FragmentExtKt.b(rewardsFragment, new m(rewardsFragment, waitReceiveTasks, i10), new n());
        }

        @Override // com.startshorts.androidplayer.adapter.rewards.RewardsModuleAdapter.d
        public void k(SignInAdInfoResult signAdTaskInfo) {
            Intrinsics.checkNotNullParameter(signAdTaskInfo, "signAdTaskInfo");
            RewardsFragment.this.o2(signAdTaskInfo, "reward_page");
            RewardsFragment rewardsFragment = RewardsFragment.this;
            FragmentExtKt.b(rewardsFragment, new q(rewardsFragment, signAdTaskInfo), new r());
        }

        @Override // com.startshorts.androidplayer.adapter.rewards.RewardsModuleAdapter.d
        public void l() {
            au.c.d().l(new UpdateMainTabEvent(MainTab.Type.SHORTS, false, "mission_center", null, 10, null));
            RewardsFragment rewardsFragment = RewardsFragment.this;
            FragmentExtKt.b(rewardsFragment, new k(rewardsFragment), new l());
        }

        @Override // com.startshorts.androidplayer.adapter.rewards.RewardsModuleAdapter.d
        public void m(Task task) {
            Intrinsics.checkNotNullParameter(task, "task");
            RewardsFragment.this.N1(task);
        }

        @Override // com.startshorts.androidplayer.adapter.rewards.RewardsModuleAdapter.d
        public void n(StateViewGroup stateViewGroup, final com.startshorts.androidplayer.viewmodel.reward.c rewardsIntent) {
            Intrinsics.checkNotNullParameter(stateViewGroup, "stateViewGroup");
            Intrinsics.checkNotNullParameter(rewardsIntent, "rewardsIntent");
            final RewardsFragment rewardsFragment = RewardsFragment.this;
            rewardsFragment.m2(stateViewGroup, new Function0() { // from class: vi.w
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit s10;
                    s10 = RewardsFragment.h.s(RewardsFragment.this, rewardsIntent);
                    return s10;
                }
            });
            if (rewardsIntent instanceof c.f) {
                RewardsFragment.this.d2().Q(new c.f("1"));
            } else if (rewardsIntent instanceof c.i) {
                RewardsFragment.this.d2().Q(c.i.f49182a);
            } else if (rewardsIntent instanceof c.j) {
                RewardsFragment.this.d2().Q(new c.j(((c.j) rewardsIntent).a()));
            }
        }

        @Override // com.startshorts.androidplayer.adapter.rewards.RewardsModuleAdapter.d
        public void o(AuthReason reason) {
            Intrinsics.checkNotNullParameter(reason, "reason");
            RewardsFragment.this.k2("task_google_login");
            ((FirebaseAuthManager) RewardsFragment.this.C.getValue()).b(reason);
        }

        @Override // com.startshorts.androidplayer.adapter.rewards.RewardsModuleAdapter.d
        public void onBackPressed() {
            RewardsFragment.this.s();
        }

        @Override // com.startshorts.androidplayer.adapter.rewards.RewardsModuleAdapter.d
        public void p(Task followTask) {
            Intrinsics.checkNotNullParameter(followTask, "followTask");
            RewardsFragment rewardsFragment = RewardsFragment.this;
            FragmentExtKt.b(rewardsFragment, new g(followTask, rewardsFragment), new C0643h());
        }

        @Override // com.startshorts.androidplayer.adapter.rewards.RewardsModuleAdapter.d
        public void q() {
            RewardsFragment.this.d2().Q(c.g.f49180a);
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

        /* compiled from: FragmentExt.kt */
        @Metadata
        @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$4\n+ 2 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$2\n*L\n1#1,21:1\n17#2:22\n*E\n"})
        /* loaded from: classes7.dex */
        public static final class f implements Function0<Unit> {
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
        /* renamed from: com.startshorts.androidplayer.ui.fragment.reward.RewardsFragment$h$h */
        /* loaded from: classes7.dex */
        public static final class C0643h implements Function0<Unit> {
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
        public static final class j implements Function0<Unit> {
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
        public static final class l implements Function0<Unit> {
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
        public static final class n implements Function0<Unit> {
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
        public static final class p implements Function0<Unit> {
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
        public static final class r implements Function0<Unit> {
            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                a();
                return Unit.f60915a;
            }

            public final void a() {
            }
        }
    }

    /* compiled from: FragmentExt.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$4\n+ 2 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$2\n*L\n1#1,21:1\n17#2:22\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class a0 implements Function0<Unit> {
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
    public static final class c implements Function0<Unit> {
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
    public static final class c0 implements Function0<Unit> {
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
    public static final class c1 implements Function0<Unit> {
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
    public static final class e implements Function0<Unit> {
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
    public static final class e0 implements Function0<Unit> {
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
    public static final class g0 implements Function0<Unit> {
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
    public static final class j implements Function0<Unit> {
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
    public static final class k0 implements Function0<Unit> {
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
    public static final class l implements Function0<Unit> {
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
    public static final class m0 implements Function0<Unit> {
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
    public static final class n implements Function0<Unit> {
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
    public static final class o0 implements Function0<Unit> {
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
    public static final class p implements Function0<Unit> {
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
    public static final class q0 implements Function0<Unit> {
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
    public static final class r implements Function0<Unit> {
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
    public static final class t implements Function0<Unit> {
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
    public static final class t0 implements Function0<Unit> {
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
    public static final class w0 implements Function0<Unit> {
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
    public static final class y implements Function0<Unit> {
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
    public static final class z0 implements Function0<Unit> {
        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            a();
            return Unit.f60915a;
        }

        public final void a() {
        }
    }
}
