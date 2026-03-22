package com.startshorts.androidplayer.adapter.discover;

import android.content.Context;
import android.view.ViewGroup;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$layout;
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
/* compiled from: DiscoverRectanglePictureAdapter.kt */
@Metadata
/* loaded from: classes6.dex */
public final class DiscoverRectanglePictureAdapter extends BaseAdapter<DiscoverShorts> {
    @NotNull

    /* renamed from: r  reason: collision with root package name */
    public static final a f37565r = new a(null);

    /* renamed from: o  reason: collision with root package name */
    private final int f37566o;

    /* renamed from: p  reason: collision with root package name */
    private final int f37567p;

    /* renamed from: q  reason: collision with root package name */
    private final float f37568q;

    /* compiled from: DiscoverRectanglePictureAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: DiscoverRectanglePictureAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    private final class b extends BaseAdapter<DiscoverShorts>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemDiscoverRectanglePictureBinding f37569g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ DiscoverRectanglePictureAdapter f37570h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(@NotNull DiscoverRectanglePictureAdapter discoverRectanglePictureAdapter, ItemDiscoverRectanglePictureBinding binding) {
            super(discoverRectanglePictureAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37570h = discoverRectanglePictureAdapter;
            this.f37569g = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemDiscoverRectanglePictureBinding c() {
            return this.f37569g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: k */
        public void f(int i10, @NotNull DiscoverShorts item) {
            Intrinsics.checkNotNullParameter(item, "item");
            super.f(i10, item);
            CustomFrescoView customFrescoView = c().f40266a;
            customFrescoView.setContentDescription(item.getShortPlayName() + ' ' + i10 + ' ' + item.getId());
            kk.f fVar = kk.f.f60747a;
            CustomFrescoView customFrescoView2 = c().f40266a;
            FrescoConfig frescoConfig = new FrescoConfig();
            DiscoverRectanglePictureAdapter discoverRectanglePictureAdapter = this.f37570h;
            frescoConfig.setUrl(item.getPicUrl());
            id.c cVar = id.c.f53397a;
            frescoConfig.setOssWidth(cVar.b());
            frescoConfig.setOssHeight(cVar.a());
            frescoConfig.setResizeWidth(discoverRectanglePictureAdapter.f37566o);
            frescoConfig.setResizeHeight(discoverRectanglePictureAdapter.f37567p);
            frescoConfig.setPlaceholderResId(R$drawable.ic_cover_placeholder);
            frescoConfig.setCornerTransform(true);
            frescoConfig.setCornerRadius(discoverRectanglePictureAdapter.f37568q);
            Unit unit = Unit.f60915a;
            fVar.A(customFrescoView2, frescoConfig);
            c().f40267b.setText(item.getShortPlayName());
            DiscoverModuleAdapter.C.i(c().f40268c, item.getPlayNum());
        }
    }

    public DiscoverRectanglePictureAdapter() {
        super(0L, 1, null);
        this.f37566o = jk.g.a(102.0f);
        this.f37567p = jk.g.a(136.0f);
        this.f37568q = fk.z.f51786a.r();
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
        return "DiscoverRectanglePictureAdapter";
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    @NotNull
    public BaseAdapter<DiscoverShorts>.ViewHolder x(@NotNull ViewGroup parent, int i10, int i11) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        return new b(this, (ItemDiscoverRectanglePictureBinding) s(parent, R$layout.item_discover_rectangle_picture));
    }
}
