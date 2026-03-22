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
/* compiled from: DiscoverBannerAdapter3.kt */
@Metadata
@SourceDebugExtension({"SMAP\nDiscoverBannerAdapter3.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverBannerAdapter3.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter3\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,175:1\n216#2,2:176\n*S KotlinDebug\n*F\n+ 1 DiscoverBannerAdapter3.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter3\n*L\n49#1:176,2\n*E\n"})
/* loaded from: classes6.dex */
public class DiscoverBannerAdapter3 extends BaseBannerAdapter<DiscoverShorts> {
    @NotNull

    /* renamed from: p  reason: collision with root package name */
    public static final a f37253p = new a(null);

    /* renamed from: q  reason: collision with root package name */
    private static final int f37254q;

    /* renamed from: r  reason: collision with root package name */
    private static final int f37255r;

    /* renamed from: s  reason: collision with root package name */
    private static final int f37256s;

    /* renamed from: t  reason: collision with root package name */
    private static final int f37257t;

    /* renamed from: u  reason: collision with root package name */
    private static final int f37258u;

    /* renamed from: l  reason: collision with root package name */
    private final float f37259l = fk.z.f51786a.r();
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    private final ConcurrentHashMap<Integer, BaseViewHolder<DiscoverShorts>> f37260m = new ConcurrentHashMap<>();

    /* renamed from: n  reason: collision with root package name */
    private boolean f37261n = true;

    /* renamed from: o  reason: collision with root package name */
    private int f37262o;

    /* compiled from: DiscoverBannerAdapter3.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a() {
            return DiscoverBannerAdapter3.f37258u;
        }

        public final int b() {
            return DiscoverBannerAdapter3.f37257t;
        }

        public final int c() {
            return DiscoverBannerAdapter3.f37256s;
        }

        public final int d() {
            return DiscoverBannerAdapter3.f37254q;
        }

        private a() {
        }
    }

    static {
        int c10;
        int G = DeviceUtil.f48146a.G() - (jk.g.a(56.0f) * 2);
        f37254q = G;
        if (qe.a.f65321a.value().getFixedBannerHeightEnable()) {
            c10 = jk.g.a(330.0f);
        } else {
            c10 = bt.a.c(G * 1.3308f);
        }
        f37255r = c10;
        f37256s = c10;
        f37257t = G;
        f37258u = c10;
    }

    private final void r(DiscoverResource discoverResource, BaseViewHolder<DiscoverShorts> baseViewHolder) {
        baseViewHolder.d(R$id.resource_name_tv, discoverResource.getContentValueName());
        CustomFrescoView customFrescoView = (CustomFrescoView) baseViewHolder.findViewById(R$id.cover_iv);
        customFrescoView.setContentDescription(discoverResource.getContentValueName() + ' ' + discoverResource.getCoverId() + ' ' + discoverResource.getContentType());
        kk.f fVar = kk.f.f60747a;
        FrescoConfig frescoConfig = new FrescoConfig();
        frescoConfig.setUrl(discoverResource.getCoverId());
        frescoConfig.setOssWidth(f37257t);
        frescoConfig.setOssHeight(f37258u);
        frescoConfig.setResizeWidth(f37254q);
        frescoConfig.setResizeHeight(f37256s);
        frescoConfig.setPlaceholderResId(R$drawable.ic_banner_placeholder);
        frescoConfig.setCornerTransform(true);
        frescoConfig.setCornerRadius(this.f37259l);
        Unit unit = Unit.f60915a;
        fVar.A(customFrescoView, frescoConfig);
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
        CustomFrescoView customFrescoView = (CustomFrescoView) baseViewHolder.findViewById(R$id.cover_iv);
        customFrescoView.setContentDescription(discoverResource.getContentValueName() + ' ' + discoverResource.getCoverId() + ' ' + discoverResource.getContentType());
        kk.f fVar = kk.f.f60747a;
        FrescoConfig frescoConfig = new FrescoConfig();
        frescoConfig.setUrl(discoverResource.getCoverId());
        frescoConfig.setOssWidth(f37257t);
        frescoConfig.setOssHeight(f37258u);
        frescoConfig.setResizeWidth(f37254q);
        frescoConfig.setResizeHeight(f37256s);
        frescoConfig.setPlaceholderResId(R$drawable.ic_banner_placeholder);
        frescoConfig.setCornerTransform(true);
        frescoConfig.setCornerRadius(this.f37259l);
        Unit unit = Unit.f60915a;
        fVar.A(customFrescoView, frescoConfig);
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
        CustomFrescoView customFrescoView = (CustomFrescoView) baseViewHolder.findViewById(R$id.cover_iv);
        customFrescoView.setContentDescription(discoverResource.getContentValueName() + ' ' + discoverResource.getCoverId() + ' ' + discoverResource.getContentType());
        kk.f fVar = kk.f.f60747a;
        FrescoConfig frescoConfig = new FrescoConfig();
        frescoConfig.setUrl(discoverResource.getCoverId());
        frescoConfig.setOssWidth(f37257t);
        frescoConfig.setOssHeight(f37258u);
        frescoConfig.setResizeWidth(f37254q);
        frescoConfig.setResizeHeight(f37256s);
        frescoConfig.setPlaceholderResId(R$drawable.ic_banner_placeholder);
        frescoConfig.setCornerTransform(true);
        frescoConfig.setCornerRadius(this.f37259l);
        Unit unit = Unit.f60915a;
        fVar.A(customFrescoView, frescoConfig);
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
    /* renamed from: s */
    public void b(@NotNull BaseViewHolder<DiscoverShorts> holder, @NotNull DiscoverShorts data, int i10, int i11, int i12) {
        int i13;
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(data, "data");
        Iterator<Map.Entry<Integer, BaseViewHolder<DiscoverShorts>>> it = this.f37260m.entrySet().iterator();
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
            this.f37260m.remove(Integer.valueOf(i13));
        }
        this.f37260m.put(Integer.valueOf(i11), holder);
        if (this.f37261n) {
            this.f37261n = false;
            v(i11);
        }
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

    public final void v(int i10) {
        int i11;
        for (Map.Entry<Integer, BaseViewHolder<DiscoverShorts>> entry : this.f37260m.entrySet()) {
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
        this.f37262o = i10;
    }
}
