package com.startshorts.androidplayer.adapter.discover;

import android.widget.ImageView;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.bean.discover.DiscoverAct;
import com.startshorts.androidplayer.bean.discover.DiscoverResource;
import com.startshorts.androidplayer.bean.discover.DiscoverShorts;
import com.startshorts.androidplayer.bean.fresco.FrescoConfig;
import com.startshorts.androidplayer.bean.shorts.BaseShorts;
import com.startshorts.androidplayer.ui.view.banner.BaseBannerAdapter;
import com.startshorts.androidplayer.ui.view.banner.BaseViewHolder;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
import com.startshorts.androidplayer.utils.DeviceUtil;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: DiscoverBannerAdapter.kt */
@Metadata
@SourceDebugExtension({"SMAP\nDiscoverBannerAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverBannerAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,166:1\n216#2,2:167\n*S KotlinDebug\n*F\n+ 1 DiscoverBannerAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter\n*L\n45#1:167,2\n*E\n"})
/* loaded from: classes6.dex */
public final class DiscoverBannerAdapter extends BaseBannerAdapter<DiscoverShorts> {
    @NotNull

    /* renamed from: p  reason: collision with root package name */
    public static final a f37237p = new a(null);

    /* renamed from: q  reason: collision with root package name */
    private static final int f37238q;

    /* renamed from: r  reason: collision with root package name */
    private static final int f37239r;

    /* renamed from: s  reason: collision with root package name */
    private static final int f37240s;

    /* renamed from: t  reason: collision with root package name */
    private static final int f37241t;

    /* renamed from: u  reason: collision with root package name */
    private static final int f37242u;

    /* renamed from: v  reason: collision with root package name */
    private static final int f37243v;

    /* renamed from: l  reason: collision with root package name */
    private final float f37244l = fk.z.f51786a.r();
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    private final ConcurrentHashMap<Integer, BaseViewHolder<DiscoverShorts>> f37245m = new ConcurrentHashMap<>();

    /* renamed from: n  reason: collision with root package name */
    private boolean f37246n = true;

    /* renamed from: o  reason: collision with root package name */
    private int f37247o;

    /* compiled from: DiscoverBannerAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a() {
            return DiscoverBannerAdapter.f37243v;
        }

        public final int b() {
            return DiscoverBannerAdapter.f37242u;
        }

        public final int c() {
            return DiscoverBannerAdapter.f37241t;
        }

        private a() {
        }
    }

    static {
        int a10 = jk.g.a(386.0f);
        f37238q = a10;
        int G = DeviceUtil.f48146a.G() - (jk.g.a(44.0f) * 2);
        f37239r = G;
        int c10 = bt.a.c(G * 1.331f);
        f37240s = c10;
        if (c10 >= a10) {
            a10 = c10;
        }
        f37241t = a10;
        f37242u = G;
        f37243v = a10;
    }

    private final void q(DiscoverResource discoverResource, BaseViewHolder<DiscoverShorts> baseViewHolder) {
        baseViewHolder.d(R$id.resource_name_tv, discoverResource.getContentValueName());
        FrescoConfig frescoConfig = new FrescoConfig();
        frescoConfig.setUrl(discoverResource.getCoverId());
        frescoConfig.setOssWidth(f37242u);
        frescoConfig.setOssHeight(f37243v);
        frescoConfig.setResizeWidth(f37239r);
        frescoConfig.setResizeHeight(f37241t);
        frescoConfig.setPlaceholderResId(R$drawable.ic_banner_placeholder);
        frescoConfig.setCornerTransform(true);
        frescoConfig.setCornerRadius(this.f37244l);
        Unit unit = Unit.f60915a;
        kk.f.f60747a.A((CustomFrescoView) baseViewHolder.findViewById(R$id.cover_iv), frescoConfig);
    }

    private final void s(DiscoverResource discoverResource, BaseViewHolder<DiscoverShorts> baseViewHolder) {
        String str;
        if (discoverResource.isActBanner()) {
            DiscoverAct marketingCampaignResponse = discoverResource.getMarketingCampaignResponse();
            if (marketingCampaignResponse != null) {
                str = marketingCampaignResponse.getCampaignName();
            } else {
                str = null;
            }
        } else {
            str = "";
        }
        baseViewHolder.d(R$id.resource_name_tv, str);
        FrescoConfig frescoConfig = new FrescoConfig();
        frescoConfig.setUrl(discoverResource.getCoverId());
        frescoConfig.setOssWidth(f37242u);
        frescoConfig.setOssHeight(f37243v);
        frescoConfig.setResizeWidth(f37239r);
        frescoConfig.setResizeHeight(f37241t);
        frescoConfig.setPlaceholderResId(R$drawable.ic_banner_placeholder);
        frescoConfig.setCornerTransform(true);
        frescoConfig.setCornerRadius(this.f37244l);
        Unit unit = Unit.f60915a;
        kk.f.f60747a.A((CustomFrescoView) baseViewHolder.findViewById(R$id.cover_iv), frescoConfig);
    }

    private final void t(DiscoverResource discoverResource, BaseViewHolder<DiscoverShorts> baseViewHolder) {
        String str;
        int i10 = R$id.resource_name_tv;
        BaseShorts shortPlayResponse = discoverResource.getShortPlayResponse();
        if (shortPlayResponse != null) {
            str = shortPlayResponse.getShortPlayName();
        } else {
            str = null;
        }
        baseViewHolder.d(i10, str);
        FrescoConfig frescoConfig = new FrescoConfig();
        frescoConfig.setUrl(discoverResource.getCoverId());
        frescoConfig.setOssWidth(f37242u);
        frescoConfig.setOssHeight(f37243v);
        frescoConfig.setResizeWidth(f37239r);
        frescoConfig.setResizeHeight(f37241t);
        frescoConfig.setPlaceholderResId(R$drawable.ic_banner_placeholder);
        frescoConfig.setCornerTransform(true);
        frescoConfig.setCornerRadius(this.f37244l);
        Unit unit = Unit.f60915a;
        kk.f.f60747a.A((CustomFrescoView) baseViewHolder.findViewById(R$id.cover_iv), frescoConfig);
    }

    @Override // com.startshorts.androidplayer.ui.view.banner.BaseBannerAdapter
    public int e(int i10) {
        if (i10 != 2) {
            if (i10 != 3 && i10 != 4 && i10 != 5) {
                return R$layout.item_discover_banner_shorts;
            }
            return R$layout.item_discover_banner_h5;
        }
        return R$layout.item_discover_banner_brand_ad;
    }

    @Override // com.startshorts.androidplayer.ui.view.banner.BaseBannerAdapter
    protected int g(int i10) {
        DiscoverResource bannerContent = d().get(i10).getBannerContent();
        if (bannerContent == null) {
            return 1;
        }
        if (bannerContent.isBrandAdBanner()) {
            return 2;
        }
        if (bannerContent.isActBanner()) {
            return 3;
        }
        if (bannerContent.isShortsBanner()) {
            return 1;
        }
        if (bannerContent.isH5WebViewBanner()) {
            return 4;
        }
        if (!bannerContent.isH5BrowserBanner()) {
            return 1;
        }
        return 5;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.startshorts.androidplayer.ui.view.banner.BaseBannerAdapter
    /* renamed from: r */
    public void b(@NotNull BaseViewHolder<DiscoverShorts> holder, @NotNull DiscoverShorts data, int i10, int i11, int i12) {
        int i13;
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(data, "data");
        Iterator<Map.Entry<Integer, BaseViewHolder<DiscoverShorts>>> it = this.f37245m.entrySet().iterator();
        while (true) {
            if (it.hasNext()) {
                Map.Entry<Integer, BaseViewHolder<DiscoverShorts>> next = it.next();
                i13 = next.getKey().intValue();
                if (Intrinsics.areEqual(next.getValue(), holder)) {
                    break;
                }
            } else {
                i13 = -1;
                break;
            }
        }
        if (i13 != -1) {
            this.f37245m.remove(Integer.valueOf(i13));
        }
        this.f37245m.put(Integer.valueOf(i11), holder);
        if (this.f37246n) {
            this.f37246n = false;
            u(i11);
        }
        DiscoverResource bannerContent = data.getBannerContent();
        if (bannerContent == null) {
            return;
        }
        if (bannerContent.isShortsBanner()) {
            t(bannerContent, holder);
        } else if (!bannerContent.isActBanner() && !bannerContent.isH5WebViewBanner() && !bannerContent.isH5BrowserBanner()) {
            if (bannerContent.isBrandAdBanner()) {
                q(bannerContent, holder);
            }
        } else {
            s(bannerContent, holder);
        }
    }

    public final void u(int i10) {
        int i11;
        for (Map.Entry<Integer, BaseViewHolder<DiscoverShorts>> entry : this.f37245m.entrySet()) {
            ImageView imageView = (ImageView) entry.getValue().findViewById(R$id.play_iv);
            if (imageView != null) {
                if (entry.getKey().intValue() == i10) {
                    i11 = 0;
                } else {
                    i11 = 8;
                }
                imageView.setVisibility(i11);
            }
        }
        this.f37247o = i10;
    }
}
