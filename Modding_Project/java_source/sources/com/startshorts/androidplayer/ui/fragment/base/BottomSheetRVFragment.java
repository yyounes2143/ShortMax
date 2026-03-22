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
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BottomSheetRVFragment.kt */
@Metadata
@SourceDebugExtension({"SMAP\nBottomSheetRVFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BottomSheetRVFragment.kt\ncom/startshorts/androidplayer/ui/fragment/base/BottomSheetRVFragment\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,152:1\n1#2:153\n*E\n"})
/* loaded from: classes7.dex */
public class BottomSheetRVFragment<D, VDB extends ViewDataBinding> extends BottomSheetPageStateFragment<VDB> {
    @NotNull

    /* renamed from: v  reason: collision with root package name */
    public static final a f45725v = new a(null);
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private RecyclerView f45726o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f45727p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private RecyclerView.ItemAnimator f45728q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private RecyclerView.ItemDecoration f45729r;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    private RecyclerView.LayoutManager f45730s;
    @Nullable

    /* renamed from: t  reason: collision with root package name */
    private RecyclerView.Adapter<?> f45731t;

    /* renamed from: u  reason: collision with root package name */
    private int f45732u = -1;

    /* compiled from: BottomSheetRVFragment.kt */
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
    public boolean O(@Nullable List<D> list) {
        List<D> list2 = list;
        if (list2 != null && !list2.isEmpty()) {
            if (!this.f45727p) {
                V();
            }
            BaseAdapter<D> P = P();
            if (P != null) {
                P.e(list);
                return true;
            }
            return true;
        }
        return false;
    }

    @Nullable
    public final BaseAdapter<D> P() {
        RecyclerView.Adapter<?> adapter = this.f45731t;
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

    public boolean Q() {
        return true;
    }

    public final int R() {
        BaseAdapter<D> P = P();
        if (P != null) {
            return P.getItemCount();
        }
        return 0;
    }

    @Nullable
    public final RecyclerView.Adapter<?> S() {
        return this.f45731t;
    }

    @Nullable
    public final RecyclerView T() {
        return this.f45726o;
    }

    public final boolean U() {
        return this.f45727p;
    }

    public void V() {
        RecyclerView.ItemDecoration itemDecoration;
        RecyclerView recyclerView;
        if (this.f45727p) {
            return;
        }
        this.f45727p = true;
        RecyclerView recyclerView2 = (RecyclerView) n().getRoot().findViewById(R$id.recycler_view);
        this.f45726o = recyclerView2;
        if (recyclerView2 == null) {
            ViewStub viewStub = (ViewStub) n().getRoot().findViewById(R$id.recycler_view_viewstub);
            if (viewStub == null) {
                return;
            }
            if (id.a.f53392a.c()) {
                q("initRecyclerView");
            }
            View inflate = viewStub.inflate();
            if (inflate instanceof RecyclerView) {
                recyclerView = (RecyclerView) inflate;
            } else {
                recyclerView = null;
            }
            this.f45726o = recyclerView;
        }
        RecyclerView recyclerView3 = this.f45726o;
        if (recyclerView3 != null) {
            recyclerView3.setImportantForAccessibility(2);
        }
        if (this.f45730s == null) {
            Context requireContext = requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
            this.f45730s = new CatchExceptionLinearLayoutManager(requireContext);
        }
        RecyclerView recyclerView4 = this.f45726o;
        if (recyclerView4 != null) {
            recyclerView4.setLayoutManager(this.f45730s);
            recyclerView4.setItemAnimator(this.f45728q);
            recyclerView4.setHasFixedSize(Q());
            int i10 = this.f45732u;
            if (i10 >= 0) {
                recyclerView4.setItemViewCacheSize(i10);
            }
            if (recyclerView4.getItemDecorationCount() == 0 && (itemDecoration = this.f45729r) != null) {
                recyclerView4.addItemDecoration(itemDecoration);
            }
            recyclerView4.setAdapter(this.f45731t);
        }
    }

    public final boolean W() {
        if (R() == 0) {
            return true;
        }
        return false;
    }

    public final void X(@Nullable RecyclerView.Adapter<?> adapter) {
        this.f45731t = adapter;
    }

    public final void Y(@Nullable RecyclerView.ItemDecoration itemDecoration) {
        this.f45729r = itemDecoration;
    }

    public boolean Z(@Nullable List<D> list) {
        if (!this.f45727p) {
            V();
        }
        BaseAdapter<D> P = P();
        if (P != null) {
            BaseAdapter.D(P, list, false, 2, null);
            return true;
        }
        return true;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment
    public int m() {
        return R$layout.fragment_recycler_view;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BottomSheetPageStateFragment, com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment
    @NotNull
    public String p() {
        return "BottomSheetRVFragment";
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BottomSheetPageStateFragment, com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment
    public void s() {
        super.s();
        BaseAdapter<D> P = P();
        if (P != null) {
            P.z();
        }
    }
}
