package om;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.explorestack.protobuf.Any;
import com.explorestack.protobuf.InvalidProtocolBufferException;
import com.explorestack.protobuf.adcom.Ad;
import io.bidmachine.AdContentType;
import io.bidmachine.AdsType;
import io.bidmachine.BidMachineTrackingObject;
import io.bidmachine.ContextProvider;
import io.bidmachine.HeaderBiddingAdRequestParams;
import io.bidmachine.HeaderBiddingAdapter;
import io.bidmachine.HeaderBiddingCollectParamsCallback;
import io.bidmachine.NetworkAdUnit;
import io.bidmachine.NetworkAdapter;
import io.bidmachine.NetworkConfig;
import io.bidmachine.NetworkRegistry;
import io.bidmachine.ProtoExtConstants;
import io.bidmachine.TrackEventType;
import io.bidmachine.protobuf.headerbidding.HeaderBiddingAd;
import io.bidmachine.protobuf.headerbidding.HeaderBiddingPlacement;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import om.g;
import xq.d;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: HeaderBiddingPlacementBuilder.java */
/* loaded from: classes7.dex */
public class g<UnifiedAdRequestParamsType extends xq.d> {

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: HeaderBiddingPlacementBuilder.java */
    /* loaded from: classes7.dex */
    public static final class a<UnifiedAdRequestParamsType extends xq.d> implements Runnable, HeaderBiddingAdRequestParams, HeaderBiddingCollectParamsCallback {

        /* renamed from: k  reason: collision with root package name */
        private static final Executor f64281k = Executors.newFixedThreadPool(Runtime.getRuntime().availableProcessors() * 2);
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        private final ContextProvider f64282a;
        @NonNull

        /* renamed from: b  reason: collision with root package name */
        private final HeaderBiddingAdapter f64283b;
        @NonNull

        /* renamed from: c  reason: collision with root package name */
        private final AdsType f64284c;
        @NonNull

        /* renamed from: d  reason: collision with root package name */
        private final AdContentType f64285d;
        @NonNull

        /* renamed from: e  reason: collision with root package name */
        private final UnifiedAdRequestParamsType f64286e;
        @NonNull

        /* renamed from: f  reason: collision with root package name */
        private final NetworkAdUnit f64287f;

        /* renamed from: h  reason: collision with root package name */
        private CountDownLatch f64289h;

        /* renamed from: i  reason: collision with root package name */
        private HeaderBiddingPlacement.AdUnit f64290i;

        /* renamed from: j  reason: collision with root package name */
        private boolean f64291j = false;
        @NonNull

        /* renamed from: g  reason: collision with root package name */
        private final wq.k f64288g = new BidMachineTrackingObject();

        a(@NonNull ContextProvider contextProvider, @NonNull HeaderBiddingAdapter headerBiddingAdapter, @NonNull AdsType adsType, @NonNull AdContentType adContentType, @NonNull UnifiedAdRequestParamsType unifiedadrequestparamstype, @NonNull NetworkAdUnit networkAdUnit) {
            this.f64282a = contextProvider;
            this.f64283b = headerBiddingAdapter;
            this.f64284c = adsType;
            this.f64285d = adContentType;
            this.f64286e = unifiedadrequestparamstype;
            this.f64287f = networkAdUnit;
        }

        private void g() {
            this.f64291j = true;
            this.f64289h.countDown();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ String j() {
            return String.format("%s (%s) - Header bidding collect fail: timeout", this.f64284c, this.f64285d);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ String k(fr.a aVar) {
            return String.format("%s (%s) - Header bidding collect fail - %s", this.f64284c, this.f64285d, aVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ String l() {
            return String.format("%s (%s) - Header bidding collect finished", this.f64284c, this.f64285d);
        }

        void e() {
            if (this.f64291j) {
                return;
            }
            io.bidmachine.core.a.b(this.f64283b.getKey(), new hr.b() { // from class: om.d
                @Override // hr.b
                public final Object get() {
                    String j10;
                    j10 = g.a.this.j();
                    return j10;
                }
            });
            g();
        }

        void f(@NonNull CountDownLatch countDownLatch) {
            this.f64288g.eventStart(TrackEventType.HeaderBiddingNetworkPrepare, new wq.j().e("HB_NETWORK", this.f64283b.getKey()).e("BM_AD_TYPE", this.f64284c.getName()));
            this.f64289h = countDownLatch;
            f64281k.execute(this);
        }

        @Override // io.bidmachine.HeaderBiddingAdRequestParams
        @NonNull
        public AdContentType getAdContentType() {
            return this.f64285d;
        }

        @Override // io.bidmachine.HeaderBiddingAdRequestParams
        @NonNull
        public AdsType getAdsType() {
            return this.f64284c;
        }

        HeaderBiddingPlacement.AdUnit h() {
            return this.f64290i;
        }

        boolean i() {
            return this.f64291j;
        }

        @Override // io.bidmachine.HeaderBiddingCollectParamsCallback
        public void onCollectFail(@NonNull final fr.a aVar) {
            if (this.f64291j) {
                return;
            }
            io.bidmachine.core.a.b(this.f64283b.getKey(), new hr.b() { // from class: om.f
                @Override // hr.b
                public final Object get() {
                    String k10;
                    k10 = g.a.this.k(aVar);
                    return k10;
                }
            });
            g();
            this.f64288g.eventFinish(TrackEventType.HeaderBiddingNetworkPrepare, this.f64284c, new wq.a().h(this.f64283b.getKey()), aVar);
        }

        @Override // io.bidmachine.HeaderBiddingCollectParamsCallback
        public void onCollectFinished(@Nullable Map<String, String> map) {
            if (this.f64291j) {
                return;
            }
            this.f64290i = HeaderBiddingPlacement.AdUnit.newBuilder().setBidder(this.f64283b.getKey()).setBidderSdkver(this.f64283b.obtainNetworkSdkVersion()).putClientParams(ProtoExtConstants.AD_UNIT_ID, this.f64287f.getId()).putAllClientParams(this.f64287f.getMediationConfig()).putAllClientParams(map).build();
            io.bidmachine.core.a.b(this.f64283b.getKey(), new hr.b() { // from class: om.e
                @Override // hr.b
                public final Object get() {
                    String l10;
                    l10 = g.a.this.l();
                    return l10;
                }
            });
            g();
            this.f64288g.eventFinish(TrackEventType.HeaderBiddingNetworkPrepare, this.f64284c, new wq.a().h(this.f64283b.getKey()), null);
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f64283b.collectHeaderBiddingParams(this.f64282a, this.f64286e, this.f64287f, this, this);
            } catch (Throwable th2) {
                io.bidmachine.core.a.m(th2);
                onCollectFail(fr.a.l("Exception collecting header bidding parameters", th2));
            }
        }
    }

    @Nullable
    private HeaderBiddingAd d(@NonNull List<Any> list) {
        for (Any any : list) {
            if (any.is(HeaderBiddingAd.class)) {
                try {
                    return (HeaderBiddingAd) any.unpack(HeaderBiddingAd.class);
                } catch (InvalidProtocolBufferException e10) {
                    io.bidmachine.core.a.m(e10);
                }
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public lp.b a(@NonNull Ad ad2) {
        HeaderBiddingAd c10 = c(ad2);
        if (c10 != null) {
            return new c(ad2, c10);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [wq.a, fr.a] */
    @Nullable
    public HeaderBiddingPlacement.Builder b(@NonNull ContextProvider contextProvider, @NonNull UnifiedAdRequestParamsType unifiedadrequestparamstype, @NonNull AdsType adsType, @NonNull AdContentType adContentType, @NonNull Collection<NetworkConfig> collection, @NonNull List<NetworkAdUnit> list, int i10) {
        ArrayList<a> arrayList = new ArrayList();
        Iterator<NetworkConfig> it = collection.iterator();
        while (it.hasNext()) {
            NetworkConfig next = it.next();
            NetworkAdapter adapter = NetworkRegistry.getAdapter(next.getNetworkKey());
            if ((adapter instanceof HeaderBiddingAdapter) && adapter.isInitialized(contextProvider)) {
                for (NetworkAdUnit networkAdUnit : next.createNetworkAdUnitList(adsType, unifiedadrequestparamstype, adContentType, adapter)) {
                    list.add(networkAdUnit);
                    arrayList.add(new a(contextProvider, (HeaderBiddingAdapter) adapter, adsType, adContentType, unifiedadrequestparamstype, networkAdUnit));
                    it = it;
                }
            }
            it = it;
        }
        if (!arrayList.isEmpty()) {
            BidMachineTrackingObject bidMachineTrackingObject = new BidMachineTrackingObject();
            bidMachineTrackingObject.eventStart(TrackEventType.HeaderBiddingNetworksPrepare);
            try {
                CountDownLatch countDownLatch = new CountDownLatch(arrayList.size());
                for (a aVar : arrayList) {
                    aVar.f(countDownLatch);
                }
                try {
                    countDownLatch.await(i10 > 0 ? i10 : 10L, TimeUnit.SECONDS);
                } catch (InterruptedException e10) {
                    io.bidmachine.core.a.m(e10);
                }
                ArrayList arrayList2 = null;
                for (a aVar2 : arrayList) {
                    HeaderBiddingPlacement.AdUnit h10 = aVar2.h();
                    if (h10 != null) {
                        if (arrayList2 == null) {
                            arrayList2 = new ArrayList();
                        }
                        arrayList2.add(h10);
                    } else if (!aVar2.i()) {
                        aVar2.e();
                    }
                }
                if (!io.bidmachine.core.g.I(arrayList2)) {
                    HeaderBiddingPlacement.Builder newBuilder = HeaderBiddingPlacement.newBuilder();
                    newBuilder.addAllAdUnits(arrayList2);
                    return newBuilder;
                }
            } finally {
                bidMachineTrackingObject.eventFinish(TrackEventType.HeaderBiddingNetworksPrepare, adsType, (wq.a) null, (fr.a) null);
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public HeaderBiddingAd c(@NonNull Ad ad2) {
        HeaderBiddingAd headerBiddingAd = null;
        if (ad2.hasDisplay()) {
            Ad.Display display = ad2.getDisplay();
            if (display.hasBanner()) {
                headerBiddingAd = d(display.getBanner().getExtProtoList());
            }
            if (headerBiddingAd == null && display.hasNative()) {
                headerBiddingAd = d(display.getNative().getExtProtoList());
            }
        }
        if (headerBiddingAd == null && ad2.hasVideo()) {
            return d(ad2.getVideo().getExtProtoList());
        }
        return headerBiddingAd;
    }
}
