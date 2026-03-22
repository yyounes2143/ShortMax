package com.startshorts.androidplayer.ui.view.base;

import android.content.Context;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes7.dex */
public class LoadMoreRecyclerView extends RecyclerView {

    /* renamed from: a  reason: collision with root package name */
    private b f47094a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public class a extends RecyclerView.OnScrollListener {
        a() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(@NonNull RecyclerView recyclerView, int i10, int i11) {
            super.onScrolled(recyclerView, i10, i11);
            if (i11 > 0 && LoadMoreRecyclerView.this.f47094a != null && recyclerView.getLayoutManager() != null) {
                int childCount = recyclerView.getLayoutManager().getChildCount();
                int itemCount = recyclerView.getLayoutManager().getItemCount();
                if (itemCount - 1 == ((LinearLayoutManager) recyclerView.getLayoutManager()).findLastVisibleItemPosition() && itemCount >= childCount) {
                    LoadMoreRecyclerView.this.f47094a.a();
                }
            }
        }
    }

    /* loaded from: classes7.dex */
    public interface b {
        void a();
    }

    public LoadMoreRecyclerView(Context context) {
        super(context);
        b();
    }

    private void b() {
        addOnScrollListener(new a());
    }

    public void setLoadMoreListener(b bVar) {
        this.f47094a = bVar;
    }

    public LoadMoreRecyclerView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        b();
    }

    public LoadMoreRecyclerView(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        b();
    }
}
