package com.startshorts.androidplayer.adapter.discover;

import android.content.Context;
import android.view.ViewGroup;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.adapter.base.BaseAdapter;
import com.startshorts.androidplayer.bean.discover.DiscoverShorts;
import com.startshorts.androidplayer.bean.discover.DiscoverTab;
import com.startshorts.androidplayer.bean.fresco.FrescoConfig;
import com.startshorts.androidplayer.databinding.ItemDiscoverRectanglePictureBinding;
import com.startshorts.androidplayer.ui.activity.MainActivity;
import com.startshorts.androidplayer.ui.fragment.discover.DiscoverTabFragment;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: DiscoverHorizontalImageAdapter.kt */
@Metadata
/* loaded from: classes6.dex */
public final class DiscoverHorizontalImageAdapter extends BaseAdapter<DiscoverShorts> {
    @NotNull

    /* renamed from: r  reason: collision with root package name */
    public static final a f37340r = new a(null);

    /* renamed from: o  reason: collision with root package name */
    private final int f37341o;

    /* renamed from: p  reason: collision with root package name */
    private final int f37342p;

    /* renamed from: q  reason: collision with root package name */
    private final float f37343q;

    /* compiled from: DiscoverHorizontalImageAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: DiscoverHorizontalImageAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    private final class b extends BaseAdapter<DiscoverShorts>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemDiscoverRectanglePictureBinding f37344g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ DiscoverHorizontalImageAdapter f37345h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(@NotNull DiscoverHorizontalImageAdapter discoverHorizontalImageAdapter, ItemDiscoverRectanglePictureBinding binding) {
            super(discoverHorizontalImageAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37345h = discoverHorizontalImageAdapter;
            this.f37344g = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemDiscoverRectanglePictureBinding c() {
            return this.f37344g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: k */
        public void f(int i10, @NotNull DiscoverShorts item) {
            Intrinsics.checkNotNullParameter(item, "item");
            super.f(i10, item);
            CustomFrescoView customFrescoView = c().f40266a;
            customFrescoView.setContentDescription(this.itemView.getContext().getString(R$string.banner_pic) + i10 + ' ' + item.getId());
            kk.f fVar = kk.f.f60747a;
            CustomFrescoView customFrescoView2 = c().f40266a;
            FrescoConfig frescoConfig = new FrescoConfig();
            DiscoverHorizontalImageAdapter discoverHorizontalImageAdapter = this.f37345h;
            frescoConfig.setUrl(item.getPicUrl());
            id.c cVar = id.c.f53397a;
            frescoConfig.setOssWidth(cVar.b());
            frescoConfig.setOssHeight(cVar.a());
            frescoConfig.setResizeWidth(discoverHorizontalImageAdapter.f37341o);
            frescoConfig.setResizeHeight(discoverHorizontalImageAdapter.f37342p);
            frescoConfig.setPlaceholderResId(R$drawable.ic_cover_placeholder);
            frescoConfig.setCornerTransform(true);
            frescoConfig.setCornerRadius(discoverHorizontalImageAdapter.f37343q);
            Unit unit = Unit.f60915a;
            fVar.A(customFrescoView2, frescoConfig);
            c().f40267b.setText(item.getShortPlayName());
            DiscoverModuleAdapter.C.i(c().f40268c, item.getPlayNum());
        }
    }

    public DiscoverHorizontalImageAdapter() {
        super(0L, 1, null);
        this.f37341o = jk.g.a(106.0f);
        this.f37342p = jk.g.a(141.0f);
        this.f37343q = fk.z.f51786a.r();
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
            ag.a.c(ag.a.f646a, d10, holder.getLayoutPosition(), 0, discoverTab, null, null, null, null, 244, null);
        }
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    public boolean p() {
        return false;
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    @NotNull
    public String q() {
        return "DiscoverHorizontalImageAdapter";
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    @NotNull
    public BaseAdapter<DiscoverShorts>.ViewHolder x(@NotNull ViewGroup parent, int i10, int i11) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        return new b(this, (ItemDiscoverRectanglePictureBinding) s(parent, R$layout.item_discover_rectangle_picture));
    }
}
