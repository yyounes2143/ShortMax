package com.startshorts.androidplayer.ui.activity.base;

import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.startshorts.androidplayer.R$layout;
import java.util.List;
import kk.f;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ListActivity.kt */
@Metadata
/* loaded from: classes7.dex */
public class ListActivity<D, VDB extends ViewDataBinding> extends RecyclerViewActivity<D, VDB> {
    @NotNull
    public static final a C = new a(null);
    private boolean A;

    /* renamed from: z  reason: collision with root package name */
    private int f45009z = 1;
    @NotNull
    private final ListActivity$mOnScrollListener$1 B = new RecyclerView.OnScrollListener(this) { // from class: com.startshorts.androidplayer.ui.activity.base.ListActivity$mOnScrollListener$1

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ListActivity<D, VDB> f45010a;

        /* JADX INFO: Access modifiers changed from: package-private */
        {
            this.f45010a = this;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(RecyclerView recyclerView, int i10) {
            boolean z10;
            Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
            if (i10 == 1 || i10 == 2) {
                z10 = ((ListActivity) this.f45010a).A;
                if (!z10) {
                    ((ListActivity) this.f45010a).A = true;
                    f.f60747a.r();
                    this.f45010a.u0();
                    return;
                }
            }
            if (i10 == 0) {
                ((ListActivity) this.f45010a).A = false;
                f.f60747a.y();
                this.f45010a.v0();
            }
        }
    };

    /* compiled from: ListActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.RecyclerViewActivity
    public boolean X(@Nullable List<D> list) {
        boolean X = super.X(list);
        if (X) {
            this.f45009z++;
        }
        return X;
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.RecyclerViewActivity
    public boolean Y(D d10) {
        boolean Y = super.Y(d10);
        if (r0()) {
            if (h0()) {
                T();
            } else {
                O();
            }
        }
        return Y;
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.RecyclerViewActivity
    public void g0() {
        super.g0();
        RecyclerView e02 = e0();
        if (e02 != null) {
            e02.addOnScrollListener(this.B);
        }
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.RecyclerViewActivity
    public boolean l0(@Nullable List<D> list) {
        boolean l02 = super.l0(list);
        if (l02) {
            this.f45009z = 1;
        }
        return l02;
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.BaseActivity
    public int o() {
        return R$layout.activity_list;
    }

    public boolean o0() {
        return false;
    }

    public final int p0() {
        return this.f45009z;
    }

    public int q0() {
        return 20;
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.RecyclerViewActivity, com.startshorts.androidplayer.ui.activity.base.PageStateActivity, com.startshorts.androidplayer.ui.activity.base.PermissionActivity, com.startshorts.androidplayer.ui.activity.base.BaseActivity
    @NotNull
    public String r() {
        return "ListActivity";
    }

    public boolean r0() {
        return true;
    }

    public void s0(boolean z10, boolean z11, @Nullable String str) {
        if (z10) {
            if (o0() || h0()) {
                if (z11) {
                    V();
                } else {
                    W(str);
                }
            }
        }
    }

    public void t0(boolean z10, @Nullable List<D> list) {
        if (z10) {
            List<D> list2 = list;
            if (list2 != null && !list2.isEmpty()) {
                l0(list);
            } else if (f0()) {
                l0(list);
            }
            if (r0()) {
                if (list2 != null && !list2.isEmpty()) {
                    O();
                } else {
                    T();
                }
            }
            P();
            Q();
            R();
            return;
        }
        X(list);
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.RecyclerViewActivity, com.startshorts.androidplayer.ui.activity.base.PageStateActivity, com.startshorts.androidplayer.ui.activity.base.BaseVDBActivity, com.startshorts.androidplayer.ui.activity.base.BaseActivity
    public void v() {
        super.v();
        RecyclerView e02 = e0();
        if (e02 != null) {
            e02.removeOnScrollListener(this.B);
        }
    }

    public void u0() {
    }

    public void v0() {
    }
}
