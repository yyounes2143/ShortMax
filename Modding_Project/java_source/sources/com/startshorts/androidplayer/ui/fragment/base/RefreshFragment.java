package com.startshorts.androidplayer.ui.fragment.base;

import android.os.Bundle;
import android.view.View;
import android.view.ViewParent;
import androidx.core.content.ContextCompat;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import cc.k;
import com.lcodecore.tkrefreshlayout.TwinklingRefreshLayout;
import com.lcodecore.tkrefreshlayout.footer.BallPulseView;
import com.lcodecore.tkrefreshlayout.header.progresslayout.ProgressLayout;
import com.startshorts.androidplayer.R$color;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import java.util.List;
import jk.b0;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RefreshFragment.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class RefreshFragment<D, VDB extends ViewDataBinding> extends ListFragment<D, VDB> {
    @NotNull
    public static final a E = new a(null);
    @Nullable
    private TwinklingRefreshLayout A;
    private boolean B;
    private int C = 1;
    private boolean D;

    /* compiled from: RefreshFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: RefreshFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends k {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RefreshFragment<D, VDB> f45782a;

        b(RefreshFragment<D, VDB> refreshFragment) {
            this.f45782a = refreshFragment;
        }

        @Override // cc.k, cc.e
        public void b(TwinklingRefreshLayout refreshLayout) {
            Intrinsics.checkNotNullParameter(refreshLayout, "refreshLayout");
            RefreshFragment<D, VDB> refreshFragment = this.f45782a;
            refreshFragment.U0(1, refreshFragment.v0());
        }

        @Override // cc.k, cc.e
        public void c(TwinklingRefreshLayout twinklingRefreshLayout, float f10) {
            if (f10 == 0.0f) {
                ((RefreshFragment) this.f45782a).B = false;
            }
        }

        @Override // cc.k, cc.e
        public void d(TwinklingRefreshLayout refreshLayout) {
            Intrinsics.checkNotNullParameter(refreshLayout, "refreshLayout");
            RefreshFragment<D, VDB> refreshFragment = this.f45782a;
            refreshFragment.T0(refreshFragment.u0() + 1, this.f45782a.v0());
        }

        @Override // cc.k, cc.e
        public void h(TwinklingRefreshLayout twinklingRefreshLayout, float f10) {
            ((RefreshFragment) this.f45782a).B = true;
        }

        @Override // cc.k, cc.e
        public void i() {
            ((RefreshFragment) this.f45782a).B = false;
        }
    }

    public static /* synthetic */ void S0(RefreshFragment refreshFragment, List list, boolean z10, String str, int i10, Object obj) {
        if (obj == null) {
            if ((i10 & 2) != 0) {
                z10 = false;
            }
            if ((i10 & 4) != 0) {
                str = null;
            }
            refreshFragment.R0(list, z10, str);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: loadList");
    }

    public final void F0() {
        try {
            TwinklingRefreshLayout twinklingRefreshLayout = this.A;
            if (twinklingRefreshLayout != null) {
                twinklingRefreshLayout.B();
            }
        } catch (Exception e10) {
            g("finishLoadMore exception -> " + e10.getMessage());
        }
    }

    public final void G0() {
        try {
            TwinklingRefreshLayout twinklingRefreshLayout = this.A;
            if (twinklingRefreshLayout != null) {
                twinklingRefreshLayout.C();
            }
        } catch (Exception e10) {
            g("finishRefresh exception -> " + e10.getMessage());
        }
    }

    public boolean H0() {
        return true;
    }

    public float I0() {
        return 48.0f;
    }

    public int J0() {
        return 0;
    }

    public int K0() {
        return ContextCompat.getColor(requireContext(), R$color.colorPrimary);
    }

    public final boolean L0() {
        return this.D;
    }

    public float M0() {
        return 120.0f;
    }

    public void N0() {
        TwinklingRefreshLayout twinklingRefreshLayout = (TwinklingRefreshLayout) A().getRoot().findViewById(R$id.refresh_layout);
        View view = null;
        if (twinklingRefreshLayout != null) {
            ProgressLayout progressLayout = new ProgressLayout(requireContext());
            progressLayout.setColorSchemeColors(ContextCompat.getColor(requireContext(), R$color.colorPrimary));
            twinklingRefreshLayout.setHeaderView(progressLayout);
            twinklingRefreshLayout.setHeaderHeight(I0());
            ViewParent parent = progressLayout.getParent();
            if (parent instanceof View) {
                view = (View) parent;
            }
            if (view != null) {
                b0.g(view, J0());
            }
            twinklingRefreshLayout.setMaxHeadHeight(M0());
            BallPulseView ballPulseView = new BallPulseView(requireContext());
            ballPulseView.setAnimatingColor(K0());
            twinklingRefreshLayout.setBottomView(ballPulseView);
            twinklingRefreshLayout.setOnRefreshListener(new b(this));
        } else {
            twinklingRefreshLayout = null;
        }
        this.A = twinklingRefreshLayout;
    }

    public boolean O0() {
        return true;
    }

    public boolean P0() {
        if (this.C == 1) {
            return true;
        }
        return false;
    }

    public boolean Q0() {
        return true;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.PageStateFragment
    public void R() {
        U0(1, v0());
    }

    public void R0(@Nullable List<D> list, boolean z10, @Nullable String str) {
        String str2;
        if (id.a.f53392a.c()) {
            if (P0()) {
                str2 = "STATE_REFRESH";
            } else {
                str2 = "STATE_LOAD";
            }
            r(str2);
        }
        if (list == null) {
            if (P0()) {
                if (Q0()) {
                    W0(true);
                }
                G0();
            } else {
                F0();
            }
            x0(P0(), z10, str);
            return;
        }
        if (P0()) {
            G0();
            if (Q0()) {
                W0(true);
            }
            if (O0()) {
                V0(true);
            }
        } else {
            F0();
            if (list.size() < v0()) {
                V0(false);
            }
            if (list.isEmpty()) {
                w(R$string.common_no_more_data);
            }
        }
        y0(P0(), list);
    }

    public void T0(int i10, int i11) {
        if (id.a.f53392a.c()) {
            r("loadMore pageNumber(" + i10 + ") pageSize(" + i11 + ')');
        }
        this.C = 2;
    }

    public void U0(int i10, int i11) {
        if (id.a.f53392a.c()) {
            r("refresh pageNumber(" + i10 + ") pageSize(" + i11 + ')');
        }
        this.C = 1;
    }

    public final void V0(boolean z10) {
        this.D = z10;
        TwinklingRefreshLayout twinklingRefreshLayout = this.A;
        if (twinklingRefreshLayout != null) {
            twinklingRefreshLayout.setEnableLoadmore(z10);
        }
    }

    public final void W0(boolean z10) {
        TwinklingRefreshLayout twinklingRefreshLayout = this.A;
        if (twinklingRefreshLayout != null) {
            twinklingRefreshLayout.setEnableRefresh(z10);
        }
    }

    public final void X0() {
        this.C = 1;
    }

    public final void Y0() {
        try {
            TwinklingRefreshLayout twinklingRefreshLayout = this.A;
            if (twinklingRefreshLayout != null) {
                twinklingRefreshLayout.E();
            }
        } catch (Exception e10) {
            g("startLoadMore exception -> " + e10.getMessage());
        }
    }

    public final void Z0() {
        try {
            TwinklingRefreshLayout twinklingRefreshLayout = this.A;
            if (twinklingRefreshLayout != null) {
                twinklingRefreshLayout.F();
            }
        } catch (Exception e10) {
            g("startRefresh exception -> " + e10.getMessage());
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.ListFragment, com.startshorts.androidplayer.ui.fragment.base.RecyclerViewFragment
    public void i0() {
        TwinklingRefreshLayout twinklingRefreshLayout;
        super.i0();
        RecyclerView g02 = g0();
        if (g02 != null && (twinklingRefreshLayout = this.A) != null) {
            twinklingRefreshLayout.setTargetView(g02);
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.ListFragment, com.startshorts.androidplayer.ui.fragment.base.RecyclerViewFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public int l() {
        return R$layout.fragment_refresh;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.PageStateFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        N0();
        if (H0()) {
            U0(1, v0());
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.ListFragment, com.startshorts.androidplayer.ui.fragment.base.RecyclerViewFragment, com.startshorts.androidplayer.ui.fragment.base.PageStateFragment, com.startshorts.androidplayer.ui.fragment.base.PermissionFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    @NotNull
    public String q() {
        return "RefreshFragment";
    }
}
