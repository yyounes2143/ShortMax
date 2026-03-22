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
import com.startshorts.androidplayer.databinding.ItemDiscoverHorizontalImageIconBinding;
import com.startshorts.androidplayer.ui.activity.MainActivity;
import com.startshorts.androidplayer.ui.fragment.discover.DiscoverTabFragment;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DiscoverHorizontalImageIconAdapter.kt */
@Metadata
/* loaded from: classes6.dex */
public final class DiscoverHorizontalImageIconAdapter extends BaseAdapter<DiscoverShorts> {
    @NotNull

    /* renamed from: q  reason: collision with root package name */
    public static final a f37346q = new a(null);

    /* renamed from: o  reason: collision with root package name */
    private final int f37347o;

    /* renamed from: p  reason: collision with root package name */
    private final int f37348p;

    /* compiled from: DiscoverHorizontalImageIconAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: DiscoverHorizontalImageIconAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    private final class b extends BaseAdapter<DiscoverShorts>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemDiscoverHorizontalImageIconBinding f37349g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ DiscoverHorizontalImageIconAdapter f37350h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(@NotNull DiscoverHorizontalImageIconAdapter discoverHorizontalImageIconAdapter, ItemDiscoverHorizontalImageIconBinding binding) {
            super(discoverHorizontalImageIconAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37350h = discoverHorizontalImageIconAdapter;
            this.f37349g = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemDiscoverHorizontalImageIconBinding c() {
            return this.f37349g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: k */
        public void f(int i10, @NotNull DiscoverShorts item) {
            Intrinsics.checkNotNullParameter(item, "item");
            super.f(i10, item);
            CustomFrescoView customFrescoView = c().f40029a;
            customFrescoView.setContentDescription(this.itemView.getContext().getString(R$string.banner_pic) + i10 + ' ' + item.getId());
            kk.f fVar = kk.f.f60747a;
            CustomFrescoView customFrescoView2 = c().f40029a;
            FrescoConfig frescoConfig = new FrescoConfig();
            DiscoverHorizontalImageIconAdapter discoverHorizontalImageIconAdapter = this.f37350h;
            frescoConfig.setUrl(item.getPicUrl());
            id.c cVar = id.c.f53397a;
            frescoConfig.setOssWidth(cVar.b());
            frescoConfig.setOssHeight(cVar.a());
            frescoConfig.setResizeWidth(discoverHorizontalImageIconAdapter.f37347o);
            frescoConfig.setResizeHeight(discoverHorizontalImageIconAdapter.f37348p);
            frescoConfig.setPlaceholderResId(R$drawable.ic_cover_placeholder);
            frescoConfig.setCornerRadius(fk.z.f51786a.r());
            int i11 = 1;
            frescoConfig.setCornerTransform(true);
            Unit unit = Unit.f60915a;
            fVar.A(customFrescoView2, frescoConfig);
            c().f40033e.setText(item.getShortPlayName());
            DiscoverModuleAdapter.C.i(c().f40037i, item.getPlayNum());
            if (item.getEpisodeNum() >= 0 && item.getTotalEpisodes() > 0) {
                BaseTextView baseTextView = c().f40030b;
                Context context = c().f40030b.getContext();
                int i12 = R$string.common_current_ep;
                if (item.getEpisodeNum() != 0) {
                    i11 = item.getEpisodeNum();
                }
                baseTextView.setText(context.getString(i12, String.valueOf(i11)));
                c().f40036h.setText(c().f40036h.getContext().getString(R$string.common_total_ep, String.valueOf(item.getTotalEpisodes())));
            }
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: l */
        public void g(int i10, @Nullable DiscoverShorts discoverShorts, @NotNull List<Object> payloads) {
            Intrinsics.checkNotNullParameter(payloads, "payloads");
            if (discoverShorts != null && !payloads.contains("ignore_refresh")) {
                if (payloads.contains("update_episode_num")) {
                    c().f40030b.setText(c().f40030b.getContext().getString(R$string.common_current_ep, String.valueOf(discoverShorts.getEpisodeNum())));
                    return;
                }
                h(discoverShorts);
                f(i10, discoverShorts);
            }
        }
    }

    public DiscoverHorizontalImageIconAdapter() {
        super(0L, 1, null);
        this.f37347o = jk.g.a(106.0f);
        this.f37348p = jk.g.a(141.0f);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: G */
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
        return "DiscoverHorizontalImageIconAdapter";
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    @NotNull
    public BaseAdapter<DiscoverShorts>.ViewHolder x(@NotNull ViewGroup parent, int i10, int i11) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        return new b(this, (ItemDiscoverHorizontalImageIconBinding) s(parent, R$layout.item_discover_horizontal_image_icon));
    }
}
