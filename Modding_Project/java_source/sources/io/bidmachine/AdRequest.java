package io.bidmachine;

import android.content.Context;
import android.text.TextUtils;
import android.util.Base64;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.explorestack.protobuf.Any;
import com.explorestack.protobuf.ListValue;
import com.explorestack.protobuf.Message;
import com.explorestack.protobuf.Struct;
import com.explorestack.protobuf.Value;
import com.explorestack.protobuf.adcom.Placement;
import com.explorestack.protobuf.openrtb.Openrtb;
import com.explorestack.protobuf.openrtb.Request;
import com.explorestack.protobuf.openrtb.Response;
import io.bidmachine.AdPlacementConfig;
import io.bidmachine.AdRequest;
import io.bidmachine.AdRequestParameters;
import io.bidmachine.ApiRequest;
import io.bidmachine.a5;
import io.bidmachine.core.NetworkRequest;
import io.bidmachine.protobuf.AdExtension;
import io.bidmachine.protobuf.RequestExtension;
import io.bidmachine.protobuf.ResponsePayload;
import io.bidmachine.s0;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.UUID;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import xq.d;
/* loaded from: classes7.dex */
public abstract class AdRequest<SelfType extends AdRequest, AdRequestParametersType extends AdRequestParameters, UnifiedAdRequestParamsType extends xq.d> {
    @Nullable
    @VisibleForTesting
    List<AdRequestListener<SelfType>> adRequestListeners;
    @NonNull
    private final AdRequestParametersType adRequestParameters;
    @Nullable
    u adResponse;
    @NonNull
    private final s0 adResponseLoader;
    @NonNull
    @VisibleForTesting
    final Queue<String> auctionUrlQueue;

    /* renamed from: id  reason: collision with root package name */
    private final String f53523id;
    @Nullable
    @VisibleForTesting
    List<f<SelfType>> internalAdRequestListeners;
    private final AtomicBoolean isApiRequestCanceled;
    private final AtomicBoolean isApiRequestCompleted;
    private final AtomicBoolean isDestroyed;
    private final AtomicBoolean isLoading;
    private final AtomicBoolean isRequestExpired;
    @Nullable
    private NetworkAdUnitManager networkAdUnitManager;
    private final fr.j tag = new fr.j("AdRequest");
    private final Runnable timeOutRunnable;
    @NonNull
    private final BidMachineTrackingObject trackingObject;
    @Nullable
    private UnifiedAdRequestParamsType unifiedAdRequestParams;

    /* loaded from: classes7.dex */
    protected static abstract class AdRequestBuilderImpl<SelfType extends lp.f, ReturnType extends AdRequest<ReturnType, AdRequestParametersType, ?>, AdRequestParametersType extends AdRequestParameters> implements lp.f<SelfType, ReturnType> {
        @Nullable
        @VisibleForTesting
        ResponsePayload bidPayload;
        @Nullable
        @VisibleForTesting
        CustomParams customParams;
        @Nullable
        @VisibleForTesting
        AdRequestListener<ReturnType> listener;
        @Nullable
        @VisibleForTesting
        List<NetworkConfig> networkConfigList;
        @Nullable
        @VisibleForTesting
        String placementId;
        @Nullable
        @VisibleForTesting
        PriceFloorParams priceFloorParams;
        @Nullable
        @VisibleForTesting
        TargetingParams targetingParams;
        @Nullable
        @VisibleForTesting
        Integer timeOutMs;

        private void fillAdRequestParameters(@NonNull AdRequestParametersType adrequestparameterstype) {
            adrequestparameterstype.setAdPlacementConfig(new AdPlacementConfig.Builder(adrequestparameterstype.getAdsFormat()).withPlacementId(this.placementId).withCustomParams(this.customParams).build());
            adrequestparameterstype.setPriceFloorParams(this.priceFloorParams);
            adrequestparameterstype.setTargetingParams(this.targetingParams);
            adrequestparameterstype.setNetworkConfigList(this.networkConfigList);
            adrequestparameterstype.setTimeOutMs(this.timeOutMs);
            adrequestparameterstype.setBidPayload(this.bidPayload);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @NonNull
        public ReturnType build() {
            ReturnType returntype = (ReturnType) s2.j(this.bidPayload);
            if (returntype == null) {
                returntype = (ReturnType) build(createAdRequestParameters());
            }
            fillAdRequestParameters(returntype.getAdRequestParameters());
            returntype.addListener(this.listener);
            return returntype;
        }

        @NonNull
        protected abstract ReturnType build(@NonNull AdRequestParametersType adrequestparameterstype);

        @NonNull
        protected abstract AdRequestParametersType createAdRequestParameters();

        @VisibleForTesting
        void fillNetworkConfigs(@Nullable List<NetworkConfig> list) {
            if (list == null) {
                this.networkConfigList = new ArrayList();
            } else {
                this.networkConfigList = list;
            }
        }

        @NonNull
        public SelfType setBidPayload(@Nullable String str) {
            if (str == null) {
                this.bidPayload = null;
                return this;
            }
            try {
                this.bidPayload = ResponsePayload.parseFrom(Base64.decode(str, 0));
            } catch (Throwable th2) {
                io.bidmachine.core.a.m(th2);
            }
            if (this.bidPayload == null) {
                this.bidPayload = ResponsePayload.getDefaultInstance();
            }
            return this;
        }

        @Override // lp.f
        @NonNull
        public SelfType setCustomParams(@Nullable CustomParams customParams) {
            this.customParams = customParams;
            return this;
        }

        @NonNull
        public SelfType setListener(@Nullable AdRequestListener<ReturnType> adRequestListener) {
            this.listener = adRequestListener;
            return this;
        }

        @NonNull
        public SelfType setLoadingTimeOut(@Nullable Integer num) {
            this.timeOutMs = num;
            return this;
        }

        @NonNull
        public SelfType setNetworks(@Nullable List<NetworkConfig> list) {
            fillNetworkConfigs(list);
            return this;
        }

        @Override // lp.f
        @NonNull
        public SelfType setPlacementId(@Nullable String str) {
            this.placementId = str;
            return this;
        }

        @Override // lp.f
        @NonNull
        public SelfType setPriceFloorParams(@Nullable PriceFloorParams priceFloorParams) {
            this.priceFloorParams = priceFloorParams;
            return this;
        }

        @NonNull
        public SelfType setTargetingParams(@Nullable TargetingParams targetingParams) {
            this.targetingParams = targetingParams;
            return this;
        }

        @NonNull
        public SelfType setNetworks(@Nullable String str) {
            ArrayList arrayList = null;
            if (!TextUtils.isEmpty(str)) {
                try {
                    ArrayList arrayList2 = new ArrayList();
                    try {
                        JSONArray jSONArray = new JSONArray(str);
                        for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                            NetworkConfig h10 = r4.h(j2.e().g(), jSONArray.getJSONObject(i10));
                            if (h10 != null) {
                                arrayList2.add(h10);
                            }
                        }
                        arrayList = arrayList2;
                    } catch (Exception e10) {
                        e = e10;
                        arrayList = arrayList2;
                        io.bidmachine.core.a.m(e);
                        fillNetworkConfigs(arrayList);
                        return this;
                    }
                } catch (Exception e11) {
                    e = e11;
                }
            }
            fillNetworkConfigs(arrayList);
            return this;
        }

        @NonNull
        @Deprecated
        public SelfType setSessionAdParams(@Nullable SessionAdParams sessionAdParams) {
            return this;
        }
    }

    /* loaded from: classes7.dex */
    public interface AdRequestListener<AdRequestType extends AdRequest> {
        void onRequestExpired(@NonNull AdRequestType adrequesttype);

        void onRequestFailed(@NonNull AdRequestType adrequesttype, @NonNull fr.a aVar);

        void onRequestSuccess(@NonNull AdRequestType adrequesttype, @NonNull lp.c cVar);
    }

    /* loaded from: classes7.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            u m10 = w0.e().m(AdRequest.this.adRequestParameters);
            if (m10 != null) {
                AdRequest.this.processApiRequestSuccess(m10);
                return;
            }
            AdRequest.this.processApiRequestFail(fr.a.f51910f, false);
            AdRequest.this.cancel();
        }
    }

    /* loaded from: classes7.dex */
    class b extends BidMachineTrackingObject {
        b(Object obj) {
            super(obj);
        }

        @Override // wq.l, wq.k
        @Nullable
        public AdExtension.EventConfiguration getEventConfiguration() {
            u adResponse = AdRequest.this.getAdResponse();
            if (adResponse != null) {
                return adResponse.E();
            }
            return super.getEventConfiguration();
        }

        @Override // wq.l, wq.k
        @Nullable
        public List<String> getTrackingUrls(@NonNull TrackEventType trackEventType) {
            u adResponse = AdRequest.this.getAdResponse();
            if (adResponse != null) {
                return adResponse.H(trackEventType);
            }
            return super.getTrackingUrls(trackEventType);
        }
    }

    /* loaded from: classes7.dex */
    class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f53526a;

        c(Context context) {
            this.f53526a = context;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ String c() {
            return "Request start";
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                AdRequest.this.cancel();
                AdRequest.this.unsubscribeTimeOut();
                AdRequest<?, ?, ?> adRequest = AdRequest.this;
                u uVar = adRequest.adResponse;
                if (uVar != null) {
                    uVar.r(adRequest);
                    AdRequest.this.adResponse = null;
                }
                AdRequest.this.isApiRequestCanceled.set(false);
                AdRequest.this.isApiRequestCompleted.set(false);
                AdRequest.this.subscribeTimeOut();
                AdRequest.this.log(new hr.b() { // from class: io.bidmachine.k
                    @Override // hr.b
                    public final Object get() {
                        String c10;
                        c10 = AdRequest.c.c();
                        return c10;
                    }
                });
                AdRequest.this.trackingObject.eventStart(TrackEventType.AuctionRequest);
                ResponsePayload bidPayload = AdRequest.this.adRequestParameters.getBidPayload();
                if (bidPayload == null) {
                    AdRequest.this.processRequestObject(this.f53526a);
                } else {
                    AdRequest.this.processBidPayload(bidPayload);
                }
            } catch (Throwable th2) {
                io.bidmachine.core.a.m(th2);
                AdRequest.this.processRequestFail(fr.a.l("Exception loading ad request", th2));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public class d implements a5.a<u> {
        d() {
        }

        @Override // io.bidmachine.a5.a
        public void a(@NonNull fr.a aVar) {
            AdRequest.this.processApiRequestFail(aVar);
        }

        @Override // io.bidmachine.a5.a
        /* renamed from: b */
        public void onSuccess(@NonNull u uVar) {
            AdRequest.this.processApiRequestSuccess(uVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public class e implements s0.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f53529a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ApiRequest.Builder f53530b;

        e(String str, ApiRequest.Builder builder) {
            this.f53529a = str;
            this.f53530b = builder;
        }

        @Override // io.bidmachine.s0.a
        public void a(@Nullable fr.a aVar) {
            AdRequest.this.processApiRequestLoadedFail(this.f53530b, aVar);
        }

        @Override // io.bidmachine.s0.a
        public void b(@NonNull u uVar) {
            AdRequest.this.setAuctionUrl(this.f53529a);
            AdRequest.this.processApiRequestSuccess(uVar);
        }

        @Override // io.bidmachine.s0.a
        public void onCancel() {
            AdRequest.this.processApiRequestCancel();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public interface f<AdRequestType extends AdRequest> {
        void a(@NonNull AdRequestType adrequesttype);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AdRequest(@NonNull AdRequestParametersType adrequestparameterstype) {
        String uuid = UUID.randomUUID().toString();
        this.f53523id = uuid;
        this.isLoading = new AtomicBoolean(false);
        this.isApiRequestCanceled = new AtomicBoolean(false);
        this.isApiRequestCompleted = new AtomicBoolean(false);
        this.isRequestExpired = new AtomicBoolean(false);
        this.isDestroyed = new AtomicBoolean(false);
        this.timeOutRunnable = new a();
        this.trackingObject = new b(uuid);
        this.adRequestParameters = adrequestparameterstype;
        this.adResponseLoader = new s0(uuid);
        this.auctionUrlQueue = new LinkedList();
    }

    private boolean canProcessApiRequestResult() {
        if (!isCompleted() && !isCanceled() && !isDestroyed()) {
            return true;
        }
        return false;
    }

    private boolean canSendApiRequest() {
        return !isDestroyed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$collectNetworkConfig$0(NetworkConfig networkConfig, String str) {
        return String.format("%s was removed from AdRequest: %s", networkConfig.getNetworkKey(), str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$destroy$3() {
        return "destroy";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ String lambda$log$7(hr.b bVar) {
        return String.format("%s - %s", this.adRequestParameters.getAdsType(), bVar.get());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ String lambda$logError$8(hr.b bVar) {
        return String.format("%s - %s", this.adRequestParameters.getAdsType(), bVar.get());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$notifyMediationLoss$2(String str, Double d10) {
        return String.format("notifyMediationLoss (winnerNetworkName - %s, winnerNetworkPrice - %s)", str, d10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$notifyMediationWin$1() {
        return "notifyMediationWin";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$processApiRequestSuccess$5(u uVar) {
        return String.format("Request success - %s", uVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$processExpired$4() {
        return "Request expired";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$processRequestFail$6(fr.a aVar) {
        return String.format("Request fail - %s", aVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void log(@NonNull final hr.b<String> bVar) {
        io.bidmachine.core.a.b(this.tag, new hr.b() { // from class: io.bidmachine.d
            @Override // hr.b
            public final Object get() {
                String lambda$log$7;
                lambda$log$7 = AdRequest.this.lambda$log$7(bVar);
                return lambda$log$7;
            }
        });
    }

    private void logError(@NonNull final hr.b<String> bVar) {
        io.bidmachine.core.a.f(this.tag, new hr.b() { // from class: io.bidmachine.h
            @Override // hr.b
            public final Object get() {
                String lambda$logError$8;
                lambda$logError$8 = AdRequest.this.lambda$logError$8(bVar);
                return lambda$logError$8;
            }
        });
    }

    @NonNull
    private NetworkAdUnitManager obtainNetworkAdUnitManager() {
        if (this.networkAdUnitManager == null) {
            this.networkAdUnitManager = new NetworkAdUnitManager();
        }
        return this.networkAdUnitManager;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void processApiRequestCancel() {
        if (!canProcessApiRequestResult()) {
            return;
        }
        setLoading(false);
        this.isApiRequestCanceled.set(true);
        unsubscribeTimeOut();
        this.trackingObject.eventFinish(TrackEventType.AuctionRequestCancel, getAdsType(), (wq.a) null, (fr.a) null);
        this.trackingObject.clearEvent(TrackEventType.AuctionRequest);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void processRequestObject(@NonNull Context context) {
        fr.a i10;
        prepareUrls();
        Object build = build(context);
        if (build instanceof Request) {
            processRequestBuilder(new ApiRequest.Builder().setRequestData((Request) build).setDataBinder(getAdsType().getBinder()), pollUrl());
            return;
        }
        if (build instanceof fr.a) {
            i10 = (fr.a) build;
        } else {
            i10 = fr.a.i("Failed to create ad request");
        }
        processRequestFail(i10);
    }

    private void setLoading(boolean z10) {
        this.isLoading.set(z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void subscribeTimeOut() {
        int obtainTimeOutMs = obtainTimeOutMs();
        if (obtainTimeOutMs > 0) {
            io.bidmachine.core.g.Y(this.timeOutRunnable, obtainTimeOutMs);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void unsubscribeTimeOut() {
        io.bidmachine.core.g.g(this.timeOutRunnable);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addInternalListener(@Nullable f<SelfType> fVar) {
        if (fVar != null) {
            if (this.internalAdRequestListeners == null) {
                this.internalAdRequestListeners = new CopyOnWriteArrayList();
            }
            this.internalAdRequestListeners.add(fVar);
        }
    }

    public void addListener(@Nullable AdRequestListener<SelfType> adRequestListener) {
        if (adRequestListener != null) {
            if (this.adRequestListeners == null) {
                this.adRequestListeners = new CopyOnWriteArrayList();
            }
            this.adRequestListeners.add(adRequestListener);
        }
    }

    @Nullable
    @VisibleForTesting
    Object build(@NonNull Context context) {
        Map<String, Double> priceFloors;
        try {
            String p10 = j2.e().p();
            if (TextUtils.isEmpty(p10)) {
                return fr.a.k("SellerId");
            }
            j2 e10 = j2.e();
            SessionManager sessionManager = SessionManager.get();
            AdvertisingDataManager.d(context);
            TargetingParams targetingParams = (TargetingParams) lp.g.resolveParams(this.adRequestParameters.getTargetingParams(), e10.s());
            v5 u10 = e10.u();
            PriceFloorParams priceFloorParams = this.adRequestParameters.getPriceFloorParams();
            if (priceFloorParams != null && !priceFloorParams.getPriceFloors().isEmpty()) {
                priceFloors = priceFloorParams.getPriceFloors();
            } else {
                priceFloors = e10.m().getPriceFloors();
            }
            if (priceFloors.isEmpty()) {
                return fr.a.k("PriceFloors");
            }
            Request.Builder newBuilder = Request.newBuilder();
            Request.Item.Builder newBuilder2 = Request.Item.newBuilder();
            newBuilder2.setId(UUID.randomUUID().toString());
            newBuilder2.setQty(1);
            for (Map.Entry<String, Double> entry : priceFloors.entrySet()) {
                Request.Item.Deal.Builder newBuilder3 = Request.Item.Deal.newBuilder();
                newBuilder3.setId(entry.getKey());
                newBuilder3.setFlr(entry.getValue().doubleValue());
                newBuilder3.setFlrcur("USD");
                newBuilder2.addDeal(newBuilder3);
            }
            newBuilder.setContext(Any.pack(RequestDataRetriever.collectContext(context, e10, u10, targetingParams, null, getAdsType())));
            newBuilder.setTest(e10.C());
            newBuilder.addCur("USD");
            newBuilder.setAt(2);
            newBuilder.setTmax(10000);
            Placement.Builder newBuilder4 = Placement.newBuilder();
            newBuilder4.setSsai(0);
            newBuilder4.setSdk(BidMachine.NAME);
            newBuilder4.setSdkver("3.4.0");
            newBuilder4.setSecure(!io.bidmachine.core.g.e());
            for (Message.Builder builder : collectPlacementFormats(context, null, this.adRequestParameters.getAdPlacementConfig())) {
                if (builder instanceof Placement.DisplayPlacement.Builder) {
                    Placement.DisplayPlacement.Builder builder2 = (Placement.DisplayPlacement.Builder) builder;
                    onBeforeSetDisplayPlacementBuilder(builder2);
                    newBuilder4.setDisplay(builder2);
                } else if (builder instanceof Placement.VideoPlacement.Builder) {
                    Placement.VideoPlacement.Builder builder3 = (Placement.VideoPlacement.Builder) builder;
                    onBeforeSetVideoPlacementBuilder(builder3);
                    newBuilder4.setVideo(builder3);
                } else {
                    throw new IllegalArgumentException("Unsupported display type: " + builder);
                }
            }
            Struct.Builder newBuilder5 = Struct.newBuilder();
            ym.a.d(newBuilder5);
            ListValue.Builder newBuilder6 = ListValue.newBuilder();
            for (u uVar : w0.e().l(this.adRequestParameters)) {
                newBuilder6.addValues(uVar.p());
            }
            if (newBuilder6.getValuesCount() > 0) {
                newBuilder5.putFields("bid_cache", Value.newBuilder().setListValue(newBuilder6).build());
            }
            if (newBuilder5.getFieldsCount() > 0) {
                newBuilder4.setExt(newBuilder5);
            }
            onBuildPlacement(newBuilder4);
            newBuilder2.setSpec(Any.pack(newBuilder4.build()));
            newBuilder.addItem(newBuilder2.build());
            Struct.Builder newBuilder7 = Struct.newBuilder();
            Struct privateStruct = ExtraParamsManager.get().getPrivateStruct(context);
            if (privateStruct != null) {
                newBuilder7.putAllFields(privateStruct.getFieldsMap());
            }
            if (newBuilder7.getFieldsCount() > 0) {
                newBuilder.setExt(newBuilder7.build());
            }
            RequestExtension.Builder newBuilder8 = RequestExtension.newBuilder();
            newBuilder8.setSellerId(p10);
            String j10 = e10.j();
            if (!TextUtils.isEmpty(j10)) {
                newBuilder8.setIfv(j10);
            }
            newBuilder8.setBmIfv(e10.I(context));
            newBuilder8.setSessionId(sessionManager.getSessionId());
            newBuilder.addExtProto(Any.pack(newBuilder8.build()));
            return newBuilder.build();
        } catch (Throwable th2) {
            io.bidmachine.core.a.m(th2);
            return fr.a.l("Exception creating ad request", th2);
        }
    }

    void cancel() {
        this.adResponseLoader.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void clearNetworkAdUnits() {
        obtainNetworkAdUnitManager().notifyNetworkClearAuction();
    }

    @NonNull
    @VisibleForTesting
    List<NetworkConfig> collectNetworkConfig(@NonNull Context context, @NonNull AdsType adsType, @Nullable List<String> list) {
        HashMap hashMap = new HashMap();
        List<NetworkConfig> networkConfigList = this.adRequestParameters.getNetworkConfigList();
        if (networkConfigList == null) {
            io.bidmachine.core.g.i0(hashMap, NetworkRegistry.copyOrNullInitializedNetworkConfigs(adsType));
        } else {
            hashMap.putAll(NetworkRegistry.createInitNetworkConfigMap());
            for (final NetworkConfig networkConfig : networkConfigList) {
                final String checkAndPutNetwork = NetworkRegistry.checkAndPutNetwork(context, adsType, networkConfig, hashMap);
                if (checkAndPutNetwork != null) {
                    logError(new hr.b() { // from class: io.bidmachine.j
                        @Override // hr.b
                        public final Object get() {
                            String lambda$collectNetworkConfig$0;
                            lambda$collectNetworkConfig$0 = AdRequest.lambda$collectNetworkConfig$0(NetworkConfig.this, checkAndPutNetwork);
                            return lambda$collectNetworkConfig$0;
                        }
                    });
                }
            }
        }
        if (list != null) {
            Iterator it = hashMap.entrySet().iterator();
            while (it.hasNext()) {
                if (!list.contains((String) ((Map.Entry) it.next()).getKey())) {
                    it.remove();
                }
            }
        }
        io.bidmachine.core.g.i0(hashMap, NetworkRegistry.copyOrNullInitializedCoreNetworkConfigs(adsType));
        return new ArrayList(hashMap.values());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public List<Message.Builder> collectPlacementFormats(@NonNull Context context, @Nullable List<String> list, @Nullable AdPlacementConfig adPlacementConfig) throws IllegalStateException {
        ArrayList arrayList = new ArrayList();
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
        AdsType adsType = getAdsType();
        adsType.collectPlacements(new SimpleContextProvider(context), this, obtainUnifiedRequestParams(), collectNetworkConfig(context, adsType, list), arrayList, copyOnWriteArrayList, adPlacementConfig, j2.e().l());
        this.networkAdUnitManager = new NetworkAdUnitManager(copyOnWriteArrayList);
        return arrayList;
    }

    @NonNull
    protected abstract UnifiedAdRequestParamsType createUnifiedAdRequestParams(@NonNull AdRequestParametersType adrequestparameterstype, @NonNull TargetingParams targetingParams, @NonNull lp.d dVar);

    public void destroy() {
        if (!this.isDestroyed.compareAndSet(false, true)) {
            return;
        }
        log(new hr.b() { // from class: io.bidmachine.g
            @Override // hr.b
            public final Object get() {
                String lambda$destroy$3;
                lambda$destroy$3 = AdRequest.lambda$destroy$3();
                return lambda$destroy$3;
            }
        });
        this.trackingObject.eventFinish(TrackEventType.AuctionRequestDestroy, getAdsType(), this.adResponse, (fr.a) null);
        cancel();
        unsubscribeTimeOut();
        this.trackingObject.clear();
        BidMachineFetcher.release(this);
        notifyRequestDestroyed();
        this.unifiedAdRequestParams = null;
        u uVar = this.adResponse;
        if (uVar != null) {
            uVar.r(this);
            this.adResponse = null;
        }
    }

    @NonNull
    public AdRequestParametersType getAdRequestParameters() {
        return this.adRequestParameters;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public u getAdResponse() {
        return this.adResponse;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NonNull
    public final AdsType getAdsType() {
        return this.adRequestParameters.getAdsType();
    }

    @Nullable
    public lp.c getAuctionResult() {
        u uVar = this.adResponse;
        if (uVar != null) {
            return uVar.D();
        }
        return null;
    }

    boolean isAdResponseExpired() {
        u uVar = this.adResponse;
        if (uVar != null && uVar.L()) {
            return true;
        }
        return false;
    }

    @VisibleForTesting
    boolean isBidPayloadValid(@NonNull ResponsePayload responsePayload) {
        Placement requestItemSpec = responsePayload.getRequestItemSpec();
        try {
            if (requestItemSpec != Placement.getDefaultInstance()) {
                if (!this.adRequestParameters.isPlacementObjectValid(requestItemSpec)) {
                    return false;
                }
            }
            return true;
        } catch (Throwable th2) {
            io.bidmachine.core.a.m(th2);
            return false;
        }
    }

    boolean isCanceled() {
        return this.isApiRequestCanceled.get();
    }

    boolean isCompleted() {
        return this.isApiRequestCompleted.get();
    }

    public boolean isDestroyed() {
        return this.isDestroyed.get();
    }

    public boolean isExpired() {
        if (!isAdResponseExpired() && !this.isRequestExpired.get()) {
            return false;
        }
        return true;
    }

    boolean isLoading() {
        return this.isLoading.get();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isPlacementBuilderMatch(@NonNull om.n nVar) {
        return true;
    }

    public void notifyMediationLoss() {
        notifyMediationLoss(null, null);
    }

    public void notifyMediationWin() {
        fr.a aVar;
        if (!isCompleted()) {
            return;
        }
        log(new hr.b() { // from class: io.bidmachine.b
            @Override // hr.b
            public final Object get() {
                String lambda$notifyMediationWin$1;
                lambda$notifyMediationWin$1 = AdRequest.lambda$notifyMediationWin$1();
                return lambda$notifyMediationWin$1;
            }
        });
        if (isDestroyed()) {
            aVar = fr.a.f51914j;
        } else if (isExpired()) {
            aVar = fr.a.f51913i;
        } else {
            aVar = null;
        }
        this.trackingObject.eventFinish(TrackEventType.MediationWin, getAdsType(), this.adResponse, aVar);
    }

    void notifyRequestDestroyed() {
        List<f<SelfType>> list = this.internalAdRequestListeners;
        if (list != null) {
            for (f<SelfType> fVar : list) {
                fVar.a(this);
            }
        }
    }

    @VisibleForTesting
    int obtainTimeOutMs() {
        Integer timeOutMs;
        int o10 = j2.e().o();
        if (o10 <= 0 && (timeOutMs = this.adRequestParameters.getTimeOutMs()) != null && timeOutMs.intValue() > 0) {
            return timeOutMs.intValue();
        }
        return o10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public final UnifiedAdRequestParamsType obtainUnifiedRequestParams() {
        if (this.unifiedAdRequestParams == null) {
            j2 e10 = j2.e();
            v5 u10 = e10.u();
            this.unifiedAdRequestParams = createUnifiedAdRequestParams(this.adRequestParameters, (TargetingParams) lp.g.resolveParams(this.adRequestParameters.getTargetingParams(), e10.s()), u10);
        }
        return this.unifiedAdRequestParams;
    }

    @VisibleForTesting
    String pollUrl() {
        if (this.auctionUrlQueue.isEmpty()) {
            this.auctionUrlQueue.addAll(UrlProvider.getAuctionUrlQueue());
        }
        return this.auctionUrlQueue.poll();
    }

    @VisibleForTesting
    void prepareUrls() {
        this.auctionUrlQueue.clear();
        this.auctionUrlQueue.addAll(UrlProvider.getAuctionUrlQueue());
    }

    @VisibleForTesting
    void processApiRequestFail(@Nullable fr.a aVar) {
        processApiRequestFail(aVar, true);
    }

    @VisibleForTesting
    void processApiRequestLoadedFail(@NonNull ApiRequest.Builder<Request, Response> builder, @Nullable fr.a aVar) {
        String poll;
        if (!canProcessApiRequestResult()) {
            return;
        }
        if (aVar != fr.a.f51923s && (poll = this.auctionUrlQueue.poll()) != null) {
            processRequestBuilder(builder, poll);
        } else {
            processApiRequestFail(aVar);
        }
    }

    @VisibleForTesting
    void processApiRequestSuccess(@NonNull final u uVar) {
        if (!canProcessApiRequestResult()) {
            uVar.r(this);
            return;
        }
        setLoading(false);
        this.isApiRequestCompleted.set(true);
        unsubscribeTimeOut();
        log(new hr.b() { // from class: io.bidmachine.i
            @Override // hr.b
            public final Object get() {
                String lambda$processApiRequestSuccess$5;
                lambda$processApiRequestSuccess$5 = AdRequest.lambda$processApiRequestSuccess$5(u.this);
                return lambda$processApiRequestSuccess$5;
            }
        });
        this.adResponse = uVar;
        uVar.j(this);
        List<AdRequestListener<SelfType>> list = this.adRequestListeners;
        if (list != null) {
            for (AdRequestListener<SelfType> adRequestListener : list) {
                adRequestListener.onRequestSuccess(this, uVar.D());
            }
        }
        for (AdRequestListener<?> adRequestListener2 : j2.e().f()) {
            adRequestListener2.onRequestSuccess(this, uVar.D());
        }
        this.trackingObject.eventFinish(TrackEventType.AuctionRequest, getAdsType(), uVar, (fr.a) null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void processBidPayload(@NonNull ResponsePayload responsePayload) {
        if (responsePayload == ResponsePayload.getDefaultInstance()) {
            processRequestFail(fr.a.h("BidPayload has invalid content"));
        } else if (!isBidPayloadValid(responsePayload)) {
            processRequestFail(fr.a.h("BidPayload does not match with AdRequest"));
        } else {
            Openrtb responseCache = responsePayload.getResponseCache();
            if (responseCache != null && responseCache != Openrtb.getDefaultInstance()) {
                a5.a(this.adRequestParameters, obtainNetworkAdUnitManager(), responseCache.getResponse(), new d());
                return;
            }
            String responseCacheUrl = responsePayload.getResponseCacheUrl();
            if (!TextUtils.isEmpty(responseCacheUrl) && io.bidmachine.core.g.K(responseCacheUrl)) {
                retrieveBody(responseCacheUrl);
            } else {
                processRequestFail(fr.a.h("BidPayload does not contain Response or URL"));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void processExpired() {
        log(new hr.b() { // from class: io.bidmachine.e
            @Override // hr.b
            public final Object get() {
                String lambda$processExpired$4;
                lambda$processExpired$4 = AdRequest.lambda$processExpired$4();
                return lambda$processExpired$4;
            }
        });
        this.isRequestExpired.set(true);
        List<AdRequestListener<SelfType>> list = this.adRequestListeners;
        if (list != null) {
            for (AdRequestListener<SelfType> adRequestListener : list) {
                adRequestListener.onRequestExpired(this);
            }
        }
        for (AdRequestListener<?> adRequestListener2 : j2.e().f()) {
            adRequestListener2.onRequestExpired(this);
        }
        this.trackingObject.eventFinish(TrackEventType.AuctionRequestExpired, getAdsType(), this.adResponse, (fr.a) null);
    }

    @VisibleForTesting
    void processRequestBuilder(@NonNull ApiRequest.Builder<Request, Response> builder, @NonNull String str) {
        if (!canSendApiRequest()) {
            return;
        }
        builder.url(str);
        this.adResponseLoader.b(this.adRequestParameters, obtainNetworkAdUnitManager(), builder, new e(str, builder));
    }

    @VisibleForTesting
    void processRequestFail(@NonNull fr.a aVar) {
        processRequestFail(aVar, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void removeInternalListener(@Nullable f<SelfType> fVar) {
        List<f<SelfType>> list = this.internalAdRequestListeners;
        if (list != null && fVar != null) {
            list.remove(fVar);
        }
    }

    public void removeListener(@Nullable AdRequestListener<SelfType> adRequestListener) {
        List<AdRequestListener<SelfType>> list = this.adRequestListeners;
        if (list != null && adRequestListener != null) {
            list.remove(adRequestListener);
        }
    }

    public void request(@NonNull Context context) {
        if (!j2.e().A()) {
            processRequestFail(fr.a.i("BidMachine not initialized"));
        } else if (isDestroyed()) {
            processRequestFail(fr.a.f51914j);
        } else {
            fr.a verifyRequest = verifyRequest();
            if (verifyRequest != null) {
                processRequestFail(verifyRequest);
            } else if (isLoading()) {
            } else {
                setLoading(true);
                l.a().execute(new c(context.getApplicationContext()));
            }
        }
    }

    @VisibleForTesting
    void retrieveBody(@NonNull String str) {
        processRequestBuilder(new ApiRequest.Builder().setMethod(NetworkRequest.Method.Get).setDataBinder(new ApiRequest.ApiResponseAuctionDataBinder()), str);
    }

    void setAuctionUrl(@NonNull String str) {
        this.auctionUrlQueue.clear();
        this.auctionUrlQueue.add(str);
    }

    @NonNull
    public String toString() {
        return this.tag.toString();
    }

    protected fr.a verifyRequest() {
        return null;
    }

    public void notifyMediationLoss(@Nullable final String str, @Nullable final Double d10) {
        fr.a aVar;
        if (isCompleted()) {
            log(new hr.b() { // from class: io.bidmachine.c
                @Override // hr.b
                public final Object get() {
                    String lambda$notifyMediationLoss$2;
                    lambda$notifyMediationLoss$2 = AdRequest.lambda$notifyMediationLoss$2(str, d10);
                    return lambda$notifyMediationLoss$2;
                }
            });
            if (isDestroyed()) {
                aVar = fr.a.f51914j;
            } else {
                aVar = isExpired() ? fr.a.f51913i : null;
            }
            this.trackingObject.eventFinish(TrackEventType.MediationLoss, getAdsType(), new wq.a().h(str).i(d10), aVar);
        }
    }

    @VisibleForTesting
    void processApiRequestFail(@Nullable fr.a aVar, boolean z10) {
        if (canProcessApiRequestResult()) {
            setLoading(false);
            this.isApiRequestCompleted.set(true);
            if (aVar == null) {
                aVar = fr.a.f51923s;
            }
            processRequestFail(aVar, z10);
        }
    }

    @VisibleForTesting
    void processRequestFail(@NonNull final fr.a aVar, boolean z10) {
        log(new hr.b() { // from class: io.bidmachine.f
            @Override // hr.b
            public final Object get() {
                String lambda$processRequestFail$6;
                lambda$processRequestFail$6 = AdRequest.lambda$processRequestFail$6(fr.a.this);
                return lambda$processRequestFail$6;
            }
        });
        unsubscribeTimeOut();
        if (z10) {
            clearNetworkAdUnits();
        }
        List<AdRequestListener<SelfType>> list = this.adRequestListeners;
        if (list != null) {
            for (AdRequestListener<SelfType> adRequestListener : list) {
                adRequestListener.onRequestFailed(this, aVar);
            }
        }
        for (AdRequestListener<?> adRequestListener2 : j2.e().f()) {
            adRequestListener2.onRequestFailed(this, aVar);
        }
        this.trackingObject.eventFinish(TrackEventType.AuctionRequest, getAdsType(), (wq.a) null, aVar);
    }

    protected void onBeforeSetDisplayPlacementBuilder(@NonNull Placement.DisplayPlacement.Builder builder) {
    }

    protected void onBeforeSetVideoPlacementBuilder(@NonNull Placement.VideoPlacement.Builder builder) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onBuildPlacement(@NonNull Placement.Builder builder) {
    }
}
