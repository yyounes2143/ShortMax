package com.startshorts.androidplayer.adapter.base;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
/* loaded from: classes6.dex */
public abstract class FixLoadMoreAdapter<T> extends SimpleAdapter<T> {

    /* renamed from: k  reason: collision with root package name */
    protected boolean f37185k = false;

    /* renamed from: l  reason: collision with root package name */
    private boolean f37186l = false;

    /* loaded from: classes6.dex */
    public class LoadMoreViewHolder extends SimpleViewHolder<T> {
        public LoadMoreViewHolder(ViewGroup viewGroup) {
            super(LayoutInflater.from(viewGroup.getContext()).inflate(R$layout.view_item_load_more, viewGroup, false));
            FixLoadMoreAdapter.h(FixLoadMoreAdapter.this);
            FixLoadMoreAdapter.h(FixLoadMoreAdapter.this);
        }

        @Override // com.startshorts.androidplayer.adapter.base.SimpleViewHolder
        public void e(int i10, Object obj) {
            int i11;
            View findViewById = this.itemView.findViewById(R$id.load_more_next);
            int i12 = 8;
            if (!FixLoadMoreAdapter.this.j() && FixLoadMoreAdapter.this.g() != 0) {
                i11 = 0;
            } else {
                i11 = 8;
            }
            findViewById.setVisibility(i11);
            View findViewById2 = this.itemView.findViewById(R$id.load_more_end_tv);
            if (FixLoadMoreAdapter.this.j()) {
                i12 = 0;
            }
            findViewById2.setVisibility(i12);
            FixLoadMoreAdapter.h(FixLoadMoreAdapter.this);
        }
    }

    /* loaded from: classes6.dex */
    public static class a {
    }

    public FixLoadMoreAdapter() {
        setHasStableIds(false);
    }

    static /* synthetic */ a h(FixLoadMoreAdapter fixLoadMoreAdapter) {
        fixLoadMoreAdapter.getClass();
        return null;
    }

    @Override // com.startshorts.androidplayer.adapter.base.SimpleAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        if (this.f37185k) {
            return super.getItemCount();
        }
        return super.getItemCount() + 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemViewType(int i10) {
        if (this.f37185k) {
            return i(i10);
        }
        if (i10 == getItemCount() - 1) {
            return 999999;
        }
        return i(i10);
    }

    public int i(int i10) {
        return 0;
    }

    public boolean j() {
        return this.f37186l;
    }

    public void k(boolean z10) {
        if (this.f37186l != z10) {
            this.f37186l = z10;
            notifyDataSetChanged();
        }
    }

    public abstract SimpleViewHolder<T> l(ViewGroup viewGroup, int i10);

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    /* renamed from: m */
    public final SimpleViewHolder<T> onCreateViewHolder(@NonNull ViewGroup viewGroup, int i10) {
        if (i10 == 999999) {
            return new LoadMoreViewHolder(viewGroup);
        }
        return l(viewGroup, i10);
    }

    public void n(boolean z10) {
        if (this.f37185k != z10) {
            this.f37185k = z10;
            notifyDataSetChanged();
        }
    }
}
