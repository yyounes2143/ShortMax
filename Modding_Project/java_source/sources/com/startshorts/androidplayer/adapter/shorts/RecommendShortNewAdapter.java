package com.startshorts.androidplayer.adapter.shorts;

import android.view.LayoutInflater;
import android.view.TextureView;
import android.view.ViewGroup;
import com.ss.ttm.player.MediaPlayer;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.adapter.base.BaseAdapter;
import com.startshorts.androidplayer.bean.fresco.FrescoConfig;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.shorts.RecommendShorts;
import com.startshorts.androidplayer.databinding.ItemRecommendShortsNewBinding;
import com.startshorts.androidplayer.databinding.ItemRecommendShortsNewTopBinding;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
import com.startshorts.androidplayer.utils.DeviceUtil;
import java.lang.ref.WeakReference;
import jk.g;
import kk.f;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RecommendShortNewAdapter.kt */
@Metadata
/* loaded from: classes6.dex */
public final class RecommendShortNewAdapter extends BaseAdapter<RecommendShorts> {
    @NotNull

    /* renamed from: o  reason: collision with root package name */
    private final ItemRecommendShortsNewTopBinding f38015o;
    @NotNull

    /* renamed from: p  reason: collision with root package name */
    private final Function2<TextureView, RecommendShorts, Unit> f38016p;
    @NotNull

    /* renamed from: q  reason: collision with root package name */
    private final Function0<Unit> f38017q;

    /* renamed from: r  reason: collision with root package name */
    private final int f38018r;

    /* renamed from: s  reason: collision with root package name */
    private final int f38019s;

    /* renamed from: t  reason: collision with root package name */
    private final int f38020t;

    /* renamed from: u  reason: collision with root package name */
    private final int f38021u;

    /* renamed from: v  reason: collision with root package name */
    private int f38022v;

    /* renamed from: w  reason: collision with root package name */
    private boolean f38023w;

    /* renamed from: x  reason: collision with root package name */
    private boolean f38024x;
    @Nullable

    /* renamed from: y  reason: collision with root package name */
    private WeakReference<ShortsViewHolder> f38025y;

    /* compiled from: RecommendShortNewAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public final class ShortsViewHolder extends BaseAdapter<RecommendShorts>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemRecommendShortsNewBinding f38026g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ RecommendShortNewAdapter f38027h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ShortsViewHolder(@NotNull RecommendShortNewAdapter recommendShortNewAdapter, ItemRecommendShortsNewBinding binding) {
            super(recommendShortNewAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f38027h = recommendShortNewAdapter;
            this.f38026g = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemRecommendShortsNewBinding c() {
            return this.f38026g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: k */
        public void f(int i10, @NotNull RecommendShorts item) {
            Intrinsics.checkNotNullParameter(item, "item");
            super.f(i10, item);
            int i11 = i10 - 1;
            f fVar = f.f60747a;
            CustomFrescoView customFrescoView = c().f40651b;
            FrescoConfig frescoConfig = new FrescoConfig();
            RecommendShortNewAdapter recommendShortNewAdapter = this.f38027h;
            frescoConfig.setUrl(item.getCoverUrl());
            frescoConfig.setOssWidth(recommendShortNewAdapter.f38020t);
            frescoConfig.setOssHeight(recommendShortNewAdapter.f38021u);
            frescoConfig.setPlaceholderResId(R$drawable.ic_cover_placeholder);
            Unit unit = Unit.f60915a;
            fVar.A(customFrescoView, frescoConfig);
            c().f40651b.setVisibility(0);
            c().f40653d.setText("Top " + i10);
            c().f40652c.setText(item.getShortPlayName());
            if (this.f38027h.K() == i11 && !this.f38027h.N()) {
                c().f40654e.setVisibility(0);
            } else {
                c().f40654e.setVisibility(4);
            }
            if (this.f38027h.K() == i11 && !this.f38027h.N()) {
                this.f38027h.f38025y = new WeakReference(this);
                Function2 function2 = this.f38027h.f38016p;
                TextureView videoRenderView = c().f40654e;
                Intrinsics.checkNotNullExpressionValue(videoRenderView, "videoRenderView");
                function2.invoke(videoRenderView, item);
            }
        }
    }

    /* compiled from: RecommendShortNewAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public final class TopViewHolder extends BaseAdapter<RecommendShorts>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemRecommendShortsNewTopBinding f38028g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ RecommendShortNewAdapter f38029h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TopViewHolder(@NotNull RecommendShortNewAdapter recommendShortNewAdapter, ItemRecommendShortsNewTopBinding binding) {
            super(recommendShortNewAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f38029h = recommendShortNewAdapter;
            this.f38028g = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemRecommendShortsNewTopBinding c() {
            return this.f38028g;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public RecommendShortNewAdapter(@NotNull ItemRecommendShortsNewTopBinding topBinding, @NotNull Function2<? super TextureView, ? super RecommendShorts, Unit> onPlay, @NotNull Function0<Unit> onAllPlayCompleted) {
        super(0L, 1, null);
        Intrinsics.checkNotNullParameter(topBinding, "topBinding");
        Intrinsics.checkNotNullParameter(onPlay, "onPlay");
        Intrinsics.checkNotNullParameter(onAllPlayCompleted, "onAllPlayCompleted");
        this.f38015o = topBinding;
        this.f38016p = onPlay;
        this.f38017q = onAllPlayCompleted;
        this.f38019s = 1;
        int G = (DeviceUtil.f48146a.G() - g.a(70.0f)) / 2;
        this.f38020t = G;
        this.f38021u = bt.a.c(G * 1.3214f);
        this.f38022v = -1;
    }

    private final boolean I() {
        int i10 = this.f38022v;
        this.f38022v = i10 + 1;
        if (O()) {
            this.f38022v = getItemCount() - 2;
        }
        if (i10 != this.f38022v) {
            return true;
        }
        return false;
    }

    private final boolean O() {
        if (this.f38022v >= getItemCount() - 2) {
            return true;
        }
        return false;
    }

    @Nullable
    public final BaseEpisode J() {
        int size = m().size();
        int i10 = this.f38022v;
        if (size > i10 && i10 >= 0) {
            return m().get(this.f38022v);
        }
        return null;
    }

    public final int K() {
        return this.f38022v;
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    @Nullable
    /* renamed from: L */
    public RecommendShorts getItem(int i10) {
        return (RecommendShorts) super.getItem(i10 - 1);
    }

    public final void M() {
        ShortsViewHolder shortsViewHolder;
        WeakReference<ShortsViewHolder> weakReference = this.f38025y;
        if (weakReference != null && (shortsViewHolder = weakReference.get()) != null) {
            shortsViewHolder.c().f40651b.setVisibility(4);
        }
    }

    public final boolean N() {
        return this.f38023w;
    }

    public final boolean P() {
        return this.f38024x;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: Q */
    public void onViewAttachedToWindow(@NotNull BaseAdapter<RecommendShorts>.ViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        RecommendShorts d10 = holder.d();
        if (d10 != null) {
            ag.a.d(ag.a.f646a, "new_user_drama", d10.getShortPlayCode(), null, 0, null, null, null, d10.getUpack(), null, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_STALL_COUNTER, null);
        }
    }

    public final void R() {
        if (I()) {
            int i10 = this.f38022v;
            if (i10 - 1 >= 0) {
                notifyItemRangeChanged(i10, 2);
            }
        } else if (O()) {
            this.f38023w = true;
            this.f38017q.invoke();
            notifyItemChanged(getItemCount() - 1);
        }
    }

    public final void S(boolean z10) {
        this.f38024x = z10;
    }

    public final void T(int i10) {
        int i11 = this.f38022v;
        if (i11 == -1 && i11 != i10) {
            this.f38022v = i10;
            if (O()) {
                this.f38022v = getItemCount() - 2;
            }
            notifyDataSetChanged();
        }
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return super.getItemCount() + 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i10) {
        if (i10 == 0) {
            return this.f38018r;
        }
        return this.f38019s;
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    public boolean p() {
        return false;
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    @NotNull
    public String q() {
        return "RecommendShortNewAdapter";
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    @NotNull
    public BaseAdapter<RecommendShorts>.ViewHolder x(@NotNull ViewGroup parent, int i10, int i11) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        if (i10 == this.f38018r) {
            return new TopViewHolder(this, this.f38015o);
        }
        ItemRecommendShortsNewBinding b10 = ItemRecommendShortsNewBinding.b(LayoutInflater.from(parent.getContext()), parent, false);
        Intrinsics.checkNotNullExpressionValue(b10, "inflate(...)");
        return new ShortsViewHolder(this, b10);
    }
}
