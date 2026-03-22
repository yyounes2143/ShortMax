package com.startshorts.androidplayer.adapter.discover;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.adapter.base.BaseAdapter;
import com.startshorts.androidplayer.bean.discover.DiscoverShorts;
import com.startshorts.androidplayer.bean.discover.DiscoverTab;
import com.startshorts.androidplayer.bean.fresco.FrescoConfig;
import com.startshorts.androidplayer.databinding.ItemDiscoverComingSoonBinding;
import com.startshorts.androidplayer.ui.activity.MainActivity;
import com.startshorts.androidplayer.ui.fragment.discover.DiscoverTabFragment;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.discover.ComingSoonChip;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: DiscoverComingSoonAdapter.kt */
@Metadata
/* loaded from: classes6.dex */
public final class DiscoverComingSoonAdapter extends BaseAdapter<DiscoverShorts> {
    @NotNull

    /* renamed from: r  reason: collision with root package name */
    public static final b f37327r = new b(null);

    /* renamed from: o  reason: collision with root package name */
    private final int f37328o;

    /* renamed from: p  reason: collision with root package name */
    private final int f37329p;

    /* renamed from: q  reason: collision with root package name */
    private final float f37330q;

    /* compiled from: DiscoverComingSoonAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    private final class a extends BaseAdapter<DiscoverShorts>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemDiscoverComingSoonBinding f37331g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ DiscoverComingSoonAdapter f37332h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(@NotNull DiscoverComingSoonAdapter discoverComingSoonAdapter, ItemDiscoverComingSoonBinding binding) {
            super(discoverComingSoonAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37332h = discoverComingSoonAdapter;
            this.f37331g = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemDiscoverComingSoonBinding c() {
            return this.f37331g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: k */
        public void f(int i10, @NotNull DiscoverShorts item) {
            Intrinsics.checkNotNullParameter(item, "item");
            super.f(i10, item);
            CustomFrescoView customFrescoView = c().f40013b;
            customFrescoView.setContentDescription(this.itemView.getContext().getString(R$string.banner_pic) + i10 + ' ' + item.getId());
            kk.f fVar = kk.f.f60747a;
            CustomFrescoView customFrescoView2 = c().f40013b;
            FrescoConfig frescoConfig = new FrescoConfig();
            DiscoverComingSoonAdapter discoverComingSoonAdapter = this.f37332h;
            frescoConfig.setUrl(item.getPicUrl());
            id.c cVar = id.c.f53397a;
            frescoConfig.setOssWidth(cVar.b());
            frescoConfig.setOssHeight(cVar.a());
            frescoConfig.setResizeWidth(discoverComingSoonAdapter.f37328o);
            frescoConfig.setResizeHeight(discoverComingSoonAdapter.f37329p);
            frescoConfig.setPlaceholderResId(R$drawable.ic_cover_placeholder);
            frescoConfig.setCornerTransform(true);
            frescoConfig.setCornerRadius(discoverComingSoonAdapter.f37330q);
            Unit unit = Unit.f60915a;
            fVar.A(customFrescoView2, frescoConfig);
            ze.c cVar2 = ze.c.f71647a;
            View root = c().getRoot();
            BaseTextView shortsNameTv = c().f40015d;
            Intrinsics.checkNotNullExpressionValue(shortsNameTv, "shortsNameTv");
            BaseTextView dateTv = c().f40014c;
            Intrinsics.checkNotNullExpressionValue(dateTv, "dateTv");
            ComingSoonChip comingSoonCp = c().f40012a;
            Intrinsics.checkNotNullExpressionValue(comingSoonCp, "comingSoonCp");
            ze.c.f(cVar2, item, root, shortsNameTv, dateTv, comingSoonCp, null, Integer.valueOf(i10 + 1), null, false, 416, null);
        }
    }

    /* compiled from: DiscoverComingSoonAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class b {
        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private b() {
        }
    }

    public DiscoverComingSoonAdapter() {
        super(0L, 1, null);
        this.f37328o = jk.g.a(106.0f);
        this.f37329p = jk.g.a(141.0f);
        this.f37330q = fk.z.f51786a.r();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: H */
    public void onViewAttachedToWindow(@NotNull BaseAdapter<DiscoverShorts>.ViewHolder holder) {
        MainActivity mainActivity;
        DiscoverTab discoverTab;
        DiscoverTabFragment f02;
        Intrinsics.checkNotNullParameter(holder, "holder");
        DiscoverShorts d10 = holder.d();
        if (d10 != null) {
            Context context = holder.itemView.getContext();
            if (context instanceof MainActivity) {
                mainActivity = (MainActivity) context;
            } else {
                mainActivity = null;
            }
            if (mainActivity != null && (f02 = mainActivity.f0()) != null) {
                discoverTab = f02.H0();
            } else {
                discoverTab = null;
            }
            ag.a.c(ag.a.f646a, d10, holder.getLayoutPosition(), 4, discoverTab, null, null, null, null, 240, null);
        }
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    public boolean p() {
        return false;
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    @NotNull
    public String q() {
        return "DiscoverComingSoonAdapter";
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    @NotNull
    public BaseAdapter<DiscoverShorts>.ViewHolder x(@NotNull ViewGroup parent, int i10, int i11) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        return new a(this, (ItemDiscoverComingSoonBinding) s(parent, R$layout.item_discover_coming_soon));
    }
}
