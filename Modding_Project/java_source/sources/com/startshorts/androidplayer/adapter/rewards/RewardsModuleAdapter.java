package com.startshorts.androidplayer.adapter.rewards;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.provider.Settings;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.ViewStubProxy;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.Observer;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.hades.aar.pagestate.State;
import com.hades.aar.pagestate.StateViewGroup;
import com.startshorts.androidplayer.R$color;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.adapter.act.ActBannerAdapter;
import com.startshorts.androidplayer.adapter.base.BaseAdapter;
import com.startshorts.androidplayer.adapter.checkin.CheckInAdapter;
import com.startshorts.androidplayer.adapter.rewards.DailyTaskAdapter;
import com.startshorts.androidplayer.adapter.rewards.OneTimeTaskAdapter;
import com.startshorts.androidplayer.adapter.rewards.RewardsModuleAdapter;
import com.startshorts.androidplayer.bean.act.ActResource;
import com.startshorts.androidplayer.bean.act.ResourceIndex;
import com.startshorts.androidplayer.bean.ad.AdScene;
import com.startshorts.androidplayer.bean.ad.QueryWatchAdBonusTaskResult;
import com.startshorts.androidplayer.bean.ad.QueryWatchAdTaskComplete;
import com.startshorts.androidplayer.bean.ad.WatchAdBonusTask;
import com.startshorts.androidplayer.bean.auth.AuthReason;
import com.startshorts.androidplayer.bean.bundle.StringBundle;
import com.startshorts.androidplayer.bean.checkin.CheckInInfo;
import com.startshorts.androidplayer.bean.checkin.CheckInInfoResult;
import com.startshorts.androidplayer.bean.checkin.NewbieWatchBonus;
import com.startshorts.androidplayer.bean.checkin.NewbieWatchTask;
import com.startshorts.androidplayer.bean.checkin.SignInAdInfoResult;
import com.startshorts.androidplayer.bean.reward.RewardsModule;
import com.startshorts.androidplayer.bean.task.Task;
import com.startshorts.androidplayer.bean.task.TaskModule;
import com.startshorts.androidplayer.bean.task.TaskModuleList;
import com.startshorts.androidplayer.databinding.ItemRewardFragmentModuleCheckInAndYourBonusBinding;
import com.startshorts.androidplayer.databinding.ItemRewardFragmentModuleDailyWatchBinding;
import com.startshorts.androidplayer.databinding.ItemRewardFragmentModuleDesBinding;
import com.startshorts.androidplayer.databinding.ItemRewardFragmentModuleGetMoreTitleBinding;
import com.startshorts.androidplayer.databinding.ItemRewardFragmentModuleTaskBinding;
import com.startshorts.androidplayer.databinding.ItemRewardFragmentModuleWatchAdBinding;
import com.startshorts.androidplayer.databinding.ItemTaskCenterActBannerBinding;
import com.startshorts.androidplayer.manager.act.ActResourceManager;
import com.startshorts.androidplayer.manager.ad.AdManager;
import com.startshorts.androidplayer.manager.configure.abtest.ABTestFactory;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.repo.rewards.RewardsRepo;
import com.startshorts.androidplayer.ui.activity.base.FragmentContainer;
import com.startshorts.androidplayer.ui.fragment.reward.RewardsFragment;
import com.startshorts.androidplayer.ui.view.act.ActBanner;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.pagestate.SNetworkErrorView;
import com.startshorts.androidplayer.ui.view.pagestate.SOtherErrorView;
import com.startshorts.androidplayer.ui.view.task.AccumulatedDailyTaskView;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.utils.TimeUtil;
import com.startshorts.androidplayer.viewmodel.reward.a;
import com.startshorts.androidplayer.viewmodel.reward.c;
import com.startshorts.androidplayer.viewmodel.reward.j;
import com.startshorts.androidplayer.viewmodel.reward.k;
import fk.h0;
import fk.u;
import fk.z;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
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
import kotlin.jvm.internal.StringCompanionObject;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RewardsModuleAdapter.kt */
@Metadata
@SourceDebugExtension({"SMAP\nRewardsModuleAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RewardsModuleAdapter.kt\ncom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1506:1\n360#2,7:1507\n*S KotlinDebug\n*F\n+ 1 RewardsModuleAdapter.kt\ncom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter\n*L\n1062#1:1507,7\n*E\n"})
/* loaded from: classes6.dex */
public final class RewardsModuleAdapter extends BaseAdapter<RewardsModule> {
    @NotNull
    public static final b L = new b(null);
    @Nullable
    private BaseTextView A;
    @Nullable
    private ImageView B;
    @Nullable
    private CheckInAdapter C;
    @Nullable
    private r D;
    @Nullable
    private r E;
    @Nullable
    private OneTimeTaskAdapter F;
    @Nullable
    private DailyTaskAdapter G;
    @Nullable
    private QueryWatchAdBonusTaskResult H;
    private boolean I;
    private boolean J;
    private boolean K;
    @NotNull

    /* renamed from: o  reason: collision with root package name */
    private final d f37884o;
    @NotNull

    /* renamed from: p  reason: collision with root package name */
    private final LifecycleOwner f37885p;
    @NotNull

    /* renamed from: q  reason: collision with root package name */
    private final Function0<String> f37886q;
    @NotNull

    /* renamed from: r  reason: collision with root package name */
    private final Function0<Boolean> f37887r;
    @NotNull

    /* renamed from: s  reason: collision with root package name */
    private final WeakReference<Activity> f37888s;
    @Nullable

    /* renamed from: t  reason: collision with root package name */
    private Lifecycle f37889t;
    @Nullable

    /* renamed from: u  reason: collision with root package name */
    private WeakReference<ActBanner> f37890u;

    /* renamed from: v  reason: collision with root package name */
    private boolean f37891v;
    @Nullable

    /* renamed from: w  reason: collision with root package name */
    private Function0<Unit> f37892w;
    @Nullable

    /* renamed from: x  reason: collision with root package name */
    private RecyclerView f37893x;
    @Nullable

    /* renamed from: y  reason: collision with root package name */
    private View f37894y;
    @Nullable

    /* renamed from: z  reason: collision with root package name */
    private BaseTextView f37895z;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: RewardsModuleAdapter.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nRewardsModuleAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RewardsModuleAdapter.kt\ncom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1506:1\n360#2,7:1507\n360#2,7:1516\n256#3,2:1514\n1#4:1523\n*S KotlinDebug\n*F\n+ 1 RewardsModuleAdapter.kt\ncom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder\n*L\n442#1:1507,7\n507#1:1516,7\n498#1:1514,2\n*E\n"})
    /* loaded from: classes6.dex */
    public final class CheckInTaskViewHolder extends BaseAdapter<RewardsModule>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemRewardFragmentModuleCheckInAndYourBonusBinding f37896g;

        /* renamed from: h  reason: collision with root package name */
        private int f37897h;

        /* renamed from: i  reason: collision with root package name */
        private int f37898i;
        @Nullable

        /* renamed from: j  reason: collision with root package name */
        private Function0<Unit> f37899j;
        @Nullable

        /* renamed from: k  reason: collision with root package name */
        private Function0<Unit> f37900k;

        /* renamed from: l  reason: collision with root package name */
        final /* synthetic */ RewardsModuleAdapter f37901l;

        /* compiled from: RewardsModuleAdapter.kt */
        @Metadata
        /* loaded from: classes6.dex */
        public static final class a extends yd.d {

            /* renamed from: e  reason: collision with root package name */
            final /* synthetic */ RewardsModuleAdapter f37902e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(RewardsModuleAdapter rewardsModuleAdapter) {
                super(0L, 1, null);
                this.f37902e = rewardsModuleAdapter;
            }

            @Override // yd.d
            public void a(View v10) {
                Intrinsics.checkNotNullParameter(v10, "v");
                this.f37902e.r0().onBackPressed();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: RewardsModuleAdapter.kt */
        @Metadata
        /* loaded from: classes6.dex */
        public static final class b implements Function1 {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ RewardsModuleAdapter f37903a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ CheckInTaskViewHolder f37904b;

            b(RewardsModuleAdapter rewardsModuleAdapter, CheckInTaskViewHolder checkInTaskViewHolder) {
                this.f37903a = rewardsModuleAdapter;
                this.f37904b = checkInTaskViewHolder;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final Unit c(RewardsModuleAdapter rewardsModuleAdapter) {
                ViewParent viewParent;
                rewardsModuleAdapter.I = true;
                BaseTextView baseTextView = rewardsModuleAdapter.f37895z;
                View view = null;
                if (baseTextView != null) {
                    viewParent = baseTextView.getParent();
                } else {
                    viewParent = null;
                }
                if (viewParent instanceof View) {
                    view = (View) viewParent;
                }
                if (view != null) {
                    view.performClick();
                }
                return Unit.f60915a;
            }

            public final void b(Object obj) {
                List<CheckInInfo> list;
                ViewParent viewParent;
                if (!(obj instanceof com.startshorts.androidplayer.viewmodel.reward.a)) {
                    return;
                }
                if (obj instanceof a.C0681a) {
                    this.f37903a.l("CheckInFailed -> " + ((a.C0681a) obj).a().getMsg());
                    return;
                }
                View view = null;
                if (obj instanceof a.b) {
                    this.f37903a.r("CheckInInfoLoaded -> isFragmentResumed=" + this.f37903a.v0());
                    this.f37904b.c().f40689i.c(State.LOADING);
                    a.b bVar = (a.b) obj;
                    CheckInInfoResult a10 = bVar.a();
                    if (a10 != null) {
                        list = a10.getSignRecords();
                    } else {
                        list = null;
                    }
                    List<CheckInInfo> list2 = list;
                    if (list2 != null && !list2.isEmpty()) {
                        this.f37904b.M(list);
                        CheckInTaskViewHolder checkInTaskViewHolder = this.f37904b;
                        checkInTaskViewHolder.f37897h = checkInTaskViewHolder.C(list);
                        if (this.f37904b.f37897h > 0) {
                            this.f37904b.f37898i += this.f37904b.f37897h;
                        }
                        if (bVar.a().getClickDoubleAdToday()) {
                            this.f37904b.f37898i += this.f37904b.f37897h;
                        }
                        if (this.f37904b.L(list)) {
                            this.f37903a.l0();
                            AdManager.f41600a.a0(AdScene.REWARD);
                            if (this.f37903a.v0()) {
                                this.f37903a.I = true;
                                BaseTextView baseTextView = this.f37903a.f37895z;
                                if (baseTextView != null) {
                                    viewParent = baseTextView.getParent();
                                } else {
                                    viewParent = null;
                                }
                                if (viewParent instanceof View) {
                                    view = (View) viewParent;
                                }
                                if (view != null) {
                                    view.performClick();
                                    return;
                                }
                                return;
                            }
                            final RewardsModuleAdapter rewardsModuleAdapter = this.f37903a;
                            rewardsModuleAdapter.f37892w = new Function0() { // from class: com.startshorts.androidplayer.adapter.rewards.h
                                @Override // kotlin.jvm.functions.Function0
                                public final Object invoke() {
                                    Unit c10;
                                    c10 = RewardsModuleAdapter.CheckInTaskViewHolder.b.c(RewardsModuleAdapter.this);
                                    return c10;
                                }
                            };
                            return;
                        }
                        this.f37903a.r0().h(-1);
                    }
                } else if (obj instanceof a.c) {
                    a.c cVar = (a.c) obj;
                    if (cVar.a().isNetworkError()) {
                        RewardsModuleAdapter rewardsModuleAdapter2 = this.f37903a;
                        StateViewGroup checkInStateViewGroup = this.f37904b.c().f40689i;
                        Intrinsics.checkNotNullExpressionValue(checkInStateViewGroup, "checkInStateViewGroup");
                        rewardsModuleAdapter2.E0(checkInStateViewGroup);
                        return;
                    }
                    RewardsModuleAdapter rewardsModuleAdapter3 = this.f37903a;
                    StateViewGroup checkInStateViewGroup2 = this.f37904b.c().f40689i;
                    Intrinsics.checkNotNullExpressionValue(checkInStateViewGroup2, "checkInStateViewGroup");
                    rewardsModuleAdapter3.F0(checkInStateViewGroup2, cVar.a().getMsg());
                } else if (obj instanceof a.d) {
                    this.f37904b.c().f40689i.h(State.LOADING);
                } else if (obj instanceof a.e) {
                    this.f37903a.r0().h(((a.e) obj).a());
                    ud.a.f68411a.D0(true);
                } else if (obj instanceof a.f) {
                    this.f37904b.c().f40689i.d();
                } else if (obj instanceof a.g) {
                    if (this.f37903a.f37892w != null) {
                        Function0 function0 = this.f37903a.f37892w;
                        if (function0 != null) {
                            function0.invoke();
                        }
                        this.f37903a.f37892w = null;
                    }
                    this.f37904b.c().f40689i.e();
                } else if (obj instanceof a.h) {
                    a.h hVar = (a.h) obj;
                    SignInAdInfoResult a11 = hVar.a();
                    if (a11 != null) {
                        int receiveBonus = a11.getReceiveBonus();
                        CheckInTaskViewHolder checkInTaskViewHolder2 = this.f37904b;
                        checkInTaskViewHolder2.f37898i = checkInTaskViewHolder2.f37897h + receiveBonus;
                    }
                    this.f37904b.N(hVar.a());
                    this.f37903a.r0().a(hVar.a());
                    if (hVar.a() == null) {
                        this.f37904b.y();
                    }
                    ud.a.f68411a.D0(true);
                }
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                b(obj);
                return Unit.f60915a;
            }
        }

        /* compiled from: RewardsModuleAdapter.kt */
        @Metadata
        /* loaded from: classes6.dex */
        public static final class c extends yd.d {

            /* renamed from: e  reason: collision with root package name */
            final /* synthetic */ boolean f37905e;

            /* renamed from: f  reason: collision with root package name */
            final /* synthetic */ List<CheckInInfo> f37906f;

            /* renamed from: g  reason: collision with root package name */
            final /* synthetic */ int f37907g;

            /* renamed from: h  reason: collision with root package name */
            final /* synthetic */ RewardsModuleAdapter f37908h;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            c(boolean z10, List<CheckInInfo> list, int i10, RewardsModuleAdapter rewardsModuleAdapter) {
                super(0L, 1, null);
                this.f37905e = z10;
                this.f37906f = list;
                this.f37907g = i10;
                this.f37908h = rewardsModuleAdapter;
            }

            @Override // yd.d
            public void a(View v10) {
                Intrinsics.checkNotNullParameter(v10, "v");
                if (this.f37905e) {
                    this.f37908h.r0().c(this.f37907g, this.f37906f.get(this.f37907g), this.f37908h.I);
                    EventManager eventManager = EventManager.f42463a;
                    Bundle bundle = new Bundle();
                    bundle.putString("ad_active", "check_in");
                    bundle.putString("type", "check_in");
                    Unit unit = Unit.f60915a;
                    EventManager.s0(eventManager, "watch_ad_click", bundle, 0L, 4, null);
                }
                this.f37908h.I = false;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CheckInTaskViewHolder(@NotNull RewardsModuleAdapter rewardsModuleAdapter, ItemRewardFragmentModuleCheckInAndYourBonusBinding binding) {
            super(rewardsModuleAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37901l = rewardsModuleAdapter;
            this.f37896g = binding;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final int C(List<CheckInInfo> list) {
            String l10 = RewardsRepo.f44515a.l();
            Iterator<CheckInInfo> it = list.iterator();
            int i10 = 0;
            while (true) {
                if (it.hasNext()) {
                    if (Intrinsics.areEqual(it.next().getDay(), l10)) {
                        break;
                    }
                    i10++;
                } else {
                    i10 = -1;
                    break;
                }
            }
            CheckInInfo checkInInfo = (CheckInInfo) CollectionsKt.t0(list, i10);
            if (checkInInfo == null) {
                return 0;
            }
            return checkInInfo.getBonus();
        }

        /* JADX INFO: Access modifiers changed from: private */
        @SuppressLint({"SetTextI18n"})
        public final void D() {
            c().f40684d.setText(String.valueOf(AccountRepo.f43052a.e0()));
        }

        private final void E() {
            if (this.f37901l.f37895z == null) {
                ViewStubProxy checkInButtonViewstub = c().f40686f;
                Intrinsics.checkNotNullExpressionValue(checkInButtonViewstub, "checkInButtonViewstub");
                View c10 = e0.c(checkInButtonViewstub);
                if (c10 != null) {
                    RewardsModuleAdapter rewardsModuleAdapter = this.f37901l;
                    rewardsModuleAdapter.f37894y = c10;
                    rewardsModuleAdapter.f37895z = (BaseTextView) c10.findViewById(R$id.check_in_tv);
                    rewardsModuleAdapter.B = (ImageView) c10.findViewById(R$id.check_in_ad_double_rewards_iv);
                    rewardsModuleAdapter.A = (BaseTextView) c10.findViewById(R$id.check_in_earn_tv);
                    ImageView imageView = rewardsModuleAdapter.B;
                    if (imageView != null) {
                        imageView.setImageResource(R$drawable.ic_check_in_tv_new);
                    }
                    int color = ContextCompat.getColor(c().getRoot().getContext(), R$color.color_rewards_fragment_double_rewards);
                    BaseTextView baseTextView = rewardsModuleAdapter.f37895z;
                    if (baseTextView != null) {
                        baseTextView.setTextColor(color);
                    }
                    BaseTextView baseTextView2 = rewardsModuleAdapter.A;
                    if (baseTextView2 != null) {
                        baseTextView2.setTextColor(color);
                    }
                    BaseTextView baseTextView3 = rewardsModuleAdapter.A;
                    if (baseTextView3 != null) {
                        baseTextView3.setVisibility(8);
                    }
                }
            }
        }

        private final void F() {
            if (this.f37901l.w0().invoke().booleanValue()) {
                b0.d(c().f40694n);
                b0.d(c().f40697q);
                b0.l(c().f40698r);
            } else {
                b0.l(c().f40694n);
                b0.l(c().f40697q);
                b0.d(c().f40698r);
            }
            c().f40694n.setOnClickListener(new a(this.f37901l));
        }

        private final void G() {
            View toolbarView = c().f40699s;
            Intrinsics.checkNotNullExpressionValue(toolbarView, "toolbarView");
            b0.i(toolbarView, 0, DeviceUtil.f48146a.J(), 0, 0, 13, null);
        }

        private final void H(boolean z10, boolean z11) {
            ViewParent viewParent;
            int i10;
            float f10;
            BaseTextView baseTextView = this.f37901l.f37895z;
            View view = null;
            if (baseTextView != null) {
                viewParent = baseTextView.getParent();
            } else {
                viewParent = null;
            }
            if (viewParent instanceof View) {
                view = (View) viewParent;
            }
            if (view != null) {
                if (z10) {
                    f10 = 1.0f;
                } else {
                    f10 = 0.4f;
                }
                view.setAlpha(f10);
                view.setEnabled(z10);
            }
            ImageView imageView = this.f37901l.B;
            if (imageView != null) {
                if (z11) {
                    i10 = 0;
                } else {
                    i10 = 8;
                }
                imageView.setVisibility(i10);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit J(RewardsModuleAdapter rewardsModuleAdapter, LiveData liveData, RewardsModuleAdapter$CheckInTaskViewHolder$setItem$observer$1 rewardsModuleAdapter$CheckInTaskViewHolder$setItem$observer$1) {
            rewardsModuleAdapter.r("CheckInAndYourBonusViewHolder -> observeForever");
            liveData.observeForever(rewardsModuleAdapter$CheckInTaskViewHolder$setItem$observer$1);
            return Unit.f60915a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit K(RewardsModuleAdapter rewardsModuleAdapter, LiveData liveData, RewardsModuleAdapter$CheckInTaskViewHolder$setItem$observer$1 rewardsModuleAdapter$CheckInTaskViewHolder$setItem$observer$1) {
            rewardsModuleAdapter.r("CheckInAndYourBonusViewHolder -> removeObserver");
            liveData.removeObserver(rewardsModuleAdapter$CheckInTaskViewHolder$setItem$observer$1);
            return Unit.f60915a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean L(List<CheckInInfo> list) {
            boolean z10;
            View view;
            String h10 = TimeUtil.f48175a.h(jk.f.a(new Date()), RewardsFragment.Y.a(), TimeUtil.Template.YEAR_MONTH_DAY);
            Iterator<CheckInInfo> it = list.iterator();
            int i10 = 0;
            while (true) {
                if (it.hasNext()) {
                    if (Intrinsics.areEqual(it.next().getDay(), h10)) {
                        break;
                    }
                    i10++;
                } else {
                    i10 = -1;
                    break;
                }
            }
            if (i10 == -1 || list.get(i10).isSign()) {
                z10 = false;
            } else {
                z10 = true;
            }
            this.f37901l.D0(list.get(i10).isSign());
            E();
            BaseTextView baseTextView = this.f37901l.f37895z;
            if (baseTextView != null) {
                RewardsModuleAdapter rewardsModuleAdapter = this.f37901l;
                H(z10, false);
                baseTextView.setText(ContextCompat.getString(c().getRoot().getContext(), R$string.rewards_activity_check_in));
                ViewParent parent = baseTextView.getParent();
                if (parent instanceof View) {
                    view = (View) parent;
                } else {
                    view = null;
                }
                if (view != null) {
                    view.setOnClickListener(new c(z10, list, i10, rewardsModuleAdapter));
                }
            }
            return z10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void M(List<CheckInInfo> list) {
            RecyclerView recyclerView;
            if (this.f37901l.f37893x == null) {
                RewardsModuleAdapter rewardsModuleAdapter = this.f37901l;
                ViewStubProxy checkInRvViewstub = c().f40688h;
                Intrinsics.checkNotNullExpressionValue(checkInRvViewstub, "checkInRvViewstub");
                View e10 = e0.e(checkInRvViewstub);
                if (e10 instanceof RecyclerView) {
                    recyclerView = (RecyclerView) e10;
                } else {
                    recyclerView = null;
                }
                if (recyclerView != null) {
                    RewardsModuleAdapter rewardsModuleAdapter2 = this.f37901l;
                    recyclerView.setLayoutManager(new GridLayoutManager(recyclerView.getContext(), 7));
                    recyclerView.setItemAnimator(null);
                    if (recyclerView.getItemDecorationCount() == 0) {
                        final int a10 = jk.g.a(1.5f);
                        recyclerView.addItemDecoration(new RecyclerView.ItemDecoration() { // from class: com.startshorts.androidplayer.adapter.rewards.RewardsModuleAdapter$CheckInTaskViewHolder$showCheckInRV$1$1
                            @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
                            public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.State state) {
                                Intrinsics.checkNotNullParameter(outRect, "outRect");
                                Intrinsics.checkNotNullParameter(view, "view");
                                Intrinsics.checkNotNullParameter(parent, "parent");
                                Intrinsics.checkNotNullParameter(state, "state");
                                int i10 = a10;
                                outRect.set(i10, 0, i10, 0);
                            }
                        });
                    }
                    rewardsModuleAdapter2.C = new CheckInAdapter();
                    recyclerView.setAdapter(rewardsModuleAdapter2.C);
                } else {
                    recyclerView = null;
                }
                rewardsModuleAdapter.f37893x = recyclerView;
            }
            CheckInAdapter checkInAdapter = this.f37901l.C;
            if (checkInAdapter != null) {
                BaseAdapter.D(checkInAdapter, list, false, 2, null);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        @SuppressLint({"SetTextI18n"})
        public final void N(final SignInAdInfoResult signInAdInfoResult) {
            View view;
            this.f37901l.m0();
            E();
            ImageView imageView = this.f37901l.B;
            if (imageView != null) {
                imageView.setImageResource(R$drawable.ic_check_in_ad_double_rewards_new);
            }
            final BaseTextView baseTextView = this.f37901l.f37895z;
            if (baseTextView != null) {
                final RewardsModuleAdapter rewardsModuleAdapter = this.f37901l;
                if (signInAdInfoResult != null) {
                    if (signInAdInfoResult.getCompleteNum() == 0) {
                        H(true, true);
                        baseTextView.setText(ContextCompat.getString(c().getRoot().getContext(), R$string.check_in_dialog_get_now));
                        BaseTextView baseTextView2 = rewardsModuleAdapter.A;
                        if (baseTextView2 != null) {
                            baseTextView2.setVisibility(0);
                        }
                        String string = ContextCompat.getString(c().getRoot().getContext(), R$string.rewards_check_in_dialog_earn_up_progress);
                        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
                        BaseTextView baseTextView3 = rewardsModuleAdapter.A;
                        if (baseTextView3 != null) {
                            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                            String format = String.format(string, Arrays.copyOf(new Object[]{String.valueOf(signInAdInfoResult.getSumBonus()), String.valueOf(signInAdInfoResult.getCompleteNum()), String.valueOf(signInAdInfoResult.getSumNum())}, 3));
                            Intrinsics.checkNotNullExpressionValue(format, "format(...)");
                            baseTextView3.setText(format);
                        }
                    } else if (signInAdInfoResult.getCompleteNum() < signInAdInfoResult.getSumNum()) {
                        BaseTextView baseTextView4 = rewardsModuleAdapter.A;
                        if (baseTextView4 != null) {
                            baseTextView4.setVisibility(0);
                        }
                        String string2 = ContextCompat.getString(c().getRoot().getContext(), R$string.rewards_check_in_dialog_earn_up_progress);
                        Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
                        BaseTextView baseTextView5 = rewardsModuleAdapter.A;
                        if (baseTextView5 != null) {
                            StringCompanionObject stringCompanionObject2 = StringCompanionObject.INSTANCE;
                            String format2 = String.format(string2, Arrays.copyOf(new Object[]{String.valueOf(signInAdInfoResult.getSumBonus()), String.valueOf(signInAdInfoResult.getCompleteNum()), String.valueOf(signInAdInfoResult.getSumNum())}, 3));
                            Intrinsics.checkNotNullExpressionValue(format2, "format(...)");
                            baseTextView5.setText(format2);
                        }
                        if (signInAdInfoResult.getInterval() > 0 && rewardsModuleAdapter.J) {
                            H(false, true);
                            rewardsModuleAdapter.E = CoroutineUtil.f48072a.d(signInAdInfoResult.getInterval(), new Function1() { // from class: com.startshorts.androidplayer.adapter.rewards.e
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj) {
                                    Unit P;
                                    P = RewardsModuleAdapter.CheckInTaskViewHolder.P(RewardsModuleAdapter.CheckInTaskViewHolder.this, baseTextView, ((Integer) obj).intValue());
                                    return P;
                                }
                            }, new Function0() { // from class: com.startshorts.androidplayer.adapter.rewards.f
                                @Override // kotlin.jvm.functions.Function0
                                public final Object invoke() {
                                    Unit Q;
                                    Q = RewardsModuleAdapter.CheckInTaskViewHolder.Q(RewardsModuleAdapter.CheckInTaskViewHolder.this, baseTextView);
                                    return Q;
                                }
                            });
                        } else {
                            H(true, true);
                            baseTextView.setText(ContextCompat.getString(c().getRoot().getContext(), R$string.check_in_dialog_get_now));
                        }
                    } else {
                        BaseTextView baseTextView6 = rewardsModuleAdapter.A;
                        if (baseTextView6 != null) {
                            baseTextView6.setVisibility(8);
                        }
                        H(false, false);
                        baseTextView.setText(ContextCompat.getString(c().getRoot().getContext(), R$string.rewards_activity_check_in_btn_comeback_tomorrow));
                        y();
                    }
                    c().f40690j.setText(signInAdInfoResult.getTaskDescription());
                }
                rewardsModuleAdapter.J = true;
                ViewParent parent = baseTextView.getParent();
                if (parent instanceof View) {
                    view = (View) parent;
                } else {
                    view = null;
                }
                if (view != null) {
                    view.setOnClickListener(new View.OnClickListener() { // from class: com.startshorts.androidplayer.adapter.rewards.g
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view2) {
                            RewardsModuleAdapter.CheckInTaskViewHolder.O(SignInAdInfoResult.this, rewardsModuleAdapter, view2);
                        }
                    });
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void O(SignInAdInfoResult signInAdInfoResult, RewardsModuleAdapter rewardsModuleAdapter, View view) {
            if (signInAdInfoResult != null) {
                rewardsModuleAdapter.r0().k(signInAdInfoResult);
            }
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            bundle.putString("ad_active", "check_in");
            bundle.putString("type", "1");
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "watch_ad_click", bundle, 0L, 4, null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit P(CheckInTaskViewHolder checkInTaskViewHolder, BaseTextView baseTextView, int i10) {
            String string = ContextCompat.getString(checkInTaskViewHolder.c().getRoot().getContext(), R$string.rewards_check_in_dialog_check_more_countdown);
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            String format = String.format(string, Arrays.copyOf(new Object[]{String.valueOf(i10)}, 1));
            Intrinsics.checkNotNullExpressionValue(format, "format(...)");
            String string2 = ContextCompat.getString(checkInTaskViewHolder.c().getRoot().getContext(), R$string.check_in_dialog_get_now);
            Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
            baseTextView.setText(string2 + ' ' + format);
            return Unit.f60915a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit Q(CheckInTaskViewHolder checkInTaskViewHolder, BaseTextView baseTextView) {
            checkInTaskViewHolder.H(true, true);
            baseTextView.setText(ContextCompat.getString(checkInTaskViewHolder.c().getRoot().getContext(), R$string.check_in_dialog_get_now));
            return Unit.f60915a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void y() {
            TextView textView;
            ViewStubProxy foldUpModule = c().f40693m;
            Intrinsics.checkNotNullExpressionValue(foldUpModule, "foldUpModule");
            View c10 = e0.c(foldUpModule);
            b0.l(c10);
            if (c10 != null && (textView = (TextView) c10.findViewById(R$id.check_in_comeback_tomorrow_desc_bonus)) != null) {
                String string = ContextCompat.getString(c().getRoot().getContext(), R$string.common_bonus);
                Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
                StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                String format = String.format(string, Arrays.copyOf(new Object[]{String.valueOf(this.f37898i)}, 1));
                Intrinsics.checkNotNullExpressionValue(format, "format(...)");
                textView.setText(format);
            }
            b0.d(c().f40695o);
            b0.d(c().f40691k);
            b0.d(c().f40692l);
            b0.d(c().f40687g);
            b0.d(this.f37901l.f37893x);
            b0.d(this.f37901l.f37894y);
            b0.d(c().f40685e);
            b0.d(c().f40689i);
            b0.d(c().f40690j);
            ud.a.f68411a.D0(true);
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: A */
        public ItemRewardFragmentModuleCheckInAndYourBonusBinding c() {
            return this.f37896g;
        }

        @Nullable
        public final Function0<Unit> B() {
            return this.f37899j;
        }

        /* JADX WARN: Type inference failed for: r4v5, types: [com.startshorts.androidplayer.adapter.rewards.RewardsModuleAdapter$CheckInTaskViewHolder$setItem$observer$1] */
        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: I */
        public void g(int i10, @Nullable RewardsModule rewardsModule, @NotNull List<Object> payloads) {
            Object obj;
            Intrinsics.checkNotNullParameter(payloads, "payloads");
            d r02 = this.f37901l.r0();
            StateViewGroup checkInStateViewGroup = c().f40689i;
            Intrinsics.checkNotNullExpressionValue(checkInStateViewGroup, "checkInStateViewGroup");
            r02.n(checkInStateViewGroup, new c.f("1"));
            G();
            F();
            D();
            final LiveData liveData = null;
            if (rewardsModule != null) {
                obj = rewardsModule.getState();
            } else {
                obj = null;
            }
            if (obj instanceof LiveData) {
                liveData = (LiveData) obj;
            }
            if (liveData == null) {
                return;
            }
            liveData.observe(this.f37901l.s0(), new g(new b(this.f37901l, this)));
            final ?? r42 = new Observer<Object>() { // from class: com.startshorts.androidplayer.adapter.rewards.RewardsModuleAdapter$CheckInTaskViewHolder$setItem$observer$1
                @Override // androidx.lifecycle.Observer
                public void onChanged(Object value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    if ((value instanceof com.startshorts.androidplayer.viewmodel.reward.a) && (((com.startshorts.androidplayer.viewmodel.reward.a) value) instanceof a.i)) {
                        RewardsModuleAdapter.CheckInTaskViewHolder.this.D();
                    }
                }
            };
            final RewardsModuleAdapter rewardsModuleAdapter = this.f37901l;
            this.f37900k = new Function0() { // from class: com.startshorts.androidplayer.adapter.rewards.c
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit J;
                    J = RewardsModuleAdapter.CheckInTaskViewHolder.J(RewardsModuleAdapter.this, liveData, r42);
                    return J;
                }
            };
            final RewardsModuleAdapter rewardsModuleAdapter2 = this.f37901l;
            this.f37899j = new Function0() { // from class: com.startshorts.androidplayer.adapter.rewards.d
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit K;
                    K = RewardsModuleAdapter.CheckInTaskViewHolder.K(RewardsModuleAdapter.this, liveData, r42);
                    return K;
                }
            };
        }

        @Nullable
        public final Function0<Unit> z() {
            return this.f37900k;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: RewardsModuleAdapter.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nRewardsModuleAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RewardsModuleAdapter.kt\ncom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1506:1\n360#2,7:1507\n1863#2,2:1514\n1863#2,2:1516\n*S KotlinDebug\n*F\n+ 1 RewardsModuleAdapter.kt\ncom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder\n*L\n1163#1:1507,7\n1370#1:1514,2\n1383#1:1516,2\n*E\n"})
    /* loaded from: classes6.dex */
    public final class DailyTaskViewHolder extends BaseAdapter<RewardsModule>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemRewardFragmentModuleWatchAdBinding f37911g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ RewardsModuleAdapter f37912h;

        /* compiled from: RewardsModuleAdapter.kt */
        @Metadata
        /* loaded from: classes6.dex */
        public static final class a extends yd.d {

            /* renamed from: e  reason: collision with root package name */
            final /* synthetic */ Ref.ObjectRef<List<WatchAdBonusTask>> f37913e;

            /* renamed from: f  reason: collision with root package name */
            final /* synthetic */ List<WatchAdBonusTask> f37914f;

            /* renamed from: g  reason: collision with root package name */
            final /* synthetic */ RewardsModuleAdapter f37915g;

            /* renamed from: h  reason: collision with root package name */
            final /* synthetic */ DailyTaskViewHolder f37916h;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(Ref.ObjectRef<List<WatchAdBonusTask>> objectRef, List<WatchAdBonusTask> list, RewardsModuleAdapter rewardsModuleAdapter, DailyTaskViewHolder dailyTaskViewHolder) {
                super(0L, 1, null);
                this.f37913e = objectRef;
                this.f37914f = list;
                this.f37915g = rewardsModuleAdapter;
                this.f37916h = dailyTaskViewHolder;
            }

            /* JADX WARN: Type inference failed for: r3v0, types: [T, java.util.ArrayList] */
            /* JADX WARN: Type inference failed for: r3v6, types: [java.util.List<com.startshorts.androidplayer.bean.ad.WatchAdBonusTask>, T] */
            @Override // yd.d
            public void a(View v10) {
                Intrinsics.checkNotNullParameter(v10, "v");
                ud.a aVar = ud.a.f68411a;
                if (!aVar.S()) {
                    this.f37913e.element = this.f37914f;
                    RewardsModuleAdapter rewardsModuleAdapter = this.f37915g;
                    Context context = this.f37916h.c().getRoot().getContext();
                    Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
                    BaseTextView foldUp = this.f37916h.c().f40733a;
                    Intrinsics.checkNotNullExpressionValue(foldUp, "foldUp");
                    rewardsModuleAdapter.n0(context, foldUp, R$string.rewards_daily_list_fold, R$drawable.ic_arrow_up3);
                } else {
                    this.f37913e.element = new ArrayList(CollectionsKt.V0(this.f37914f, 10));
                    RewardsModuleAdapter rewardsModuleAdapter2 = this.f37915g;
                    Context context2 = this.f37916h.c().getRoot().getContext();
                    Intrinsics.checkNotNullExpressionValue(context2, "getContext(...)");
                    BaseTextView foldUp2 = this.f37916h.c().f40733a;
                    Intrinsics.checkNotNullExpressionValue(foldUp2, "foldUp");
                    rewardsModuleAdapter2.n0(context2, foldUp2, R$string.daily_watch_drama_task_more, R$drawable.ic_arrow_down3);
                }
                aVar.E0(!aVar.S());
                DailyTaskAdapter dailyTaskAdapter = this.f37915g.G;
                if (dailyTaskAdapter != null) {
                    BaseAdapter.D(dailyTaskAdapter, this.f37913e.element, false, 2, null);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: RewardsModuleAdapter.kt */
        @Metadata
        /* loaded from: classes6.dex */
        public static final class b implements Function1 {
            b() {
            }

            public final void a(Object obj) {
                DailyTaskViewHolder dailyTaskViewHolder = DailyTaskViewHolder.this;
                Intrinsics.checkNotNull(obj);
                dailyTaskViewHolder.o(obj);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                a(obj);
                return Unit.f60915a;
            }
        }

        /* compiled from: RewardsModuleAdapter.kt */
        @Metadata
        /* loaded from: classes6.dex */
        public static final class c implements DailyTaskAdapter.c {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ RewardsModuleAdapter f37918a;

            c(RewardsModuleAdapter rewardsModuleAdapter) {
                this.f37918a = rewardsModuleAdapter;
            }

            @Override // com.startshorts.androidplayer.adapter.rewards.DailyTaskAdapter.c
            public void a(WatchAdBonusTask adBonus) {
                String str;
                Integer taskContent;
                Intrinsics.checkNotNullParameter(adBonus, "adBonus");
                EventManager eventManager = EventManager.f42463a;
                Bundle bundle = new Bundle();
                bundle.putString("from", this.f37918a.p0().invoke());
                bundle.putString("type", String.valueOf(adBonus.getTaskCategory()));
                bundle.putString("task_id", String.valueOf(adBonus.getTaskId()));
                bundle.putString("task_type", String.valueOf(adBonus.getTaskType()));
                Integer taskType = adBonus.getTaskType();
                if (taskType != null && taskType.intValue() == 1) {
                    str = "广告类";
                } else {
                    str = "";
                }
                bundle.putString("task_type_name", str);
                bundle.putString("task_name", adBonus.getTaskName());
                bundle.putString("task_sort_id", String.valueOf(adBonus.getTaskSortId()));
                bundle.putString("task_type_id", String.valueOf(adBonus.getTaskType()));
                bundle.putString("task_term_name", String.valueOf(adBonus.getTaskContent()));
                Unit unit = Unit.f60915a;
                EventManager.s0(eventManager, "task_click", bundle, 0L, 4, null);
                Integer taskContent2 = adBonus.getTaskContent();
                if ((taskContent2 == null || taskContent2.intValue() != 4) && ((taskContent = adBonus.getTaskContent()) == null || taskContent.intValue() != 5)) {
                    Bundle bundle2 = new Bundle();
                    bundle2.putString("ad_active", "daily_reward");
                    bundle2.putString("type", "1");
                    EventManager.s0(eventManager, "watch_ad_click", bundle2, 0L, 4, null);
                }
                this.f37918a.r0().d(adBonus);
            }

            @Override // com.startshorts.androidplayer.adapter.rewards.DailyTaskAdapter.c
            public void b(WatchAdBonusTask adBonus) {
                String str;
                Intrinsics.checkNotNullParameter(adBonus, "adBonus");
                EventManager eventManager = EventManager.f42463a;
                Bundle bundle = new Bundle();
                bundle.putString("from", this.f37918a.p0().invoke());
                bundle.putString("type", String.valueOf(adBonus.getTaskCategory()));
                bundle.putString("task_id", String.valueOf(adBonus.getTaskId()));
                bundle.putString("task_type", String.valueOf(adBonus.getTaskType()));
                Integer taskType = adBonus.getTaskType();
                if (taskType != null && taskType.intValue() == 1) {
                    str = "广告类";
                } else {
                    str = "";
                }
                bundle.putString("task_type_name", str);
                bundle.putString("task_name", adBonus.getTaskName());
                bundle.putString("task_sort_id", String.valueOf(adBonus.getTaskSortId()));
                bundle.putString("task_type_id", String.valueOf(adBonus.getTaskType()));
                bundle.putString("task_term_name", String.valueOf(adBonus.getTaskContent()));
                Unit unit = Unit.f60915a;
                EventManager.s0(eventManager, "task_click", bundle, 0L, 4, null);
                this.f37918a.r0().d(adBonus);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public DailyTaskViewHolder(@NotNull RewardsModuleAdapter rewardsModuleAdapter, ItemRewardFragmentModuleWatchAdBinding binding) {
            super(rewardsModuleAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37912h = rewardsModuleAdapter;
            this.f37911g = binding;
        }

        private final void k(List<WatchAdBonusTask> list) {
            QueryWatchAdBonusTaskResult queryWatchAdBonusTaskResult;
            int size = list.size();
            for (WatchAdBonusTask watchAdBonusTask : list) {
                if (watchAdBonusTask.hasCompleted()) {
                    size--;
                }
            }
            if (size == 0 && (queryWatchAdBonusTaskResult = this.f37912h.H) != null) {
                int adAllCompletedGetBonus = queryWatchAdBonusTaskResult.getAdAllCompletedGetBonus();
                BaseTextView watchAdValueTv = c().f40738f;
                Intrinsics.checkNotNullExpressionValue(watchAdValueTv, "watchAdValueTv");
                String string = c().getRoot().getContext().getString(R$string.rewards_activity_watch_all_ads_desc, c().getRoot().getContext().getString(R$string.rewards_activity_watch_ad_bonus_value, String.valueOf(adAllCompletedGetBonus)));
                Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
                y.l(watchAdValueTv, string, new String[]{c().getRoot().getContext().getString(R$string.rewards_activity_watch_ad_bonus_value, String.valueOf(adAllCompletedGetBonus))}, ContextCompat.getColor(c().getRoot().getContext(), R$color.color_rewards_activity_bonus), yf.a.f70794a.g(), 0.0f, false, null, 112, null);
            }
        }

        private final void l(List<WatchAdBonusTask> list) {
            int size = list.size();
            for (WatchAdBonusTask watchAdBonusTask : list) {
                if (watchAdBonusTask.hasCompleted()) {
                    size--;
                }
            }
            if (size > 0) {
                AdManager.f41600a.a0(AdScene.REWARD);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v8, types: [T, java.util.ArrayList] */
        private final List<WatchAdBonusTask> n(List<WatchAdBonusTask> list) {
            Ref.ObjectRef objectRef = new Ref.ObjectRef();
            if (list.size() > 10 && ABTestFactory.f42224a.l1().isEnable().invoke().booleanValue()) {
                RewardsModuleAdapter rewardsModuleAdapter = this.f37912h;
                synchronized (list) {
                    try {
                        if (ud.a.f68411a.S()) {
                            Context context = c().getRoot().getContext();
                            Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
                            BaseTextView foldUp = c().f40733a;
                            Intrinsics.checkNotNullExpressionValue(foldUp, "foldUp");
                            rewardsModuleAdapter.n0(context, foldUp, R$string.rewards_daily_list_fold, R$drawable.ic_arrow_up3);
                            objectRef.element = list;
                        } else {
                            Context context2 = c().getRoot().getContext();
                            Intrinsics.checkNotNullExpressionValue(context2, "getContext(...)");
                            BaseTextView foldUp2 = c().f40733a;
                            Intrinsics.checkNotNullExpressionValue(foldUp2, "foldUp");
                            rewardsModuleAdapter.n0(context2, foldUp2, R$string.daily_watch_drama_task_more, R$drawable.ic_arrow_down3);
                            objectRef.element = new ArrayList(CollectionsKt.V0(list, 10));
                        }
                        Unit unit = Unit.f60915a;
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                b0.l(c().f40733a);
                c().f40733a.setOnClickListener(new a(objectRef, list, this.f37912h, this));
            } else {
                objectRef.element = list;
                b0.d(c().f40733a);
            }
            return (List) objectRef.element;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void o(Object obj) {
            List<WatchAdBonusTask> arrayList;
            List<WatchAdBonusTask> arrayList2;
            int i10;
            int i11;
            int i12 = 0;
            if (obj instanceof k.e) {
                k.e eVar = (k.e) obj;
                this.f37912h.H = eVar.b();
                c().f40736d.c(State.LOADING);
                QueryWatchAdBonusTaskResult b10 = eVar.b();
                if (b10 == null || (arrayList2 = b10.getTaskConfigModuleResponseList()) == null) {
                    arrayList2 = new ArrayList<>();
                }
                if (arrayList2.isEmpty()) {
                    this.f37912h.A0(3);
                    return;
                }
                QueryWatchAdBonusTaskResult b11 = eVar.b();
                if (b11 != null) {
                    i10 = b11.getAdAllCompletedGetBonus();
                } else {
                    i10 = 0;
                }
                QueryWatchAdBonusTaskResult b12 = eVar.b();
                if (b12 != null) {
                    i11 = b12.getNextWatchAdWaitSecond();
                } else {
                    i11 = 0;
                }
                List<WatchAdBonusTask> n10 = n(arrayList2);
                p(i10);
                if (!eVar.a()) {
                    DailyTaskAdapter dailyTaskAdapter = this.f37912h.G;
                    if (dailyTaskAdapter != null) {
                        BaseAdapter.D(dailyTaskAdapter, n10, false, 2, null);
                    }
                } else {
                    r(n10, i11);
                }
                l(n10);
                k(n10);
                c().f40736d.setVisibility(8);
            } else if (obj instanceof k.f) {
                DailyTaskAdapter dailyTaskAdapter2 = this.f37912h.G;
                if (dailyTaskAdapter2 != null) {
                    dailyTaskAdapter2.f();
                }
                k.f fVar = (k.f) obj;
                if (fVar.a().isNetworkError()) {
                    RewardsModuleAdapter rewardsModuleAdapter = this.f37912h;
                    StateViewGroup watchAdStateViewGroup = c().f40736d;
                    Intrinsics.checkNotNullExpressionValue(watchAdStateViewGroup, "watchAdStateViewGroup");
                    rewardsModuleAdapter.E0(watchAdStateViewGroup);
                } else {
                    RewardsModuleAdapter rewardsModuleAdapter2 = this.f37912h;
                    StateViewGroup watchAdStateViewGroup2 = c().f40736d;
                    Intrinsics.checkNotNullExpressionValue(watchAdStateViewGroup2, "watchAdStateViewGroup");
                    rewardsModuleAdapter2.F0(watchAdStateViewGroup2, fVar.a().getMsg());
                }
                c().f40736d.setVisibility(0);
            } else if (Intrinsics.areEqual(obj, k.g.f49214a)) {
                c().f40736d.h(State.LOADING);
                c().f40736d.setVisibility(0);
            } else if (obj instanceof k.h) {
                k.h hVar = (k.h) obj;
                this.f37912h.r0().b(hVar.a(), hVar.b());
            } else if (obj instanceof k.i) {
                DailyTaskAdapter dailyTaskAdapter3 = this.f37912h.G;
                if (dailyTaskAdapter3 == null || (arrayList = dailyTaskAdapter3.m()) == null) {
                    arrayList = new ArrayList<>();
                }
                Iterator<WatchAdBonusTask> it = arrayList.iterator();
                int i13 = 0;
                while (true) {
                    if (it.hasNext()) {
                        if (it.next().getTaskId() == ((k.i) obj).a()) {
                            break;
                        }
                        i13++;
                    } else {
                        i13 = -1;
                        break;
                    }
                }
                WatchAdBonusTask watchAdBonusTask = (WatchAdBonusTask) CollectionsKt.t0(arrayList, i13);
                if (watchAdBonusTask != null) {
                    watchAdBonusTask.setCompleted(1);
                    k(arrayList);
                    DailyTaskAdapter dailyTaskAdapter4 = this.f37912h.G;
                    if (dailyTaskAdapter4 != null) {
                        dailyTaskAdapter4.notifyDataSetChanged();
                    }
                    k.i iVar = (k.i) obj;
                    this.f37912h.r0().f(iVar.a());
                    QueryWatchAdTaskComplete b13 = iVar.b();
                    if (b13 != null) {
                        i12 = b13.getTaskBonus();
                    }
                    Context context = c().getRoot().getContext();
                    Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
                    WatchAdBonusTask.Companion companion = WatchAdBonusTask.Companion;
                    Context context2 = c().getRoot().getContext();
                    Intrinsics.checkNotNullExpressionValue(context2, "getContext(...)");
                    new ek.a(context, companion.getFormatBonus(context2, Integer.valueOf(i12))).show();
                }
            } else if (obj instanceof k.b) {
                c().f40736d.d();
            } else if (obj instanceof k.c) {
                c().f40736d.e();
                this.f37912h.G0();
            }
        }

        private final void p(int i10) {
            BaseTextView watchAdValueTv = c().f40738f;
            Intrinsics.checkNotNullExpressionValue(watchAdValueTv, "watchAdValueTv");
            String string = c().getRoot().getContext().getString(R$string.rewards_activity_watch_ad_desc, c().getRoot().getContext().getString(R$string.rewards_activity_watch_ad_bonus_value, String.valueOf(i10)));
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            y.l(watchAdValueTv, string, new String[]{c().getRoot().getContext().getString(R$string.rewards_activity_watch_ad_bonus_value, String.valueOf(i10))}, ContextCompat.getColor(c().getRoot().getContext(), R$color.v_light), yf.a.f70794a.g(), 0.0f, false, null, 112, null);
        }

        private final void r(List<WatchAdBonusTask> list, int i10) {
            RecyclerView recyclerView;
            Ref.BooleanRef booleanRef = new Ref.BooleanRef();
            Ref.IntRef intRef = new Ref.IntRef();
            intRef.element = -1;
            ViewStubProxy watchAdBonusRvViewstub = c().f40735c;
            Intrinsics.checkNotNullExpressionValue(watchAdBonusRvViewstub, "watchAdBonusRvViewstub");
            View e10 = e0.e(watchAdBonusRvViewstub);
            if (e10 instanceof RecyclerView) {
                recyclerView = (RecyclerView) e10;
            } else {
                recyclerView = null;
            }
            if (recyclerView != null) {
                RewardsModuleAdapter rewardsModuleAdapter = this.f37912h;
                recyclerView.setLayoutManager(new LinearLayoutManager(c().getRoot().getContext()));
                recyclerView.setItemAnimator(null);
                recyclerView.addOnScrollListener(new RewardsModuleAdapter$DailyTaskViewHolder$showWatchAdBonusRV$1$1(booleanRef, intRef, recyclerView, rewardsModuleAdapter));
                if (recyclerView.getItemDecorationCount() == 0) {
                    recyclerView.addItemDecoration(new RecyclerView.ItemDecoration() { // from class: com.startshorts.androidplayer.adapter.rewards.RewardsModuleAdapter$DailyTaskViewHolder$showWatchAdBonusRV$1$2
                        @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
                        public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.State state) {
                            Intrinsics.checkNotNullParameter(outRect, "outRect");
                            Intrinsics.checkNotNullParameter(view, "view");
                            Intrinsics.checkNotNullParameter(parent, "parent");
                            Intrinsics.checkNotNullParameter(state, "state");
                            outRect.set(0, jk.g.a(8.0f), 0, 0);
                        }
                    });
                }
                DailyTaskAdapter dailyTaskAdapter = new DailyTaskAdapter();
                dailyTaskAdapter.J(i10);
                dailyTaskAdapter.I(new c(rewardsModuleAdapter));
                BaseAdapter.D(dailyTaskAdapter, list, false, 2, null);
                rewardsModuleAdapter.G = dailyTaskAdapter;
                recyclerView.setAdapter(rewardsModuleAdapter.G);
            }
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: m */
        public ItemRewardFragmentModuleWatchAdBinding c() {
            return this.f37911g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: q */
        public void g(int i10, @Nullable RewardsModule rewardsModule, @NotNull List<Object> payloads) {
            Object obj;
            Intrinsics.checkNotNullParameter(payloads, "payloads");
            d r02 = this.f37912h.r0();
            StateViewGroup watchAdStateViewGroup = c().f40736d;
            Intrinsics.checkNotNullExpressionValue(watchAdStateViewGroup, "watchAdStateViewGroup");
            r02.n(watchAdStateViewGroup, new c.j(true));
            LiveData liveData = null;
            if (rewardsModule != null) {
                obj = rewardsModule.getState();
            } else {
                obj = null;
            }
            if (obj instanceof LiveData) {
                liveData = (LiveData) obj;
            }
            if (liveData == null) {
                return;
            }
            liveData.observe(this.f37912h.s0(), new g(new b()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: RewardsModuleAdapter.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nRewardsModuleAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RewardsModuleAdapter.kt\ncom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1506:1\n1863#2,2:1507\n1863#2,2:1509\n360#2,7:1511\n360#2,7:1518\n360#2,7:1525\n*S KotlinDebug\n*F\n+ 1 RewardsModuleAdapter.kt\ncom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder\n*L\n697#1:1507,2\n707#1:1509,2\n970#1:1511,7\n987#1:1518,7\n1001#1:1525,7\n*E\n"})
    /* loaded from: classes6.dex */
    public final class OneTimeTaskViewHolder extends BaseAdapter<RewardsModule>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemRewardFragmentModuleTaskBinding f37923g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ RewardsModuleAdapter f37924h;

        /* compiled from: RewardsModuleAdapter.kt */
        @Metadata
        /* loaded from: classes6.dex */
        public static final class a extends yd.d {

            /* renamed from: e  reason: collision with root package name */
            final /* synthetic */ Ref.ObjectRef<List<Task>> f37925e;

            /* renamed from: f  reason: collision with root package name */
            final /* synthetic */ List<Task> f37926f;

            /* renamed from: g  reason: collision with root package name */
            final /* synthetic */ RewardsModuleAdapter f37927g;

            /* renamed from: h  reason: collision with root package name */
            final /* synthetic */ OneTimeTaskViewHolder f37928h;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(Ref.ObjectRef<List<Task>> objectRef, List<Task> list, RewardsModuleAdapter rewardsModuleAdapter, OneTimeTaskViewHolder oneTimeTaskViewHolder) {
                super(0L, 1, null);
                this.f37925e = objectRef;
                this.f37926f = list;
                this.f37927g = rewardsModuleAdapter;
                this.f37928h = oneTimeTaskViewHolder;
            }

            /* JADX WARN: Type inference failed for: r3v0, types: [T, java.util.ArrayList] */
            /* JADX WARN: Type inference failed for: r3v6, types: [java.util.List<com.startshorts.androidplayer.bean.task.Task>, T] */
            @Override // yd.d
            public void a(View v10) {
                Intrinsics.checkNotNullParameter(v10, "v");
                ud.a aVar = ud.a.f68411a;
                if (!aVar.T()) {
                    this.f37925e.element = this.f37926f;
                    RewardsModuleAdapter rewardsModuleAdapter = this.f37927g;
                    Context context = this.f37928h.c().getRoot().getContext();
                    Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
                    BaseTextView foldUp = this.f37928h.c().f40725a;
                    Intrinsics.checkNotNullExpressionValue(foldUp, "foldUp");
                    rewardsModuleAdapter.n0(context, foldUp, R$string.rewards_daily_list_fold, R$drawable.ic_arrow_up3);
                } else {
                    this.f37925e.element = new ArrayList(CollectionsKt.V0(this.f37926f, 5));
                    RewardsModuleAdapter rewardsModuleAdapter2 = this.f37927g;
                    Context context2 = this.f37928h.c().getRoot().getContext();
                    Intrinsics.checkNotNullExpressionValue(context2, "getContext(...)");
                    BaseTextView foldUp2 = this.f37928h.c().f40725a;
                    Intrinsics.checkNotNullExpressionValue(foldUp2, "foldUp");
                    rewardsModuleAdapter2.n0(context2, foldUp2, R$string.daily_watch_drama_task_more, R$drawable.ic_arrow_down3);
                }
                aVar.F0(!aVar.T());
                OneTimeTaskAdapter oneTimeTaskAdapter = this.f37927g.F;
                if (oneTimeTaskAdapter != null) {
                    BaseAdapter.D(oneTimeTaskAdapter, this.f37925e.element, false, 2, null);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: RewardsModuleAdapter.kt */
        @Metadata
        /* loaded from: classes6.dex */
        public static final class b implements Function1 {
            b() {
            }

            public final void a(Object obj) {
                OneTimeTaskViewHolder oneTimeTaskViewHolder = OneTimeTaskViewHolder.this;
                Intrinsics.checkNotNull(obj);
                oneTimeTaskViewHolder.o(obj);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                a(obj);
                return Unit.f60915a;
            }
        }

        /* compiled from: RewardsModuleAdapter.kt */
        @Metadata
        /* loaded from: classes6.dex */
        public static final class c implements OneTimeTaskAdapter.b {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ RewardsModuleAdapter f37930a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ OneTimeTaskViewHolder f37931b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ OneTimeTaskAdapter f37932c;

            c(RewardsModuleAdapter rewardsModuleAdapter, OneTimeTaskViewHolder oneTimeTaskViewHolder, OneTimeTaskAdapter oneTimeTaskAdapter) {
                this.f37930a = rewardsModuleAdapter;
                this.f37931b = oneTimeTaskViewHolder;
                this.f37932c = oneTimeTaskAdapter;
            }

            @Override // com.startshorts.androidplayer.adapter.rewards.OneTimeTaskAdapter.b
            public void a(Task task) {
                Intrinsics.checkNotNullParameter(task, "task");
                if (task.acceptable()) {
                    this.f37930a.r0().g(task);
                    return;
                }
                switch (task.getTaskType()) {
                    case 1:
                        EventManager eventManager = EventManager.f42463a;
                        eventManager.x0("facebook_login", task.getTaskBonus(), this.f37930a.p0().invoke());
                        Bundle bundle = new Bundle();
                        bundle.putString("from", this.f37930a.p0().invoke());
                        bundle.putString("scene", "task_facebook_login");
                        bundle.putString("type", "facebook");
                        Unit unit = Unit.f60915a;
                        EventManager.s0(eventManager, "login_click", bundle, 0L, 4, null);
                        if (AccountRepo.f43052a.O0()) {
                            this.f37930a.r0().e(AuthReason.LOGIN);
                            return;
                        } else {
                            this.f37930a.r0().e(AuthReason.BIND);
                            return;
                        }
                    case 2:
                        EventManager.f42463a.x0("provide_email", task.getTaskBonus(), this.f37930a.p0().invoke());
                        FragmentContainer.a aVar = FragmentContainer.f45006p;
                        Context context = this.f37931b.c().getRoot().getContext();
                        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
                        aVar.b(context, com.startshorts.androidplayer.ui.fragment.a.f45609a.f(), new StringBundle("auth_reason", "2"));
                        return;
                    case 3:
                        EventManager.f42463a.x0("provide_phone", task.getTaskBonus(), this.f37930a.p0().invoke());
                        FragmentContainer.a aVar2 = FragmentContainer.f45006p;
                        Context context2 = this.f37931b.c().getRoot().getContext();
                        Intrinsics.checkNotNullExpressionValue(context2, "getContext(...)");
                        aVar2.b(context2, com.startshorts.androidplayer.ui.fragment.a.f45609a.i(), new StringBundle("auth_reason", "2"));
                        return;
                    case 4:
                        if (mk.c.f62521a.d()) {
                            this.f37932c.r("PermissionUtil.isNotificationEnabled()==true, resend rewardNotifications again");
                            ud.b.f68412a.m2(false);
                            RewardsModuleAdapter.u0(this.f37930a, 4, 0, 2, null);
                            return;
                        }
                        EventManager.f42463a.x0("notification", task.getTaskBonus(), this.f37930a.p0().invoke());
                        this.f37930a.r0().i("system");
                        return;
                    case 5:
                        EventManager eventManager2 = EventManager.f42463a;
                        eventManager2.x0("google_login", task.getTaskBonus(), this.f37930a.p0().invoke());
                        Bundle bundle2 = new Bundle();
                        bundle2.putString("from", this.f37930a.p0().invoke());
                        bundle2.putString("scene", "task_google_login");
                        bundle2.putString("type", "google");
                        Unit unit2 = Unit.f60915a;
                        EventManager.s0(eventManager2, "login_click", bundle2, 0L, 4, null);
                        if (AccountRepo.f43052a.O0()) {
                            this.f37930a.r0().o(AuthReason.LOGIN);
                            return;
                        } else {
                            this.f37930a.r0().o(AuthReason.BIND);
                            return;
                        }
                    case 6:
                    default:
                        return;
                    case 7:
                        EventManager.f42463a.x0("OpenFloatingWindow", task.getTaskBonus(), this.f37930a.p0().invoke());
                        this.f37930a.r0().m(task);
                        return;
                    case 8:
                        EventManager.f42463a.x0("follow_fb", task.getTaskBonus(), this.f37930a.p0().invoke());
                        this.f37930a.r0().p(task);
                        return;
                    case 9:
                        EventManager.f42463a.x0("follow_youtube", task.getTaskBonus(), this.f37930a.p0().invoke());
                        this.f37930a.r0().p(task);
                        return;
                    case 10:
                        EventManager.f42463a.x0("follow_tt", task.getTaskBonus(), this.f37930a.p0().invoke());
                        this.f37930a.r0().p(task);
                        return;
                    case 11:
                        EventManager.f42463a.x0("follow_ins", task.getTaskBonus(), this.f37930a.p0().invoke());
                        this.f37930a.r0().p(task);
                        return;
                }
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OneTimeTaskViewHolder(@NotNull RewardsModuleAdapter rewardsModuleAdapter, ItemRewardFragmentModuleTaskBinding binding) {
            super(rewardsModuleAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37924h = rewardsModuleAdapter;
            this.f37923g = binding;
        }

        private final void l(int i10) {
            int i11;
            OneTimeTaskAdapter oneTimeTaskAdapter;
            List<Task> m10;
            OneTimeTaskAdapter oneTimeTaskAdapter2 = this.f37924h.F;
            if (oneTimeTaskAdapter2 != null && (m10 = oneTimeTaskAdapter2.m()) != null) {
                synchronized (m10) {
                    try {
                        Iterator<Task> it = m10.iterator();
                        i11 = 0;
                        while (true) {
                            if (it.hasNext()) {
                                if (it.next().getTaskType() == i10) {
                                    break;
                                }
                                i11++;
                            } else {
                                i11 = -1;
                                break;
                            }
                        }
                        Unit unit = Unit.f60915a;
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            } else {
                i11 = -1;
            }
            if (i11 != -1 && (oneTimeTaskAdapter = this.f37924h.F) != null) {
                BaseAdapter.i(oneTimeTaskAdapter, i11, null, 2, null);
            }
            OneTimeTaskAdapter oneTimeTaskAdapter3 = this.f37924h.F;
            if (oneTimeTaskAdapter3 != null && oneTimeTaskAdapter3.t()) {
                this.f37924h.A0(2);
            }
        }

        private final void m(String str) {
            int i10;
            OneTimeTaskAdapter oneTimeTaskAdapter;
            List<Task> m10;
            OneTimeTaskAdapter oneTimeTaskAdapter2 = this.f37924h.F;
            if (oneTimeTaskAdapter2 != null && (m10 = oneTimeTaskAdapter2.m()) != null) {
                synchronized (m10) {
                    try {
                        Iterator<Task> it = m10.iterator();
                        i10 = 0;
                        while (true) {
                            if (it.hasNext()) {
                                if (Intrinsics.areEqual(String.valueOf(it.next().getId()), str)) {
                                    break;
                                }
                                i10++;
                            } else {
                                i10 = -1;
                                break;
                            }
                        }
                        Unit unit = Unit.f60915a;
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            } else {
                i10 = -1;
            }
            if (i10 != -1 && (oneTimeTaskAdapter = this.f37924h.F) != null) {
                BaseAdapter.i(oneTimeTaskAdapter, i10, null, 2, null);
            }
            OneTimeTaskAdapter oneTimeTaskAdapter3 = this.f37924h.F;
            if (oneTimeTaskAdapter3 != null && oneTimeTaskAdapter3.t()) {
                this.f37924h.A0(2);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v10, types: [T, java.util.ArrayList] */
        private final List<Task> n(List<Task> list) {
            Ref.ObjectRef objectRef = new Ref.ObjectRef();
            if (list.size() > 5 && !ABTestFactory.f42224a.l1().isEnable().invoke().booleanValue()) {
                if (ud.a.f68411a.T()) {
                    RewardsModuleAdapter rewardsModuleAdapter = this.f37924h;
                    Context context = c().getRoot().getContext();
                    Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
                    BaseTextView foldUp = c().f40725a;
                    Intrinsics.checkNotNullExpressionValue(foldUp, "foldUp");
                    rewardsModuleAdapter.n0(context, foldUp, R$string.rewards_daily_list_fold, R$drawable.ic_arrow_up3);
                    objectRef.element = list;
                } else {
                    RewardsModuleAdapter rewardsModuleAdapter2 = this.f37924h;
                    Context context2 = c().getRoot().getContext();
                    Intrinsics.checkNotNullExpressionValue(context2, "getContext(...)");
                    BaseTextView foldUp2 = c().f40725a;
                    Intrinsics.checkNotNullExpressionValue(foldUp2, "foldUp");
                    rewardsModuleAdapter2.n0(context2, foldUp2, R$string.daily_watch_drama_task_more, R$drawable.ic_arrow_down3);
                    objectRef.element = new ArrayList(CollectionsKt.V0(list, 5));
                }
                b0.l(c().f40725a);
                c().f40725a.setOnClickListener(new a(objectRef, list, this.f37924h, this));
            } else {
                objectRef.element = list;
                b0.d(c().f40725a);
            }
            return (List) objectRef.element;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void o(Object obj) {
            List<TaskModule> taskModuleResponseList;
            TaskModule taskModule;
            List<Task> appTaskReponseList;
            List<TaskModule> taskModuleResponseList2;
            TaskModule taskModule2;
            List<Task> list = null;
            if (obj instanceof j.f) {
                c().f40729e.c(State.LOADING);
                j.f fVar = (j.f) obj;
                TaskModuleList a10 = fVar.a();
                if (a10 != null && (taskModuleResponseList2 = a10.getTaskModuleResponseList()) != null && (taskModule2 = (TaskModule) CollectionsKt.firstOrNull(taskModuleResponseList2)) != null) {
                    list = taskModule2.getAppTaskReponseList();
                }
                List<Task> list2 = list;
                if (list2 == null || list2.isEmpty()) {
                    this.f37924h.A0(2);
                    return;
                }
                TaskModuleList a11 = fVar.a();
                if (a11 != null && (taskModuleResponseList = a11.getTaskModuleResponseList()) != null && (taskModule = (TaskModule) CollectionsKt.firstOrNull(taskModuleResponseList)) != null && (appTaskReponseList = taskModule.getAppTaskReponseList()) != null) {
                    List<Integer> x12 = ud.b.f68412a.x1(AccountRepo.f43052a.t0());
                    if (x12 == null) {
                        x12 = CollectionsKt.n();
                    }
                    if (!x12.isEmpty()) {
                        for (Task task : appTaskReponseList) {
                            if (x12.contains(Integer.valueOf(task.getTaskType()))) {
                                task.setCompleteTaskTimes(1);
                            }
                            if (task.getTaskType() == 7) {
                                s(task);
                            }
                        }
                    } else {
                        for (Task task2 : appTaskReponseList) {
                            if (task2.getTaskType() == 7) {
                                s(task2);
                            }
                        }
                    }
                    r(n(appTaskReponseList));
                }
                this.f37924h.G0();
                c().f40727c.setVisibility(8);
            } else if (obj instanceof j.g) {
                j.g gVar = (j.g) obj;
                if (gVar.a().isNetworkError()) {
                    RewardsModuleAdapter rewardsModuleAdapter = this.f37924h;
                    StateViewGroup taskStateViewGroup = c().f40729e;
                    Intrinsics.checkNotNullExpressionValue(taskStateViewGroup, "taskStateViewGroup");
                    rewardsModuleAdapter.E0(taskStateViewGroup);
                    return;
                }
                RewardsModuleAdapter rewardsModuleAdapter2 = this.f37924h;
                StateViewGroup taskStateViewGroup2 = c().f40729e;
                Intrinsics.checkNotNullExpressionValue(taskStateViewGroup2, "taskStateViewGroup");
                rewardsModuleAdapter2.F0(taskStateViewGroup2, gVar.a().getMsg());
            } else if (obj instanceof j.h) {
                c().f40729e.h(State.LOADING);
            } else if (obj instanceof j.a) {
                j.a aVar = (j.a) obj;
                if (aVar.a().isNetworkError()) {
                    RewardsModuleAdapter rewardsModuleAdapter3 = this.f37924h;
                    StateViewGroup taskStateViewGroup3 = c().f40729e;
                    Intrinsics.checkNotNullExpressionValue(taskStateViewGroup3, "taskStateViewGroup");
                    rewardsModuleAdapter3.E0(taskStateViewGroup3);
                    return;
                }
                RewardsModuleAdapter rewardsModuleAdapter4 = this.f37924h;
                StateViewGroup taskStateViewGroup4 = c().f40729e;
                Intrinsics.checkNotNullExpressionValue(taskStateViewGroup4, "taskStateViewGroup");
                rewardsModuleAdapter4.F0(taskStateViewGroup4, aVar.a().getMsg());
            } else {
                int i10 = 0;
                if (obj instanceof j.b) {
                    j.b bVar = (j.b) obj;
                    String a12 = bVar.a();
                    if (a12 != null) {
                        m(a12);
                    }
                    Integer b10 = bVar.b();
                    if (b10 != null) {
                        l(b10.intValue());
                    }
                    OneTimeTaskAdapter oneTimeTaskAdapter = this.f37924h.F;
                    if (oneTimeTaskAdapter != null) {
                        i10 = oneTimeTaskAdapter.getItemCount();
                    }
                    if (i10 <= 5 && !ABTestFactory.f42224a.l1().isEnable().invoke().booleanValue()) {
                        b0.d(c().f40725a);
                    }
                } else if (obj instanceof j.k) {
                    this.f37924h.G0();
                } else if (obj instanceof j.l) {
                    RewardsModuleAdapter.u0(this.f37924h, 7, 0, 2, null);
                } else if (obj instanceof j.C0683j) {
                    RewardsModuleAdapter.u0(this.f37924h, ((j.C0683j) obj).a(), 0, 2, null);
                } else if (obj instanceof j.i) {
                    int a13 = ((j.i) obj).a();
                    if (a13 != 1) {
                        if (a13 != 2) {
                            if (a13 != 3) {
                                if (a13 == 4) {
                                    RewardsModuleAdapter.u0(this.f37924h, 5, 0, 2, null);
                                    return;
                                }
                                return;
                            }
                            RewardsModuleAdapter.u0(this.f37924h, 3, 0, 2, null);
                            return;
                        }
                        RewardsModuleAdapter.u0(this.f37924h, 2, 0, 2, null);
                        return;
                    }
                    RewardsModuleAdapter.u0(this.f37924h, 1, 0, 2, null);
                } else if (obj instanceof j.e) {
                    p(((j.e) obj).a());
                } else if (obj instanceof j.c) {
                    c().f40729e.d();
                } else if (obj instanceof j.d) {
                    c().f40729e.e();
                }
            }
        }

        private final void p(int i10) {
            int i11;
            OneTimeTaskAdapter oneTimeTaskAdapter;
            List<Task> m10;
            OneTimeTaskAdapter oneTimeTaskAdapter2 = this.f37924h.F;
            if (oneTimeTaskAdapter2 != null && (m10 = oneTimeTaskAdapter2.m()) != null) {
                synchronized (m10) {
                    try {
                        Iterator<Task> it = m10.iterator();
                        i11 = 0;
                        while (true) {
                            if (it.hasNext()) {
                                if (it.next().getTaskType() == i10) {
                                    break;
                                }
                                i11++;
                            } else {
                                i11 = -1;
                                break;
                            }
                        }
                        Unit unit = Unit.f60915a;
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            } else {
                i11 = -1;
            }
            if (i11 != -1 && (oneTimeTaskAdapter = this.f37924h.F) != null) {
                oneTimeTaskAdapter.notifyItemChanged(i11);
            }
        }

        private final void r(List<Task> list) {
            RecyclerView recyclerView;
            if (!c().f40728d.isInflated()) {
                ViewStubProxy taskRvViewstub = c().f40728d;
                Intrinsics.checkNotNullExpressionValue(taskRvViewstub, "taskRvViewstub");
                View e10 = e0.e(taskRvViewstub);
                if (e10 instanceof RecyclerView) {
                    recyclerView = (RecyclerView) e10;
                } else {
                    recyclerView = null;
                }
                if (recyclerView != null) {
                    RewardsModuleAdapter rewardsModuleAdapter = this.f37924h;
                    recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext()));
                    recyclerView.setItemAnimator(null);
                    if (recyclerView.getItemDecorationCount() == 0) {
                        recyclerView.addItemDecoration(new RecyclerView.ItemDecoration() { // from class: com.startshorts.androidplayer.adapter.rewards.RewardsModuleAdapter$OneTimeTaskViewHolder$showTaskRV$1$1
                            @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
                            public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.State state) {
                                Intrinsics.checkNotNullParameter(outRect, "outRect");
                                Intrinsics.checkNotNullParameter(view, "view");
                                Intrinsics.checkNotNullParameter(parent, "parent");
                                Intrinsics.checkNotNullParameter(state, "state");
                                outRect.set(0, jk.g.a(8.0f), 0, 0);
                            }
                        });
                    }
                    OneTimeTaskAdapter oneTimeTaskAdapter = new OneTimeTaskAdapter();
                    oneTimeTaskAdapter.G(new c(rewardsModuleAdapter, this, oneTimeTaskAdapter));
                    BaseAdapter.D(oneTimeTaskAdapter, list, false, 2, null);
                    rewardsModuleAdapter.F = oneTimeTaskAdapter;
                    recyclerView.setAdapter(rewardsModuleAdapter.F);
                }
            }
        }

        private final void s(Task task) {
            if (Settings.canDrawOverlays(u.f51776a.b().getApplicationContext()) && task.getCompleteTaskTimes() != 1) {
                task.setCompleteTaskTimes(1);
            }
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: k */
        public ItemRewardFragmentModuleTaskBinding c() {
            return this.f37923g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: q */
        public void g(int i10, @Nullable RewardsModule rewardsModule, @NotNull List<Object> payloads) {
            Object obj;
            Intrinsics.checkNotNullParameter(payloads, "payloads");
            d r02 = this.f37924h.r0();
            StateViewGroup taskStateViewGroup = c().f40729e;
            Intrinsics.checkNotNullExpressionValue(taskStateViewGroup, "taskStateViewGroup");
            r02.n(taskStateViewGroup, c.i.f49182a);
            LiveData liveData = null;
            if (rewardsModule != null) {
                obj = rewardsModule.getState();
            } else {
                obj = null;
            }
            if (obj instanceof LiveData) {
                liveData = (LiveData) obj;
            }
            if (liveData == null) {
                return;
            }
            liveData.observe(this.f37924h.s0(), new g(new b()));
        }
    }

    /* compiled from: RewardsModuleAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    private final class a extends BaseAdapter<RewardsModule>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemTaskCenterActBannerBinding f37933g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ RewardsModuleAdapter f37934h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(@NotNull RewardsModuleAdapter rewardsModuleAdapter, ItemTaskCenterActBannerBinding binding) {
            super(rewardsModuleAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37934h = rewardsModuleAdapter;
            this.f37933g = binding;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit m(int i10) {
            ud.b.f68412a.g5(new ResourceIndex(i10, DeviceUtil.f48146a.K()));
            return Unit.f60915a;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: k */
        public ItemTaskCenterActBannerBinding c() {
            return this.f37933g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: l */
        public void f(int i10, @NotNull RewardsModule item) {
            ActBanner actBanner;
            int size;
            int i11;
            Intrinsics.checkNotNullParameter(item, "item");
            super.f(i10, item);
            Lifecycle q02 = this.f37934h.q0();
            if (q02 == null) {
                return;
            }
            c().f41006a.removeAllViews();
            WeakReference weakReference = this.f37934h.f37890u;
            if (weakReference != null) {
                actBanner = (ActBanner) weakReference.get();
            } else {
                actBanner = null;
            }
            if (actBanner == null) {
                this.f37934h.r("create ActBanner");
                Context context = c().getRoot().getContext();
                Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
                actBanner = new ActBanner(context);
                RewardsModuleAdapter rewardsModuleAdapter = this.f37934h;
                ud.b bVar = ud.b.f68412a;
                ResourceIndex T1 = bVar.T1();
                List<ActResource> C = ActResourceManager.f41582a.C();
                if (T1 == null) {
                    bVar.g5(new ResourceIndex(0, DeviceUtil.f48146a.K()));
                    i11 = 0;
                } else {
                    int index = T1.getIndex();
                    if (TimeUtil.f48175a.n(T1.getTime(), DeviceUtil.f48146a.K(), 1)) {
                        size = 0;
                    } else {
                        size = (index + 1) % C.size();
                    }
                    i11 = size;
                }
                actBanner.setLayoutParams(new FrameLayout.LayoutParams(-1, ActBannerAdapter.f37164q.a()));
                ActBanner.B(actBanner, rewardsModuleAdapter.o0(), "task_center_banner", z.f51786a.s(), i11, new Function1() { // from class: com.startshorts.androidplayer.adapter.rewards.b
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        Unit m10;
                        m10 = RewardsModuleAdapter.a.m(((Integer) obj).intValue());
                        return m10;
                    }
                }, q02, C, null, 128, null);
                this.f37934h.f37890u = new WeakReference(actBanner);
            }
            FrameLayout frameLayout = c().f41006a;
            frameLayout.addView(actBanner);
            frameLayout.setPadding(0, item.getTopMargin(), 0, 0);
        }
    }

    /* compiled from: RewardsModuleAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class b {
        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private b() {
        }
    }

    /* compiled from: RewardsModuleAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    private final class c extends BaseAdapter<RewardsModule>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemRewardFragmentModuleDesBinding f37935g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ RewardsModuleAdapter f37936h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(@NotNull RewardsModuleAdapter rewardsModuleAdapter, ItemRewardFragmentModuleDesBinding binding) {
            super(rewardsModuleAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37936h = rewardsModuleAdapter;
            this.f37935g = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemRewardFragmentModuleDesBinding c() {
            return this.f37935g;
        }
    }

    /* compiled from: RewardsModuleAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public interface d {
        void a(@Nullable SignInAdInfoResult signInAdInfoResult);

        void b(int i10, @NotNull String str);

        void c(int i10, @NotNull CheckInInfo checkInInfo, boolean z10);

        void d(@NotNull WatchAdBonusTask watchAdBonusTask);

        void e(@NotNull AuthReason authReason);

        void f(int i10);

        void g(@NotNull Task task);

        void h(int i10);

        void i(@NotNull String str);

        void j(@NotNull List<NewbieWatchBonus> list, int i10);

        void k(@NotNull SignInAdInfoResult signInAdInfoResult);

        void l();

        void m(@NotNull Task task);

        void n(@NotNull StateViewGroup stateViewGroup, @NotNull com.startshorts.androidplayer.viewmodel.reward.c cVar);

        void o(@NotNull AuthReason authReason);

        void onBackPressed();

        void p(@NotNull Task task);

        void q();
    }

    /* compiled from: RewardsModuleAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    private final class e extends BaseAdapter<RewardsModule>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemRewardFragmentModuleGetMoreTitleBinding f37937g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ RewardsModuleAdapter f37938h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(@NotNull RewardsModuleAdapter rewardsModuleAdapter, ItemRewardFragmentModuleGetMoreTitleBinding binding) {
            super(rewardsModuleAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37938h = rewardsModuleAdapter;
            this.f37937g = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemRewardFragmentModuleGetMoreTitleBinding c() {
            return this.f37937g;
        }
    }

    /* compiled from: RewardsModuleAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    private final class f extends BaseAdapter<RewardsModule>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemRewardFragmentModuleDailyWatchBinding f37939g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ RewardsModuleAdapter f37940h;

        /* compiled from: RewardsModuleAdapter.kt */
        @Metadata
        /* loaded from: classes6.dex */
        public static final class a implements AccumulatedDailyTaskView.b {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ RewardsModuleAdapter f37941a;

            a(RewardsModuleAdapter rewardsModuleAdapter) {
                this.f37941a = rewardsModuleAdapter;
            }

            @Override // com.startshorts.androidplayer.ui.view.task.AccumulatedDailyTaskView.b
            public void b() {
                this.f37941a.r0().q();
            }

            @Override // com.startshorts.androidplayer.ui.view.task.AccumulatedDailyTaskView.b
            public void c() {
                EventManager eventManager = EventManager.f42463a;
                Bundle bundle = new Bundle();
                bundle.putString("from", this.f37941a.p0().invoke());
                bundle.putString("type", "watch_drama");
                bundle.putString("task_name", "cumulative_duration");
                Unit unit = Unit.f60915a;
                EventManager.s0(eventManager, "task_click", bundle, 0L, 4, null);
                this.f37941a.r0().l();
            }

            @Override // com.startshorts.androidplayer.ui.view.task.AccumulatedDailyTaskView.b
            public void d(List<NewbieWatchBonus> waitReceiveTasks, int i10) {
                Intrinsics.checkNotNullParameter(waitReceiveTasks, "waitReceiveTasks");
                this.f37941a.r0().j(waitReceiveTasks, i10);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(@NotNull RewardsModuleAdapter rewardsModuleAdapter, ItemRewardFragmentModuleDailyWatchBinding binding) {
            super(rewardsModuleAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37940h = rewardsModuleAdapter;
            this.f37939g = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemRewardFragmentModuleDailyWatchBinding c() {
            return this.f37939g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: k */
        public void g(int i10, @Nullable RewardsModule rewardsModule, @NotNull List<Object> payloads) {
            Object obj;
            Intrinsics.checkNotNullParameter(payloads, "payloads");
            super.g(i10, rewardsModule, payloads);
            NewbieWatchTask newbieWatchTask = null;
            if (rewardsModule != null) {
                obj = rewardsModule.getPayloads();
            } else {
                obj = null;
            }
            if (obj instanceof NewbieWatchTask) {
                newbieWatchTask = (NewbieWatchTask) obj;
            }
            if (newbieWatchTask == null) {
                return;
            }
            c().f40703a.H(newbieWatchTask, new a(this.f37940h));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RewardsModuleAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class g implements Observer, FunctionAdapter {

        /* renamed from: a  reason: collision with root package name */
        private final /* synthetic */ Function1 f37942a;

        g(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f37942a = function;
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
            return this.f37942a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f37942a.invoke(obj);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RewardsModuleAdapter(@NotNull d mListener, @NotNull LifecycleOwner mLiveCircleOwner, @NotNull Function0<String> mFrom, @NotNull Function0<Boolean> isMainActivity, @NotNull WeakReference<Activity> actRef, @Nullable Lifecycle lifecycle) {
        super(0L, 1, null);
        Intrinsics.checkNotNullParameter(mListener, "mListener");
        Intrinsics.checkNotNullParameter(mLiveCircleOwner, "mLiveCircleOwner");
        Intrinsics.checkNotNullParameter(mFrom, "mFrom");
        Intrinsics.checkNotNullParameter(isMainActivity, "isMainActivity");
        Intrinsics.checkNotNullParameter(actRef, "actRef");
        this.f37884o = mListener;
        this.f37885p = mLiveCircleOwner;
        this.f37886q = mFrom;
        this.f37887r = isMainActivity;
        this.f37888s = actRef;
        this.f37889t = lifecycle;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void A0(final int i10) {
        h0.f51735a.e(new Runnable() { // from class: com.startshorts.androidplayer.adapter.rewards.a
            @Override // java.lang.Runnable
            public final void run() {
                RewardsModuleAdapter.B0(RewardsModuleAdapter.this, i10);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B0(RewardsModuleAdapter rewardsModuleAdapter, int i10) {
        int itemCount = rewardsModuleAdapter.getItemCount();
        for (int i11 = 0; i11 < itemCount; i11++) {
            if (rewardsModuleAdapter.getItemViewType(i11) == i10) {
                BaseAdapter.i(rewardsModuleAdapter, i11, null, 2, null);
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void E0(StateViewGroup stateViewGroup) {
        Object obj;
        State state = State.NETWORK_ERROR;
        stateViewGroup.h(state);
        WeakReference<la.b> a10 = stateViewGroup.a(state);
        SNetworkErrorView sNetworkErrorView = null;
        if (a10 != null) {
            obj = (la.b) a10.get();
        } else {
            obj = null;
        }
        if (obj instanceof SNetworkErrorView) {
            sNetworkErrorView = (SNetworkErrorView) obj;
        }
        if (sNetworkErrorView != null) {
            sNetworkErrorView.v();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void F0(StateViewGroup stateViewGroup, String str) {
        Object obj;
        State state = State.OTHER_ERROR;
        stateViewGroup.h(state);
        WeakReference<la.b> a10 = stateViewGroup.a(state);
        SOtherErrorView sOtherErrorView = null;
        if (a10 != null) {
            obj = (la.b) a10.get();
        } else {
            obj = null;
        }
        if (obj instanceof SOtherErrorView) {
            sOtherErrorView = (SOtherErrorView) obj;
        }
        if (sOtherErrorView != null) {
            sOtherErrorView.v();
            if (str != null && str.length() != 0) {
                sOtherErrorView.w(str);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void G0() {
        if (DeviceUtil.f48146a.X()) {
            return;
        }
        if (mk.c.f62521a.d()) {
            t0(4, 1);
        } else {
            t0(4, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void n0(Context context, TextView textView, int i10, int i11) {
        textView.setText(ContextCompat.getString(context, i10));
        textView.setCompoundDrawablesRelativeWithIntrinsicBounds((Drawable) null, (Drawable) null, ContextCompat.getDrawable(context, i11), (Drawable) null);
    }

    private final void t0(int i10, int i11) {
        int i12;
        Task item;
        List<Task> m10;
        OneTimeTaskAdapter oneTimeTaskAdapter = this.F;
        if (oneTimeTaskAdapter != null && (m10 = oneTimeTaskAdapter.m()) != null) {
            synchronized (m10) {
                try {
                    Iterator<Task> it = m10.iterator();
                    i12 = 0;
                    while (true) {
                        if (it.hasNext()) {
                            if (it.next().getTaskType() == i10) {
                                break;
                            }
                            i12++;
                        } else {
                            i12 = -1;
                            break;
                        }
                    }
                    Unit unit = Unit.f60915a;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        } else {
            i12 = -1;
        }
        if (i12 != -1) {
            OneTimeTaskAdapter oneTimeTaskAdapter2 = this.F;
            if (oneTimeTaskAdapter2 != null && (item = oneTimeTaskAdapter2.getItem(i12)) != null) {
                item.setCompleteTaskTimes(i11);
            }
            OneTimeTaskAdapter oneTimeTaskAdapter3 = this.F;
            if (oneTimeTaskAdapter3 != null) {
                oneTimeTaskAdapter3.notifyItemChanged(i12);
            }
        }
    }

    static /* synthetic */ void u0(RewardsModuleAdapter rewardsModuleAdapter, int i10, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i11 = 1;
        }
        rewardsModuleAdapter.t0(i10, i11);
    }

    private static final <T extends ViewDataBinding> T x0(ViewGroup viewGroup, int i10) {
        T t10 = (T) DataBindingUtil.inflate(LayoutInflater.from(viewGroup.getContext()), i10, viewGroup, false);
        Intrinsics.checkNotNull(t10, "null cannot be cast to non-null type T of com.startshorts.androidplayer.adapter.rewards.RewardsModuleAdapter.onCreateItemViewHolder.inflate");
        return t10;
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    public void C(@Nullable List<RewardsModule> list, boolean z10) {
        super.C(list, z10);
        if (!ae.a.f627a.k()) {
            return;
        }
        int itemCount = getItemCount();
        for (int i10 = 0; i10 < itemCount; i10++) {
            if (getItemViewType(i10) == 3) {
                BaseAdapter.i(this, i10, null, 2, null);
                return;
            }
        }
    }

    public final void C0(boolean z10) {
        this.f37891v = z10;
    }

    public final void D0(boolean z10) {
        this.K = z10;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i10) {
        RewardsModule item = getItem(i10);
        if (item != null) {
            return item.getModuleType();
        }
        return -1;
    }

    public final void l0() {
        r rVar = this.D;
        if (rVar != null) {
            r.a.b(rVar, null, 1, null);
            Unit unit = Unit.f60915a;
            r("cancelCheckInCountDown");
        }
        this.D = null;
    }

    public final void m0() {
        r rVar = this.E;
        if (rVar != null) {
            r.a.b(rVar, null, 1, null);
            Unit unit = Unit.f60915a;
            r("cancelCheckInCountDown");
        }
        this.E = null;
    }

    @NotNull
    public final WeakReference<Activity> o0() {
        return this.f37888s;
    }

    @NotNull
    public final Function0<String> p0() {
        return this.f37886q;
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    @NotNull
    public String q() {
        return "RewardsModuleAdapter";
    }

    @Nullable
    public final Lifecycle q0() {
        return this.f37889t;
    }

    @NotNull
    public final d r0() {
        return this.f37884o;
    }

    @NotNull
    public final LifecycleOwner s0() {
        return this.f37885p;
    }

    public final boolean v0() {
        return this.f37891v;
    }

    @NotNull
    public final Function0<Boolean> w0() {
        return this.f37887r;
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    @NotNull
    public BaseAdapter<RewardsModule>.ViewHolder x(@NotNull ViewGroup parent, int i10, int i11) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 != 6) {
                        if (i10 != 7) {
                            if (i10 != 8) {
                                return new c(this, (ItemRewardFragmentModuleDesBinding) x0(parent, R$layout.item_reward_fragment_module_des));
                            }
                            return new e(this, (ItemRewardFragmentModuleGetMoreTitleBinding) x0(parent, R$layout.item_reward_fragment_module_get_more_title));
                        }
                        return new a(this, (ItemTaskCenterActBannerBinding) s(parent, R$layout.item_task_center_act_banner));
                    }
                    return new f(this, (ItemRewardFragmentModuleDailyWatchBinding) x0(parent, R$layout.item_reward_fragment_module_daily_watch));
                }
                return new DailyTaskViewHolder(this, (ItemRewardFragmentModuleWatchAdBinding) x0(parent, R$layout.item_reward_fragment_module_watch_ad));
            }
            return new OneTimeTaskViewHolder(this, (ItemRewardFragmentModuleTaskBinding) x0(parent, R$layout.item_reward_fragment_module_task));
        }
        return new CheckInTaskViewHolder(this, (ItemRewardFragmentModuleCheckInAndYourBonusBinding) x0(parent, R$layout.item_reward_fragment_module_check_in_and_your_bonus));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: y0 */
    public void onViewAttachedToWindow(@NotNull BaseAdapter<RewardsModule>.ViewHolder holder) {
        Function0<Unit> z10;
        Intrinsics.checkNotNullParameter(holder, "holder");
        super.onViewAttachedToWindow(holder);
        if ((holder instanceof CheckInTaskViewHolder) && (z10 = ((CheckInTaskViewHolder) holder).z()) != null) {
            z10.invoke();
        }
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    public void z() {
        super.z();
        l0();
        DailyTaskAdapter dailyTaskAdapter = this.G;
        if (dailyTaskAdapter != null) {
            dailyTaskAdapter.z();
        }
        CheckInAdapter checkInAdapter = this.C;
        if (checkInAdapter != null) {
            checkInAdapter.z();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: z0 */
    public void onViewDetachedFromWindow(@NotNull BaseAdapter<RewardsModule>.ViewHolder holder) {
        Function0<Unit> B;
        Intrinsics.checkNotNullParameter(holder, "holder");
        super.onViewDetachedFromWindow(holder);
        if ((holder instanceof CheckInTaskViewHolder) && (B = ((CheckInTaskViewHolder) holder).B()) != null) {
            B.invoke();
        }
    }
}
