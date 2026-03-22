package com.startshorts.androidplayer.ui.activity.base;

import android.os.Bundle;
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
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RefreshActivity.kt */
@Metadata
/* loaded from: classes7.dex */
public class RefreshActivity<D, VDB extends ViewDataBinding> extends ListActivity<D, VDB> {
    @NotNull
    public static final a H = new a(null);
    @Nullable
    private TwinklingRefreshLayout D;
    private boolean E;
    private int F = 1;
    private boolean G;

    /* compiled from: RefreshActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: RefreshActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends k {

        /* renamed from: a */
        final /* synthetic */ RefreshActivity<D, VDB> f45030a;

        b(RefreshActivity<D, VDB> refreshActivity) {
            this.f45030a = refreshActivity;
        }

        @Override // cc.k, cc.e
        public void b(TwinklingRefreshLayout refreshLayout) {
            Intrinsics.checkNotNullParameter(refreshLayout, "refreshLayout");
            RefreshActivity<D, VDB> refreshActivity = this.f45030a;
            refreshActivity.J0(1, refreshActivity.q0());
        }

        @Override // cc.k, cc.e
        public void c(TwinklingRefreshLayout twinklingRefreshLayout, float f10) {
            if (f10 == 0.0f) {
                ((RefreshActivity) this.f45030a).E = false;
            }
        }

        @Override // cc.k, cc.e
        public void d(TwinklingRefreshLayout refreshLayout) {
            Intrinsics.checkNotNullParameter(refreshLayout, "refreshLayout");
            RefreshActivity<D, VDB> refreshActivity = this.f45030a;
            refreshActivity.I0(refreshActivity.p0() + 1, this.f45030a.q0());
        }

        @Override // cc.k, cc.e
        public void h(TwinklingRefreshLayout twinklingRefreshLayout, float f10) {
            ((RefreshActivity) this.f45030a).E = true;
        }

        @Override // cc.k, cc.e
        public void i() {
            ((RefreshActivity) this.f45030a).E = false;
        }
    }

    public static /* synthetic */ void H0(RefreshActivity refreshActivity, List list, boolean z10, String str, int i10, Object obj) {
        if (obj == null) {
            if ((i10 & 2) != 0) {
                z10 = false;
            }
            if ((i10 & 4) != 0) {
                str = null;
            }
            refreshActivity.G0(list, z10, str);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: loadList");
    }

    public float A0() {
        return 48.0f;
    }

    public int B0() {
        return ContextCompat.getColor(this, R$color.colorPrimary);
    }

    public void C0() {
        TwinklingRefreshLayout twinklingRefreshLayout = (TwinklingRefreshLayout) E().getRoot().findViewById(R$id.refresh_layout);
        if (twinklingRefreshLayout != null) {
            ProgressLayout progressLayout = new ProgressLayout(this);
            progressLayout.setColorSchemeColors(ContextCompat.getColor(this, R$color.colorPrimary));
            twinklingRefreshLayout.setHeaderView(progressLayout);
            twinklingRefreshLayout.setHeaderHeight(A0());
            BallPulseView ballPulseView = new BallPulseView(this);
            ballPulseView.setAnimatingColor(B0());
            twinklingRefreshLayout.setBottomView(ballPulseView);
            twinklingRefreshLayout.setOnRefreshListener(new b(this));
        } else {
            twinklingRefreshLayout = null;
        }
        this.D = twinklingRefreshLayout;
    }

    public boolean D0() {
        return true;
    }

    public boolean E0() {
        if (this.F == 1) {
            return true;
        }
        return false;
    }

    public boolean F0() {
        return true;
    }

    public void G0(@Nullable List<D> list, boolean z10, @Nullable String str) {
        String str2;
        if (id.a.f53392a.c()) {
            if (E0()) {
                str2 = "STATE_REFRESH";
            } else {
                str2 = "STATE_LOAD";
            }
            s(str2);
        }
        if (list == null) {
            if (E0()) {
                if (F0()) {
                    L0(true);
                }
                y0();
            } else {
                x0();
            }
            s0(E0(), z10, str);
            return;
        }
        if (E0()) {
            y0();
            if (F0()) {
                L0(true);
            }
            if (D0()) {
                K0(true);
            }
        } else {
            x0();
            if (list.size() < q0()) {
                K0(false);
            }
            if (list.isEmpty()) {
                x(R$string.common_no_more_data);
            }
        }
        t0(E0(), list);
    }

    public void I0(int i10, int i11) {
        if (id.a.f53392a.c()) {
            s("loadMore pageNumber(" + i10 + ") pageSize(" + i11 + ')');
        }
        this.F = 2;
    }

    public void J0(int i10, int i11) {
        if (id.a.f53392a.c()) {
            s("refresh pageNumber(" + i10 + ") pageSize(" + i11 + ')');
        }
        this.F = 1;
    }

    public final void K0(boolean z10) {
        this.G = z10;
        TwinklingRefreshLayout twinklingRefreshLayout = this.D;
        if (twinklingRefreshLayout != null) {
            twinklingRefreshLayout.setEnableLoadmore(z10);
        }
    }

    public final void L0(boolean z10) {
        TwinklingRefreshLayout twinklingRefreshLayout = this.D;
        if (twinklingRefreshLayout != null) {
            twinklingRefreshLayout.setEnableRefresh(z10);
        }
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.PageStateActivity
    public void S() {
        J0(1, q0());
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.ListActivity, com.startshorts.androidplayer.ui.activity.base.RecyclerViewActivity
    public void g0() {
        TwinklingRefreshLayout twinklingRefreshLayout;
        super.g0();
        RecyclerView e02 = e0();
        if (e02 != null && (twinklingRefreshLayout = this.D) != null) {
            twinklingRefreshLayout.setTargetView(e02);
        }
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.ListActivity, com.startshorts.androidplayer.ui.activity.base.BaseActivity
    public int o() {
        return R$layout.fragment_refresh;
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.PageStateActivity, com.startshorts.androidplayer.ui.activity.base.BaseVDBActivity, com.startshorts.androidplayer.ui.activity.base.BaseActivity, com.hades.aar.activity.IDActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        C0();
        if (z0()) {
            J0(1, q0());
        }
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.ListActivity, com.startshorts.androidplayer.ui.activity.base.RecyclerViewActivity, com.startshorts.androidplayer.ui.activity.base.PageStateActivity, com.startshorts.androidplayer.ui.activity.base.PermissionActivity, com.startshorts.androidplayer.ui.activity.base.BaseActivity
    @NotNull
    public String r() {
        return "RefreshFragment";
    }

    public final void x0() {
        try {
            TwinklingRefreshLayout twinklingRefreshLayout = this.D;
            if (twinklingRefreshLayout != null) {
                twinklingRefreshLayout.B();
            }
        } catch (Exception e10) {
            m("finishLoadMore exception -> " + e10.getMessage());
        }
    }

    public final void y0() {
        try {
            TwinklingRefreshLayout twinklingRefreshLayout = this.D;
            if (twinklingRefreshLayout != null) {
                twinklingRefreshLayout.C();
            }
        } catch (Exception e10) {
            m("finishRefresh exception -> " + e10.getMessage());
        }
    }

    public boolean z0() {
        return true;
    }
}
