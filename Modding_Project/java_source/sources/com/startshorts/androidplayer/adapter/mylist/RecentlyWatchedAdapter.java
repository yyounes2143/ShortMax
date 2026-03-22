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
import com.startshorts.androidplayer.adapter.mylist.RecentlyWatchedAdapter;
import com.startshorts.androidplayer.bean.fresco.FrescoConfig;
import com.startshorts.androidplayer.bean.mylist.WatchHistory;
import com.startshorts.androidplayer.databinding.ItemRecentlyWatchedBinding;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
import com.startshorts.androidplayer.utils.DeviceUtil;
import fk.z;
import java.util.List;
import jk.b0;
import jk.e0;
import jk.g;
import kk.f;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RecentlyWatchedAdapter.kt */
@Metadata
@SourceDebugExtension({"SMAP\nRecentlyWatchedAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RecentlyWatchedAdapter.kt\ncom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,173:1\n1863#2,2:174\n1863#2,2:176\n*S KotlinDebug\n*F\n+ 1 RecentlyWatchedAdapter.kt\ncom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedAdapter\n*L\n52#1:174,2\n64#1:176,2\n*E\n"})
/* loaded from: classes6.dex */
public final class RecentlyWatchedAdapter extends BaseAdapter<WatchHistory> {
    @NotNull

    /* renamed from: t  reason: collision with root package name */
    public static final a f37744t = new a(null);

    /* renamed from: o  reason: collision with root package name */
    private final int f37745o;

    /* renamed from: p  reason: collision with root package name */
    private final int f37746p;

    /* renamed from: q  reason: collision with root package name */
    private final float f37747q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private Function1<? super WatchHistory, Unit> f37748r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f37749s;

    /* compiled from: RecentlyWatchedAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: RecentlyWatchedAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    private final class b extends BaseAdapter<WatchHistory>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemRecentlyWatchedBinding f37750g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ RecentlyWatchedAdapter f37751h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(@NotNull RecentlyWatchedAdapter recentlyWatchedAdapter, ItemRecentlyWatchedBinding binding) {
            super(recentlyWatchedAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37751h = recentlyWatchedAdapter;
            this.f37750g = binding;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void n(RecentlyWatchedAdapter recentlyWatchedAdapter, WatchHistory watchHistory, View view) {
            Function1<WatchHistory, Unit> K = recentlyWatchedAdapter.K();
            if (K != null) {
                K.invoke(watchHistory);
            }
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: k */
        public ItemRecentlyWatchedBinding c() {
            return this.f37750g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: l */
        public void f(int i10, @NotNull final WatchHistory item) {
            int i11;
            Intrinsics.checkNotNullParameter(item, "item");
            super.f(i10, item);
            h(item);
            f fVar = f.f60747a;
            CustomFrescoView customFrescoView = c().f40625b;
            FrescoConfig frescoConfig = new FrescoConfig();
            RecentlyWatchedAdapter recentlyWatchedAdapter = this.f37751h;
            frescoConfig.setUrl(item.getCoverId());
            id.c cVar = id.c.f53397a;
            frescoConfig.setOssWidth(cVar.b());
            frescoConfig.setOssHeight(cVar.a());
            frescoConfig.setResizeWidth(recentlyWatchedAdapter.f37745o);
            frescoConfig.setResizeHeight(recentlyWatchedAdapter.f37746p);
            frescoConfig.setPlaceholderResId(R$drawable.ic_cover_placeholder);
            frescoConfig.setCornerTransform(true);
            frescoConfig.setCornerRadius(recentlyWatchedAdapter.f37747q);
            Unit unit = Unit.f60915a;
            fVar.A(customFrescoView, frescoConfig);
            c().f40630g.setText(item.getShortPlayName());
            c().f40626c.setText(c().f40626c.getContext().getString(R$string.common_current_ep, String.valueOf(item.getEpisodeNum())));
            c().f40632i.setText(c().f40632i.getContext().getString(R$string.common_total_ep, String.valueOf(item.getTotalEpisodes())));
            this.f37751h.Q(c());
            this.f37751h.N(c(), item.isSelected());
            AppCompatImageView appCompatImageView = c().f40628e;
            if (item.isCollect() == 1) {
                i11 = R$drawable.ic_recently_collected;
            } else {
                i11 = R$drawable.ic_recently_un_collect;
            }
            appCompatImageView.setImageResource(i11);
            AppCompatImageView appCompatImageView2 = c().f40628e;
            final RecentlyWatchedAdapter recentlyWatchedAdapter2 = this.f37751h;
            appCompatImageView2.setOnClickListener(new View.OnClickListener() { // from class: com.startshorts.androidplayer.adapter.mylist.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    RecentlyWatchedAdapter.b.n(RecentlyWatchedAdapter.this, item, view);
                }
            });
            if (this.f37751h.J()) {
                b0.d(c().f40628e);
            } else {
                b0.l(c().f40628e);
            }
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: m */
        public void g(int i10, @Nullable WatchHistory watchHistory, @NotNull List<Object> payloads) {
            boolean z10;
            Intrinsics.checkNotNullParameter(payloads, "payloads");
            if (watchHistory != null && !payloads.contains("ignore_refresh")) {
                boolean z11 = false;
                if (payloads.contains("update_checkbox")) {
                    this.f37751h.Q(c());
                    this.f37751h.N(c(), watchHistory.isSelected());
                    z10 = false;
                } else {
                    z10 = true;
                }
                if (payloads.contains("delete_item")) {
                    i(i10);
                    h(watchHistory);
                    super.f(i10, watchHistory);
                    this.f37751h.N(c(), watchHistory.isSelected());
                    z10 = false;
                }
                if (payloads.contains("update_episode_num")) {
                    c().f40626c.setText(c().f40626c.getContext().getString(R$string.common_current_ep, String.valueOf(watchHistory.getEpisodeNum())));
                } else {
                    z11 = z10;
                }
                if (z11) {
                    f(i10, watchHistory);
                }
            }
        }
    }

    public RecentlyWatchedAdapter() {
        super(0L, 1, null);
        int c10 = bt.a.c((DeviceUtil.f48146a.G() - g.a(56.0f)) / 3.0f);
        this.f37745o = c10;
        this.f37746p = bt.a.c(c10 * 1.3396f);
        this.f37747q = z.f51786a.r();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void N(ItemRecentlyWatchedBinding itemRecentlyWatchedBinding, boolean z10) {
        int i10;
        ImageView imageView = null;
        if (this.f37749s) {
            ViewStubProxy viewStubProxy = itemRecentlyWatchedBinding.f40624a;
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
        ViewStubProxy checkBoxViewstub = itemRecentlyWatchedBinding.f40624a;
        Intrinsics.checkNotNullExpressionValue(checkBoxViewstub, "checkBoxViewstub");
        e0.b(checkBoxViewstub, 0, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void Q(ItemRecentlyWatchedBinding itemRecentlyWatchedBinding) {
        if (this.f37749s) {
            ViewStubProxy topBgViewstub = itemRecentlyWatchedBinding.f40631h;
            Intrinsics.checkNotNullExpressionValue(topBgViewstub, "topBgViewstub");
            e0.g(topBgViewstub);
            return;
        }
        ViewStubProxy topBgViewstub2 = itemRecentlyWatchedBinding.f40631h;
        Intrinsics.checkNotNullExpressionValue(topBgViewstub2, "topBgViewstub");
        e0.b(topBgViewstub2, 0, 1, null);
    }

    public final boolean J() {
        return this.f37749s;
    }

    @Nullable
    public final Function1<WatchHistory, Unit> K() {
        return this.f37748r;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: L */
    public void onViewAttachedToWindow(@NotNull BaseAdapter<WatchHistory>.ViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        WatchHistory d10 = holder.d();
        if (d10 != null) {
            ag.a.d(ag.a.f646a, "recently", d10.getShortPlayCode(), null, 0, null, null, null, null, null, 508, null);
        }
    }

    public final void M(@Nullable Function1<? super WatchHistory, Unit> function1) {
        this.f37748r = function1;
    }

    public final void O(boolean z10) {
        if (this.f37749s != z10) {
            r("updateEnterEditMode -> mEditMode(" + z10 + ')');
            this.f37749s = z10;
            if (!t()) {
                if (!z10) {
                    for (WatchHistory watchHistory : m()) {
                        watchHistory.setSelected(false);
                    }
                }
                notifyItemRangeChanged(0, getItemCount(), "update_checkbox");
            }
        }
    }

    public final void P(boolean z10) {
        r("updateSelectAllItems -> selectAll(" + z10 + ')');
        if (this.f37749s) {
            for (WatchHistory watchHistory : CollectionsKt.V0(m(), Math.min(24, m().size()))) {
                watchHistory.setSelected(z10);
            }
            notifyItemRangeChanged(0, getItemCount(), "update_checkbox");
        }
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
        return new b(this, (ItemRecentlyWatchedBinding) s(parent, R$layout.item_recently_watched));
    }
}
