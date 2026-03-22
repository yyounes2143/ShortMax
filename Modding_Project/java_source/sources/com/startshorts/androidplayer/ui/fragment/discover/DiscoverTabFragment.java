package com.startshorts.androidplayer.ui.fragment.discover;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewStub;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import androidx.viewpager2.widget.ViewPager2;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.adapter.base.SelectableAdapter;
import com.startshorts.androidplayer.bean.api.ApiErrorState;
import com.startshorts.androidplayer.bean.discover.DiscoverTab;
import com.startshorts.androidplayer.bean.eventbus.RefreshAccountEvent;
import com.startshorts.androidplayer.bean.eventbus.RefreshContinuePlayLayoutEvent;
import com.startshorts.androidplayer.bean.eventbus.RefreshDiscoverFragmentEvent;
import com.startshorts.androidplayer.bean.eventbus.RefreshSpecifiedDiscoverFragmentEvent;
import com.startshorts.androidplayer.bean.payment.TTPInfoResult;
import com.startshorts.androidplayer.bean.purchase.GPayPriceInfo;
import com.startshorts.androidplayer.bean.subs.SubsSku;
import com.startshorts.androidplayer.databinding.FragmentDiscoverTabBinding;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.ui.activity.MainActivity;
import com.startshorts.androidplayer.ui.activity.subs.SubsDetailActivity;
import com.startshorts.androidplayer.ui.fragment.NewUserRecommendShortsFragment;
import com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment;
import com.startshorts.androidplayer.ui.fragment.base.PageStateFragment;
import com.startshorts.androidplayer.ui.fragment.discover.DiscoverRankingTabFragment;
import com.startshorts.androidplayer.ui.fragment.discover.DiscoverTabFragment;
import com.startshorts.androidplayer.ui.fragment.reward.RewardsFragment;
import com.startshorts.androidplayer.ui.view.act.ActBottomFloatView;
import com.startshorts.androidplayer.ui.view.base.CatchExceptionLinearLayoutManager;
import com.startshorts.androidplayer.ui.view.base.TabView;
import com.startshorts.androidplayer.ui.view.discover.DiscoverVipBoxView;
import com.startshorts.androidplayer.ui.view.main.NewUserRecommendLayout;
import com.startshorts.androidplayer.ui.view.reward.DiscoverRewardBoxView;
import com.startshorts.androidplayer.ui.view.search.SearchLabelView;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.viewmodel.billing.BillingViewModel;
import com.startshorts.androidplayer.viewmodel.billing.a;
import com.startshorts.androidplayer.viewmodel.discover.DiscoverViewModel;
import com.startshorts.androidplayer.viewmodel.discover.a;
import com.startshorts.androidplayer.viewmodel.discover.b;
import fk.e;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DiscoverTabFragment.kt */
@Metadata
@SourceDebugExtension({"SMAP\nDiscoverTabFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverTabFragment.kt\ncom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,660:1\n1863#2,2:661\n1863#2,2:663\n360#2,7:666\n1557#2:673\n1628#2,3:674\n254#3:665\n*S KotlinDebug\n*F\n+ 1 DiscoverTabFragment.kt\ncom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment\n*L\n175#1:661,2\n192#1:663,2\n453#1:666,7\n463#1:673\n463#1:674,3\n379#1:665\n*E\n"})
/* loaded from: classes7.dex */
public final class DiscoverTabFragment extends PageStateFragment<FragmentDiscoverTabBinding> {
    @NotNull
    public static final a I = new a(null);
    @Nullable
    private DiscoverVipBoxView A;
    private int C;
    @Nullable
    private DiscoverTab D;
    @Nullable
    private List<? extends SubsSku> G;

    /* renamed from: v  reason: collision with root package name */
    private int f45970v;
    @Nullable

    /* renamed from: x  reason: collision with root package name */
    private ActBottomFloatView f45972x;
    @Nullable

    /* renamed from: y  reason: collision with root package name */
    private String f45973y;
    @Nullable

    /* renamed from: z  reason: collision with root package name */
    private DiscoverRewardBoxView f45974z;
    @NotNull

    /* renamed from: o  reason: collision with root package name */
    private final ms.i f45963o = kotlin.c.b(new Function0() { // from class: com.startshorts.androidplayer.ui.fragment.discover.u0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            DiscoverViewModel W0;
            W0 = DiscoverTabFragment.W0(DiscoverTabFragment.this);
            return W0;
        }
    });
    @NotNull

    /* renamed from: p  reason: collision with root package name */
    private final RecyclerView.RecycledViewPool f45964p = new RecyclerView.RecycledViewPool();
    @NotNull

    /* renamed from: q  reason: collision with root package name */
    private final ms.i f45965q = kotlin.c.b(new Function0() { // from class: com.startshorts.androidplayer.ui.fragment.discover.v0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            SearchLabelView Z0;
            Z0 = DiscoverTabFragment.Z0(DiscoverTabFragment.this);
            return Z0;
        }
    });
    @NotNull

    /* renamed from: r  reason: collision with root package name */
    private final ms.i f45966r = kotlin.c.b(new Function0() { // from class: com.startshorts.androidplayer.ui.fragment.discover.w0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            ObjectAnimator U0;
            U0 = DiscoverTabFragment.U0(DiscoverTabFragment.this);
            return U0;
        }
    });
    @NotNull

    /* renamed from: s  reason: collision with root package name */
    private final ms.i f45967s = kotlin.c.b(new Function0() { // from class: com.startshorts.androidplayer.ui.fragment.discover.x0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            ViewModelProvider a12;
            a12 = DiscoverTabFragment.a1(DiscoverTabFragment.this);
            return a12;
        }
    });
    @NotNull

    /* renamed from: t  reason: collision with root package name */
    private final ms.i f45968t = kotlin.c.b(new Function0() { // from class: com.startshorts.androidplayer.ui.fragment.discover.y0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            BillingViewModel V0;
            V0 = DiscoverTabFragment.V0(DiscoverTabFragment.this);
            return V0;
        }
    });
    @NotNull

    /* renamed from: u  reason: collision with root package name */
    private String f45969u = "";
    @NotNull

    /* renamed from: w  reason: collision with root package name */
    private final b f45971w = new h();
    private final int B = jk.g.a(150.0f);
    @NotNull
    private final DiscoverTabFragment$mOnPageChangeCallback$1 E = new ViewPager2.OnPageChangeCallback() { // from class: com.startshorts.androidplayer.ui.fragment.discover.DiscoverTabFragment$mOnPageChangeCallback$1
        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageSelected(int i10) {
            SelectableAdapter selectableAdapter;
            DiscoverTab discoverTab;
            DiscoverTabFragment discoverTabFragment = DiscoverTabFragment.this;
            discoverTabFragment.r("onPageSelected -> position(" + i10 + ')');
            DiscoverTabFragment.this.C = i10;
            DiscoverTabFragment.i0(DiscoverTabFragment.this).f39481g.setSelectedIndex(i10);
            RecyclerView.Adapter adapter = DiscoverTabFragment.i0(DiscoverTabFragment.this).f39481g.getAdapter();
            if (adapter instanceof SelectableAdapter) {
                selectableAdapter = (SelectableAdapter) adapter;
            } else {
                selectableAdapter = null;
            }
            if (selectableAdapter != null && (discoverTab = (DiscoverTab) selectableAdapter.getItem(i10)) != null) {
                DiscoverTabFragment.this.D = discoverTab;
                if (discoverTab.isH5()) {
                    ActBottomFloatView actBottomFloatView = DiscoverTabFragment.this.f45972x;
                    if (actBottomFloatView != null) {
                        actBottomFloatView.J();
                        actBottomFloatView.setVisibility(8);
                    }
                    DiscoverTabFragment.i0(DiscoverTabFragment.this).f39479e.setVisibility(8);
                } else {
                    ActBottomFloatView actBottomFloatView2 = DiscoverTabFragment.this.f45972x;
                    if (actBottomFloatView2 != null) {
                        actBottomFloatView2.K();
                    }
                    DiscoverTabFragment.this.f1();
                }
                au.c.d().l(new RefreshContinuePlayLayoutEvent());
            }
        }
    };
    @NotNull
    private final List<WeakReference<Fragment>> F = new ArrayList();
    private final int H = R$layout.fragment_discover_tab;

    /* compiled from: DiscoverTabFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: DiscoverTabFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public interface b {

        /* compiled from: DiscoverTabFragment.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class a {
            public static /* synthetic */ void a(b bVar, float f10, boolean z10, int i10, Object obj) {
                if (obj == null) {
                    if ((i10 & 2) != 0) {
                        z10 = false;
                    }
                    bVar.b(f10, z10);
                    return;
                }
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: changeSearchViewAlpha");
            }
        }

        void a(@NotNull String str, @Nullable Integer num);

        void b(float f10, boolean z10);

        void c(float f10, boolean z10);

        void d();

        void e();
    }

    /* compiled from: DiscoverTabFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c implements e.a {
        c() {
        }

        @Override // fk.e.a
        public void a(String str, String str2, GPayPriceInfo gPayPriceInfo) {
            e.a.C0745a.a(this, str, str2, gPayPriceInfo);
        }

        @Override // fk.e.a
        public void b(String scene) {
            Intrinsics.checkNotNullParameter(scene, "scene");
        }

        @Override // fk.e.a
        public void c(TTPInfoResult tTPInfoResult) {
            e.a.C0745a.c(this, tTPInfoResult);
        }

        @Override // fk.e.a
        public void d(int i10, String str, String gpSkuId, GPayPriceInfo priceInfo) {
            Intrinsics.checkNotNullParameter(gpSkuId, "gpSkuId");
            Intrinsics.checkNotNullParameter(priceInfo, "priceInfo");
        }

        @Override // fk.e.a
        public void e(List<? extends Object> list) {
            DiscoverTabFragment.this.L0(list);
        }

        @Override // fk.e.a
        public void f() {
            DiscoverTabFragment.this.d1();
        }
    }

    /* compiled from: DiscoverTabFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d implements NewUserRecommendLayout.a {

        /* compiled from: DiscoverTabFragment.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class a implements BaseDialogFragment.b {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ DiscoverTabFragment f45980a;

            a(DiscoverTabFragment discoverTabFragment) {
                this.f45980a = discoverTabFragment;
            }

            @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment.b
            public void onDismiss() {
                this.f45980a.f1();
                DiscoverFragment z02 = this.f45980a.z0();
                if (z02 != null) {
                    z02.H2();
                }
            }
        }

        d() {
        }

        @Override // com.startshorts.androidplayer.ui.view.main.NewUserRecommendLayout.a
        public void a() {
            NewUserRecommendShortsFragment a10 = NewUserRecommendShortsFragment.E.a();
            DiscoverTabFragment discoverTabFragment = DiscoverTabFragment.this;
            a10.w(new a(discoverTabFragment));
            FragmentManager childFragmentManager = discoverTabFragment.getChildFragmentManager();
            Intrinsics.checkNotNullExpressionValue(childFragmentManager, "getChildFragmentManager(...)");
            a10.x(childFragmentManager);
            DiscoverFragment z02 = DiscoverTabFragment.this.z0();
            if (z02 != null) {
                z02.p2();
            }
            EventManager.s0(EventManager.f42463a, "suspension_window_click", null, 0L, 6, null);
        }

        @Override // com.startshorts.androidplayer.ui.view.main.NewUserRecommendLayout.a
        public void b() {
            EventManager.s0(EventManager.f42463a, "suspension_window_show", null, 0L, 6, null);
        }
    }

    /* compiled from: DiscoverTabFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class e implements DiscoverRewardBoxView.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DiscoverRewardBoxView f45981a;

        e(DiscoverRewardBoxView discoverRewardBoxView) {
            this.f45981a = discoverRewardBoxView;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void c(DiscoverRewardBoxView discoverRewardBoxView) {
            RewardsFragment.a aVar = RewardsFragment.Y;
            Context context = discoverRewardBoxView.getContext();
            Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
            RewardsFragment.a.d(aVar, context, "discover", true, null, null, 24, null);
        }

        @Override // com.startshorts.androidplayer.ui.view.reward.DiscoverRewardBoxView.b
        public void a() {
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            bundle.putString("scene", "discover");
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "reward_click", bundle, 0L, 4, null);
            Bundle bundle2 = new Bundle();
            bundle2.putString("scene", "discover");
            EventManager.s0(eventManager, "reward_show", bundle2, 0L, 4, null);
            fk.h0 h0Var = fk.h0.f51735a;
            final DiscoverRewardBoxView discoverRewardBoxView = this.f45981a;
            h0Var.e(new Runnable() { // from class: com.startshorts.androidplayer.ui.fragment.discover.d1
                @Override // java.lang.Runnable
                public final void run() {
                    DiscoverTabFragment.e.c(DiscoverRewardBoxView.this);
                }
            });
        }
    }

    /* compiled from: DiscoverTabFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class f implements SelectableAdapter.d<DiscoverTab> {
        f() {
        }

        @Override // com.startshorts.androidplayer.adapter.base.SelectableAdapter.d
        /* renamed from: b */
        public void a(View view, int i10, DiscoverTab d10) {
            Intrinsics.checkNotNullParameter(view, "view");
            Intrinsics.checkNotNullParameter(d10, "d");
            DiscoverTabFragment.i0(DiscoverTabFragment.this).f39482h.setCurrentItem(i10, false);
            EventManager eventManager = EventManager.f42463a;
            EventManager.s0(eventManager, "top_tab_click", eventManager.B(d10), 0L, 4, null);
        }
    }

    /* compiled from: DiscoverTabFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class g implements DiscoverVipBoxView.a {
        g() {
        }

        @Override // com.startshorts.androidplayer.ui.view.discover.DiscoverVipBoxView.a
        public void a() {
            SubsDetailActivity.a aVar = SubsDetailActivity.Q;
            Context requireContext = DiscoverTabFragment.this.requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
            SubsDetailActivity.a.b(aVar, requireContext, "discover", null, null, false, "sub_portal", 28, null);
        }
    }

    /* compiled from: DiscoverTabFragment.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nDiscoverTabFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverTabFragment.kt\ncom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$mDiscoverListener$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,660:1\n360#2,7:661\n*S KotlinDebug\n*F\n+ 1 DiscoverTabFragment.kt\ncom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$mDiscoverListener$1\n*L\n253#1:661,7\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class h implements b {
        h() {
        }

        @Override // com.startshorts.androidplayer.ui.fragment.discover.DiscoverTabFragment.b
        public void a(String from, Integer num) {
            SelectableAdapter selectableAdapter;
            List<D> m10;
            Intrinsics.checkNotNullParameter(from, "from");
            RecyclerView.Adapter adapter = DiscoverTabFragment.i0(DiscoverTabFragment.this).f39481g.getAdapter();
            if (adapter instanceof SelectableAdapter) {
                selectableAdapter = (SelectableAdapter) adapter;
            } else {
                selectableAdapter = null;
            }
            if (selectableAdapter != null && (m10 = selectableAdapter.m()) != 0) {
                Iterator it = m10.iterator();
                int i10 = 0;
                int i11 = 0;
                while (true) {
                    if (it.hasNext()) {
                        if (((DiscoverTab) it.next()).isTabRanking()) {
                            break;
                        }
                        i11++;
                    } else {
                        i11 = -1;
                        break;
                    }
                }
                if (i11 != -1) {
                    DiscoverTabFragment.this.g1(from);
                    DiscoverTabFragment discoverTabFragment = DiscoverTabFragment.this;
                    if (num != null) {
                        i10 = num.intValue();
                    }
                    discoverTabFragment.h1(i10);
                    DiscoverTabFragment.i0(DiscoverTabFragment.this).f39482h.setCurrentItem(i11);
                }
            }
        }

        @Override // com.startshorts.androidplayer.ui.fragment.discover.DiscoverTabFragment.b
        public void b(float f10, boolean z10) {
            DiscoverTabFragment.this.A0().cancel();
            if (z10) {
                float alpha = DiscoverTabFragment.i0(DiscoverTabFragment.this).f39476b.getAlpha();
                if (alpha != f10) {
                    DiscoverTabFragment.this.A0().setFloatValues(alpha, f10);
                    DiscoverTabFragment.this.A0().start();
                    return;
                }
                return;
            }
            DiscoverTabFragment.i0(DiscoverTabFragment.this).f39476b.setAlpha(f10);
        }

        @Override // com.startshorts.androidplayer.ui.fragment.discover.DiscoverTabFragment.b
        public void c(float f10, boolean z10) {
            DiscoverTabFragment.this.A0().cancel();
            if (z10) {
                float alpha = DiscoverTabFragment.i0(DiscoverTabFragment.this).f39476b.getAlpha();
                float max = Math.max(0.0f, Math.min(1.0f, f10 / DiscoverTabFragment.this.B));
                if (alpha != max) {
                    DiscoverTabFragment.this.A0().setFloatValues(alpha, max);
                    DiscoverTabFragment.this.A0().start();
                    return;
                }
                return;
            }
            DiscoverTabFragment.i0(DiscoverTabFragment.this).f39476b.setAlpha(Math.max(0.0f, Math.min(1.0f, f10 / DiscoverTabFragment.this.B)));
        }

        @Override // com.startshorts.androidplayer.ui.fragment.discover.DiscoverTabFragment.b
        public void d() {
            DiscoverTab discoverTab = DiscoverTabFragment.this.D;
            if (discoverTab == null || !discoverTab.isH5()) {
                ActBottomFloatView actBottomFloatView = DiscoverTabFragment.this.f45972x;
                if (actBottomFloatView != null) {
                    actBottomFloatView.U();
                }
                DiscoverTabFragment.i0(DiscoverTabFragment.this).f39479e.h();
            }
        }

        @Override // com.startshorts.androidplayer.ui.fragment.discover.DiscoverTabFragment.b
        public void e() {
            MainActivity mainActivity;
            DiscoverTab discoverTab = DiscoverTabFragment.this.D;
            if (discoverTab == null || !discoverTab.isH5()) {
                ActBottomFloatView actBottomFloatView = DiscoverTabFragment.this.f45972x;
                if (actBottomFloatView != null) {
                    actBottomFloatView.W();
                }
                FragmentActivity activity = DiscoverTabFragment.this.getActivity();
                if (activity instanceof MainActivity) {
                    mainActivity = (MainActivity) activity;
                } else {
                    mainActivity = null;
                }
                if (mainActivity != null) {
                    mainActivity.E0();
                }
                DiscoverTabFragment.i0(DiscoverTabFragment.this).f39479e.l();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DiscoverTabFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class i implements Observer, FunctionAdapter {

        /* renamed from: a  reason: collision with root package name */
        private final /* synthetic */ Function1 f45994a;

        i(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f45994a = function;
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
            return this.f45994a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f45994a.invoke(obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ObjectAnimator A0() {
        Object value = this.f45966r.getValue();
        Intrinsics.checkNotNullExpressionValue(value, "getValue(...)");
        return (ObjectAnimator) value;
    }

    private final BillingViewModel B0() {
        return (BillingViewModel) this.f45968t.getValue();
    }

    private final DiscoverViewModel D0() {
        return (DiscoverViewModel) this.f45963o.getValue();
    }

    private final SearchLabelView E0() {
        return (SearchLabelView) this.f45965q.getValue();
    }

    private final ViewModelProvider F0() {
        return (ViewModelProvider) this.f45967s.getValue();
    }

    private final void K0(Integer num, List<DiscoverTab> list) {
        DiscoverTab discoverTab;
        Iterator<DiscoverTab> it = list.iterator();
        int i10 = 0;
        while (true) {
            if (it.hasNext()) {
                if (Intrinsics.areEqual(it.next().getTabId(), num)) {
                    break;
                }
                i10++;
            } else {
                i10 = -1;
                break;
            }
        }
        this.C = i10;
        if (i10 == -1) {
            this.C = 0;
        }
        if (list.isEmpty()) {
            discoverTab = null;
        } else {
            discoverTab = list.get(this.C);
        }
        this.D = discoverTab;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void L0(List<? extends Object> list) {
        List<? extends SubsSku> list2 = this.G;
        if (list2 == null) {
            ud.a.f68411a.M0(null);
            DiscoverVipBoxView discoverVipBoxView = this.A;
            if (discoverVipBoxView != null) {
                discoverVipBoxView.A();
            }
        } else if (list2 != null) {
            for (SubsSku subsSku : list2) {
                jk.u.k(subsSku, list);
            }
            ud.a.f68411a.M0(list2);
            DiscoverVipBoxView discoverVipBoxView2 = this.A;
            if (discoverVipBoxView2 != null) {
                discoverVipBoxView2.D();
            }
        }
    }

    private final void M0() {
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
        Intrinsics.checkNotNullExpressionValue(viewLifecycleOwner, "getViewLifecycleOwner(...)");
        new fk.e(requireContext, viewLifecycleOwner, B0(), new c()).d();
    }

    private final void N0() {
        ((FragmentDiscoverTabBinding) A()).f39479e.setCallback(new d());
    }

    private final void O0() {
        KeyEvent.Callback callback;
        if (this.f45974z == null) {
            ViewStub viewStub = ((FragmentDiscoverTabBinding) A()).f39478d.getViewStub();
            DiscoverRewardBoxView discoverRewardBoxView = null;
            if (viewStub != null) {
                callback = jk.e0.d(viewStub);
            } else {
                callback = null;
            }
            if (callback instanceof DiscoverRewardBoxView) {
                discoverRewardBoxView = (DiscoverRewardBoxView) callback;
            }
            this.f45974z = discoverRewardBoxView;
            if (discoverRewardBoxView != null) {
                discoverRewardBoxView.setMFrom("home_reward");
                discoverRewardBoxView.setMListener(new e(discoverRewardBoxView));
            }
        }
        DiscoverRewardBoxView discoverRewardBoxView2 = this.f45974z;
        if (discoverRewardBoxView2 != null) {
            discoverRewardBoxView2.C();
        }
    }

    private final void P0() {
        View findViewById = ((FragmentDiscoverTabBinding) A()).f39480f.findViewById(R$id.logo_iv);
        Intrinsics.checkNotNullExpressionValue(findViewById, "findViewById(...)");
        jk.b0.i(findViewById, 0, DeviceUtil.f48146a.J(), 0, 0, 13, null);
        SearchLabelView E0 = E0();
        Lifecycle lifecycle = getLifecycle();
        Intrinsics.checkNotNullExpressionValue(lifecycle, "<get-lifecycle>(...)");
        E0.C(lifecycle);
    }

    private final void Q0(Integer num, List<DiscoverTab> list) {
        int i10;
        K0(num, list);
        TabView tabView = ((FragmentDiscoverTabBinding) A()).f39481g;
        SelectableAdapter selectableAdapter = new SelectableAdapter(R$layout.item_discover_tab);
        selectableAdapter.J(new f());
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
        tabView.a(list, selectableAdapter, null, new CatchExceptionLinearLayoutManager(requireActivity, 0, false));
        tabView.setSelectedIndex(this.C);
        if (list.size() > 1) {
            i10 = 0;
        } else {
            i10 = 8;
        }
        tabView.setVisibility(i10);
        ViewPager2 viewPager2 = ((FragmentDiscoverTabBinding) A()).f39482h;
        viewPager2.setOffscreenPageLimit(4);
        FragmentStateAdapter w02 = w0(list);
        viewPager2.setAdapter(w02);
        Intrinsics.checkNotNull(viewPager2);
        kd.d.a(viewPager2, false);
        kd.d.b(viewPager2, 2);
        viewPager2.unregisterOnPageChangeCallback(this.E);
        viewPager2.registerOnPageChangeCallback(this.E);
        int i11 = this.C;
        if (i11 >= 0 && i11 < w02.getItemCount()) {
            ((FragmentDiscoverTabBinding) A()).f39482h.setCurrentItem(this.C, false);
        }
    }

    private final void R0() {
        KeyEvent.Callback callback;
        DiscoverVipBoxView discoverVipBoxView = this.A;
        if (discoverVipBoxView == null) {
            ViewStub viewStub = ((FragmentDiscoverTabBinding) A()).f39483i.getViewStub();
            DiscoverVipBoxView discoverVipBoxView2 = null;
            if (viewStub != null) {
                callback = jk.e0.d(viewStub);
            } else {
                callback = null;
            }
            if (callback instanceof DiscoverVipBoxView) {
                discoverVipBoxView2 = (DiscoverVipBoxView) callback;
            }
            this.A = discoverVipBoxView2;
            if (discoverVipBoxView2 != null) {
                discoverVipBoxView2.setMListener(new g());
            }
        } else if (discoverVipBoxView != null) {
            discoverVipBoxView.D();
        }
    }

    private final void T0() {
        CoroutineUtil.l(CoroutineUtil.f48072a, "loadSubscribeDiscountData", false, new DiscoverTabFragment$loadSubscribeDiscountData$1(this, null), 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ObjectAnimator U0(DiscoverTabFragment discoverTabFragment) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(((FragmentDiscoverTabBinding) discoverTabFragment.A()).f39476b, "alpha", 0.0f, 0.0f);
        ofFloat.setDuration(500L);
        return ofFloat;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final BillingViewModel V0(DiscoverTabFragment discoverTabFragment) {
        return (BillingViewModel) discoverTabFragment.F0().get(BillingViewModel.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DiscoverViewModel W0(final DiscoverTabFragment discoverTabFragment) {
        DiscoverViewModel discoverViewModel = (DiscoverViewModel) new ViewModelProvider(discoverTabFragment).get(DiscoverViewModel.class);
        discoverViewModel.F().observe(discoverTabFragment, new i(new Function1() { // from class: com.startshorts.androidplayer.ui.fragment.discover.b1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit X0;
                X0 = DiscoverTabFragment.X0(DiscoverTabFragment.this, (com.startshorts.androidplayer.viewmodel.discover.b) obj);
                return X0;
            }
        }));
        return discoverViewModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit X0(final DiscoverTabFragment discoverTabFragment, com.startshorts.androidplayer.viewmodel.discover.b bVar) {
        String str;
        if (bVar instanceof b.a) {
            b.a aVar = (b.a) bVar;
            ApiErrorState a10 = aVar.a();
            if (a10 != null && a10.getState() == 1) {
                discoverTabFragment.U();
            } else {
                ApiErrorState a11 = aVar.a();
                if (a11 != null) {
                    str = a11.getMsg();
                } else {
                    str = null;
                }
                discoverTabFragment.V(str);
            }
        } else if (bVar instanceof b.e) {
            discoverTabFragment.K();
            b.e eVar = (b.e) bVar;
            Integer a12 = eVar.a();
            List<DiscoverTab> b10 = eVar.b();
            if (b10 == null) {
                b10 = new ArrayList<>();
            }
            discoverTabFragment.Q0(a12, b10);
            discoverTabFragment.x0(true, new Function1() { // from class: com.startshorts.androidplayer.ui.fragment.discover.c1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit Y0;
                    Y0 = DiscoverTabFragment.Y0(DiscoverTabFragment.this, (ActBottomFloatView) obj);
                    return Y0;
                }
            });
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit Y0(DiscoverTabFragment discoverTabFragment, ActBottomFloatView actBottomFloatView) {
        MainActivity mainActivity;
        if (actBottomFloatView != null) {
            FragmentActivity activity = discoverTabFragment.getActivity();
            if (activity instanceof MainActivity) {
                mainActivity = (MainActivity) activity;
            } else {
                mainActivity = null;
            }
            if (mainActivity != null) {
                mainActivity.E0();
            }
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SearchLabelView Z0(DiscoverTabFragment discoverTabFragment) {
        return (SearchLabelView) ((FragmentDiscoverTabBinding) discoverTabFragment.A()).f39480f.findViewById(R$id.search_label_view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ViewModelProvider a1(DiscoverTabFragment discoverTabFragment) {
        return new ViewModelProvider(discoverTabFragment);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit b1(ActBottomFloatView actBottomFloatView) {
        if (actBottomFloatView != null) {
            actBottomFloatView.T();
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit c1(DiscoverTabFragment discoverTabFragment, ActBottomFloatView actBottomFloatView) {
        MainActivity mainActivity;
        if (actBottomFloatView != null) {
            actBottomFloatView.K();
        }
        if (actBottomFloatView != null) {
            FragmentActivity activity = discoverTabFragment.getActivity();
            if (activity instanceof MainActivity) {
                mainActivity = (MainActivity) activity;
            } else {
                mainActivity = null;
            }
            if (mainActivity != null) {
                mainActivity.E0();
            }
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void d1() {
        if (this.G == null) {
            DiscoverVipBoxView discoverVipBoxView = this.A;
            if (discoverVipBoxView != null) {
                discoverVipBoxView.A();
                return;
            }
            return;
        }
        ArrayList arrayList = new ArrayList();
        List<? extends SubsSku> list = this.G;
        if (list != null) {
            for (SubsSku subsSku : list) {
                arrayList.add(subsSku.getSkuId());
            }
        }
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new zc.g(le.h.f62164a.b(), arrayList));
        e1(arrayList2);
    }

    public static final /* synthetic */ FragmentDiscoverTabBinding i0(DiscoverTabFragment discoverTabFragment) {
        return (FragmentDiscoverTabBinding) discoverTabFragment.A();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void v0() {
        B0().W(new a.c("coins_2_sub_dialog"));
    }

    private final FragmentStateAdapter w0(final List<DiscoverTab> list) {
        this.F.clear();
        List<DiscoverTab> list2 = list;
        final ArrayList arrayList = new ArrayList(CollectionsKt.z(list2, 10));
        for (DiscoverTab discoverTab : list2) {
            arrayList.add(Long.valueOf(discoverTab.hashCode()));
        }
        return new FragmentStateAdapter() { // from class: com.startshorts.androidplayer.ui.fragment.discover.DiscoverTabFragment$createFragmentStateAdapter$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(DiscoverTabFragment.this);
            }

            @Override // androidx.viewpager2.adapter.FragmentStateAdapter
            public boolean containsItem(long j10) {
                return arrayList.contains(Long.valueOf(j10));
            }

            @Override // androidx.viewpager2.adapter.FragmentStateAdapter
            public Fragment createFragment(int i10) {
                String str;
                Fragment fragment;
                String str2;
                List list3;
                String str3;
                DiscoverTab discoverTab2 = list.get(i10);
                boolean z10 = false;
                boolean z11 = false;
                boolean z12 = false;
                int i11 = 0;
                boolean z13 = true;
                if (discoverTab2.isH5()) {
                    fragment = new DiscoverWebViewFragment();
                    DiscoverTabFragment discoverTabFragment = DiscoverTabFragment.this;
                    List<DiscoverTab> list4 = list;
                    Bundle bundle = new Bundle();
                    str3 = discoverTabFragment.f45973y;
                    bundle.putString("from", str3);
                    bundle.putString("tab", jk.l.d(discoverTab2));
                    if (list4.size() > 1) {
                        z11 = true;
                    }
                    bundle.putBoolean("is_show_tab_view", z11);
                    fragment.setArguments(bundle);
                } else if (Intrinsics.areEqual(discoverTab2.getTabFlagName(), DiscoverTab.TAB_LIBRARY)) {
                    fragment = new DiscoverLibraryFragment();
                    DiscoverTabFragment discoverTabFragment2 = DiscoverTabFragment.this;
                    List<DiscoverTab> list5 = list;
                    Bundle bundle2 = new Bundle();
                    str2 = discoverTabFragment2.f45973y;
                    bundle2.putString("from", str2);
                    bundle2.putString("tab", jk.l.d(discoverTab2));
                    if (list5.size() > 1) {
                        z12 = true;
                    }
                    bundle2.putBoolean("is_show_tab_view", z12);
                    fragment.setArguments(bundle2);
                } else if (discoverTab2.isTabRanking()) {
                    DiscoverRankingTabFragment.a aVar = DiscoverRankingTabFragment.f45950t;
                    if (list.size() <= 1) {
                        z13 = false;
                    }
                    Integer tabId = discoverTab2.getTabId();
                    if (tabId != null) {
                        i11 = tabId.intValue();
                    }
                    String tabDisplayName = discoverTab2.getTabDisplayName();
                    if (tabDisplayName == null) {
                        tabDisplayName = "";
                    }
                    fragment = aVar.b(z13, i11, tabDisplayName);
                } else {
                    DiscoverFragment discoverFragment = new DiscoverFragment();
                    DiscoverTabFragment discoverTabFragment3 = DiscoverTabFragment.this;
                    List<DiscoverTab> list6 = list;
                    Bundle bundle3 = new Bundle();
                    str = discoverTabFragment3.f45973y;
                    bundle3.putString("from", str);
                    bundle3.putString("tab", jk.l.d(discoverTab2));
                    if (list6.size() > 1) {
                        z10 = true;
                    }
                    bundle3.putBoolean("is_show_tab_view", z10);
                    bundle3.putInt("position", i10);
                    discoverFragment.setArguments(bundle3);
                    fragment = discoverFragment;
                }
                list3 = DiscoverTabFragment.this.F;
                list3.add(new WeakReference(fragment));
                return fragment;
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public int getItemCount() {
                return arrayList.size();
            }

            @Override // androidx.viewpager2.adapter.FragmentStateAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
            public long getItemId(int i10) {
                return arrayList.get(i10).longValue();
            }
        };
    }

    private final kotlinx.coroutines.r x0(boolean z10, Function1<? super ActBottomFloatView, Unit> function1) {
        return CoroutineUtil.l(CoroutineUtil.f48072a, "getBottomFloatView", false, new DiscoverTabFragment$getBottomFloatView$1(function1, z10, this, null), 2, null);
    }

    static /* synthetic */ kotlinx.coroutines.r y0(DiscoverTabFragment discoverTabFragment, boolean z10, Function1 function1, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        return discoverTabFragment.x0(z10, function1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final DiscoverFragment z0() {
        Fragment fragment;
        WeakReference weakReference = (WeakReference) CollectionsKt.t0(this.F, this.C);
        if (weakReference != null) {
            fragment = (Fragment) weakReference.get();
        } else {
            fragment = null;
        }
        if (!(fragment instanceof DiscoverFragment)) {
            return null;
        }
        return (DiscoverFragment) fragment;
    }

    @NotNull
    public final b C0() {
        return this.f45971w;
    }

    @NotNull
    public final RecyclerView.RecycledViewPool G0() {
        return this.f45964p;
    }

    @Nullable
    public final DiscoverTab H0() {
        return this.D;
    }

    @NotNull
    public final String I0() {
        return this.f45969u;
    }

    public final int J0() {
        return this.f45970v;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.PageStateFragment
    public void R() {
        D0().Q(a.c.f48501a);
    }

    public final boolean S0() {
        ActBottomFloatView actBottomFloatView;
        ActBottomFloatView actBottomFloatView2 = this.f45972x;
        if (actBottomFloatView2 != null && actBottomFloatView2.getVisibility() == 0 && (actBottomFloatView = this.f45972x) != null && actBottomFloatView.P()) {
            return true;
        }
        return false;
    }

    public final void e1(@NotNull List<zc.g> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        B0().W(new a.h(list));
    }

    public final void f1() {
        DiscoverTab discoverTab = this.D;
        if (discoverTab == null || !discoverTab.isH5()) {
            ((FragmentDiscoverTabBinding) A()).f39479e.k();
        }
    }

    public final void g1(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.f45969u = str;
    }

    public final void h1(int i10) {
        this.f45970v = i10;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public int l() {
        return this.H;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public boolean o() {
        return true;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.PageStateFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment, androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        DiscoverTab discoverTab = this.D;
        if (discoverTab != null && !discoverTab.isH5()) {
            y0(this, false, new Function1() { // from class: com.startshorts.androidplayer.ui.fragment.discover.z0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit b12;
                    b12 = DiscoverTabFragment.b1((ActBottomFloatView) obj);
                    return b12;
                }
            }, 1, null);
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.PageStateFragment, com.startshorts.androidplayer.ui.fragment.base.PermissionFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        E0().E();
        D0().Q(a.d.f48502a);
        DiscoverTab discoverTab = this.D;
        if (discoverTab != null && !discoverTab.isH5()) {
            y0(this, false, new Function1() { // from class: com.startshorts.androidplayer.ui.fragment.discover.a1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit c12;
                    c12 = DiscoverTabFragment.c1(DiscoverTabFragment.this, (ActBottomFloatView) obj);
                    return c12;
                }
            }, 1, null);
            f1();
        }
        O0();
        R0();
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.PageStateFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        Bundle arguments = getArguments();
        this.f45973y = (arguments == null || (r2 = arguments.getString("from")) == null) ? "icon" : "icon";
        P0();
        N0();
        ud.a.f68411a.g0(false);
        R0();
        M0();
        T0();
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public boolean p() {
        return true;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.PageStateFragment, com.startshorts.androidplayer.ui.fragment.base.PermissionFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    @NotNull
    public String q() {
        return "DiscoverTabFragment";
    }

    @au.l(threadMode = ThreadMode.MAIN)
    public final void receiveRefreshAccountEvent(@NotNull RefreshAccountEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (!m()) {
            return;
        }
        r("receiveRefreshAccountEvent");
        T();
        R();
    }

    @au.l(threadMode = ThreadMode.MAIN)
    public final void receiveRefreshDiscoverFragmentEvent(@NotNull RefreshDiscoverFragmentEvent event) {
        Integer tabId;
        Intrinsics.checkNotNullParameter(event, "event");
        DiscoverTab discoverTab = this.D;
        if (discoverTab != null && (tabId = discoverTab.getTabId()) != null) {
            au.c.d().l(new RefreshSpecifiedDiscoverFragmentEvent(tabId.intValue()));
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public void t() {
        super.t();
        D0().Q(a.c.f48501a);
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.PageStateFragment, com.startshorts.androidplayer.ui.fragment.base.BaseVDBFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public void v() {
        super.v();
        if (B()) {
            ((FragmentDiscoverTabBinding) A()).f39479e.j();
            ViewPager2 viewPager2 = ((FragmentDiscoverTabBinding) A()).f39482h;
            viewPager2.setAdapter(null);
            viewPager2.unregisterOnPageChangeCallback(this.E);
            A0().cancel();
        }
        this.F.clear();
    }
}
