package com.startshorts.androidplayer.adapter.mylist;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.databinding.ViewStubProxy;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.adapter.base.BaseAdapter;
import com.startshorts.androidplayer.adapter.mylist.RecentlyWatchedHorizontalAdapter;
import com.startshorts.androidplayer.bean.fresco.FrescoConfig;
import com.startshorts.androidplayer.bean.mylist.WatchHistory;
import com.startshorts.androidplayer.databinding.ItemRecentlyWatchedHorizontalBinding;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
import com.startshorts.androidplayer.utils.DeviceUtil;
import fk.z;
import java.util.List;
import jk.e0;
import jk.g;
import kk.f;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RecentlyWatchedHorizontalAdapter.kt */
@Metadata
@SourceDebugExtension({"SMAP\nRecentlyWatchedHorizontalAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RecentlyWatchedHorizontalAdapter.kt\ncom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,173:1\n1863#2,2:174\n1863#2,2:176\n*S KotlinDebug\n*F\n+ 1 RecentlyWatchedHorizontalAdapter.kt\ncom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter\n*L\n51#1:174,2\n63#1:176,2\n*E\n"})
/* loaded from: classes6.dex */
public final class RecentlyWatchedHorizontalAdapter extends BaseAdapter<WatchHistory> {
    @NotNull

    /* renamed from: t  reason: collision with root package name */
    public static final a f37752t = new a(null);

    /* renamed from: o  reason: collision with root package name */
    private final int f37753o;

    /* renamed from: p  reason: collision with root package name */
    private final int f37754p;

    /* renamed from: q  reason: collision with root package name */
    private final float f37755q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private Function1<? super WatchHistory, Unit> f37756r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f37757s;

    /* compiled from: RecentlyWatchedHorizontalAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: RecentlyWatchedHorizontalAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    private final class b extends BaseAdapter<WatchHistory>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemRecentlyWatchedHorizontalBinding f37758g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ RecentlyWatchedHorizontalAdapter f37759h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(@NotNull RecentlyWatchedHorizontalAdapter recentlyWatchedHorizontalAdapter, ItemRecentlyWatchedHorizontalBinding binding) {
            super(recentlyWatchedHorizontalAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37759h = recentlyWatchedHorizontalAdapter;
            this.f37758g = binding;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void n(RecentlyWatchedHorizontalAdapter recentlyWatchedHorizontalAdapter, WatchHistory watchHistory, View view) {
            Function1<WatchHistory, Unit> J = recentlyWatchedHorizontalAdapter.J();
            if (J != null) {
                J.invoke(watchHistory);
            }
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: k */
        public ItemRecentlyWatchedHorizontalBinding c() {
            return this.f37758g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: l */
        public void f(int i10, @NotNull final WatchHistory item) {
            int i11;
            Intrinsics.checkNotNullParameter(item, "item");
            super.f(i10, item);
            h(item);
            f fVar = f.f60747a;
            CustomFrescoView customFrescoView = c().f40638b;
            FrescoConfig frescoConfig = new FrescoConfig();
            RecentlyWatchedHorizontalAdapter recentlyWatchedHorizontalAdapter = this.f37759h;
            frescoConfig.setUrl(item.getCoverId());
            id.c cVar = id.c.f53397a;
            frescoConfig.setOssWidth(cVar.b());
            frescoConfig.setOssHeight(cVar.a());
            frescoConfig.setResizeWidth(recentlyWatchedHorizontalAdapter.f37753o);
            frescoConfig.setResizeHeight(recentlyWatchedHorizontalAdapter.f37754p);
            frescoConfig.setPlaceholderResId(R$drawable.ic_cover_placeholder);
            frescoConfig.setCornerTransform(true);
            frescoConfig.setCornerRadius(recentlyWatchedHorizontalAdapter.f37755q);
            Unit unit = Unit.f60915a;
            fVar.A(customFrescoView, frescoConfig);
            c().f40643g.setText(item.getShortPlayName());
            c().f40639c.setText(c().f40639c.getContext().getString(R$string.common_current_ep, String.valueOf(item.getEpisodeNum())));
            c().f40645i.setText(c().f40645i.getContext().getString(R$string.common_total_ep, String.valueOf(item.getTotalEpisodes())));
            this.f37759h.N(c());
            this.f37759h.M(c(), item.isSelected());
            AppCompatImageView appCompatImageView = c().f40641e;
            if (item.isCollect() == 1) {
                i11 = R$drawable.ic_recently_collected;
            } else {
                i11 = R$drawable.ic_recently_un_collect;
            }
            appCompatImageView.setImageResource(i11);
            AppCompatImageView appCompatImageView2 = c().f40641e;
            final RecentlyWatchedHorizontalAdapter recentlyWatchedHorizontalAdapter2 = this.f37759h;
            appCompatImageView2.setOnClickListener(new View.OnClickListener() { // from class: com.startshorts.androidplayer.adapter.mylist.c
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    RecentlyWatchedHorizontalAdapter.b.n(RecentlyWatchedHorizontalAdapter.this, item, view);
                }
            });
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: m */
        public void g(int i10, @Nullable WatchHistory watchHistory, @NotNull List<Object> payloads) {
            boolean z10;
            Intrinsics.checkNotNullParameter(payloads, "payloads");
            if (watchHistory != null && !payloads.contains("ignore_refresh")) {
                boolean z11 = false;
                if (payloads.contains("update_checkbox")) {
                    this.f37759h.N(c());
                    this.f37759h.M(c(), watchHistory.isSelected());
                    z10 = false;
                } else {
                    z10 = true;
                }
                if (payloads.contains("delete_item")) {
                    i(i10);
                    h(watchHistory);
                    super.f(i10, watchHistory);
                    this.f37759h.M(c(), watchHistory.isSelected());
                    z10 = false;
                }
                if (payloads.contains("update_episode_num")) {
                    c().f40639c.setText(c().f40639c.getContext().getString(R$string.common_current_ep, String.valueOf(watchHistory.getEpisodeNum())));
                } else {
                    z11 = z10;
                }
                if (z11) {
                    f(i10, watchHistory);
                }
            }
        }
    }

    public RecentlyWatchedHorizontalAdapter() {
        super(0L, 1, null);
        int c10 = bt.a.c((DeviceUtil.f48146a.G() - g.a(56.0f)) / 3.0f);
        this.f37753o = c10;
        this.f37754p = bt.a.c(c10 * 1.3396f);
        this.f37755q = z.f51786a.r();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void M(ItemRecentlyWatchedHorizontalBinding itemRecentlyWatchedHorizontalBinding, boolean z10) {
        int i10;
        ImageView imageView = null;
        if (this.f37757s) {
            ViewStubProxy viewStubProxy = itemRecentlyWatchedHorizontalBinding.f40637a;
            Intrinsics.checkNotNull(viewStubProxy);
            e0.h(viewStubProxy);
            View root = viewStubProxy.getRoot();
            if (root instanceof ImageView) {
                imageView = (ImageView) root;
            }
            if (imageView != null) {
                if (z10) {
                    i10 = R$drawable.ic_checkbox_selected;
                } else {
                    i10 = R$drawable.ic_checkbox_unselected;
                }
                imageView.setImageResource(i10);
            }
            Intrinsics.checkNotNull(viewStubProxy);
            return;
        }
        ViewStubProxy checkBoxViewstub = itemRecentlyWatchedHorizontalBinding.f40637a;
        Intrinsics.checkNotNullExpressionValue(checkBoxViewstub, "checkBoxViewstub");
        e0.b(checkBoxViewstub, 0, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void N(ItemRecentlyWatchedHorizontalBinding itemRecentlyWatchedHorizontalBinding) {
        if (this.f37757s) {
            ViewStubProxy topBgViewstub = itemRecentlyWatchedHorizontalBinding.f40644h;
            Intrinsics.checkNotNullExpressionValue(topBgViewstub, "topBgViewstub");
            e0.g(topBgViewstub);
            return;
        }
        ViewStubProxy topBgViewstub2 = itemRecentlyWatchedHorizontalBinding.f40644h;
        Intrinsics.checkNotNullExpressionValue(topBgViewstub2, "topBgViewstub");
        e0.b(topBgViewstub2, 0, 1, null);
    }

    @Nullable
    public final Function1<WatchHistory, Unit> J() {
        return this.f37756r;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: K */
    public void onViewAttachedToWindow(@NotNull BaseAdapter<WatchHistory>.ViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        WatchHistory d10 = holder.d();
        if (d10 != null) {
            ag.a.d(ag.a.f646a, "mylist_recommended", d10.getShortPlayCode(), null, 0, null, null, null, null, null, 508, null);
        }
    }

    public final void L(@Nullable Function1<? super WatchHistory, Unit> function1) {
        this.f37756r = function1;
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    public boolean p() {
        return false;
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    @NotNull
    public String q() {
        return "RecentlyWatchedAdapter";
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    @NotNull
    public BaseAdapter<WatchHistory>.ViewHolder x(@NotNull ViewGroup parent, int i10, int i11) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        return new b(this, (ItemRecentlyWatchedHorizontalBinding) s(parent, R$layout.item_recently_watched_horizontal));
    }
}
