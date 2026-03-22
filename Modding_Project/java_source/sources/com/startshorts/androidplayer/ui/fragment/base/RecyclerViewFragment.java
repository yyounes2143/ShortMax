package com.startshorts.androidplayer.ui.fragment.base;

import android.content.Context;
import android.view.View;
import android.view.ViewStub;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.adapter.base.BaseAdapter;
import com.startshorts.androidplayer.adapter.base.WrapperAdapter;
import com.startshorts.androidplayer.ui.view.base.CatchExceptionLinearLayoutManager;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RecyclerViewFragment.kt */
@Metadata
@SourceDebugExtension({"SMAP\nRecyclerViewFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RecyclerViewFragment.kt\ncom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,150:1\n1#2:151\n*E\n"})
/* loaded from: classes7.dex */
public class RecyclerViewFragment<D, VDB extends ViewDataBinding> extends PageStateFragment<VDB> {
    @NotNull

    /* renamed from: v  reason: collision with root package name */
    public static final a f45774v = new a(null);
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private RecyclerView f45775o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f45776p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private RecyclerView.ItemAnimator f45777q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private RecyclerView.ItemDecoration f45778r;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    private RecyclerView.LayoutManager f45779s;
    @Nullable

    /* renamed from: t  reason: collision with root package name */
    private RecyclerView.Adapter<?> f45780t;

    /* renamed from: u  reason: collision with root package name */
    private int f45781u = -1;

    /* compiled from: RecyclerViewFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean W(@Nullable List<D> list) {
        List<D> list2 = list;
        if (list2 != null && !list2.isEmpty()) {
            if (!this.f45776p) {
                i0();
            }
            BaseAdapter<D> Z = Z();
            if (Z != null) {
                Z.e(list);
                return true;
            }
            return true;
        }
        return false;
    }

    public void X() {
        BaseAdapter<D> Z;
        if (this.f45776p && (Z = Z()) != null) {
            BaseAdapter.D(Z, new ArrayList(), false, 2, null);
        }
    }

    public boolean Y(D d10, @Nullable Object obj) {
        if (!this.f45776p) {
            i0();
        }
        BaseAdapter<D> Z = Z();
        if (Z != null) {
            return Z.h(d10, obj);
        }
        return false;
    }

    @Nullable
    public final BaseAdapter<D> Z() {
        RecyclerView.Adapter<?> adapter = this.f45780t;
        if (adapter instanceof BaseAdapter) {
            return (BaseAdapter) adapter;
        }
        RecyclerView.Adapter adapter2 = null;
        if (!(adapter instanceof WrapperAdapter)) {
            return null;
        }
        WrapperAdapter wrapperAdapter = (WrapperAdapter) adapter;
        if (wrapperAdapter != null) {
            adapter2 = wrapperAdapter.c();
        }
        return (BaseAdapter) adapter2;
    }

    public boolean a0() {
        return true;
    }

    @Nullable
    public final D b0(int i10) {
        BaseAdapter<D> Z = Z();
        if (Z != null) {
            return Z.getItem(i10);
        }
        return null;
    }

    public final int c0() {
        BaseAdapter<D> Z = Z();
        if (Z != null) {
            return Z.getItemCount();
        }
        return 0;
    }

    @Nullable
    public final List<D> d0() {
        BaseAdapter<D> Z = Z();
        if (Z != null) {
            return Z.m();
        }
        return null;
    }

    @Nullable
    public final RecyclerView.Adapter<?> e0() {
        return this.f45780t;
    }

    @Nullable
    public final RecyclerView.LayoutManager f0() {
        return this.f45779s;
    }

    @Nullable
    public final RecyclerView g0() {
        return this.f45775o;
    }

    public final boolean h0() {
        return this.f45776p;
    }

    public void i0() {
        RecyclerView.ItemDecoration itemDecoration;
        RecyclerView recyclerView;
        if (this.f45776p) {
            return;
        }
        this.f45776p = true;
        RecyclerView recyclerView2 = (RecyclerView) A().getRoot().findViewById(R$id.recycler_view);
        this.f45775o = recyclerView2;
        if (recyclerView2 == null) {
            ViewStub viewStub = (ViewStub) A().getRoot().findViewById(R$id.recycler_view_viewstub);
            if (viewStub == null) {
                return;
            }
            if (id.a.f53392a.c()) {
                r("initRecyclerView");
            }
            View inflate = viewStub.inflate();
            if (inflate instanceof RecyclerView) {
                recyclerView = (RecyclerView) inflate;
            } else {
                recyclerView = null;
            }
            this.f45775o = recyclerView;
        }
        RecyclerView recyclerView3 = this.f45775o;
        if (recyclerView3 != null) {
            recyclerView3.setImportantForAccessibility(2);
        }
        if (this.f45779s == null) {
            Context requireContext = requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
            this.f45779s = new CatchExceptionLinearLayoutManager(requireContext);
        }
        RecyclerView recyclerView4 = this.f45775o;
        if (recyclerView4 != null) {
            recyclerView4.setLayoutManager(this.f45779s);
            recyclerView4.setItemAnimator(this.f45777q);
            recyclerView4.setHasFixedSize(a0());
            int i10 = this.f45781u;
            if (i10 >= 0) {
                recyclerView4.setItemViewCacheSize(i10);
            }
            if (recyclerView4.getItemDecorationCount() == 0 && (itemDecoration = this.f45778r) != null) {
                recyclerView4.addItemDecoration(itemDecoration);
            }
            recyclerView4.setAdapter(this.f45780t);
        }
    }

    public final boolean j0() {
        if (c0() == 0) {
            return true;
        }
        return false;
    }

    public final void k0(@Nullable RecyclerView.Adapter<?> adapter) {
        this.f45780t = adapter;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public int l() {
        return R$layout.fragment_recycler_view;
    }

    public final void l0(int i10) {
        this.f45781u = i10;
    }

    public final void m0(@Nullable RecyclerView.ItemDecoration itemDecoration) {
        this.f45778r = itemDecoration;
    }

    public final void n0(@Nullable RecyclerView.LayoutManager layoutManager) {
        this.f45779s = layoutManager;
    }

    public boolean o0(@Nullable List<D> list) {
        if (!this.f45776p) {
            i0();
        }
        BaseAdapter<D> Z = Z();
        if (Z != null) {
            BaseAdapter.D(Z, list, false, 2, null);
            return true;
        }
        return true;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.PageStateFragment, com.startshorts.androidplayer.ui.fragment.base.PermissionFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    @NotNull
    public String q() {
        return "RecyclerViewFragment";
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.PageStateFragment, com.startshorts.androidplayer.ui.fragment.base.BaseVDBFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public void v() {
        super.v();
        BaseAdapter<D> Z = Z();
        if (Z != null) {
            Z.z();
        }
    }
}
