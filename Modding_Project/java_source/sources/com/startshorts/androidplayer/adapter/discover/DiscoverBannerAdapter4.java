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
/* compiled from: DiscoverBannerAdapter4.kt */
@Metadata
/* loaded from: classes6.dex */
public final class DiscoverBannerAdapter4 extends BaseBannerAdapter<DiscoverShorts> {
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    public static final a f37263m = new a(null);

    /* renamed from: n  reason: collision with root package name */
    private static final int f37264n;

    /* renamed from: o  reason: collision with root package name */
    private static final int f37265o;

    /* renamed from: p  reason: collision with root package name */
    private static final int f37266p;

    /* renamed from: q  reason: collision with root package name */
    private static final int f37267q;

    /* renamed from: r  reason: collision with root package name */
    private static final int f37268r;

    /* renamed from: s  reason: collision with root package name */
    private static final int f37269s;

    /* renamed from: l  reason: collision with root package name */
    private final float f37270l = fk.z.f51786a.r();

    /* compiled from: DiscoverBannerAdapter4.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a() {
            return DiscoverBannerAdapter4.f37269s;
        }

        public final int b() {
            return DiscoverBannerAdapter4.f37268r;
        }

        public final int c() {
            return DiscoverBannerAdapter4.f37267q;
        }

        public final int d() {
            return DiscoverBannerAdapter4.f37265o;
        }

        private a() {
        }
    }

    static {
        int a10 = jk.g.a(150.0f);
        f37264n = a10;
        int G = DeviceUtil.f48146a.G() - (jk.g.a(34.0f) * 2);
        f37265o = G;
        int c10 = bt.a.c(G * 0.468f);
        f37266p = c10;
        if (c10 >= a10) {
            a10 = c10;
        }
        f37267q = a10;
        f37268r = G;
        f37269s = a10;
    }

    private final void r(DiscoverResource discoverResource, BaseViewHolder<DiscoverShorts> baseViewHolder) {
        baseViewHolder.d(R$id.resource_name_tv, discoverResource.getContentValueName());
        FrescoConfig frescoConfig = new FrescoConfig();
        frescoConfig.setUrl(discoverResource.getCoverId());
        frescoConfig.setOssWidth(f37268r);
        frescoConfig.setOssHeight(f37269s);
        frescoConfig.setResizeWidth(f37265o);
        frescoConfig.setResizeHeight(f37267q);
        frescoConfig.setPlaceholderResId(R$drawable.ic_banner_placeholder);
        frescoConfig.setCornerTransform(true);
        frescoConfig.setCornerRadius(this.f37270l);
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
        frescoConfig.setOssWidth(f37268r);
        frescoConfig.setOssHeight(f37269s);
        frescoConfig.setResizeWidth(f37265o);
        frescoConfig.setResizeHeight(f37267q);
        frescoConfig.setPlaceholderResId(R$drawable.ic_banner_placeholder);
        frescoConfig.setCornerTransform(true);
        frescoConfig.setCornerRadius(this.f37270l);
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
        frescoConfig.setOssWidth(f37268r);
        frescoConfig.setOssHeight(f37269s);
        frescoConfig.setResizeWidth(f37265o);
        frescoConfig.setResizeHeight(f37267q);
        frescoConfig.setPlaceholderResId(R$drawable.ic_banner_placeholder);
        frescoConfig.setCornerTransform(true);
        frescoConfig.setCornerRadius(this.f37270l);
        Unit unit = Unit.f60915a;
        kk.f.f60747a.A((CustomFrescoView) baseViewHolder.findViewById(R$id.cover_iv), frescoConfig);
    }

    @Override // com.startshorts.androidplayer.ui.view.banner.BaseBannerAdapter
    public int e(int i10) {
        if (i10 != 2) {
            if (i10 != 3 && i10 != 4 && i10 != 5) {
                return R$layout.item_discover_banner_shorts_3;
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
