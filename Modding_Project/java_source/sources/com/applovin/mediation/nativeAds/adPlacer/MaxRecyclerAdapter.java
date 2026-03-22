package com.applovin.mediation.nativeAds.adPlacer;

import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.applovin.impl.c5;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.nativeAds.adPlacer.MaxAdPlacer;
import com.applovin.sdk.AppLovinSdkUtils;
import com.applovin.sdk.R;
import java.util.Collection;
/* loaded from: classes2.dex */
public class MaxRecyclerAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> implements MaxAdPlacer.Listener {

    /* renamed from: a  reason: collision with root package name */
    private final MaxAdPlacer f10860a;

    /* renamed from: b  reason: collision with root package name */
    private final RecyclerView.Adapter f10861b;

    /* renamed from: c  reason: collision with root package name */
    private final b f10862c;

    /* renamed from: d  reason: collision with root package name */
    private RecyclerView f10863d;

    /* renamed from: e  reason: collision with root package name */
    private c5 f10864e;

    /* renamed from: f  reason: collision with root package name */
    private MaxAdPlacer.Listener f10865f;

    /* renamed from: g  reason: collision with root package name */
    private int f10866g;

    /* renamed from: h  reason: collision with root package name */
    private AdPositionBehavior f10867h;

    /* loaded from: classes2.dex */
    public enum AdPositionBehavior {
        DYNAMIC_EXCEPT_ON_APPEND,
        DYNAMIC,
        FIXED
    }

    /* loaded from: classes2.dex */
    public static class MaxAdRecyclerViewHolder extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        private final ViewGroup f10869a;

        public MaxAdRecyclerViewHolder(View view) {
            super(view);
            this.f10869a = (ViewGroup) view.findViewById(R.id.applovin_native_ad_view_container);
        }

        public ViewGroup getContainerView() {
            return this.f10869a;
        }
    }

    /* loaded from: classes2.dex */
    class a implements c5.a {
        a() {
        }

        @Override // com.applovin.impl.c5.a
        public void a(int i10, int i11) {
            MaxRecyclerAdapter.this.f10860a.updateFillablePositions(i10, Math.min(i11 + MaxRecyclerAdapter.this.f10866g, MaxRecyclerAdapter.this.getItemCount() - 1));
        }
    }

    /* loaded from: classes2.dex */
    private class b extends RecyclerView.AdapterDataObserver {
        private b() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onChanged() {
            MaxRecyclerAdapter.this.notifyDataSetChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeChanged(int i10, int i11) {
            int adjustedPosition = MaxRecyclerAdapter.this.f10860a.getAdjustedPosition(i10);
            MaxRecyclerAdapter.this.notifyItemRangeChanged(adjustedPosition, (MaxRecyclerAdapter.this.f10860a.getAdjustedPosition((i10 + i11) - 1) - adjustedPosition) + 1);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeInserted(int i10, int i11) {
            boolean z10;
            if (i10 + i11 >= MaxRecyclerAdapter.this.f10861b.getItemCount()) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (MaxRecyclerAdapter.this.f10867h != AdPositionBehavior.FIXED && (MaxRecyclerAdapter.this.f10867h != AdPositionBehavior.DYNAMIC_EXCEPT_ON_APPEND || !z10)) {
                int adjustedPosition = MaxRecyclerAdapter.this.f10860a.getAdjustedPosition(i10);
                for (int i12 = 0; i12 < i11; i12++) {
                    MaxRecyclerAdapter.this.f10860a.insertItem(adjustedPosition);
                }
                MaxRecyclerAdapter.this.notifyItemRangeInserted(adjustedPosition, i11);
                return;
            }
            MaxRecyclerAdapter.this.notifyDataSetChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeMoved(int i10, int i11, int i12) {
            MaxRecyclerAdapter.this.notifyDataSetChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeRemoved(int i10, int i11) {
            boolean z10;
            int itemCount = MaxRecyclerAdapter.this.f10861b.getItemCount();
            if (i10 + i11 >= itemCount) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (MaxRecyclerAdapter.this.f10867h != AdPositionBehavior.FIXED && (MaxRecyclerAdapter.this.f10867h != AdPositionBehavior.DYNAMIC_EXCEPT_ON_APPEND || !z10)) {
                int adjustedPosition = MaxRecyclerAdapter.this.f10860a.getAdjustedPosition(i10);
                int adjustedCount = MaxRecyclerAdapter.this.f10860a.getAdjustedCount(itemCount + i11);
                for (int i12 = 0; i12 < i11; i12++) {
                    MaxRecyclerAdapter.this.f10860a.removeItem(adjustedPosition);
                }
                int adjustedCount2 = MaxRecyclerAdapter.this.f10860a.getAdjustedCount(itemCount);
                int i13 = adjustedCount - adjustedCount2;
                Collection<Integer> clearTrailingAds = MaxRecyclerAdapter.this.f10860a.clearTrailingAds(adjustedCount2 - 1);
                if (!clearTrailingAds.isEmpty()) {
                    i13 += clearTrailingAds.size();
                }
                MaxRecyclerAdapter.this.notifyItemRangeRemoved(adjustedPosition - (i13 - i11), i13);
                return;
            }
            MaxRecyclerAdapter.this.notifyDataSetChanged();
        }

        /* synthetic */ b(MaxRecyclerAdapter maxRecyclerAdapter, a aVar) {
            this();
        }
    }

    public MaxRecyclerAdapter(MaxAdPlacerSettings maxAdPlacerSettings, RecyclerView.Adapter adapter, Activity activity) {
        b bVar = new b(this, null);
        this.f10862c = bVar;
        this.f10866g = 8;
        this.f10867h = AdPositionBehavior.DYNAMIC_EXCEPT_ON_APPEND;
        MaxAdPlacer maxAdPlacer = new MaxAdPlacer(maxAdPlacerSettings, activity);
        this.f10860a = maxAdPlacer;
        maxAdPlacer.setListener(this);
        super.setHasStableIds(adapter.hasStableIds());
        this.f10861b = adapter;
        adapter.registerAdapterDataObserver(bVar);
    }

    public void destroy() {
        try {
            this.f10861b.unregisterAdapterDataObserver(this.f10862c);
        } catch (Exception unused) {
        }
        this.f10860a.destroy();
        c5 c5Var = this.f10864e;
        if (c5Var != null) {
            c5Var.a();
        }
    }

    public MaxAdPlacer getAdPlacer() {
        return this.f10860a;
    }

    public int getAdjustedPosition(int i10) {
        return this.f10860a.getAdjustedPosition(i10);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f10860a.getAdjustedCount(this.f10861b.getItemCount());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i10) {
        if (!this.f10861b.hasStableIds()) {
            return -1L;
        }
        if (this.f10860a.isFilledPosition(i10)) {
            return this.f10860a.getAdItemId(i10);
        }
        return this.f10861b.getItemId(this.f10860a.getOriginalPosition(i10));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i10) {
        if (this.f10860a.isAdPosition(i10)) {
            return -42;
        }
        return this.f10861b.getItemViewType(this.f10860a.getOriginalPosition(i10));
    }

    public int getOriginalPosition(int i10) {
        return this.f10860a.getOriginalPosition(i10);
    }

    public void loadAds() {
        this.f10860a.loadAds();
    }

    @Override // com.applovin.mediation.nativeAds.adPlacer.MaxAdPlacer.Listener
    public void onAdClicked(MaxAd maxAd) {
        MaxAdPlacer.Listener listener = this.f10865f;
        if (listener != null) {
            listener.onAdClicked(maxAd);
        }
    }

    @Override // com.applovin.mediation.nativeAds.adPlacer.MaxAdPlacer.Listener
    public void onAdLoaded(int i10) {
        notifyItemChanged(i10);
        MaxAdPlacer.Listener listener = this.f10865f;
        if (listener != null) {
            listener.onAdLoaded(i10);
        }
    }

    @Override // com.applovin.mediation.nativeAds.adPlacer.MaxAdPlacer.Listener
    public void onAdRemoved(int i10) {
        MaxAdPlacer.Listener listener = this.f10865f;
        if (listener != null) {
            listener.onAdRemoved(i10);
        }
    }

    @Override // com.applovin.mediation.nativeAds.adPlacer.MaxAdPlacer.Listener
    public void onAdRevenuePaid(MaxAd maxAd) {
        MaxAdPlacer.Listener listener = this.f10865f;
        if (listener != null) {
            listener.onAdRevenuePaid(maxAd);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onAttachedToRecyclerView(@NonNull RecyclerView recyclerView) {
        super.onAttachedToRecyclerView(recyclerView);
        this.f10863d = recyclerView;
        c5 c5Var = new c5(recyclerView);
        this.f10864e = c5Var;
        c5Var.a(new a());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i10) {
        int dpToPx;
        int dpToPx2;
        this.f10864e.a(viewHolder.itemView, i10);
        if (this.f10860a.isAdPosition(i10)) {
            AppLovinSdkUtils.Size adSize = this.f10860a.getAdSize(i10);
            ViewGroup containerView = ((MaxAdRecyclerViewHolder) viewHolder).getContainerView();
            ViewGroup.LayoutParams layoutParams = containerView.getLayoutParams();
            if (adSize != AppLovinSdkUtils.Size.ZERO) {
                if (adSize.getWidth() < 0) {
                    dpToPx = adSize.getWidth();
                } else {
                    dpToPx = AppLovinSdkUtils.dpToPx(containerView.getContext(), adSize.getWidth());
                }
                layoutParams.width = dpToPx;
                if (adSize.getHeight() < 0) {
                    dpToPx2 = adSize.getHeight();
                } else {
                    dpToPx2 = AppLovinSdkUtils.dpToPx(containerView.getContext(), adSize.getHeight());
                }
                layoutParams.height = dpToPx2;
                containerView.setLayoutParams(layoutParams);
                this.f10860a.renderAd(i10, containerView);
                return;
            }
            layoutParams.width = -2;
            layoutParams.height = -2;
            containerView.setLayoutParams(layoutParams);
            return;
        }
        this.f10861b.onBindViewHolder(viewHolder, this.f10860a.getOriginalPosition(i10));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i10) {
        if (i10 == -42) {
            View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.max_native_ad_recycler_view_item, viewGroup, false);
            ViewGroup.LayoutParams layoutParams = inflate.getLayoutParams();
            RecyclerView.LayoutManager layoutManager = this.f10863d.getLayoutManager();
            if (layoutManager != null && layoutManager.canScrollHorizontally()) {
                layoutParams.width = -2;
                layoutParams.height = -1;
            } else {
                layoutParams.width = -1;
                layoutParams.height = -2;
            }
            inflate.setLayoutParams(layoutParams);
            return new MaxAdRecyclerViewHolder(inflate);
        }
        return this.f10861b.onCreateViewHolder(viewGroup, i10);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onDetachedFromRecyclerView(@NonNull RecyclerView recyclerView) {
        super.onDetachedFromRecyclerView(recyclerView);
        this.f10863d = null;
        c5 c5Var = this.f10864e;
        if (c5Var != null) {
            c5Var.a();
            this.f10864e = null;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public boolean onFailedToRecycleView(@NonNull RecyclerView.ViewHolder viewHolder) {
        if (viewHolder instanceof MaxAdRecyclerViewHolder) {
            return super.onFailedToRecycleView(viewHolder);
        }
        return this.f10861b.onFailedToRecycleView(viewHolder);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewAttachedToWindow(@NonNull RecyclerView.ViewHolder viewHolder) {
        if (viewHolder instanceof MaxAdRecyclerViewHolder) {
            super.onViewAttachedToWindow(viewHolder);
        } else {
            this.f10861b.onViewAttachedToWindow(viewHolder);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewDetachedFromWindow(@NonNull RecyclerView.ViewHolder viewHolder) {
        if (viewHolder instanceof MaxAdRecyclerViewHolder) {
            super.onViewDetachedFromWindow(viewHolder);
        } else {
            this.f10861b.onViewDetachedFromWindow(viewHolder);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewRecycled(@NonNull RecyclerView.ViewHolder viewHolder) {
        c5 c5Var = this.f10864e;
        if (c5Var != null) {
            c5Var.b(viewHolder.itemView);
        }
        if (viewHolder instanceof MaxAdRecyclerViewHolder) {
            if (this.f10860a.isFilledPosition(viewHolder.getBindingAdapterPosition())) {
                ((MaxAdRecyclerViewHolder) viewHolder).getContainerView().removeAllViews();
            }
            super.onViewRecycled(viewHolder);
            return;
        }
        this.f10861b.onViewRecycled(viewHolder);
    }

    public void setAdPositionBehavior(AdPositionBehavior adPositionBehavior) {
        this.f10867h = adPositionBehavior;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void setHasStableIds(boolean z10) {
        super.setHasStableIds(z10);
        this.f10861b.unregisterAdapterDataObserver(this.f10862c);
        this.f10861b.setHasStableIds(z10);
        this.f10861b.registerAdapterDataObserver(this.f10862c);
    }

    public void setListener(MaxAdPlacer.Listener listener) {
        this.f10865f = listener;
    }

    public void setLookAhead(int i10) {
        this.f10866g = i10;
    }
}
