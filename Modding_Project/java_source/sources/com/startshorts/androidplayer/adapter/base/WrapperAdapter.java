package com.startshorts.androidplayer.adapter.base;

import android.annotation.SuppressLint;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import java.util.List;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes6.dex */
public class WrapperAdapter extends RecyclerView.Adapter {

    /* renamed from: i  reason: collision with root package name */
    private RecyclerView.Adapter f37208i;

    /* renamed from: j  reason: collision with root package name */
    private View f37209j;

    /* renamed from: k  reason: collision with root package name */
    private View f37210k;

    /* renamed from: l  reason: collision with root package name */
    private RecyclerView f37211l;

    /* renamed from: m  reason: collision with root package name */
    private RecyclerView.LayoutManager f37212m;

    /* renamed from: n  reason: collision with root package name */
    private final RecyclerView.AdapterDataObserver f37213n = new a();

    /* loaded from: classes6.dex */
    class a extends RecyclerView.AdapterDataObserver {
        a() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        @SuppressLint({"NotifyDataSetChanged"})
        public void onChanged() {
            super.onChanged();
            WrapperAdapter.this.notifyDataSetChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeChanged(int i10, int i11) {
            super.onItemRangeChanged(i10, i11);
            WrapperAdapter wrapperAdapter = WrapperAdapter.this;
            wrapperAdapter.notifyItemRangeChanged(i10 + (wrapperAdapter.b() ? 1 : 0), i11);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeInserted(int i10, int i11) {
            super.onItemRangeInserted(i10, i11);
            WrapperAdapter wrapperAdapter = WrapperAdapter.this;
            wrapperAdapter.notifyItemRangeInserted(i10 + (wrapperAdapter.b() ? 1 : 0), i11);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeMoved(int i10, int i11, int i12) {
            super.onItemRangeMoved(i10, i11, i12);
            WrapperAdapter wrapperAdapter = WrapperAdapter.this;
            wrapperAdapter.notifyItemRangeChanged(i10 + (wrapperAdapter.b() ? 1 : 0), i11 + (WrapperAdapter.this.b() ? 1 : 0) + i12);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeRemoved(int i10, int i11) {
            super.onItemRangeRemoved(i10, i11);
            WrapperAdapter wrapperAdapter = WrapperAdapter.this;
            wrapperAdapter.notifyItemRangeRemoved(i10 + (wrapperAdapter.b() ? 1 : 0), i11);
        }
    }

    /* loaded from: classes6.dex */
    private static class b extends RecyclerView.ViewHolder {
        public b(View view) {
            super(view);
        }
    }

    private void f(RecyclerView.ViewHolder viewHolder) {
        ViewGroup.LayoutParams layoutParams = viewHolder.itemView.getLayoutParams();
        if (layoutParams instanceof StaggeredGridLayoutManager.LayoutParams) {
            ((StaggeredGridLayoutManager.LayoutParams) layoutParams).setFullSpan(true);
            return;
        }
        viewHolder.itemView.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
    }

    private void g(RecyclerView.ViewHolder viewHolder) {
        ViewGroup.LayoutParams layoutParams = viewHolder.itemView.getLayoutParams();
        if (layoutParams instanceof StaggeredGridLayoutManager.LayoutParams) {
            ((StaggeredGridLayoutManager.LayoutParams) layoutParams).setFullSpan(true);
        } else if (layoutParams == null) {
            viewHolder.itemView.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
        }
    }

    public boolean a() {
        if (this.f37210k != null) {
            return true;
        }
        return false;
    }

    public boolean b() {
        if (this.f37209j != null) {
            return true;
        }
        return false;
    }

    public RecyclerView.Adapter c() {
        return this.f37208i;
    }

    public void d(RecyclerView.Adapter adapter) {
        this.f37208i = adapter;
        if (adapter != null) {
            adapter.registerAdapterDataObserver(this.f37213n);
        }
    }

    public void e(View view) {
        this.f37209j = view;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        int itemCount = this.f37208i.getItemCount();
        if (b()) {
            itemCount++;
        }
        if (a()) {
            return itemCount + 1;
        }
        return itemCount;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i10) {
        if (b()) {
            if (i10 == 0) {
                return Integer.MAX_VALUE;
            }
            if (i10 == this.f37208i.getItemCount() + 1) {
                if (!a()) {
                    return -1;
                }
                return Integer.MIN_VALUE;
            }
            return this.f37208i.getItemViewType(i10 - 1);
        } else if (i10 == this.f37208i.getItemCount()) {
            if (!a()) {
                return -1;
            }
            return Integer.MIN_VALUE;
        } else {
            return this.f37208i.getItemViewType(i10);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onAttachedToRecyclerView(@NonNull RecyclerView recyclerView) {
        this.f37211l = recyclerView;
        RecyclerView.Adapter adapter = this.f37208i;
        if (adapter != null) {
            adapter.onAttachedToRecyclerView(recyclerView);
        }
        if (this.f37212m == null) {
            this.f37212m = recyclerView.getLayoutManager();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i10) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NotNull
    public RecyclerView.ViewHolder onCreateViewHolder(@NotNull ViewGroup viewGroup, int i10) {
        if (i10 == Integer.MAX_VALUE) {
            return new b(this.f37209j);
        }
        if (i10 == Integer.MIN_VALUE) {
            return new b(this.f37210k);
        }
        return this.f37208i.onCreateViewHolder(viewGroup, i10);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewAttachedToWindow(@NonNull RecyclerView.ViewHolder viewHolder) {
        RecyclerView recyclerView;
        super.onViewAttachedToWindow(viewHolder);
        RecyclerView.Adapter adapter = this.f37208i;
        if (adapter != null && !(viewHolder instanceof b)) {
            adapter.onViewAttachedToWindow(viewHolder);
        }
        if (this.f37212m == null && (recyclerView = this.f37211l) != null) {
            this.f37212m = recyclerView.getLayoutManager();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewDetachedFromWindow(@NonNull RecyclerView.ViewHolder viewHolder) {
        super.onViewDetachedFromWindow(viewHolder);
        RecyclerView.Adapter adapter = this.f37208i;
        if (adapter != null && !(viewHolder instanceof b)) {
            adapter.onViewDetachedFromWindow(viewHolder);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i10, @NonNull List list) {
        if (!b()) {
            if (i10 == this.f37208i.getItemCount()) {
                if (a()) {
                    f(viewHolder);
                    return;
                }
                return;
            }
            this.f37208i.onBindViewHolder(viewHolder, i10, list);
        } else if (i10 == 0) {
            g(viewHolder);
        } else if (i10 == this.f37208i.getItemCount() + 1) {
            if (a()) {
                f(viewHolder);
            }
        } else {
            this.f37208i.onBindViewHolder(viewHolder, i10 - 1, list);
        }
    }
}
