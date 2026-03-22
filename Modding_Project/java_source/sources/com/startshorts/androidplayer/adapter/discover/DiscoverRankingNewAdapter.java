package com.startshorts.androidplayer.adapter.discover;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.adapter.base.SimpleAdapter;
import com.startshorts.androidplayer.adapter.base.SimpleViewHolder;
import com.startshorts.androidplayer.adapter.discover.DiscoverRankingNewAdapter;
import com.startshorts.androidplayer.bean.discover.DiscoverShorts;
import com.startshorts.androidplayer.bean.fresco.FrescoConfig;
import com.startshorts.androidplayer.bean.shorts.ShortsLabel;
import com.startshorts.androidplayer.databinding.ItemDiscoverRankingNewBinding;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
import com.startshorts.androidplayer.utils.DeviceUtil;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DiscoverRankingNewAdapter.kt */
@Metadata
/* loaded from: classes6.dex */
public final class DiscoverRankingNewAdapter extends SimpleAdapter<DiscoverShorts> {
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    private final Function0<Bundle> f37514k;

    /* renamed from: l  reason: collision with root package name */
    private final int f37515l;

    /* renamed from: m  reason: collision with root package name */
    private final int f37516m;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DiscoverRankingNewAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public final class a extends SimpleViewHolder<DiscoverShorts> {
        @NotNull

        /* renamed from: i  reason: collision with root package name */
        private final ItemDiscoverRankingNewBinding f37517i;
        @NotNull

        /* renamed from: j  reason: collision with root package name */
        private final Integer[] f37518j;
        @NotNull

        /* renamed from: k  reason: collision with root package name */
        private final ms.i f37519k;

        /* renamed from: l  reason: collision with root package name */
        final /* synthetic */ DiscoverRankingNewAdapter f37520l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(@NotNull DiscoverRankingNewAdapter discoverRankingNewAdapter, ItemDiscoverRankingNewBinding binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37520l = discoverRankingNewAdapter;
            this.f37517i = binding;
            this.f37518j = new Integer[]{Integer.valueOf(R$drawable.ic_rank_top1), Integer.valueOf(R$drawable.ic_rank_top2), Integer.valueOf(R$drawable.ic_rank_top3)};
            this.f37519k = kotlin.c.b(new Function0() { // from class: com.startshorts.androidplayer.adapter.discover.c1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    float i10;
                    i10 = DiscoverRankingNewAdapter.a.i();
                    return Float.valueOf(i10);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final float i() {
            return jk.g.a(5.0f);
        }

        private final float j() {
            return ((Number) this.f37519k.getValue()).floatValue();
        }

        @Override // com.startshorts.androidplayer.adapter.base.SimpleViewHolder
        @SuppressLint({"SetTextI18n"})
        /* renamed from: h */
        public void e(int i10, @Nullable DiscoverShorts discoverShorts) {
            String summary;
            ShortsLabel shortsLabel;
            if (discoverShorts == null) {
                return;
            }
            kk.f fVar = kk.f.f60747a;
            CustomFrescoView customFrescoView = this.f37517i.f40242a;
            FrescoConfig frescoConfig = new FrescoConfig();
            DiscoverRankingNewAdapter discoverRankingNewAdapter = this.f37520l;
            frescoConfig.setUrl(discoverShorts.getPicUrl());
            id.c cVar = id.c.f53397a;
            frescoConfig.setOssWidth(cVar.b());
            frescoConfig.setOssHeight(cVar.a());
            frescoConfig.setResizeWidth(discoverRankingNewAdapter.f37515l);
            frescoConfig.setResizeHeight(discoverRankingNewAdapter.f37516m);
            frescoConfig.setCornerRadius(j());
            frescoConfig.setCornerTransform(true);
            frescoConfig.setPlaceholderResId(R$drawable.ic_cover_placeholder);
            Unit unit = Unit.f60915a;
            fVar.A(customFrescoView, frescoConfig);
            if (i10 >= 0 && i10 < 3) {
                this.f37517i.f40244c.setImageResource(this.f37518j[i10].intValue());
                this.f37517i.f40244c.setVisibility(0);
                this.f37517i.f40243b.setVisibility(4);
                this.f37517i.f40247f.setVisibility(4);
            } else if (3 <= i10 && i10 < 100) {
                this.f37517i.f40244c.setVisibility(4);
                this.f37517i.f40243b.setVisibility(0);
                this.f37517i.f40247f.setVisibility(0);
                ViewGroup.LayoutParams layoutParams = this.f37517i.f40247f.getLayoutParams();
                Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                int i11 = i10 + 1;
                if (i11 < 10) {
                    marginLayoutParams.setMarginStart(jk.g.a(4.0f));
                } else {
                    marginLayoutParams.setMarginStart(jk.g.a(2.0f));
                }
                this.f37517i.f40247f.setText(String.valueOf(i11));
            } else {
                this.f37517i.f40244c.setVisibility(4);
                this.f37517i.f40243b.setVisibility(4);
                this.f37517i.f40247f.setVisibility(4);
            }
            this.f37517i.f40249h.setText(discoverShorts.getShortPlayName());
            BaseTextView baseTextView = this.f37517i.f40248g;
            String recommendContent = discoverShorts.getRecommendContent();
            if (recommendContent != null && recommendContent.length() != 0) {
                summary = discoverShorts.getRecommendContent();
            } else {
                summary = discoverShorts.getSummary();
            }
            baseTextView.setText(summary);
            List<ShortsLabel> labelList = discoverShorts.getLabelList();
            if (labelList != null) {
                shortsLabel = (ShortsLabel) CollectionsKt.firstOrNull(labelList);
            } else {
                shortsLabel = null;
            }
            if (shortsLabel == null) {
                this.f37517i.f40245d.setVisibility(8);
            } else {
                this.f37517i.f40245d.setText(shortsLabel.getLabelName());
                this.f37517i.f40245d.setVisibility(0);
            }
            String hotScore = discoverShorts.getHotScore();
            if (hotScore != null && hotScore.length() != 0) {
                this.f37517i.f40246e.setText(discoverShorts.getHotScore());
                this.f37517i.f40246e.setVisibility(0);
                return;
            }
            this.f37517i.f40246e.setVisibility(4);
        }
    }

    public DiscoverRankingNewAdapter(@NotNull Function0<Bundle> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.f37514k = callback;
        int b10 = bt.a.b(DeviceUtil.f48146a.G() * 0.176d);
        this.f37515l = b10;
        this.f37516m = bt.a.c(b10 * 1.33333f);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NotNull
    /* renamed from: j */
    public SimpleViewHolder<DiscoverShorts> onCreateViewHolder(@NotNull ViewGroup parent, int i10) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        ItemDiscoverRankingNewBinding b10 = ItemDiscoverRankingNewBinding.b(LayoutInflater.from(parent.getContext()), parent, false);
        Intrinsics.checkNotNullExpressionValue(b10, "inflate(...)");
        return new a(this, b10);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: k */
    public void onViewAttachedToWindow(@NotNull SimpleViewHolder<DiscoverShorts> holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        super.onViewAttachedToWindow(holder);
        DiscoverShorts discoverShorts = holder.f37202e;
        if (discoverShorts != null) {
            ag.a.f(ag.a.f646a, "", holder.f37201d + 1, discoverShorts.getShortPlayCode(), 0, discoverShorts.getUpack(), this.f37514k.invoke(), 8, null);
        }
    }
}
