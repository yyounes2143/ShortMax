package com.startshorts.androidplayer.ui.fragment.wallet;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewStubProxy;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import androidx.viewpager2.widget.ViewPager2;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.adapter.base.SelectableAdapter;
import com.startshorts.androidplayer.bean.tab.WalletTab;
import com.startshorts.androidplayer.databinding.FragmentMyWalletBinding;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.ui.fragment.base.ToolbarFragment;
import com.startshorts.androidplayer.ui.fragment.wallet.MyWalletFragment;
import com.startshorts.androidplayer.ui.view.purchase.RechargeTipView;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.viewmodel.wallet.WalletViewModel;
import com.startshorts.androidplayer.viewmodel.wallet.a;
import com.startshorts.androidplayer.viewmodel.wallet.b;
import java.util.List;
import jk.e0;
import jk.g;
import kd.d;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import ms.f;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: MyWalletFragment.kt */
@Metadata
/* loaded from: classes7.dex */
public final class MyWalletFragment extends ToolbarFragment<FragmentMyWalletBinding> {
    @NotNull

    /* renamed from: o  reason: collision with root package name */
    public static final a f46952o = new a(null);

    /* renamed from: j  reason: collision with root package name */
    private int f46953j;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private RechargeTipView f46955l;
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    private final i f46954k = kotlin.c.b(new Function0() { // from class: aj.o
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            WalletViewModel Q;
            Q = MyWalletFragment.Q(MyWalletFragment.this);
            return Q;
        }
    });

    /* renamed from: m  reason: collision with root package name */
    private boolean f46956m = true;
    @NotNull

    /* renamed from: n  reason: collision with root package name */
    private final MyWalletFragment$mOnPageChangeCallback$1 f46957n = new ViewPager2.OnPageChangeCallback() { // from class: com.startshorts.androidplayer.ui.fragment.wallet.MyWalletFragment$mOnPageChangeCallback$1
        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageSelected(int i10) {
            int i11;
            boolean z10;
            boolean z11;
            boolean z12;
            MyWalletFragment myWalletFragment = MyWalletFragment.this;
            myWalletFragment.r("onPageSelected -> position(" + i10 + ')');
            MyWalletFragment.this.f46953j = i10;
            MyWalletFragment.I(MyWalletFragment.this).f39548c.setSelectedIndex(i10);
            i11 = MyWalletFragment.this.f46953j;
            if (i11 != 0) {
                if (i11 != 1) {
                    if (i11 == 2) {
                        EventManager eventManager = EventManager.f42463a;
                        EventManager.s0(eventManager, "bonus_record_show", null, 0L, 6, null);
                        z12 = MyWalletFragment.this.f46956m;
                        if (!z12) {
                            EventManager.s0(eventManager, "bonus_record_click", null, 0L, 6, null);
                        }
                    }
                } else {
                    EventManager eventManager2 = EventManager.f42463a;
                    EventManager.s0(eventManager2, "coin_record_show", null, 0L, 6, null);
                    z11 = MyWalletFragment.this.f46956m;
                    if (!z11) {
                        EventManager.s0(eventManager2, "coin_record_click", null, 0L, 6, null);
                    }
                }
            } else {
                EventManager eventManager3 = EventManager.f42463a;
                EventManager.s0(eventManager3, "discount_show", null, 0L, 6, null);
                z10 = MyWalletFragment.this.f46956m;
                if (!z10) {
                    EventManager.s0(eventManager3, "discount_click", null, 0L, 6, null);
                }
            }
            MyWalletFragment.this.f46956m = false;
        }
    };

    /* compiled from: MyWalletFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: MyWalletFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b implements SelectableAdapter.d<WalletTab> {
        b() {
        }

        @Override // com.startshorts.androidplayer.adapter.base.SelectableAdapter.d
        /* renamed from: b */
        public void a(View view, int i10, WalletTab d10) {
            Intrinsics.checkNotNullParameter(view, "view");
            Intrinsics.checkNotNullParameter(d10, "d");
            MyWalletFragment.I(MyWalletFragment.this).f39549d.setCurrentItem(i10, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MyWalletFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c implements Observer, FunctionAdapter {

        /* renamed from: a  reason: collision with root package name */
        private final /* synthetic */ Function1 f46959a;

        c(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f46959a = function;
        }

        public final boolean equals(@Nullable Object obj) {
            if (!(obj instanceof Observer) || !(obj instanceof FunctionAdapter)) {
                return false;
            }
            return Intrinsics.areEqual(getFunctionDelegate(), ((FunctionAdapter) obj).getFunctionDelegate());
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        @NotNull
        public final f<?> getFunctionDelegate() {
            return this.f46959a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f46959a.invoke(obj);
        }
    }

    public static final /* synthetic */ FragmentMyWalletBinding I(MyWalletFragment myWalletFragment) {
        return (FragmentMyWalletBinding) myWalletFragment.A();
    }

    private final WalletViewModel N() {
        return (WalletViewModel) this.f46954k.getValue();
    }

    private final void O(List<WalletTab> list) {
        SelectableAdapter selectableAdapter = new SelectableAdapter(R$layout.item_wallet_tab);
        selectableAdapter.I(this.f46953j);
        selectableAdapter.J(new b());
        ((FragmentMyWalletBinding) A()).f39548c.a(list, selectableAdapter, null, new GridLayoutManager(requireContext(), list.size()));
    }

    private final void P(FragmentStateAdapter fragmentStateAdapter) {
        ConstraintLayout.LayoutParams layoutParams;
        ViewPager2 viewPager2 = ((FragmentMyWalletBinding) A()).f39549d;
        viewPager2.setSaveEnabled(false);
        viewPager2.setAdapter(fragmentStateAdapter);
        Intrinsics.checkNotNull(viewPager2);
        d.a(viewPager2, false);
        d.b(viewPager2, 2);
        viewPager2.registerOnPageChangeCallback(this.f46957n);
        int i10 = this.f46953j;
        if (i10 >= 0 && i10 < fragmentStateAdapter.getItemCount()) {
            ((FragmentMyWalletBinding) A()).f39549d.setCurrentItem(this.f46953j, false);
        }
        if (Intrinsics.areEqual(DeviceUtil.f48146a.e(), "fil")) {
            ViewGroup.LayoutParams layoutParams2 = ((FragmentMyWalletBinding) A()).f39549d.getLayoutParams();
            if (layoutParams2 instanceof ConstraintLayout.LayoutParams) {
                layoutParams = (ConstraintLayout.LayoutParams) layoutParams2;
            } else {
                layoutParams = null;
            }
            if (layoutParams != null) {
                ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = g.a(52.0f);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final WalletViewModel Q(final MyWalletFragment myWalletFragment) {
        final WalletViewModel walletViewModel = (WalletViewModel) new ViewModelProvider(myWalletFragment).get(WalletViewModel.class);
        walletViewModel.B().observe(myWalletFragment, new c(new Function1() { // from class: aj.p
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit R;
                R = MyWalletFragment.R(MyWalletFragment.this, walletViewModel, (com.startshorts.androidplayer.viewmodel.wallet.b) obj);
                return R;
            }
        }));
        return walletViewModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit R(MyWalletFragment myWalletFragment, WalletViewModel walletViewModel, com.startshorts.androidplayer.viewmodel.wallet.b bVar) {
        if (bVar instanceof b.C0697b) {
            myWalletFragment.O(((b.C0697b) bVar).a());
            walletViewModel.F(new a.C0696a(myWalletFragment));
        } else if (bVar instanceof b.a) {
            myWalletFragment.P(((b.a) bVar).a());
        }
        return Unit.f60915a;
    }

    private final void S() {
        RechargeTipView rechargeTipView;
        RechargeTipView rechargeTipView2 = this.f46955l;
        if (rechargeTipView2 == null) {
            ViewStubProxy rechargeTipViewstub = ((FragmentMyWalletBinding) A()).f39547b;
            Intrinsics.checkNotNullExpressionValue(rechargeTipViewstub, "rechargeTipViewstub");
            View c10 = e0.c(rechargeTipViewstub);
            if (c10 instanceof RechargeTipView) {
                rechargeTipView = (RechargeTipView) c10;
            } else {
                rechargeTipView = null;
            }
            this.f46955l = rechargeTipView;
        } else if (rechargeTipView2 != null) {
            rechargeTipView2.setVisibility(0);
        }
        RechargeTipView rechargeTipView3 = this.f46955l;
        if (rechargeTipView3 != null) {
            rechargeTipView3.B();
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public int l() {
        return R$layout.fragment_my_wallet;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        int i10;
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        Bundle arguments = getArguments();
        if (arguments != null) {
            i10 = arguments.getInt("tab_index");
        } else {
            i10 = 0;
        }
        this.f46953j = i10;
        E(R$string.my_wallet_fragment_title);
        WalletViewModel N = N();
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        N.F(new a.b(requireContext, this.f46953j));
        if (!AccountRepo.f43052a.D0()) {
            S();
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.ToolbarFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    @NotNull
    public String q() {
        return "MyWalletFragment";
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseVDBFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public void v() {
        super.v();
        if (B()) {
            ViewPager2 viewPager2 = ((FragmentMyWalletBinding) A()).f39549d;
            viewPager2.setAdapter(null);
            viewPager2.unregisterOnPageChangeCallback(this.f46957n);
        }
        RechargeTipView rechargeTipView = this.f46955l;
        if (rechargeTipView != null) {
            rechargeTipView.release();
        }
    }
}
