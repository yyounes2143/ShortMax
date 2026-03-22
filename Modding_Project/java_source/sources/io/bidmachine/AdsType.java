package io.bidmachine;

import android.graphics.Point;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.explorestack.protobuf.Any;
import com.explorestack.protobuf.Message;
import com.explorestack.protobuf.adcom.Ad;
import com.explorestack.protobuf.adcom.ApiFramework;
import com.explorestack.protobuf.adcom.NativeDataAssetType;
import com.explorestack.protobuf.adcom.NativeImageAssetType;
import com.explorestack.protobuf.adcom.Placement;
import com.explorestack.protobuf.adcom.PlacementPosition;
import com.explorestack.protobuf.adcom.SizeUnit;
import com.explorestack.protobuf.adcom.VideoCreativeType;
import com.explorestack.protobuf.adcom.VideoPlacementType;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import io.bidmachine.AdContentType;
import io.bidmachine.AdPlacementConfig;
import io.bidmachine.AdsType;
import io.bidmachine.ApiRequest;
import io.bidmachine.Constants;
import io.bidmachine.ContextProvider;
import io.bidmachine.MediaAssetType;
import io.bidmachine.NetworkAdUnit;
import io.bidmachine.NetworkConfig;
import io.bidmachine.banner.BannerSize;
import io.bidmachine.protobuf.headerbidding.HeaderBiddingAd;
import io.bidmachine.protobuf.headerbidding.HeaderBiddingPlacement;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
/* loaded from: classes7.dex */
public enum AdsType {
    Banner("banner", new ApiRequest.ApiAuctionDataBinder(), new om.n[]{new om.b<xq.g>(false) { // from class: io.bidmachine.AdsType.a
        @Override // om.b
        /* renamed from: k */
        public Point j(@NonNull ContextProvider contextProvider, @NonNull xq.g gVar) {
            BannerSize b10 = gVar.getAdRequestParameters().b();
            return new Point(b10.width, b10.height);
        }
    }}),
    Interstitial(com.vungle.ads.internal.Constants.PLACEMENT_TYPE_INTERSTITIAL, new ApiRequest.ApiAuctionDataBinder(), new om.n[]{new om.b(true), new om.n<UnifiedAdRequestParamsType>(true) { // from class: om.p

        /* renamed from: c  reason: collision with root package name */
        private final boolean f64306c;

        {
            super(AdContentType.Video);
            this.f64306c = r2;
        }

        @Override // om.n
        @Nullable
        public lp.b b(@NonNull Ad ad2) {
            if (!ad2.hasVideo()) {
                return null;
            }
            lp.b c10 = c(ad2);
            if (c10 == null) {
                Ad.Video video = ad2.getVideo();
                o oVar = new o(ad2);
                oVar.j(video.getAdm());
                return oVar;
            }
            return c10;
        }

        @Override // om.n
        @NonNull
        public Message.Builder e(@NonNull ContextProvider contextProvider, @NonNull UnifiedAdRequestParamsType unifiedadrequestparamstype, @NonNull AdsType adsType, @NonNull Collection<NetworkConfig> collection, @NonNull List<NetworkAdUnit> list, @Nullable AdPlacementConfig adPlacementConfig, int i10) throws Exception {
            Point j10 = j(contextProvider, unifiedadrequestparamstype);
            Placement.VideoPlacement.Builder linearValue = Placement.VideoPlacement.newBuilder().addApi(ApiFramework.API_FRAMEWORK_OMID_1_0).setSkip(this.f64306c).setUnit(SizeUnit.SIZE_UNIT_DIPS).setPos(PlacementPosition.PLACEMENT_POSITION_FULLSCREEN).setW(j10.x).setH(j10.y).addCtype(VideoCreativeType.VIDEO_CREATIVE_TYPE_VAST_2_0).addCtype(VideoCreativeType.VIDEO_CREATIVE_TYPE_VAST_3_0).addCtype(VideoCreativeType.VIDEO_CREATIVE_TYPE_VAST_WRAPPER_2_0).addCtype(VideoCreativeType.VIDEO_CREATIVE_TYPE_VAST_WRAPPER_3_0).addAllMime(Arrays.asList(Constants.VIDEO_MIME_TYPES)).setMinbitr(56).setMaxbitr(4096).setMindur(5).setMaxdur(30).setPtype(VideoPlacementType.VIDEO_PLACEMENT_TYPE_INTERSTITIAL).setLinearValue(1);
            HeaderBiddingPlacement.Builder d10 = d(contextProvider, unifiedadrequestparamstype, adsType, collection, list, i10);
            if (adPlacementConfig == null && d10 != null) {
                linearValue.addExtProto(Any.pack(d10.build()));
            } else if (adPlacementConfig != null) {
                linearValue.addExtProto(Any.pack(f(adPlacementConfig, d10)));
            }
            return linearValue;
        }

        public Point j(@NonNull ContextProvider contextProvider, @NonNull UnifiedAdRequestParamsType unifiedadrequestparamstype) {
            return io.bidmachine.core.g.D(contextProvider.getContext());
        }
    }}),
    Rewarded(com.vungle.ads.internal.Constants.PLACEMENT_TYPE_REWARDED, new ApiRequest.ApiAuctionDataBinder(), new om.n[]{new om.b(true), new om.n<UnifiedAdRequestParamsType>(false) { // from class: om.p

        /* renamed from: c  reason: collision with root package name */
        private final boolean f64306c;

        {
            super(AdContentType.Video);
            this.f64306c = r2;
        }

        @Override // om.n
        @Nullable
        public lp.b b(@NonNull Ad ad2) {
            if (!ad2.hasVideo()) {
                return null;
            }
            lp.b c10 = c(ad2);
            if (c10 == null) {
                Ad.Video video = ad2.getVideo();
                o oVar = new o(ad2);
                oVar.j(video.getAdm());
                return oVar;
            }
            return c10;
        }

        @Override // om.n
        @NonNull
        public Message.Builder e(@NonNull ContextProvider contextProvider, @NonNull UnifiedAdRequestParamsType unifiedadrequestparamstype, @NonNull AdsType adsType, @NonNull Collection<NetworkConfig> collection, @NonNull List<NetworkAdUnit> list, @Nullable AdPlacementConfig adPlacementConfig, int i10) throws Exception {
            Point j10 = j(contextProvider, unifiedadrequestparamstype);
            Placement.VideoPlacement.Builder linearValue = Placement.VideoPlacement.newBuilder().addApi(ApiFramework.API_FRAMEWORK_OMID_1_0).setSkip(this.f64306c).setUnit(SizeUnit.SIZE_UNIT_DIPS).setPos(PlacementPosition.PLACEMENT_POSITION_FULLSCREEN).setW(j10.x).setH(j10.y).addCtype(VideoCreativeType.VIDEO_CREATIVE_TYPE_VAST_2_0).addCtype(VideoCreativeType.VIDEO_CREATIVE_TYPE_VAST_3_0).addCtype(VideoCreativeType.VIDEO_CREATIVE_TYPE_VAST_WRAPPER_2_0).addCtype(VideoCreativeType.VIDEO_CREATIVE_TYPE_VAST_WRAPPER_3_0).addAllMime(Arrays.asList(Constants.VIDEO_MIME_TYPES)).setMinbitr(56).setMaxbitr(4096).setMindur(5).setMaxdur(30).setPtype(VideoPlacementType.VIDEO_PLACEMENT_TYPE_INTERSTITIAL).setLinearValue(1);
            HeaderBiddingPlacement.Builder d10 = d(contextProvider, unifiedadrequestparamstype, adsType, collection, list, i10);
            if (adPlacementConfig == null && d10 != null) {
                linearValue.addExtProto(Any.pack(d10.build()));
            } else if (adPlacementConfig != null) {
                linearValue.addExtProto(Any.pack(f(adPlacementConfig, d10)));
            }
            return linearValue;
        }

        public Point j(@NonNull ContextProvider contextProvider, @NonNull UnifiedAdRequestParamsType unifiedadrequestparamstype) {
            return io.bidmachine.core.g.D(contextProvider.getContext());
        }
    }}),
    Native("native", new ApiRequest.ApiAuctionDataBinder(), new om.n[]{new om.n<xq.n>() { // from class: om.l

        /* renamed from: c  reason: collision with root package name */
        private static final Placement.DisplayPlacement.NativeFormat.AssetFormat.Builder f64297c;

        /* renamed from: d  reason: collision with root package name */
        private static final Placement.DisplayPlacement.NativeFormat.AssetFormat.Builder f64298d;

        /* renamed from: e  reason: collision with root package name */
        private static final Placement.DisplayPlacement.NativeFormat.AssetFormat.Builder f64299e;

        /* renamed from: f  reason: collision with root package name */
        private static final Placement.DisplayPlacement.NativeFormat.AssetFormat.Builder f64300f;

        /* renamed from: g  reason: collision with root package name */
        private static final Placement.DisplayPlacement.NativeFormat.AssetFormat.Builder f64301g;

        /* renamed from: h  reason: collision with root package name */
        private static final Placement.DisplayPlacement.NativeFormat.AssetFormat.Builder f64302h;

        static {
            Placement.DisplayPlacement.NativeFormat.AssetFormat.Builder newBuilder = Placement.DisplayPlacement.NativeFormat.AssetFormat.newBuilder();
            f64297c = newBuilder;
            newBuilder.setId(123);
            newBuilder.setReq(true);
            newBuilder.setTitle(Placement.DisplayPlacement.NativeFormat.AssetFormat.TitleAssetFormat.newBuilder().setLen(104).build());
            Placement.DisplayPlacement.NativeFormat.AssetFormat.Builder newBuilder2 = Placement.DisplayPlacement.NativeFormat.AssetFormat.newBuilder();
            f64298d = newBuilder2;
            newBuilder2.setId(127);
            newBuilder2.setReq(true);
            newBuilder2.setData(Placement.DisplayPlacement.NativeFormat.AssetFormat.DataAssetFormat.newBuilder().setType(NativeDataAssetType.NATIVE_DATA_ASSET_TYPE_DESC).build());
            Placement.DisplayPlacement.NativeFormat.AssetFormat.Builder newBuilder3 = Placement.DisplayPlacement.NativeFormat.AssetFormat.newBuilder();
            f64299e = newBuilder3;
            newBuilder3.setId(8);
            newBuilder3.setReq(true);
            newBuilder3.setData(Placement.DisplayPlacement.NativeFormat.AssetFormat.DataAssetFormat.newBuilder().setType(NativeDataAssetType.NATIVE_DATA_ASSET_TYPE_CTA_TEXT).build());
            Placement.DisplayPlacement.NativeFormat.AssetFormat.Builder newBuilder4 = Placement.DisplayPlacement.NativeFormat.AssetFormat.newBuilder();
            f64300f = newBuilder4;
            newBuilder4.setId(7);
            newBuilder4.setReq(false);
            newBuilder4.setData(Placement.DisplayPlacement.NativeFormat.AssetFormat.DataAssetFormat.newBuilder().setType(NativeDataAssetType.NATIVE_DATA_ASSET_TYPE_RATING).build());
            Placement.DisplayPlacement.NativeFormat.AssetFormat.Builder newBuilder5 = Placement.DisplayPlacement.NativeFormat.AssetFormat.newBuilder();
            f64301g = newBuilder5;
            newBuilder5.setId(101);
            newBuilder5.setReq(false);
            Placement.DisplayPlacement.NativeFormat.AssetFormat.Builder newBuilder6 = Placement.DisplayPlacement.NativeFormat.AssetFormat.newBuilder();
            f64302h = newBuilder6;
            newBuilder6.setId(102);
            newBuilder6.setReq(false);
        }

        {
            AdContentType adContentType = AdContentType.All;
        }

        @NonNull
        @VisibleForTesting
        static Placement.DisplayPlacement.NativeFormat.AssetFormat j(@NonNull xq.n nVar) {
            Placement.DisplayPlacement.NativeFormat.AssetFormat.Builder newBuilder = Placement.DisplayPlacement.NativeFormat.AssetFormat.newBuilder();
            newBuilder.setId(124);
            newBuilder.setReq(nVar.getAdRequestParameters().a(MediaAssetType.Icon));
            newBuilder.setImg(Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormat.newBuilder().setType(NativeImageAssetType.NATIVE_IMAGE_ASSET_TYPE_ICON_IMAGE).addAllMime(Arrays.asList(Constants.IMAGE_MIME_TYPES)).build());
            return newBuilder.build();
        }

        @NonNull
        @VisibleForTesting
        static Placement.DisplayPlacement.NativeFormat.AssetFormat k(@NonNull xq.n nVar) {
            Placement.DisplayPlacement.NativeFormat.AssetFormat.Builder newBuilder = Placement.DisplayPlacement.NativeFormat.AssetFormat.newBuilder();
            newBuilder.setId(128);
            newBuilder.setReq(nVar.getAdRequestParameters().a(MediaAssetType.Image));
            newBuilder.setImg(Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormat.newBuilder().setType(NativeImageAssetType.NATIVE_IMAGE_ASSET_TYPE_MAIN_IMAGE).addAllMime(Arrays.asList(Constants.IMAGE_MIME_TYPES)).build());
            return newBuilder.build();
        }

        @NonNull
        @VisibleForTesting
        static Placement.DisplayPlacement.NativeFormat.AssetFormat m(@NonNull xq.n nVar) {
            Placement.DisplayPlacement.NativeFormat.AssetFormat.Builder newBuilder = Placement.DisplayPlacement.NativeFormat.AssetFormat.newBuilder();
            newBuilder.setId(4);
            newBuilder.setReq(nVar.getAdRequestParameters().a(MediaAssetType.Video));
            newBuilder.setVideo(Placement.VideoPlacement.newBuilder().setSkip(false).addCtype(VideoCreativeType.VIDEO_CREATIVE_TYPE_VAST_2_0).addCtype(VideoCreativeType.VIDEO_CREATIVE_TYPE_VAST_3_0).addCtype(VideoCreativeType.VIDEO_CREATIVE_TYPE_VAST_WRAPPER_2_0).addCtype(VideoCreativeType.VIDEO_CREATIVE_TYPE_VAST_WRAPPER_3_0).addAllMime(Arrays.asList(Constants.VIDEO_MIME_TYPES)).setMinbitr(56).setMaxbitr(4096).setMindur(5).setMaxdur(30).setLinearValue(1).build());
            return newBuilder.build();
        }

        @Override // om.n
        @Nullable
        public lp.b b(@NonNull Ad ad2) {
            lp.b c10 = c(ad2);
            if (c10 == null && ad2.hasDisplay() && ad2.getDisplay().hasNative()) {
                return new k(ad2);
            }
            return c10;
        }

        @Override // om.n
        @NonNull
        /* renamed from: l */
        public Message.Builder e(@NonNull ContextProvider contextProvider, @NonNull xq.n nVar, @NonNull AdsType adsType, @NonNull Collection<NetworkConfig> collection, @NonNull List<NetworkAdUnit> list, @Nullable AdPlacementConfig adPlacementConfig, int i10) throws Exception {
            Placement.DisplayPlacement.Builder addAllMime = Placement.DisplayPlacement.newBuilder().setInstl(false).setUnit(SizeUnit.SIZE_UNIT_DIPS).addAllMime(Arrays.asList(Constants.IMAGE_MIME_TYPES)).addAllMime(Arrays.asList(Constants.VIDEO_MIME_TYPES));
            Placement.DisplayPlacement.NativeFormat.Builder newBuilder = Placement.DisplayPlacement.NativeFormat.newBuilder();
            newBuilder.addAsset(f64297c);
            newBuilder.addAsset(f64298d);
            newBuilder.addAsset(f64299e);
            newBuilder.addAsset(f64300f);
            newBuilder.addAsset(j(nVar));
            newBuilder.addAsset(k(nVar));
            newBuilder.addAsset(m(nVar));
            newBuilder.addAsset(f64301g);
            newBuilder.addAsset(f64302h);
            addAllMime.setNativefmt(newBuilder);
            HeaderBiddingPlacement.Builder d10 = d(contextProvider, nVar, adsType, collection, list, i10);
            if (adPlacementConfig == null && d10 != null) {
                addAllMime.addExtProto(Any.pack(d10.build()));
            } else if (adPlacementConfig != null) {
                addAllMime.addExtProto(Any.pack(f(adPlacementConfig, d10)));
            }
            return addAllMime;
        }
    }});
    
    @NonNull
    private final ApiRequest.ApiAuctionDataBinder binder;
    @NonNull
    private final String name;
    @NonNull
    private final om.n[] placementBuilders;
    @NonNull
    private final Executor placementCreateExecutor = Executors.newFixedThreadPool(Math.max(8, Runtime.getRuntime().availableProcessors() * 4));

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ om.n f53534a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ContextProvider f53535b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ xq.d f53536c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ Collection f53537d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ List f53538e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ AdPlacementConfig f53539f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ int f53540g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ List f53541h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ CountDownLatch f53542i;

        b(om.n nVar, ContextProvider contextProvider, xq.d dVar, Collection collection, List list, AdPlacementConfig adPlacementConfig, int i10, List list2, CountDownLatch countDownLatch) {
            this.f53534a = nVar;
            this.f53535b = contextProvider;
            this.f53536c = dVar;
            this.f53537d = collection;
            this.f53538e = list;
            this.f53539f = adPlacementConfig;
            this.f53540g = i10;
            this.f53541h = list2;
            this.f53542i = countDownLatch;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Message.Builder e10 = this.f53534a.e(this.f53535b, this.f53536c, AdsType.this, this.f53537d, this.f53538e, this.f53539f, this.f53540g);
                synchronized (this.f53541h) {
                    this.f53541h.add(e10);
                }
                this.f53542i.countDown();
            } catch (Exception e11) {
                io.bidmachine.core.a.m(e11);
                this.f53542i.countDown();
            }
        }
    }

    AdsType(@NonNull String str, @NonNull ApiRequest.ApiAuctionDataBinder apiAuctionDataBinder, @NonNull om.n[] nVarArr) {
        this.name = str;
        this.binder = apiAuctionDataBinder;
        this.placementBuilders = nVarArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void collectPlacements(@NonNull ContextProvider contextProvider, @NonNull AdRequest adRequest, @NonNull xq.d dVar, @NonNull Collection<NetworkConfig> collection, @NonNull List<Message.Builder> list, @NonNull List<NetworkAdUnit> list2, @Nullable AdPlacementConfig adPlacementConfig, int i10) {
        om.n[] nVarArr;
        AdsType adsType = this;
        CountDownLatch countDownLatch = new CountDownLatch(adsType.placementBuilders.length);
        om.n[] nVarArr2 = adsType.placementBuilders;
        int length = nVarArr2.length;
        int i11 = 0;
        while (i11 < length) {
            om.n nVar = nVarArr2[i11];
            if (adRequest.isPlacementBuilderMatch(nVar)) {
                nVarArr = nVarArr2;
                adsType.placementCreateExecutor.execute(new b(nVar, contextProvider, dVar, collection, list2, adPlacementConfig, i10, list, countDownLatch));
            } else {
                nVarArr = nVarArr2;
                countDownLatch.countDown();
            }
            i11++;
            adsType = this;
            nVarArr2 = nVarArr;
        }
        try {
            countDownLatch.await();
        } catch (InterruptedException e10) {
            io.bidmachine.core.a.m(e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public lp.b createAdObjectParams(@NonNull Ad ad2) {
        for (om.n nVar : this.placementBuilders) {
            lp.b b10 = nVar.b(ad2);
            if (b10 != null) {
                return b10;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public NetworkAdapter findNetworkAdapter(@NonNull Ad ad2) {
        NetworkAdapter networkAdapter;
        HeaderBiddingAd obtainHeaderBiddingAd = obtainHeaderBiddingAd(ad2);
        if (obtainHeaderBiddingAd != null) {
            networkAdapter = NetworkRegistry.getAdapter(obtainHeaderBiddingAd.getBidder());
        } else {
            networkAdapter = null;
        }
        if (networkAdapter == null) {
            if (this == Native) {
                return NetworkRegistry.getAdapter("nast");
            }
            if (ad2.hasDisplay()) {
                return NetworkRegistry.getAdapter(CampaignEx.JSON_KEY_MRAID);
            }
            if (ad2.hasVideo()) {
                return NetworkRegistry.getAdapter("vast");
            }
            return networkAdapter;
        }
        return networkAdapter;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public ApiRequest.ApiAuctionDataBinder getBinder() {
        return this.binder;
    }

    @NonNull
    public String getName() {
        return this.name;
    }

    public boolean isFullscreen() {
        if (this != Interstitial && this != Rewarded) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public HeaderBiddingAd obtainHeaderBiddingAd(@NonNull Ad ad2) {
        for (om.n nVar : this.placementBuilders) {
            HeaderBiddingAd i10 = nVar.i(ad2);
            if (i10 != null) {
                return i10;
            }
        }
        return null;
    }
}
