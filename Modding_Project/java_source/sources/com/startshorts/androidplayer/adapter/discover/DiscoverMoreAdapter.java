package com.startshorts.androidplayer.adapter.discover;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.adapter.base.BaseAdapter;
import com.startshorts.androidplayer.adapter.discover.DiscoverMoreAdapter;
import com.startshorts.androidplayer.bean.discover.DiscoverShorts;
import com.startshorts.androidplayer.bean.discover.ModuleInfo;
import com.startshorts.androidplayer.bean.fresco.FrescoConfig;
import com.startshorts.androidplayer.databinding.ItemDiscoverMoreComingSoonBinding;
import com.startshorts.androidplayer.databinding.ItemDiscoverMoreOtherBinding;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.discover.ComingSoonChip;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
import com.startshorts.androidplayer.utils.DeviceUtil;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DiscoverMoreAdapter.kt */
@Metadata
@SourceDebugExtension({"SMAP\nDiscoverMoreAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverMoreAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,218:1\n360#2,7:219\n*S KotlinDebug\n*F\n+ 1 DiscoverMoreAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter\n*L\n87#1:219,7\n*E\n"})
/* loaded from: classes6.dex */
public final class DiscoverMoreAdapter extends BaseAdapter<DiscoverShorts> {
    @NotNull

    /* renamed from: w  reason: collision with root package name */
    public static final b f37490w = new b(null);

    /* renamed from: o  reason: collision with root package name */
    private final int f37491o;

    /* renamed from: p  reason: collision with root package name */
    private final int f37492p;

    /* renamed from: q  reason: collision with root package name */
    private final int f37493q;

    /* renamed from: r  reason: collision with root package name */
    private final float f37494r;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    private ModuleInfo f37495s;
    @Nullable

    /* renamed from: t  reason: collision with root package name */
    private Long f37496t;
    @Nullable

    /* renamed from: u  reason: collision with root package name */
    private Long f37497u;
    @NotNull

    /* renamed from: v  reason: collision with root package name */
    private final ms.i f37498v;

    /* compiled from: DiscoverMoreAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    private final class a extends BaseAdapter<DiscoverShorts>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemDiscoverMoreComingSoonBinding f37499g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ DiscoverMoreAdapter f37500h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(@NotNull DiscoverMoreAdapter discoverMoreAdapter, ItemDiscoverMoreComingSoonBinding binding) {
            super(discoverMoreAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37500h = discoverMoreAdapter;
            this.f37499g = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemDiscoverMoreComingSoonBinding c() {
            return this.f37499g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: k */
        public void f(int i10, @NotNull DiscoverShorts item) {
            int i11;
            Intrinsics.checkNotNullParameter(item, "item");
            super.f(i10, item);
            CustomFrescoView coverIv = c().f40190b;
            Intrinsics.checkNotNullExpressionValue(coverIv, "coverIv");
            if (i10 == 0) {
                i11 = jk.g.a(24.0f);
            } else {
                i11 = 0;
            }
            jk.b0.i(coverIv, 0, i11, 0, jk.g.a(22.0f), 5, null);
            kk.f fVar = kk.f.f60747a;
            CustomFrescoView customFrescoView = c().f40190b;
            FrescoConfig frescoConfig = new FrescoConfig();
            DiscoverMoreAdapter discoverMoreAdapter = this.f37500h;
            frescoConfig.setUrl(item.getPicUrl());
            id.c cVar = id.c.f53397a;
            frescoConfig.setOssWidth(cVar.b());
            frescoConfig.setOssHeight(cVar.a());
            frescoConfig.setResizeWidth(discoverMoreAdapter.f37492p);
            frescoConfig.setResizeHeight(discoverMoreAdapter.f37493q);
            frescoConfig.setPlaceholderResId(R$drawable.ic_cover_placeholder);
            frescoConfig.setCornerTransform(true);
            frescoConfig.setCornerRadius(discoverMoreAdapter.f37494r);
            Unit unit = Unit.f60915a;
            fVar.A(customFrescoView, frescoConfig);
            ze.c cVar2 = ze.c.f71647a;
            View root = c().getRoot();
            BaseTextView shortsNameTv = c().f40193e;
            Intrinsics.checkNotNullExpressionValue(shortsNameTv, "shortsNameTv");
            BaseTextView dateTv = c().f40191c;
            Intrinsics.checkNotNullExpressionValue(dateTv, "dateTv");
            ComingSoonChip comingSoonCp = c().f40189a;
            Intrinsics.checkNotNullExpressionValue(comingSoonCp, "comingSoonCp");
            ze.c.f(cVar2, item, root, shortsNameTv, dateTv, comingSoonCp, c().f40192d, Integer.valueOf(1 + i10), null, true, 128, null);
        }
    }

    /* compiled from: DiscoverMoreAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class b {
        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private b() {
        }
    }

    /* compiled from: DiscoverMoreAdapter.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nDiscoverMoreAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverMoreAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter$OtherViewHolder\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,218:1\n256#2,2:219\n256#2,2:221\n256#2,2:223\n*S KotlinDebug\n*F\n+ 1 DiscoverMoreAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter$OtherViewHolder\n*L\n166#1:219,2\n168#1:221,2\n173#1:223,2\n*E\n"})
    /* loaded from: classes6.dex */
    private final class c extends BaseAdapter<DiscoverShorts>.ViewHolder {

        /* renamed from: g  reason: collision with root package name */
        private final int f37501g;
        @NotNull

        /* renamed from: h  reason: collision with root package name */
        private final ItemDiscoverMoreOtherBinding f37502h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ DiscoverMoreAdapter f37503i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(DiscoverMoreAdapter discoverMoreAdapter, @NotNull int i10, ItemDiscoverMoreOtherBinding binding) {
            super(discoverMoreAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37503i = discoverMoreAdapter;
            this.f37501g = i10;
            this.f37502h = binding;
        }

        private final void n(DiscoverShorts discoverShorts) {
            long j10;
            int i10 = 8;
            if (this.f37501g == 12 && discoverShorts.getCanShowDiscountTag()) {
                final BaseTextView baseTextView = c().f40201d;
                DiscoverMoreAdapter discoverMoreAdapter = this.f37503i;
                Long M = discoverMoreAdapter.M();
                long j11 = 0;
                if (M != null) {
                    j10 = M.longValue();
                } else {
                    j10 = 0;
                }
                Long L = discoverMoreAdapter.L();
                if (L != null) {
                    j11 = L.longValue();
                }
                DeviceUtil deviceUtil = DeviceUtil.f48146a;
                if (deviceUtil.K() >= j10 && deviceUtil.K() <= j11) {
                    i10 = 0;
                }
                baseTextView.setVisibility(i10);
                baseTextView.setText(String.valueOf(discoverShorts.getShortPlaySubscript()));
                baseTextView.postDelayed(new Runnable() { // from class: com.startshorts.androidplayer.adapter.discover.a1
                    @Override // java.lang.Runnable
                    public final void run() {
                        DiscoverMoreAdapter.c.o(BaseTextView.this);
                    }
                }, 500L);
                Intrinsics.checkNotNull(baseTextView);
                return;
            }
            c().f40201d.setVisibility(8);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void o(BaseTextView baseTextView) {
            baseTextView.setSelected(true);
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: k */
        public ItemDiscoverMoreOtherBinding c() {
            return this.f37502h;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @SuppressLint({"SetTextI18n"})
        /* renamed from: l */
        public void f(int i10, @NotNull DiscoverShorts item) {
            int i11;
            int i12 = 1;
            Intrinsics.checkNotNullParameter(item, "item");
            super.f(i10, item);
            CustomFrescoView coverIv = c().f40199b;
            Intrinsics.checkNotNullExpressionValue(coverIv, "coverIv");
            if (i10 == 0) {
                i11 = jk.g.a(24.0f);
            } else {
                i11 = 0;
            }
            jk.b0.i(coverIv, 0, i11, 0, jk.g.a(22.0f), 5, null);
            kk.f fVar = kk.f.f60747a;
            CustomFrescoView customFrescoView = c().f40199b;
            FrescoConfig frescoConfig = new FrescoConfig();
            DiscoverMoreAdapter discoverMoreAdapter = this.f37503i;
            frescoConfig.setUrl(item.getPicUrl());
            id.c cVar = id.c.f53397a;
            frescoConfig.setOssWidth(cVar.b());
            frescoConfig.setOssHeight(cVar.a());
            frescoConfig.setResizeWidth(discoverMoreAdapter.f37492p);
            frescoConfig.setResizeHeight(discoverMoreAdapter.f37493q);
            frescoConfig.setPlaceholderResId(R$drawable.ic_cover_placeholder);
            frescoConfig.setCornerTransform(true);
            frescoConfig.setCornerRadius(discoverMoreAdapter.f37494r);
            Unit unit = Unit.f60915a;
            fVar.A(customFrescoView, frescoConfig);
            if (this.f37501g == 6) {
                ImageView imageView = c().f40203f;
                DiscoverMoreAdapter discoverMoreAdapter2 = this.f37503i;
                if (i10 + 1 > 10) {
                    Intrinsics.checkNotNull(imageView);
                    imageView.setVisibility(8);
                } else {
                    Intrinsics.checkNotNull(imageView);
                    imageView.setVisibility(0);
                    imageView.setImageResource(discoverMoreAdapter2.K()[i10].intValue());
                }
                Intrinsics.checkNotNull(imageView);
            } else {
                ImageView rankNumIv = c().f40203f;
                Intrinsics.checkNotNullExpressionValue(rankNumIv, "rankNumIv");
                rankNumIv.setVisibility(8);
            }
            n(item);
            c().f40204g.setText(item.getShortPlayName());
            c().f40198a.setText(item.getSummary());
            if (item.getEpisodeNum() >= 0 && item.getTotalEpisodes() > 0) {
                BaseTextView baseTextView = c().f40200c;
                Context context = c().f40200c.getContext();
                int i13 = R$string.common_current_ep;
                if (item.getEpisodeNum() != 0) {
                    i12 = item.getEpisodeNum();
                }
                baseTextView.setText(context.getString(i13, String.valueOf(i12)));
                c().f40205h.setText(c().f40205h.getContext().getString(R$string.common_total_ep, String.valueOf(item.getTotalEpisodes())));
            }
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: m */
        public void g(int i10, @Nullable DiscoverShorts discoverShorts, @NotNull List<Object> payloads) {
            Intrinsics.checkNotNullParameter(payloads, "payloads");
            if (discoverShorts != null && !payloads.contains("ignore_refresh")) {
                if (payloads.contains("update_episode_num")) {
                    c().f40200c.setText(c().f40200c.getContext().getString(R$string.common_current_ep, String.valueOf(discoverShorts.getEpisodeNum())));
                } else if (payloads.contains("update_discount_tag")) {
                    n(discoverShorts);
                } else {
                    h(discoverShorts);
                    f(i10, discoverShorts);
                }
            }
        }
    }

    public DiscoverMoreAdapter(int i10) {
        super(0L, 1, null);
        this.f37491o = i10;
        this.f37492p = jk.g.a(100.0f);
        this.f37493q = jk.g.a(132.0f);
        this.f37494r = fk.z.f51786a.r();
        this.f37498v = kotlin.c.b(new Function0() { // from class: com.startshorts.androidplayer.adapter.discover.z0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Integer[] N;
                N = DiscoverMoreAdapter.N();
                return N;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Integer[] K() {
        return (Integer[]) this.f37498v.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Integer[] N() {
        return new Integer[]{Integer.valueOf(R$drawable.ic_rank_mark1), Integer.valueOf(R$drawable.ic_rank_mark2), Integer.valueOf(R$drawable.ic_rank_mark3), Integer.valueOf(R$drawable.ic_rank_mark4), Integer.valueOf(R$drawable.ic_rank_mark5), Integer.valueOf(R$drawable.ic_rank_mark6), Integer.valueOf(R$drawable.ic_rank_mark7), Integer.valueOf(R$drawable.ic_rank_mark8), Integer.valueOf(R$drawable.ic_rank_mark9), Integer.valueOf(R$drawable.ic_rank_mark10)};
    }

    @Nullable
    public final ModuleInfo J() {
        return this.f37495s;
    }

    @Nullable
    public final Long L() {
        return this.f37497u;
    }

    @Nullable
    public final Long M() {
        return this.f37496t;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: O */
    public void onViewAttachedToWindow(@NotNull BaseAdapter<DiscoverShorts>.ViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        super.onViewAttachedToWindow(holder);
        DiscoverShorts d10 = holder.d();
        if (d10 != null) {
            ag.a.f(ag.a.f646a, "discover_more", holder.getLayoutPosition(), d10.getShortPlayCode(), 0, d10.getUpack(), EventManager.f42463a.H(this.f37495s), 8, null);
        }
    }

    public final void P(int i10, int i11) {
        synchronized (m()) {
            try {
                Iterator<DiscoverShorts> it = m().iterator();
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
                if (i12 != -1) {
                    m().get(i12).setEpisodeNum(i11);
                    notifyItemChanged(i12, "update_episode_num");
                }
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void Q(@Nullable ModuleInfo moduleInfo) {
        this.f37495s = moduleInfo;
    }

    public final void R(@Nullable Long l10) {
        this.f37497u = l10;
    }

    public final void S(@Nullable Long l10) {
        this.f37496t = l10;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i10) {
        return this.f37491o;
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    public boolean p() {
        return false;
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    @NotNull
    public String q() {
        return "DiscoverMoreAdapter";
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    @NotNull
    public BaseAdapter<DiscoverShorts>.ViewHolder x(@NotNull ViewGroup parent, int i10, int i11) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        if (i10 == 7) {
            return new a(this, (ItemDiscoverMoreComingSoonBinding) s(parent, R$layout.item_discover_more_coming_soon));
        }
        return new c(this, i10, (ItemDiscoverMoreOtherBinding) s(parent, R$layout.item_discover_more_other));
    }
}
