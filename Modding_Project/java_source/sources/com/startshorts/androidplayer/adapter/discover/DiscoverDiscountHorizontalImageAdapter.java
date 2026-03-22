package com.startshorts.androidplayer.adapter.discover;

import android.content.Context;
import android.view.ViewGroup;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.adapter.base.BaseAdapter;
import com.startshorts.androidplayer.bean.discover.DiscoverModule;
import com.startshorts.androidplayer.bean.discover.DiscoverShorts;
import com.startshorts.androidplayer.bean.discover.DiscoverTab;
import com.startshorts.androidplayer.bean.fresco.FrescoConfig;
import com.startshorts.androidplayer.databinding.ItemDiscoverDiscountRectanglePictureBinding;
import com.startshorts.androidplayer.ui.activity.MainActivity;
import com.startshorts.androidplayer.ui.fragment.discover.DiscoverTabFragment;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
import com.startshorts.androidplayer.utils.DeviceUtil;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DiscoverDiscountHorizontalImageAdapter.kt */
@Metadata
/* loaded from: classes6.dex */
public final class DiscoverDiscountHorizontalImageAdapter extends BaseAdapter<DiscoverShorts> {
    @NotNull

    /* renamed from: s  reason: collision with root package name */
    public static final a f37333s = new a(null);
    @NotNull

    /* renamed from: o  reason: collision with root package name */
    private final DiscoverModule f37334o;

    /* renamed from: p  reason: collision with root package name */
    private final int f37335p;

    /* renamed from: q  reason: collision with root package name */
    private final int f37336q;

    /* renamed from: r  reason: collision with root package name */
    private final float f37337r;

    /* compiled from: DiscoverDiscountHorizontalImageAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: DiscoverDiscountHorizontalImageAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    private final class b extends BaseAdapter<DiscoverShorts>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemDiscoverDiscountRectanglePictureBinding f37338g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ DiscoverDiscountHorizontalImageAdapter f37339h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(@NotNull DiscoverDiscountHorizontalImageAdapter discoverDiscountHorizontalImageAdapter, ItemDiscoverDiscountRectanglePictureBinding binding) {
            super(discoverDiscountHorizontalImageAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37339h = discoverDiscountHorizontalImageAdapter;
            this.f37338g = binding;
        }

        private final void m(DiscoverShorts discoverShorts) {
            long j10;
            String str;
            BaseTextView baseTextView = c().f40022b;
            DiscoverDiscountHorizontalImageAdapter discoverDiscountHorizontalImageAdapter = this.f37339h;
            Long validStartTime = discoverDiscountHorizontalImageAdapter.H().getValidStartTime();
            long j11 = 0;
            if (validStartTime != null) {
                j10 = validStartTime.longValue();
            } else {
                j10 = 0;
            }
            Long validEndTime = discoverDiscountHorizontalImageAdapter.H().getValidEndTime();
            if (validEndTime != null) {
                j11 = validEndTime.longValue();
            }
            DeviceUtil deviceUtil = DeviceUtil.f48146a;
            if (deviceUtil.K() >= j10 && deviceUtil.K() <= j11) {
                baseTextView.setVisibility(0);
            } else {
                baseTextView.setVisibility(8);
            }
            if (discoverShorts != null) {
                str = discoverShorts.getShortPlaySubscript();
            } else {
                str = null;
            }
            baseTextView.setText(String.valueOf(str));
            baseTextView.setSelected(true);
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemDiscoverDiscountRectanglePictureBinding c() {
            return this.f37338g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: k */
        public void f(int i10, @NotNull DiscoverShorts item) {
            Intrinsics.checkNotNullParameter(item, "item");
            super.f(i10, item);
            CustomFrescoView customFrescoView = c().f40021a;
            customFrescoView.setContentDescription(item.getShortPlayName() + ' ' + i10 + ' ' + item.getId());
            kk.f fVar = kk.f.f60747a;
            CustomFrescoView customFrescoView2 = c().f40021a;
            FrescoConfig frescoConfig = new FrescoConfig();
            DiscoverDiscountHorizontalImageAdapter discoverDiscountHorizontalImageAdapter = this.f37339h;
            frescoConfig.setUrl(item.getPicUrl());
            id.c cVar = id.c.f53397a;
            frescoConfig.setOssWidth(cVar.b());
            frescoConfig.setOssHeight(cVar.a());
            frescoConfig.setResizeWidth(discoverDiscountHorizontalImageAdapter.f37335p);
            frescoConfig.setResizeHeight(discoverDiscountHorizontalImageAdapter.f37336q);
            frescoConfig.setPlaceholderResId(R$drawable.ic_cover_placeholder);
            frescoConfig.setCornerTransform(true);
            frescoConfig.setCornerRadius(discoverDiscountHorizontalImageAdapter.f37337r);
            Unit unit = Unit.f60915a;
            fVar.A(customFrescoView2, frescoConfig);
            c().f40023c.setText(item.getShortPlayName());
            m(item);
            DiscoverModuleAdapter.C.i(c().f40024d, item.getPlayNum());
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: l */
        public void g(int i10, @Nullable DiscoverShorts discoverShorts, @NotNull List<Object> payloads) {
            Intrinsics.checkNotNullParameter(payloads, "payloads");
            if (discoverShorts != null && !payloads.contains("ignore_refresh")) {
                if (payloads.contains("update_discount_tag")) {
                    m(discoverShorts);
                    return;
                }
                h(discoverShorts);
                f(i10, discoverShorts);
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DiscoverDiscountHorizontalImageAdapter(@NotNull DiscoverModule discoverModel) {
        super(0L, 1, null);
        Intrinsics.checkNotNullParameter(discoverModel, "discoverModel");
        this.f37334o = discoverModel;
        this.f37335p = jk.g.a(106.0f);
        this.f37336q = jk.g.a(141.0f);
        this.f37337r = fk.z.f51786a.r();
    }

    @NotNull
    public final DiscoverModule H() {
        return this.f37334o;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: I */
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
        return "DiscoverDiscountHorizontalImageAdapter";
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    @NotNull
    public BaseAdapter<DiscoverShorts>.ViewHolder x(@NotNull ViewGroup parent, int i10, int i11) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        return new b(this, (ItemDiscoverDiscountRectanglePictureBinding) s(parent, R$layout.item_discover_discount_rectangle_picture));
    }
}
