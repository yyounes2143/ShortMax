package com.startshorts.androidplayer.adapter.discover;

import android.view.ViewGroup;
import android.widget.ImageView;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.adapter.base.BaseAdapter;
import com.startshorts.androidplayer.bean.discover.DiscoverShorts;
import com.startshorts.androidplayer.bean.fresco.FrescoConfig;
import com.startshorts.androidplayer.databinding.ItemDiscoverRankingBinding;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: DiscoverRankingAdapter.kt */
@Metadata
@SourceDebugExtension({"SMAP\nDiscoverRankingAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverRankingAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverRankingAdapter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,115:1\n1#2:116\n*E\n"})
/* loaded from: classes6.dex */
public final class DiscoverRankingAdapter extends BaseAdapter<DiscoverShorts> {
    @NotNull

    /* renamed from: u  reason: collision with root package name */
    public static final a f37504u = new a(null);
    @NotNull

    /* renamed from: v  reason: collision with root package name */
    private static final int[] f37505v = {R$drawable.ic_discover_popular_1, R$drawable.ic_discover_popular_2, R$drawable.ic_discover_popular_3, R$drawable.ic_discover_popular_4, R$drawable.ic_discover_popular_5, R$drawable.ic_discover_popular_6, R$drawable.ic_discover_popular_7, R$drawable.ic_discover_popular_8, R$drawable.ic_discover_popular_9, R$drawable.ic_discover_popular_10};

    /* renamed from: o  reason: collision with root package name */
    private final int f37506o;

    /* renamed from: p  reason: collision with root package name */
    private final int f37507p;

    /* renamed from: q  reason: collision with root package name */
    private final float f37508q;

    /* renamed from: r  reason: collision with root package name */
    private final int f37509r;

    /* renamed from: s  reason: collision with root package name */
    private final int f37510s;
    @NotNull

    /* renamed from: t  reason: collision with root package name */
    private final ms.i f37511t;

    /* compiled from: DiscoverRankingAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: DiscoverRankingAdapter.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nDiscoverRankingAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverRankingAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverRankingAdapter$RankingViewHolder\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,115:1\n256#2,2:116\n256#2,2:118\n*S KotlinDebug\n*F\n+ 1 DiscoverRankingAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverRankingAdapter$RankingViewHolder\n*L\n86#1:116,2\n89#1:118,2\n*E\n"})
    /* loaded from: classes6.dex */
    private final class b extends BaseAdapter<DiscoverShorts>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemDiscoverRankingBinding f37512g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ DiscoverRankingAdapter f37513h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(@NotNull DiscoverRankingAdapter discoverRankingAdapter, ItemDiscoverRankingBinding binding) {
            super(discoverRankingAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37513h = discoverRankingAdapter;
            this.f37512g = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemDiscoverRankingBinding c() {
            return this.f37512g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: k */
        public void f(int i10, @NotNull DiscoverShorts item) {
            Intrinsics.checkNotNullParameter(item, "item");
            super.f(i10, item);
            CustomFrescoView customFrescoView = c().f40219a;
            customFrescoView.setContentDescription(this.itemView.getContext().getString(R$string.banner_pic) + i10 + ' ' + item.getId());
            kk.f fVar = kk.f.f60747a;
            CustomFrescoView customFrescoView2 = c().f40219a;
            FrescoConfig frescoConfig = new FrescoConfig();
            DiscoverRankingAdapter discoverRankingAdapter = this.f37513h;
            frescoConfig.setUrl(item.getPicUrl());
            id.c cVar = id.c.f53397a;
            frescoConfig.setOssWidth(cVar.b());
            frescoConfig.setOssHeight(cVar.a());
            frescoConfig.setResizeWidth(discoverRankingAdapter.f37506o);
            frescoConfig.setResizeHeight(discoverRankingAdapter.f37507p);
            frescoConfig.setPlaceholderResId(R$drawable.ic_cover_placeholder);
            frescoConfig.setCornerTransform(true);
            frescoConfig.setCornerRadius(discoverRankingAdapter.f37508q);
            Unit unit = Unit.f60915a;
            fVar.A(customFrescoView2, frescoConfig);
            DiscoverModuleAdapter.C.i(c().f40223e, item.getPlayNum());
            Pair pair = (Pair) CollectionsKt.t0(this.f37513h.J(), i10);
            if (pair == null) {
                ImageView shortsIndex = c().f40221c;
                Intrinsics.checkNotNullExpressionValue(shortsIndex, "shortsIndex");
                shortsIndex.setVisibility(8);
            } else {
                ImageView imageView = c().f40221c;
                Intrinsics.checkNotNull(imageView);
                imageView.setVisibility(0);
                imageView.setContentDescription(String.valueOf(((Number) pair.e()).intValue()));
                imageView.setImageResource(((Number) pair.e()).intValue());
                ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
                layoutParams.width = ((Number) pair.f()).intValue();
                imageView.setLayoutParams(layoutParams);
                Intrinsics.checkNotNull(imageView);
            }
            c().f40222d.setText(item.getShortPlayName());
            c().getRoot().setElevation(-i10);
        }
    }

    public DiscoverRankingAdapter() {
        super(0L, 1, null);
        this.f37506o = jk.g.a(106.0f);
        this.f37507p = jk.g.a(141.0f);
        this.f37508q = fk.z.f51786a.r();
        this.f37509r = jk.g.a(143.0f);
        this.f37510s = jk.g.a(106.0f);
        this.f37511t = kotlin.c.b(new Function0() { // from class: com.startshorts.androidplayer.adapter.discover.b1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                List K;
                K = DiscoverRankingAdapter.K(DiscoverRankingAdapter.this);
                return K;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<Pair<Integer, Integer>> J() {
        return (List) this.f37511t.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List K(DiscoverRankingAdapter discoverRankingAdapter) {
        int i10;
        int i11;
        ArrayList arrayList = new ArrayList();
        int i12 = 0;
        while (i12 < 10) {
            int[] iArr = f37505v;
            if (i12 >= 0 && i12 < iArr.length) {
                i10 = iArr[i12];
            } else {
                i10 = R$drawable.ic_discover_popular_1;
            }
            Integer valueOf = Integer.valueOf(i10);
            i12++;
            if (i12 == 10) {
                i11 = discoverRankingAdapter.f37509r;
            } else {
                i11 = discoverRankingAdapter.f37510s;
            }
            arrayList.add(new Pair(valueOf, Integer.valueOf(i11)));
        }
        return arrayList;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: L */
    public void onViewAttachedToWindow(@NotNull BaseAdapter<DiscoverShorts>.ViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        DiscoverShorts d10 = holder.d();
        if (d10 != null) {
            ag.a.c(ag.a.f646a, d10, holder.getLayoutPosition(), 0, null, null, null, null, null, 252, null);
        }
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    public boolean p() {
        return false;
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    @NotNull
    public String q() {
        return "DiscoverRankingAdapter";
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    @NotNull
    public BaseAdapter<DiscoverShorts>.ViewHolder x(@NotNull ViewGroup parent, int i10, int i11) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        return new b(this, (ItemDiscoverRankingBinding) s(parent, R$layout.item_discover_ranking));
    }
}
