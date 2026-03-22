package com.startshorts.androidplayer.ui.activity.base;

import android.view.View;
import android.view.ViewStub;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.adapter.base.BaseAdapter;
import com.startshorts.androidplayer.adapter.base.WrapperAdapter;
import com.startshorts.androidplayer.ui.view.base.CatchExceptionLinearLayoutManager;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RecyclerViewActivity.kt */
@Metadata
@SourceDebugExtension({"SMAP\nRecyclerViewActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RecyclerViewActivity.kt\ncom/startshorts/androidplayer/ui/activity/base/RecyclerViewActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,145:1\n1#2:146\n*E\n"})
/* loaded from: classes7.dex */
public class RecyclerViewActivity<D, VDB extends ViewDataBinding> extends PageStateActivity<VDB> {
    @NotNull

    /* renamed from: y  reason: collision with root package name */
    public static final a f45022y = new a(null);
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private RecyclerView f45023r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f45024s;
    @Nullable

    /* renamed from: t  reason: collision with root package name */
    private RecyclerView.ItemAnimator f45025t;
    @Nullable

    /* renamed from: u  reason: collision with root package name */
    private RecyclerView.ItemDecoration f45026u;
    @Nullable

    /* renamed from: v  reason: collision with root package name */
    private RecyclerView.LayoutManager f45027v;
    @Nullable

    /* renamed from: w  reason: collision with root package name */
    private RecyclerView.Adapter<?> f45028w;

    /* renamed from: x  reason: collision with root package name */
    private int f45029x = -1;

    /* compiled from: RecyclerViewActivity.kt */
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
    public boolean X(@Nullable List<D> list) {
        List<D> list2 = list;
        if (list2 != null && !list2.isEmpty()) {
            if (!this.f45024s) {
                g0();
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

    public boolean Y(D d10) {
        if (!this.f45024s) {
            g0();
        }
        BaseAdapter<D> Z = Z();
        if (Z != null) {
            return BaseAdapter.j(Z, d10, null, 2, null);
        }
        return false;
    }

    @Nullable
    public final BaseAdapter<D> Z() {
        RecyclerView.Adapter adapter;
        RecyclerView.Adapter<?> adapter2 = this.f45028w;
        if (adapter2 instanceof BaseAdapter) {
            if (!(adapter2 instanceof BaseAdapter)) {
                return null;
            }
            return (BaseAdapter) adapter2;
        } else if (!(adapter2 instanceof WrapperAdapter)) {
            return null;
        } else {
            WrapperAdapter wrapperAdapter = (WrapperAdapter) adapter2;
            if (wrapperAdapter != null) {
                adapter = wrapperAdapter.c();
            } else {
                adapter = null;
            }
            if (!(adapter instanceof BaseAdapter)) {
                return null;
            }
            return (BaseAdapter) adapter;
        }
    }

    public boolean a0() {
        return true;
    }

    public final int b0() {
        BaseAdapter<D> Z = Z();
        if (Z != null) {
            return Z.getItemCount();
        }
        return 0;
    }

    @Nullable
    public final List<D> c0() {
        BaseAdapter<D> Z = Z();
        if (Z != null) {
            return Z.m();
        }
        return null;
    }

    @Nullable
    public final RecyclerView.Adapter<?> d0() {
        return this.f45028w;
    }

    @Nullable
    public final RecyclerView e0() {
        return this.f45023r;
    }

    public final boolean f0() {
        return this.f45024s;
    }

    public void g0() {
        RecyclerView.ItemDecoration itemDecoration;
        RecyclerView recyclerView;
        if (this.f45024s) {
            return;
        }
        this.f45024s = true;
        RecyclerView recyclerView2 = (RecyclerView) E().getRoot().findViewById(R$id.recycler_view);
        this.f45023r = recyclerView2;
        if (recyclerView2 == null) {
            ViewStub viewStub = (ViewStub) E().getRoot().findViewById(R$id.recycler_view_viewstub);
            if (viewStub == null) {
                return;
            }
            if (id.a.f53392a.c()) {
                s("initRecyclerView");
            }
            View inflate = viewStub.inflate();
            if (inflate instanceof RecyclerView) {
                recyclerView = (RecyclerView) inflate;
            } else {
                recyclerView = null;
            }
            this.f45023r = recyclerView;
        }
        RecyclerView recyclerView3 = this.f45023r;
        if (recyclerView3 != null) {
            recyclerView3.setImportantForAccessibility(2);
        }
        if (this.f45027v == null) {
            this.f45027v = new CatchExceptionLinearLayoutManager(this);
        }
        RecyclerView recyclerView4 = this.f45023r;
        if (recyclerView4 != null) {
            recyclerView4.setLayoutManager(this.f45027v);
            recyclerView4.setItemAnimator(this.f45025t);
            recyclerView4.setHasFixedSize(a0());
            int i10 = this.f45029x;
            if (i10 >= 0) {
                recyclerView4.setItemViewCacheSize(i10);
            }
            if (recyclerView4.getItemDecorationCount() == 0 && (itemDecoration = this.f45026u) != null) {
                recyclerView4.addItemDecoration(itemDecoration);
            }
            recyclerView4.setAdapter(this.f45028w);
        }
    }

    public final boolean h0() {
        if (b0() == 0) {
            return true;
        }
        return false;
    }

    public final void i0(@Nullable RecyclerView.Adapter<?> adapter) {
        this.f45028w = adapter;
    }

    public final void j0(int i10) {
        this.f45029x = i10;
    }

    public final void k0(@Nullable RecyclerView.LayoutManager layoutManager) {
        this.f45027v = layoutManager;
    }

    public boolean l0(@Nullable List<D> list) {
        if (!this.f45024s) {
            g0();
        }
        BaseAdapter<D> Z = Z();
        if (Z != null) {
            BaseAdapter.D(Z, list, false, 2, null);
            return true;
        }
        return true;
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.PageStateActivity, com.startshorts.androidplayer.ui.activity.base.PermissionActivity, com.startshorts.androidplayer.ui.activity.base.BaseActivity
    @NotNull
    public String r() {
        return "RecyclerViewActivity";
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.PageStateActivity, com.startshorts.androidplayer.ui.activity.base.BaseVDBActivity, com.startshorts.androidplayer.ui.activity.base.BaseActivity
    public void v() {
        super.v();
        BaseAdapter<D> Z = Z();
        if (Z != null) {
            Z.z();
        }
    }
}
