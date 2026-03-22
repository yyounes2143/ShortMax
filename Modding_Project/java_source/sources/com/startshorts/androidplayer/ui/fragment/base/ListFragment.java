package com.startshorts.androidplayer.ui.fragment.base;

import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.ui.fragment.base.ListFragment;
import com.startshorts.androidplayer.ui.fragment.base.ListFragment$mOnScrollListener$1$1;
import java.util.List;
import kk.f;
import kotlin.Metadata;
import kotlin.c;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ListFragment.kt */
@Metadata
/* loaded from: classes7.dex */
public class ListFragment<D, VDB extends ViewDataBinding> extends RecyclerViewFragment<D, VDB> {
    @NotNull

    /* renamed from: z  reason: collision with root package name */
    public static final a f45738z = new a(null);

    /* renamed from: x  reason: collision with root package name */
    private boolean f45740x;

    /* renamed from: w  reason: collision with root package name */
    private int f45739w = 1;
    @NotNull

    /* renamed from: y  reason: collision with root package name */
    private final i<ListFragment$mOnScrollListener$1$1> f45741y = c.b(new Function0() { // from class: oi.f
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            ListFragment$mOnScrollListener$1$1 z02;
            z02 = ListFragment.z0(ListFragment.this);
            return z02;
        }
    });

    /* compiled from: ListFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r0v0, types: [com.startshorts.androidplayer.ui.fragment.base.ListFragment$mOnScrollListener$1$1] */
    public static final ListFragment$mOnScrollListener$1$1 z0(final ListFragment listFragment) {
        return new RecyclerView.OnScrollListener(listFragment) { // from class: com.startshorts.androidplayer.ui.fragment.base.ListFragment$mOnScrollListener$1$1

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ ListFragment<D, VDB> f45742a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f45742a = listFragment;
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int i10) {
                Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
                if ((i10 == 1 || i10 == 2) && !this.f45742a.t0()) {
                    ((ListFragment) this.f45742a).f45740x = true;
                    f.f60747a.r();
                    this.f45742a.B0();
                } else if (i10 == 0) {
                    ((ListFragment) this.f45742a).f45740x = false;
                    f.f60747a.y();
                    this.f45742a.C0();
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i10, int i11) {
                Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
                this.f45742a.A0(recyclerView, i10, i11);
            }
        };
    }

    public void A0(@NotNull RecyclerView recyclerView, int i10, int i11) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
    }

    public final void D0(int i10) {
        this.f45739w = i10;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.RecyclerViewFragment
    public boolean W(@Nullable List<D> list) {
        boolean W = super.W(list);
        if (W) {
            this.f45739w++;
        }
        return W;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.RecyclerViewFragment
    public void i0() {
        super.i0();
        RecyclerView g02 = g0();
        if (g02 != null) {
            g02.addOnScrollListener(this.f45741y.getValue());
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.RecyclerViewFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public int l() {
        return R$layout.fragment_list;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.RecyclerViewFragment
    public boolean o0(@Nullable List<D> list) {
        boolean o02 = super.o0(list);
        if (o02) {
            this.f45739w = 1;
        }
        return o02;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.RecyclerViewFragment, com.startshorts.androidplayer.ui.fragment.base.PageStateFragment, com.startshorts.androidplayer.ui.fragment.base.PermissionFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    @NotNull
    public String q() {
        return "ListFragment";
    }

    public boolean r0() {
        return false;
    }

    public boolean s0() {
        return false;
    }

    public final boolean t0() {
        return this.f45740x;
    }

    public final int u0() {
        return this.f45739w;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.RecyclerViewFragment, com.startshorts.androidplayer.ui.fragment.base.PageStateFragment, com.startshorts.androidplayer.ui.fragment.base.BaseVDBFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public void v() {
        RecyclerView g02;
        super.v();
        if (this.f45741y.isInitialized() && (g02 = g0()) != null) {
            g02.removeOnScrollListener(this.f45741y.getValue());
        }
    }

    public int v0() {
        return 20;
    }

    public boolean w0() {
        return true;
    }

    public void x0(boolean z10, boolean z11, @Nullable String str) {
        if (z10) {
            if (r0() || j0()) {
                if (z11) {
                    U();
                } else {
                    V(str);
                }
            }
        }
    }

    public void y0(boolean z10, @Nullable List<D> list) {
        if (z10) {
            List<D> list2 = list;
            if (list2 != null && !list2.isEmpty()) {
                o0(list);
            } else if (s0() || h0()) {
                o0(list);
            }
            if (w0()) {
                if (list2 != null && !list2.isEmpty()) {
                    J();
                } else {
                    S();
                }
            }
            K();
            L();
            N();
            return;
        }
        W(list);
    }

    public void B0() {
    }

    public void C0() {
    }
}
