package com.startshorts.androidplayer.ui.fragment.wallet;

import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.RecyclerView;
import bf.e;
import com.hades.aar.pagestate.StateViewGroup;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.adapter.base.BaseAdapter;
import com.startshorts.androidplayer.adapter.purchase.BlackFridayCoinSkuAdapter;
import com.startshorts.androidplayer.bean.api.ApiErrorState;
import com.startshorts.androidplayer.bean.purchase.BlackFridayCoinSku;
import com.startshorts.androidplayer.bean.purchase.GPayPriceInfo;
import com.startshorts.androidplayer.databinding.FragmentBlackFridayCoinSkuBinding;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.ui.fragment.base.ListFragment;
import com.startshorts.androidplayer.ui.fragment.wallet.BlackFridayCoinSkuFragment;
import com.startshorts.androidplayer.ui.view.purchase.BlackFridayCoinSkuView;
import com.startshorts.androidplayer.viewmodel.billing.BillingViewModel;
import com.startshorts.androidplayer.viewmodel.billing.a;
import com.startshorts.androidplayer.viewmodel.billing.b;
import com.startshorts.androidplayer.viewmodel.purchase.PurchaseViewModel;
import com.startshorts.androidplayer.viewmodel.purchase.a;
import com.startshorts.androidplayer.viewmodel.purchase.b;
import java.util.List;
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
import zc.g;
/* compiled from: BlackFridayCoinSkuFragment.kt */
@Metadata
/* loaded from: classes7.dex */
public final class BlackFridayCoinSkuFragment extends ListFragment<BlackFridayCoinSku, FragmentBlackFridayCoinSkuBinding> {
    @NotNull
    public static final a D = new a(null);
    @NotNull
    private final i A = kotlin.c.b(new Function0() { // from class: aj.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            ViewModelProvider Z0;
            Z0 = BlackFridayCoinSkuFragment.Z0(BlackFridayCoinSkuFragment.this);
            return Z0;
        }
    });
    @NotNull
    private final i B = kotlin.c.b(new Function0() { // from class: aj.b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            PurchaseViewModel W0;
            W0 = BlackFridayCoinSkuFragment.W0(BlackFridayCoinSkuFragment.this);
            return W0;
        }
    });
    @NotNull
    private final i C = kotlin.c.b(new Function0() { // from class: aj.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            BillingViewModel U0;
            U0 = BlackFridayCoinSkuFragment.U0(BlackFridayCoinSkuFragment.this);
            return U0;
        }
    });

    /* compiled from: BlackFridayCoinSkuFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: BlackFridayCoinSkuFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b implements BaseAdapter.b<BlackFridayCoinSku> {
        b() {
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.b
        /* renamed from: b */
        public void a(View v10, BlackFridayCoinSku d10, int i10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            Intrinsics.checkNotNullParameter(d10, "d");
            if (d10.getGpSkuId().length() > 0 && !d10.isExpiration() && !d10.isConsume()) {
                BlackFridayCoinSkuFragment.this.P0().W(new a.e(BlackFridayCoinSkuFragment.this.Q0().N(), BlackFridayCoinSkuFragment.this.j(), d10, null, false, null, null, null, 248, null));
            }
        }
    }

    /* compiled from: BlackFridayCoinSkuFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c implements BlackFridayCoinSkuView.b {
        c() {
        }

        @Override // com.startshorts.androidplayer.ui.view.purchase.BlackFridayCoinSkuView.b
        public void onExpired() {
            BlackFridayCoinSkuFragment.this.d1();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BlackFridayCoinSkuFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d implements Observer, FunctionAdapter {

        /* renamed from: a  reason: collision with root package name */
        private final /* synthetic */ Function1 f46945a;

        d(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f46945a = function;
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
            return this.f46945a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f46945a.invoke(obj);
        }
    }

    private final void N0() {
        P0().W(new a.c("black_friday"));
    }

    private final BlackFridayCoinSkuAdapter O0() {
        BlackFridayCoinSkuAdapter blackFridayCoinSkuAdapter = new BlackFridayCoinSkuAdapter();
        blackFridayCoinSkuAdapter.B(new b());
        blackFridayCoinSkuAdapter.K(new c());
        return blackFridayCoinSkuAdapter;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final BillingViewModel P0() {
        return (BillingViewModel) this.C.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final PurchaseViewModel Q0() {
        return (PurchaseViewModel) this.B.getValue();
    }

    private final ViewModelProvider R0() {
        return (ViewModelProvider) this.A.getValue();
    }

    private final void S0(String str, String str2, GPayPriceInfo gPayPriceInfo) {
        w(R$string.top_up_fragment_recharge_success);
        Q0().Y(new a.d(str, str2, gPayPriceInfo, null, 8, null));
        d1();
        e.f2616a.i().i();
    }

    private final void T0(List<? extends Object> list) {
        Q0().Y(new a.b(list));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final BillingViewModel U0(final BlackFridayCoinSkuFragment blackFridayCoinSkuFragment) {
        BillingViewModel billingViewModel = (BillingViewModel) blackFridayCoinSkuFragment.R0().get(BillingViewModel.class);
        billingViewModel.Q().observe(blackFridayCoinSkuFragment, new d(new Function1() { // from class: aj.f
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit V0;
                V0 = BlackFridayCoinSkuFragment.V0(BlackFridayCoinSkuFragment.this, (com.startshorts.androidplayer.viewmodel.billing.b) obj);
                return V0;
            }
        }));
        return billingViewModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit V0(BlackFridayCoinSkuFragment blackFridayCoinSkuFragment, com.startshorts.androidplayer.viewmodel.billing.b bVar) {
        if (bVar instanceof b.q) {
            blackFridayCoinSkuFragment.c1();
        } else if (bVar instanceof b.m) {
            blackFridayCoinSkuFragment.T0(((b.m) bVar).a());
        } else if (bVar instanceof b.u) {
            blackFridayCoinSkuFragment.w(R$string.common_user_canceled);
        } else if (bVar instanceof b.c) {
            b.c cVar = (b.c) bVar;
            blackFridayCoinSkuFragment.S0(cVar.a(), cVar.b(), cVar.c());
        } else if (bVar instanceof b.k) {
            Context requireContext = blackFridayCoinSkuFragment.requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
            new gi.f(requireContext, ((b.k) bVar).a()).show();
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final PurchaseViewModel W0(final BlackFridayCoinSkuFragment blackFridayCoinSkuFragment) {
        final PurchaseViewModel purchaseViewModel = (PurchaseViewModel) blackFridayCoinSkuFragment.R0().get(PurchaseViewModel.class);
        purchaseViewModel.o().observe(blackFridayCoinSkuFragment, new d(new Function1() { // from class: aj.d
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit X0;
                X0 = BlackFridayCoinSkuFragment.X0(BlackFridayCoinSkuFragment.this, (ApiErrorState) obj);
                return X0;
            }
        }));
        purchaseViewModel.R().observe(blackFridayCoinSkuFragment, new d(new Function1() { // from class: aj.e
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit Y0;
                Y0 = BlackFridayCoinSkuFragment.Y0(PurchaseViewModel.this, blackFridayCoinSkuFragment, (com.startshorts.androidplayer.viewmodel.purchase.b) obj);
                return Y0;
            }
        }));
        return purchaseViewModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit X0(BlackFridayCoinSkuFragment blackFridayCoinSkuFragment, ApiErrorState apiErrorState) {
        if (apiErrorState.getState() == 1) {
            blackFridayCoinSkuFragment.U();
        } else {
            blackFridayCoinSkuFragment.V(apiErrorState.getMsg());
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit Y0(PurchaseViewModel purchaseViewModel, BlackFridayCoinSkuFragment blackFridayCoinSkuFragment, com.startshorts.androidplayer.viewmodel.purchase.b bVar) {
        if (bVar instanceof b.a) {
            if (((b.a) bVar).a()) {
                EventManager.Y0(EventManager.f42463a, purchaseViewModel.N(), "other", null, false, null, 28, null);
                blackFridayCoinSkuFragment.S();
            } else {
                blackFridayCoinSkuFragment.N0();
            }
        } else if (bVar instanceof b.e) {
            blackFridayCoinSkuFragment.b1(((b.e) bVar).a());
        } else if (bVar instanceof b.h) {
            blackFridayCoinSkuFragment.y0(true, ((b.h) bVar).a());
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ViewModelProvider Z0(BlackFridayCoinSkuFragment blackFridayCoinSkuFragment) {
        return new ViewModelProvider(blackFridayCoinSkuFragment);
    }

    private final void a1() {
        Q0().Y(new a.g("black_friday", null, null, 6, null));
    }

    private final void b1(List<g> list) {
        P0().W(new a.h(list));
    }

    private final void c1() {
        Q0().Y(a.f.f49031b);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void d1() {
        Q0().J();
        e1();
        T();
        R();
    }

    private final void e1() {
        k0(O0());
        RecyclerView g02 = g0();
        if (g02 != null) {
            g02.setAdapter(e0());
        }
    }

    private final void f1() {
        StateViewGroup I = I();
        if (I != null) {
            ViewGroup.LayoutParams layoutParams = I.getLayoutParams();
            Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            ConstraintLayout.LayoutParams layoutParams2 = (ConstraintLayout.LayoutParams) layoutParams;
            layoutParams2.topToTop = 0;
            layoutParams2.bottomToBottom = 0;
            ((ViewGroup.MarginLayoutParams) layoutParams2).topMargin = 0;
            I.setLayoutParams(layoutParams2);
        }
    }

    private final void g1() {
        StateViewGroup I = I();
        if (I != null) {
            ViewGroup.LayoutParams layoutParams = I.getLayoutParams();
            Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            ConstraintLayout.LayoutParams layoutParams2 = (ConstraintLayout.LayoutParams) layoutParams;
            layoutParams2.topToTop = 0;
            layoutParams2.bottomToBottom = -1;
            ((ViewGroup.MarginLayoutParams) layoutParams2).topMargin = jk.g.a(86.0f);
            I.setLayoutParams(layoutParams2);
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.PageStateFragment
    public int G() {
        return R$layout.viewstub_record_empty;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.PageStateFragment
    public void R() {
        if (!Q0().L()) {
            a1();
        } else {
            N0();
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.PageStateFragment
    public void S() {
        super.S();
        g1();
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.PageStateFragment
    public void T() {
        super.T();
        f1();
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.PageStateFragment
    public void U() {
        super.U();
        g1();
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.PageStateFragment
    public void V(@Nullable String str) {
        super.V(str);
        g1();
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.ListFragment, com.startshorts.androidplayer.ui.fragment.base.RecyclerViewFragment
    public void i0() {
        final int a10 = jk.g.a(10.0f);
        m0(new RecyclerView.ItemDecoration() { // from class: com.startshorts.androidplayer.ui.fragment.wallet.BlackFridayCoinSkuFragment$initRecyclerView$1
            @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
            public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.State state) {
                Intrinsics.checkNotNullParameter(outRect, "outRect");
                Intrinsics.checkNotNullParameter(view, "view");
                Intrinsics.checkNotNullParameter(parent, "parent");
                Intrinsics.checkNotNullParameter(state, "state");
                BlackFridayCoinSku b02 = BlackFridayCoinSkuFragment.this.b0(parent.getChildLayoutPosition(view));
                if (b02 != null && b02.getRecordType() == 2) {
                    outRect.set(0, 0, 0, 0);
                } else {
                    outRect.set(0, a10, 0, 0);
                }
            }
        });
        k0(O0());
        super.i0();
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.ListFragment, com.startshorts.androidplayer.ui.fragment.base.RecyclerViewFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public int l() {
        return R$layout.fragment_black_friday_coin_sku;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.PageStateFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        R();
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.ListFragment, com.startshorts.androidplayer.ui.fragment.base.RecyclerViewFragment, com.startshorts.androidplayer.ui.fragment.base.PageStateFragment, com.startshorts.androidplayer.ui.fragment.base.PermissionFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    @NotNull
    public String q() {
        return "BlackFridayCoinSkuFragment";
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.ListFragment, com.startshorts.androidplayer.ui.fragment.base.RecyclerViewFragment, com.startshorts.androidplayer.ui.fragment.base.PageStateFragment, com.startshorts.androidplayer.ui.fragment.base.BaseVDBFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public void v() {
        BlackFridayCoinSkuAdapter blackFridayCoinSkuAdapter;
        super.v();
        BaseAdapter<BlackFridayCoinSku> Z = Z();
        if (Z instanceof BlackFridayCoinSkuAdapter) {
            blackFridayCoinSkuAdapter = (BlackFridayCoinSkuAdapter) Z;
        } else {
            blackFridayCoinSkuAdapter = null;
        }
        if (blackFridayCoinSkuAdapter != null) {
            blackFridayCoinSkuAdapter.z();
        }
    }
}
