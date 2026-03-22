package com.startshorts.androidplayer.ui.fragment.wallet;

import android.content.Context;
import android.os.Bundle;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import au.l;
import com.hades.aar.pagestate.StateViewGroup;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.adapter.base.BaseAdapter;
import com.startshorts.androidplayer.bean.api.ApiErrorState;
import com.startshorts.androidplayer.bean.eventbus.RefreshAccountEvent;
import com.startshorts.androidplayer.bean.record.WalletRecord;
import com.startshorts.androidplayer.databinding.FragmentBonusRecordBinding;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.ui.fragment.base.RefreshFragment;
import com.startshorts.androidplayer.ui.fragment.wallet.BonusRecordFragment;
import com.startshorts.androidplayer.ui.view.base.RVDecoration;
import com.startshorts.androidplayer.viewmodel.wallet.WalletViewModel;
import com.startshorts.androidplayer.viewmodel.wallet.a;
import com.startshorts.androidplayer.viewmodel.wallet.b;
import fk.z;
import jk.g;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.c;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import ms.f;
import ms.i;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BonusRecordFragment.kt */
@Metadata
/* loaded from: classes7.dex */
public final class BonusRecordFragment extends RefreshFragment<WalletRecord, FragmentBonusRecordBinding> {
    @NotNull
    public static final a H = new a(null);
    @NotNull
    private final i F = c.b(new Function0() { // from class: aj.g
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            WalletViewModel e12;
            e12 = BonusRecordFragment.e1(BonusRecordFragment.this);
            return e12;
        }
    });
    @NotNull
    private final BonusRecordFragment$mPropertyObserver$1 G = new BonusRecordFragment$mPropertyObserver$1(this);

    /* compiled from: BonusRecordFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BonusRecordFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b implements Observer, FunctionAdapter {

        /* renamed from: a  reason: collision with root package name */
        private final /* synthetic */ Function1 f46948a;

        b(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f46948a = function;
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
            return this.f46948a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f46948a.invoke(obj);
        }
    }

    private final WalletViewModel d1() {
        return (WalletViewModel) this.F.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final WalletViewModel e1(final BonusRecordFragment bonusRecordFragment) {
        WalletViewModel walletViewModel = (WalletViewModel) new ViewModelProvider(bonusRecordFragment).get(WalletViewModel.class);
        walletViewModel.o().observe(bonusRecordFragment, new b(new Function1() { // from class: aj.h
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit f12;
                f12 = BonusRecordFragment.f1(BonusRecordFragment.this, (ApiErrorState) obj);
                return f12;
            }
        }));
        walletViewModel.B().observe(bonusRecordFragment, new b(new Function1() { // from class: aj.i
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit g12;
                g12 = BonusRecordFragment.g1(BonusRecordFragment.this, (com.startshorts.androidplayer.viewmodel.wallet.b) obj);
                return g12;
            }
        }));
        return walletViewModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit f1(BonusRecordFragment bonusRecordFragment, ApiErrorState apiErrorState) {
        boolean z10 = true;
        if (apiErrorState.getState() != 1) {
            z10 = false;
        }
        bonusRecordFragment.R0(null, z10, apiErrorState.getMsg());
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit g1(BonusRecordFragment bonusRecordFragment, com.startshorts.androidplayer.viewmodel.wallet.b bVar) {
        if (bVar instanceof b.c) {
            RefreshFragment.S0(bonusRecordFragment, ((b.c) bVar).a(), false, null, 4, null);
        }
        return Unit.f60915a;
    }

    private final void h1() {
        AccountRepo.f43052a.O(this.G);
    }

    private final void i1(int i10, int i11) {
        d1().F(new a.c(i10, i11, 2));
    }

    private final void j1() {
        StateViewGroup I = I();
        if (I != null) {
            ViewGroup.LayoutParams layoutParams = I.getLayoutParams();
            Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.widget.RelativeLayout.LayoutParams");
            RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) layoutParams;
            layoutParams2.removeRule(10);
            layoutParams2.addRule(13);
            layoutParams2.topMargin = 0;
            I.setLayoutParams(layoutParams2);
        }
    }

    private final void k1() {
        StateViewGroup I = I();
        if (I != null) {
            ViewGroup.LayoutParams layoutParams = I.getLayoutParams();
            Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.widget.RelativeLayout.LayoutParams");
            RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) layoutParams;
            layoutParams2.removeRule(13);
            layoutParams2.addRule(10);
            layoutParams2.topMargin = g.a(86.0f);
            I.setLayoutParams(layoutParams2);
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.PageStateFragment
    public int G() {
        return R$layout.viewstub_record_empty;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.PageStateFragment
    public void S() {
        super.S();
        k1();
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.PageStateFragment
    public void T() {
        super.T();
        j1();
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.RefreshFragment
    public void T0(int i10, int i11) {
        super.T0(i10, i11);
        i1(i10, i11);
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.PageStateFragment
    public void U() {
        super.U();
        k1();
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.RefreshFragment
    public void U0(int i10, int i11) {
        super.U0(i10, i11);
        i1(i10, i11);
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.PageStateFragment
    public void V(@Nullable String str) {
        super.V(str);
        k1();
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.RefreshFragment, com.startshorts.androidplayer.ui.fragment.base.ListFragment, com.startshorts.androidplayer.ui.fragment.base.RecyclerViewFragment
    public void i0() {
        k0(new BaseAdapter(R$layout.item_bonus_record));
        RVDecoration.a aVar = RVDecoration.f47108f;
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        m0(RVDecoration.a.b(aVar, requireContext, null, z.f51786a.b(), false, 10, null));
        super.i0();
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.RefreshFragment, com.startshorts.androidplayer.ui.fragment.base.ListFragment, com.startshorts.androidplayer.ui.fragment.base.RecyclerViewFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public int l() {
        return R$layout.fragment_bonus_record;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        h1();
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.RefreshFragment, com.startshorts.androidplayer.ui.fragment.base.ListFragment, com.startshorts.androidplayer.ui.fragment.base.RecyclerViewFragment, com.startshorts.androidplayer.ui.fragment.base.PageStateFragment, com.startshorts.androidplayer.ui.fragment.base.PermissionFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    @NotNull
    public String q() {
        return "BonusRecordFragment";
    }

    @l(threadMode = ThreadMode.MAIN)
    public final void receiveRefreshAccountEvent(@NotNull RefreshAccountEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        r("receive RefreshAccountEvent");
        h1();
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.ListFragment, com.startshorts.androidplayer.ui.fragment.base.RecyclerViewFragment, com.startshorts.androidplayer.ui.fragment.base.PageStateFragment, com.startshorts.androidplayer.ui.fragment.base.BaseVDBFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public void v() {
        super.v();
        AccountRepo.f43052a.d1(this.G);
    }
}
