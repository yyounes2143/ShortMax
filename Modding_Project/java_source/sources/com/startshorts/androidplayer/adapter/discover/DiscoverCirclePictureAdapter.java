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
import com.startshorts.androidplayer.databinding.ItemDiscoverCirclePictureBinding;
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
/* compiled from: DiscoverCirclePictureAdapter.kt */
@Metadata
/* loaded from: classes6.dex */
public class DiscoverCirclePictureAdapter extends BaseAdapter<DiscoverShorts> {
    @NotNull

    /* renamed from: q  reason: collision with root package name */
    public static final b f37322q = new b(null);

    /* renamed from: o  reason: collision with root package name */
    private final int f37323o;

    /* renamed from: p  reason: collision with root package name */
    private final int f37324p;

    /* compiled from: DiscoverCirclePictureAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    private final class a extends BaseAdapter<DiscoverShorts>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemDiscoverCirclePictureBinding f37325g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ DiscoverCirclePictureAdapter f37326h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(@NotNull DiscoverCirclePictureAdapter discoverCirclePictureAdapter, ItemDiscoverCirclePictureBinding binding) {
            super(discoverCirclePictureAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37326h = discoverCirclePictureAdapter;
            this.f37325g = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemDiscoverCirclePictureBinding c() {
            return this.f37325g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: k */
        public void f(int i10, @NotNull DiscoverShorts item) {
            Intrinsics.checkNotNullParameter(item, "item");
            super.f(i10, item);
            CustomFrescoView customFrescoView = c().f39997a;
            customFrescoView.setContentDescription(this.itemView.getContext().getString(R$string.banner_pic) + i10 + ' ' + item.getId());
            kk.f fVar = kk.f.f60747a;
            CustomFrescoView customFrescoView2 = c().f39997a;
            FrescoConfig frescoConfig = new FrescoConfig();
            DiscoverCirclePictureAdapter discoverCirclePictureAdapter = this.f37326h;
            frescoConfig.setUrl(item.getPicUrl());
            id.c cVar = id.c.f53397a;
            frescoConfig.setOssWidth(cVar.b());
            frescoConfig.setOssHeight(cVar.a());
            frescoConfig.setResizeWidth(discoverCirclePictureAdapter.f37323o);
            frescoConfig.setResizeHeight(discoverCirclePictureAdapter.f37324p);
            frescoConfig.setPlaceholderResId(R$drawable.ic_cover_placeholder);
            int i11 = 1;
            frescoConfig.setCircleCrop(true);
            Unit unit = Unit.f60915a;
            fVar.A(customFrescoView2, frescoConfig);
            c().f40001e.setText(item.getShortPlayName());
            if (item.getEpisodeNum() >= 0 && item.getTotalEpisodes() > 0) {
                BaseTextView baseTextView = c().f39998b;
                Context context = c().f39998b.getContext();
                int i12 = R$string.common_current_ep;
                if (item.getEpisodeNum() != 0) {
                    i11 = item.getEpisodeNum();
                }
                baseTextView.setText(context.getString(i12, String.valueOf(i11)));
                c().f40004h.setText(c().f40004h.getContext().getString(R$string.common_total_ep, String.valueOf(item.getTotalEpisodes())));
            }
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: l */
        public void g(int i10, @Nullable DiscoverShorts discoverShorts, @NotNull List<Object> payloads) {
            Intrinsics.checkNotNullParameter(payloads, "payloads");
            if (discoverShorts != null && !payloads.contains("ignore_refresh")) {
                if (payloads.contains("update_episode_num")) {
                    c().f39998b.setText(c().f39998b.getContext().getString(R$string.common_current_ep, String.valueOf(discoverShorts.getEpisodeNum())));
                    return;
                }
                h(discoverShorts);
                f(i10, discoverShorts);
            }
        }
    }

    /* compiled from: DiscoverCirclePictureAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class b {
        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private b() {
        }
    }

    public DiscoverCirclePictureAdapter() {
        super(0L, 1, null);
        this.f37323o = jk.g.a(140.0f);
        this.f37324p = jk.g.a(140.0f);
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
        return "DiscoverCirclePictureAdapter";
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    @NotNull
    public BaseAdapter<DiscoverShorts>.ViewHolder x(@NotNull ViewGroup parent, int i10, int i11) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        return new a(this, (ItemDiscoverCirclePictureBinding) s(parent, R$layout.item_discover_circle_picture));
    }
}
