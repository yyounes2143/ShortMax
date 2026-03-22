package com.startshorts.androidplayer.adapter.shorts;

import android.view.TextureView;
import at.n;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.fresco.FrescoConfig;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.ui.view.banner.BaseBannerAdapter;
import com.startshorts.androidplayer.ui.view.banner.BaseViewHolder;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
import com.startshorts.androidplayer.ui.view.shortsV2.shortrating.ShortRatingLayout;
import com.startshorts.androidplayer.utils.DeviceUtil;
import java.lang.ref.WeakReference;
import java.util.List;
import jk.g;
import kk.f;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ImmersionBackAdapter.kt */
@Metadata
/* loaded from: classes6.dex */
public final class ImmersionBackAdapter extends BaseBannerAdapter<BaseEpisode> {
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    private final n<TextureView, BaseEpisode, ShortRatingLayout, Unit> f38009l;

    /* renamed from: m  reason: collision with root package name */
    private final int f38010m;

    /* renamed from: n  reason: collision with root package name */
    private final int f38011n;

    /* renamed from: o  reason: collision with root package name */
    private final float f38012o;

    /* renamed from: p  reason: collision with root package name */
    private int f38013p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private WeakReference<BaseViewHolder<BaseEpisode>> f38014q;

    /* JADX WARN: Multi-variable type inference failed */
    public ImmersionBackAdapter(@NotNull n<? super TextureView, ? super BaseEpisode, ? super ShortRatingLayout, Unit> onPlay) {
        Intrinsics.checkNotNullParameter(onPlay, "onPlay");
        this.f38009l = onPlay;
        int G = (DeviceUtil.f48146a.G() - g.a(84.0f)) / 2;
        this.f38010m = G;
        this.f38011n = bt.a.c(G * 1.331f);
        this.f38012o = g.a(20.0f);
        this.f38013p = -1;
    }

    @Override // com.startshorts.androidplayer.ui.view.banner.BaseBannerAdapter
    public int e(int i10) {
        return R$layout.item_immersion_back_shorts;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.startshorts.androidplayer.ui.view.banner.BaseBannerAdapter
    /* renamed from: n */
    public void b(@NotNull BaseViewHolder<BaseEpisode> holder, @Nullable BaseEpisode baseEpisode, int i10, int i11, int i12) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (baseEpisode == null) {
            return;
        }
        TextureView textureView = (TextureView) holder.findViewById(R$id.video_render_view);
        CustomFrescoView customFrescoView = (CustomFrescoView) holder.findViewById(R$id.cover_iv);
        if (this.f38013p == i10) {
            customFrescoView.setVisibility(0);
            textureView.setVisibility(0);
        } else {
            customFrescoView.setVisibility(0);
            textureView.setVisibility(4);
        }
        customFrescoView.setContentDescription(holder.itemView.getContext().getString(R$string.cover_pic) + i10);
        f fVar = f.f60747a;
        FrescoConfig frescoConfig = new FrescoConfig();
        frescoConfig.setUrl(baseEpisode.getCoverId());
        frescoConfig.setOssWidth(this.f38010m);
        frescoConfig.setOssHeight(this.f38011n);
        frescoConfig.setPlaceholderResId(R$drawable.ic_banner_placeholder);
        frescoConfig.setCornerTransform(true);
        frescoConfig.setCornerRadius(this.f38012o);
        Unit unit = Unit.f60915a;
        fVar.A(customFrescoView, frescoConfig);
        if (this.f38013p != i10) {
            return;
        }
        ShortRatingLayout shortRatingLayout = (ShortRatingLayout) holder.findViewById(R$id.short_rating_view);
        this.f38014q = new WeakReference<>(holder);
        n<TextureView, BaseEpisode, ShortRatingLayout, Unit> nVar = this.f38009l;
        Intrinsics.checkNotNull(textureView);
        Intrinsics.checkNotNull(shortRatingLayout);
        nVar.invoke(textureView, baseEpisode, shortRatingLayout);
    }

    @Nullable
    public final BaseEpisode o() {
        int size = this.f47064i.size();
        int i10 = this.f38013p;
        if (size > i10 && i10 >= 0) {
            return (BaseEpisode) this.f47064i.get(i10);
        }
        return null;
    }

    public final int p() {
        return this.f38013p;
    }

    @Nullable
    public final BaseEpisode q(int i10) {
        List<T> mList = this.f47064i;
        Intrinsics.checkNotNullExpressionValue(mList, "mList");
        return (BaseEpisode) CollectionsKt.t0(mList, i10);
    }

    public final void r() {
        BaseViewHolder<BaseEpisode> baseViewHolder;
        WeakReference<BaseViewHolder<BaseEpisode>> weakReference = this.f38014q;
        if (weakReference != null && (baseViewHolder = weakReference.get()) != null) {
            ((CustomFrescoView) baseViewHolder.findViewById(R$id.cover_iv)).setVisibility(4);
        }
    }

    public final void s(int i10) {
        if (this.f38013p != i10) {
            this.f38013p = i10;
            notifyDataSetChanged();
        }
    }
}
