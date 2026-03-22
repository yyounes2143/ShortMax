package com.startshorts.androidplayer.adapter.discover;

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
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: DiscoverBannerAdapter2.kt */
@Metadata
/* loaded from: classes6.dex */
public final class DiscoverBannerAdapter2 extends BaseBannerAdapter<DiscoverShorts> {
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    public static final a f37248l = new a(null);

    /* renamed from: m  reason: collision with root package name */
    private static final int f37249m;

    /* renamed from: n  reason: collision with root package name */
    private static final int f37250n;

    /* renamed from: o  reason: collision with root package name */
    private static final int f37251o;

    /* renamed from: p  reason: collision with root package name */
    private static final int f37252p;

    /* compiled from: DiscoverBannerAdapter2.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a() {
            return DiscoverBannerAdapter2.f37252p;
        }

        public final int b() {
            return DiscoverBannerAdapter2.f37251o;
        }

        public final int c() {
            return DiscoverBannerAdapter2.f37250n;
        }

        public final int d() {
            return DiscoverBannerAdapter2.f37249m;
        }

        private a() {
        }
    }

    static {
        int G = DeviceUtil.f48146a.G();
        f37249m = G;
        int c10 = bt.a.c(G * 0.87f);
        f37250n = c10;
        f37251o = G;
        f37252p = c10;
    }

    private final void r(DiscoverResource discoverResource, BaseViewHolder<DiscoverShorts> baseViewHolder) {
        baseViewHolder.d(R$id.resource_name_tv, discoverResource.getContentValueName());
        FrescoConfig frescoConfig = new FrescoConfig();
        frescoConfig.setUrl(discoverResource.getCoverId());
        frescoConfig.setOssWidth(f37251o);
        frescoConfig.setOssHeight(f37252p);
        frescoConfig.setResizeWidth(f37249m);
        frescoConfig.setResizeHeight(f37250n);
        frescoConfig.setPlaceholderResId(R$drawable.ic_banner_placeholder_2);
        Unit unit = Unit.f60915a;
        kk.f.f60747a.A((CustomFrescoView) baseViewHolder.findViewById(R$id.cover_iv), frescoConfig);
    }

    private final void t(DiscoverResource discoverResource, BaseViewHolder<DiscoverShorts> baseViewHolder) {
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
        frescoConfig.setOssWidth(f37251o);
        frescoConfig.setOssHeight(f37252p);
        frescoConfig.setResizeWidth(f37249m);
        frescoConfig.setResizeHeight(f37250n);
        frescoConfig.setPlaceholderResId(R$drawable.ic_banner_placeholder_2);
        Unit unit = Unit.f60915a;
        kk.f.f60747a.A((CustomFrescoView) baseViewHolder.findViewById(R$id.cover_iv), frescoConfig);
    }

    private final void u(DiscoverResource discoverResource, BaseViewHolder<DiscoverShorts> baseViewHolder) {
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
        frescoConfig.setOssWidth(f37251o);
        frescoConfig.setOssHeight(f37252p);
        frescoConfig.setResizeWidth(f37249m);
        frescoConfig.setResizeHeight(f37250n);
        frescoConfig.setPlaceholderResId(R$drawable.ic_banner_placeholder_2);
        Unit unit = Unit.f60915a;
        kk.f.f60747a.A((CustomFrescoView) baseViewHolder.findViewById(R$id.cover_iv), frescoConfig);
    }

    @Override // com.startshorts.androidplayer.ui.view.banner.BaseBannerAdapter
    public int e(int i10) {
        if (i10 != 2) {
            if (i10 != 3 && i10 != 4 && i10 != 5) {
                return R$layout.item_discover_banner_shorts_2;
            }
            return R$layout.item_discover_banner_h5_2;
        }
        return R$layout.item_discover_banner_brand_ad_2;
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
    /* renamed from: s */
    public void b(@NotNull BaseViewHolder<DiscoverShorts> holder, @NotNull DiscoverShorts data, int i10, int i11, int i12) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(data, "data");
        DiscoverResource bannerContent = data.getBannerContent();
        if (bannerContent == null) {
            return;
        }
        if (bannerContent.isShortsBanner()) {
            u(bannerContent, holder);
        } else if (!bannerContent.isActBanner() && !bannerContent.isH5WebViewBanner() && !bannerContent.isH5BrowserBanner()) {
            if (bannerContent.isBrandAdBanner()) {
                r(bannerContent, holder);
            }
        } else {
            t(bannerContent, holder);
        }
    }
}
