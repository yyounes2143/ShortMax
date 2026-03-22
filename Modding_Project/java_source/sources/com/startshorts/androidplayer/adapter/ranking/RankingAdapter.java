package com.startshorts.androidplayer.adapter.ranking;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.adapter.base.FixLoadMoreAdapter;
import com.startshorts.androidplayer.adapter.base.SimpleViewHolder;
import com.startshorts.androidplayer.adapter.ranking.RankingAdapter;
import com.startshorts.androidplayer.bean.discover.DiscoverShorts;
import com.startshorts.androidplayer.bean.fresco.FrescoConfig;
import com.startshorts.androidplayer.databinding.ItemRankingBinding;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
import com.startshorts.androidplayer.utils.DeviceUtil;
import java.util.ArrayList;
import java.util.Iterator;
import jk.g;
import kk.f;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.c;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RankingAdapter.kt */
@Metadata
@SourceDebugExtension({"SMAP\nRankingAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RankingAdapter.kt\ncom/startshorts/androidplayer/adapter/ranking/RankingAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,112:1\n360#2,7:113\n*S KotlinDebug\n*F\n+ 1 RankingAdapter.kt\ncom/startshorts/androidplayer/adapter/ranking/RankingAdapter\n*L\n30#1:113,7\n*E\n"})
/* loaded from: classes6.dex */
public final class RankingAdapter extends FixLoadMoreAdapter<DiscoverShorts> {
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    private final Function0<Bundle> f37840m;

    /* renamed from: n  reason: collision with root package name */
    private final int f37841n;

    /* renamed from: o  reason: collision with root package name */
    private final int f37842o;

    /* compiled from: RankingAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    private final class a extends SimpleViewHolder<DiscoverShorts> {
        @NotNull

        /* renamed from: i  reason: collision with root package name */
        private final ItemRankingBinding f37843i;
        @NotNull

        /* renamed from: j  reason: collision with root package name */
        private final Integer[] f37844j;
        @NotNull

        /* renamed from: k  reason: collision with root package name */
        private final i f37845k;

        /* renamed from: l  reason: collision with root package name */
        final /* synthetic */ RankingAdapter f37846l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(@NotNull RankingAdapter rankingAdapter, ItemRankingBinding binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37846l = rankingAdapter;
            this.f37843i = binding;
            this.f37844j = new Integer[]{Integer.valueOf(R$drawable.ic_rank_num1), Integer.valueOf(R$drawable.ic_rank_num2), Integer.valueOf(R$drawable.ic_rank_num3), Integer.valueOf(R$drawable.ic_rank_mark4), Integer.valueOf(R$drawable.ic_rank_mark5), Integer.valueOf(R$drawable.ic_rank_mark6), Integer.valueOf(R$drawable.ic_rank_mark7), Integer.valueOf(R$drawable.ic_rank_mark8), Integer.valueOf(R$drawable.ic_rank_mark9), Integer.valueOf(R$drawable.ic_rank_mark10), Integer.valueOf(R$drawable.ic_rank_mark11), Integer.valueOf(R$drawable.ic_rank_mark12), Integer.valueOf(R$drawable.ic_rank_mark13), Integer.valueOf(R$drawable.ic_rank_mark14), Integer.valueOf(R$drawable.ic_rank_mark15), Integer.valueOf(R$drawable.ic_rank_mark16), Integer.valueOf(R$drawable.ic_rank_mark17), Integer.valueOf(R$drawable.ic_rank_mark18), Integer.valueOf(R$drawable.ic_rank_mark19), Integer.valueOf(R$drawable.ic_rank_mark20)};
            this.f37845k = c.b(new Function0() { // from class: com.startshorts.androidplayer.adapter.ranking.a
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    float i10;
                    i10 = RankingAdapter.a.i();
                    return Float.valueOf(i10);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final float i() {
            return g.a(5.0f);
        }

        private final float j() {
            return ((Number) this.f37845k.getValue()).floatValue();
        }

        @Override // com.startshorts.androidplayer.adapter.base.SimpleViewHolder
        @SuppressLint({"SetTextI18n"})
        /* renamed from: h */
        public void e(int i10, @Nullable DiscoverShorts discoverShorts) {
            String summary;
            if (discoverShorts == null) {
                return;
            }
            f fVar = f.f60747a;
            CustomFrescoView customFrescoView = this.f37843i.f40616c;
            FrescoConfig frescoConfig = new FrescoConfig();
            RankingAdapter rankingAdapter = this.f37846l;
            frescoConfig.setUrl(discoverShorts.getPicUrl());
            id.c cVar = id.c.f53397a;
            frescoConfig.setOssWidth(cVar.b());
            frescoConfig.setOssHeight(cVar.a());
            frescoConfig.setResizeWidth(rankingAdapter.f37841n);
            frescoConfig.setResizeHeight(rankingAdapter.f37842o);
            frescoConfig.setCornerRadius(j());
            frescoConfig.setCornerTransform(true);
            frescoConfig.setPlaceholderResId(R$drawable.ic_cover_placeholder);
            Unit unit = Unit.f60915a;
            fVar.A(customFrescoView, frescoConfig);
            this.f37843i.f40620g.setText(discoverShorts.getShortPlayName());
            BaseTextView baseTextView = this.f37843i.f40619f;
            String recommendContent = discoverShorts.getRecommendContent();
            if (recommendContent != null && recommendContent.length() != 0) {
                summary = discoverShorts.getRecommendContent();
            } else {
                summary = discoverShorts.getSummary();
            }
            baseTextView.setText(summary);
            String string = this.f37843i.getRoot().getResources().getString(R$string.common_current_ep, String.valueOf(Math.max(1, discoverShorts.getEpisodeNum())));
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            String string2 = this.f37843i.getRoot().getResources().getString(R$string.common_total_ep, String.valueOf(discoverShorts.getTotalEpisodes()));
            Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
            BaseTextView baseTextView2 = this.f37843i.f40615b;
            baseTextView2.setText(string + " / " + string2);
            if (i10 >= 0 && i10 < 3) {
                this.f37843i.f40618e.setImageResource(this.f37844j[i10].intValue());
                this.f37843i.f40618e.setVisibility(0);
                this.f37843i.f40617d.setVisibility(4);
            } else if (3 <= i10 && i10 < 20) {
                this.f37843i.f40618e.setVisibility(4);
                this.f37843i.f40617d.setImageResource(this.f37844j[i10].intValue());
                this.f37843i.f40617d.setVisibility(0);
            } else {
                this.f37843i.f40618e.setVisibility(4);
                this.f37843i.f40617d.setVisibility(4);
            }
        }
    }

    public RankingAdapter(@NotNull Function0<Bundle> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.f37840m = callback;
        int c10 = bt.a.c(((DeviceUtil.f48146a.G() - g.b(16.0f)) - g.b(24.0f)) * 0.289f);
        this.f37841n = c10;
        this.f37842o = bt.a.c(c10 * 1.32f);
    }

    @Override // com.startshorts.androidplayer.adapter.base.FixLoadMoreAdapter
    @NotNull
    public SimpleViewHolder<DiscoverShorts> l(@NotNull ViewGroup parent, int i10) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        ItemRankingBinding b10 = ItemRankingBinding.b(LayoutInflater.from(parent.getContext()), parent, false);
        Intrinsics.checkNotNullExpressionValue(b10, "inflate(...)");
        return new a(this, b10);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: q */
    public void onViewAttachedToWindow(@NotNull SimpleViewHolder<DiscoverShorts> holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        super.onViewAttachedToWindow(holder);
        DiscoverShorts discoverShorts = holder.f37202e;
        if (discoverShorts != null) {
            ag.a.f(ag.a.f646a, "discover_more", holder.f37201d, discoverShorts.getShortPlayCode(), 0, discoverShorts.getUpack(), this.f37840m.invoke(), 8, null);
        }
    }

    public final void r(int i10, int i11) {
        ArrayList<DiscoverShorts> d10 = d();
        Intrinsics.checkNotNullExpressionValue(d10, "getAll(...)");
        Iterator<DiscoverShorts> it = d10.iterator();
        int i12 = 0;
        while (true) {
            if (it.hasNext()) {
                if (it.next().getId() == i10) {
                    break;
                }
                i12++;
            } else {
                i12 = -1;
                break;
            }
        }
        if (-1 != i12 && d().get(i12).getEpisodeNum() != i11) {
            d().get(i12).setEpisodeNum(i11);
            notifyItemChanged(i12);
        }
    }
}
