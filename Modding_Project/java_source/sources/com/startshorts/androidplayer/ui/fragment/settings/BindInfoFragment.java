package com.startshorts.androidplayer.ui.fragment.settings;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import au.l;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.adapter.base.BaseAdapter;
import com.startshorts.androidplayer.bean.api.ApiErrorState;
import com.startshorts.androidplayer.bean.auth.BindInfo;
import com.startshorts.androidplayer.bean.bundle.StringBundle;
import com.startshorts.androidplayer.bean.eventbus.BindSuccessEvent;
import com.startshorts.androidplayer.bean.eventbus.LoginSuccessEvent;
import com.startshorts.androidplayer.databinding.FragmentBindInfoBinding;
import com.startshorts.androidplayer.ui.activity.base.FragmentContainer;
import com.startshorts.androidplayer.ui.fragment.base.ToolbarListFragment;
import com.startshorts.androidplayer.ui.fragment.settings.BindInfoFragment;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.viewmodel.auth.BindInfoViewModel;
import com.startshorts.androidplayer.viewmodel.auth.a;
import com.startshorts.androidplayer.viewmodel.auth.b;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
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
/* compiled from: BindInfoFragment.kt */
@Metadata
/* loaded from: classes7.dex */
public final class BindInfoFragment extends ToolbarListFragment<BindInfo, FragmentBindInfoBinding> {
    @NotNull
    public static final a D = new a(null);
    @NotNull
    private final i B = kotlin.c.b(new Function0() { // from class: wi.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            ViewModelProvider T0;
            T0 = BindInfoFragment.T0(BindInfoFragment.this);
            return T0;
        }
    });
    @NotNull
    private final i C = kotlin.c.b(new Function0() { // from class: wi.b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            BindInfoViewModel Q0;
            Q0 = BindInfoFragment.Q0(BindInfoFragment.this);
            return Q0;
        }
    });

    /* compiled from: BindInfoFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: BindInfoFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b implements BaseAdapter.b<BindInfo> {
        b() {
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.b
        /* renamed from: b */
        public void a(View v10, BindInfo d10, int i10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            Intrinsics.checkNotNullParameter(d10, "d");
            String providerId = d10.getProviderId();
            if (providerId != null && providerId.length() != 0) {
                return;
            }
            BindInfoFragment.this.N0().H(new a.C0649a(d10.getProvider()));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BindInfoFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c implements Observer, FunctionAdapter {

        /* renamed from: a  reason: collision with root package name */
        private final /* synthetic */ Function1 f46772a;

        c(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f46772a = function;
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
            return this.f46772a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f46772a.invoke(obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final BindInfoViewModel N0() {
        return (BindInfoViewModel) this.C.getValue();
    }

    private final ViewModelProvider O0() {
        return (ViewModelProvider) this.B.getValue();
    }

    private final void P0() {
        ((FragmentBindInfoBinding) A()).f39376c.setText(getString(R$string.settings_fragment_version, DeviceUtil.f48146a.V()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final BindInfoViewModel Q0(final BindInfoFragment bindInfoFragment) {
        final BindInfoViewModel bindInfoViewModel = (BindInfoViewModel) bindInfoFragment.O0().get(BindInfoViewModel.class);
        bindInfoViewModel.o().observe(bindInfoFragment, new c(new Function1() { // from class: wi.c
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit R0;
                R0 = BindInfoFragment.R0(BindInfoFragment.this, (ApiErrorState) obj);
                return R0;
            }
        }));
        bindInfoViewModel.D().observe(bindInfoFragment, new c(new Function1() { // from class: wi.d
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit S0;
                S0 = BindInfoFragment.S0(BindInfoFragment.this, bindInfoViewModel, (com.startshorts.androidplayer.viewmodel.auth.b) obj);
                return S0;
            }
        }));
        return bindInfoViewModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit R0(BindInfoFragment bindInfoFragment, ApiErrorState apiErrorState) {
        boolean z10;
        if (apiErrorState.getState() == 1) {
            z10 = true;
        } else {
            z10 = false;
        }
        bindInfoFragment.x0(true, z10, apiErrorState.getMsg());
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit S0(BindInfoFragment bindInfoFragment, BindInfoViewModel bindInfoViewModel, com.startshorts.androidplayer.viewmodel.auth.b bVar) {
        if (bVar instanceof b.c) {
            bindInfoFragment.y0(true, ((b.c) bVar).a());
            FragmentActivity requireActivity = bindInfoFragment.requireActivity();
            Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
            bindInfoViewModel.H(new a.c(requireActivity));
        } else if (Intrinsics.areEqual(bVar, b.a.f48269a)) {
            FragmentContainer.a aVar = FragmentContainer.f45006p;
            Context requireContext = bindInfoFragment.requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
            aVar.b(requireContext, com.startshorts.androidplayer.ui.fragment.a.f45609a.f(), new StringBundle("auth_reason", "2"));
        } else if (Intrinsics.areEqual(bVar, b.C0650b.f48270a)) {
            FragmentContainer.a aVar2 = FragmentContainer.f45006p;
            Context requireContext2 = bindInfoFragment.requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext2, "requireContext(...)");
            aVar2.b(requireContext2, com.startshorts.androidplayer.ui.fragment.a.f45609a.i(), new StringBundle("auth_reason", "2"));
        } else if (bVar instanceof b.d) {
            bindInfoFragment.x(((b.d) bVar).a());
        } else {
            throw new NoWhenBranchMatchedException();
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ViewModelProvider T0(BindInfoFragment bindInfoFragment) {
        return new ViewModelProvider(bindInfoFragment);
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.PageStateFragment
    public void R() {
        N0().H(a.d.f48268a);
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.ListFragment, com.startshorts.androidplayer.ui.fragment.base.RecyclerViewFragment
    public void i0() {
        BaseAdapter baseAdapter = new BaseAdapter(R$layout.item_bind_info);
        baseAdapter.B(new b());
        k0(baseAdapter);
        super.i0();
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.ListFragment, com.startshorts.androidplayer.ui.fragment.base.RecyclerViewFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public int l() {
        return R$layout.fragment_bind_info;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public boolean o() {
        return true;
    }

    @Override // androidx.fragment.app.Fragment
    @ms.c
    public void onActivityResult(int i10, int i11, @Nullable Intent intent) {
        BindInfoViewModel N0 = N0();
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
        N0.H(new a.b(requireActivity, i10, i11, intent));
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.PageStateFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        G0(R$string.settings_fragment_account_info);
        P0();
        R();
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.ToolbarListFragment, com.startshorts.androidplayer.ui.fragment.base.ListFragment, com.startshorts.androidplayer.ui.fragment.base.RecyclerViewFragment, com.startshorts.androidplayer.ui.fragment.base.PageStateFragment, com.startshorts.androidplayer.ui.fragment.base.PermissionFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    @NotNull
    public String q() {
        return "BindInfoFragment";
    }

    @l(threadMode = ThreadMode.MAIN)
    public final void receiveBindSuccessEvent(@NotNull BindSuccessEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        r("receive BindSuccessEvent -> " + event);
        R();
    }

    @l(threadMode = ThreadMode.MAIN)
    public final void receiveLoginSuccessEvent(@NotNull LoginSuccessEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        r("receive LoginSuccessEvent -> " + event);
        R();
    }
}
