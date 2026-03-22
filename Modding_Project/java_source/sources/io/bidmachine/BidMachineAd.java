package io.bidmachine;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import io.bidmachine.AdListener;
import io.bidmachine.AdRequest;
import io.bidmachine.BidMachineAd;
import io.bidmachine.IAd;
import io.bidmachine.protobuf.AdExtension;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import lp.a;
import lp.b;
import xq.d;
/* loaded from: classes7.dex */
public abstract class BidMachineAd<SelfType extends IAd, AdRequestType extends AdRequest<AdRequestType, ?, UnifiedAdRequestParamsType>, AdObjectType extends lp.a<AdObjectParamsType, UnifiedAdRequestParamsType, ?>, AdObjectParamsType extends lp.b, UnifiedAdRequestParamsType extends xq.d, AdListenerType extends AdListener<SelfType>> implements IAd<SelfType, AdRequestType> {
    @Nullable
    @VisibleForTesting
    AdRequestType adRequest;
    @NonNull
    private final AdsType adsType;
    @NonNull
    private final ContextProvider contextProvider;
    @Nullable
    private AdListenerType listener;
    @Nullable
    protected RendererConfiguration rendererConfiguration;
    private final fr.j tag = new fr.j("BidMachineAd");
    @NonNull
    private State currentState = State.Idle;
    private final AdRequest.AdRequestListener<AdRequestType> adRequestListener = new b();
    private final AdRequest.f<AdRequestType> internalAdRequestListener = new c();
    @VisibleForTesting
    final AdProcessCallback adProcessCallback = new d();
    @NonNull
    @VisibleForTesting
    final BidMachineTrackingObject trackingObject = new a();
    @NonNull
    protected final AtomicBoolean isFinishTracked = new AtomicBoolean(false);
    @NonNull
    protected final AtomicBoolean isCloseTracked = new AtomicBoolean(false);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public enum State {
        Idle,
        Requesting,
        Loading,
        Success,
        Failed,
        Destroyed,
        Expired
    }

    /* loaded from: classes7.dex */
    class a extends BidMachineTrackingObject {
        a() {
        }

        @Override // wq.l, wq.k
        @Nullable
        public AdExtension.EventConfiguration getEventConfiguration() {
            u adResponse = BidMachineAd.this.getAdResponse();
            if (adResponse != null) {
                return adResponse.E();
            }
            return super.getEventConfiguration();
        }

        @Override // wq.l, wq.k
        @Nullable
        public List<String> getTrackingUrls(@NonNull TrackEventType trackEventType) {
            u adResponse = BidMachineAd.this.getAdResponse();
            if (adResponse != null) {
                return adResponse.I(trackEventType);
            }
            return null;
        }
    }

    /* loaded from: classes7.dex */
    class b implements AdRequest.AdRequestListener<AdRequestType> {
        b() {
        }

        @Override // io.bidmachine.AdRequest.AdRequestListener
        public void onRequestExpired(@NonNull AdRequestType adrequesttype) {
            BidMachineAd bidMachineAd = BidMachineAd.this;
            if (adrequesttype == bidMachineAd.adRequest) {
                bidMachineAd.adProcessCallback.processExpired();
            }
        }

        @Override // io.bidmachine.AdRequest.AdRequestListener
        public void onRequestFailed(@NonNull AdRequestType adrequesttype, @NonNull fr.a aVar) {
            BidMachineAd bidMachineAd = BidMachineAd.this;
            if (adrequesttype == bidMachineAd.adRequest) {
                bidMachineAd.processRequestFail(aVar);
            }
        }

        @Override // io.bidmachine.AdRequest.AdRequestListener
        public void onRequestSuccess(@NonNull AdRequestType adrequesttype, @NonNull lp.c cVar) {
            BidMachineAd bidMachineAd = BidMachineAd.this;
            if (adrequesttype == bidMachineAd.adRequest) {
                bidMachineAd.processRequestSuccess(adrequesttype);
            }
        }
    }

    /* loaded from: classes7.dex */
    class c implements AdRequest.f<AdRequestType> {
        c() {
        }

        @Override // io.bidmachine.AdRequest.f
        public void a(@NonNull AdRequestType adrequesttype) {
            BidMachineAd bidMachineAd = BidMachineAd.this;
            if (adrequesttype == bidMachineAd.adRequest) {
                bidMachineAd.destroy();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public class d extends p5 {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private AdCridThreadHandler f53554a;

        /* loaded from: classes7.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                if (BidMachineAd.this.listener != null) {
                    BidMachineAd.this.log("notify AdLoaded");
                    BidMachineAd.this.listener.onAdLoaded(BidMachineAd.this);
                }
            }
        }

        /* loaded from: classes7.dex */
        class b implements Runnable {
            b() {
            }

            @Override // java.lang.Runnable
            public void run() {
                if (BidMachineAd.this.listener != null) {
                    BidMachineAd.this.log("notify AdImpression");
                    BidMachineAd.this.listener.onAdImpression(BidMachineAd.this);
                }
            }
        }

        /* loaded from: classes7.dex */
        class c implements Runnable {
            c() {
            }

            @Override // java.lang.Runnable
            public void run() {
                if (BidMachineAd.this.listener != null) {
                    BidMachineAd.this.log("notify AdClicked");
                    BidMachineAd.this.listener.onAdClicked(BidMachineAd.this);
                }
            }
        }

        /* renamed from: io.bidmachine.BidMachineAd$d$d  reason: collision with other inner class name */
        /* loaded from: classes7.dex */
        class RunnableC0780d implements Runnable {
            RunnableC0780d() {
            }

            @Override // java.lang.Runnable
            public void run() {
                if (BidMachineAd.this.listener instanceof AdRewardedListener) {
                    BidMachineAd.this.log("notify AdRewarded");
                    ((AdRewardedListener) BidMachineAd.this.listener).onAdRewarded(BidMachineAd.this);
                }
            }
        }

        /* loaded from: classes7.dex */
        class e implements Runnable {
            e() {
            }

            @Override // java.lang.Runnable
            public void run() {
                if (BidMachineAd.this.listener != null) {
                    BidMachineAd.this.log("notify AdExpired");
                    BidMachineAd.this.listener.onAdExpired(BidMachineAd.this);
                }
            }
        }

        d() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void e() {
            if (BidMachineAd.this.listener instanceof AdFullScreenListener) {
                BidMachineAd.this.log("notify AdClosed");
                BidMachineAd bidMachineAd = BidMachineAd.this;
                ((AdFullScreenListener) BidMachineAd.this.listener).onAdClosed(bidMachineAd, bidMachineAd.isFinishTracked.get());
            }
            if (BidMachineAd.this.isDuplicateShowDisabled()) {
                BidMachineAd.this.log("duplicate showing is disabled, starting destroy internally");
                BidMachineAd.this.destroy();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void f(fr.a aVar) {
            if (BidMachineAd.this.listener != null) {
                BidMachineAd.this.log("notify AdLoadFailed");
                BidMachineAd.this.listener.onAdLoadFailed(BidMachineAd.this, aVar);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void g(u uVar) {
            io.bidmachine.core.g.H(this.f53554a, new r1());
            if (uVar.f58652w) {
                this.f53554a = new AdCridThreadHandler(uVar.D().getCreativeId());
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void h(fr.a aVar) {
            if (BidMachineAd.this.listener != null) {
                BidMachineAd.this.log("notify AdShowFailed");
                BidMachineAd.this.listener.onAdShowFailed(BidMachineAd.this, aVar);
            }
        }

        @Override // io.bidmachine.AdProcessCallback
        public void processClicked() {
            if (BidMachineAd.this.currentState.ordinal() > State.Success.ordinal()) {
                return;
            }
            BidMachineAd.this.log("processClicked");
            io.bidmachine.core.g.Z(new c());
        }

        @Override // io.bidmachine.AdProcessCallback
        public void processClosed() {
            if (BidMachineAd.this.currentState.ordinal() > State.Success.ordinal() || !BidMachineAd.this.isCloseTracked.compareAndSet(false, true)) {
                return;
            }
            BidMachineAd bidMachineAd = BidMachineAd.this;
            bidMachineAd.log("processClosed (" + BidMachineAd.this.isFinishTracked.get() + ")");
            io.bidmachine.core.g.Z(new Runnable() { // from class: io.bidmachine.u1
                @Override // java.lang.Runnable
                public final void run() {
                    BidMachineAd.d.this.e();
                }
            });
        }

        @Override // io.bidmachine.AdProcessCallback
        public void processDestroy() {
            BidMachineAd.this.log("destroy requested");
            BidMachineAd.this.currentState = State.Destroyed;
            u adResponse = BidMachineAd.this.getAdResponse();
            if (adResponse != null) {
                adResponse.Y(this);
            }
            BidMachineAd.this.destroyAdRequest();
            io.bidmachine.core.g.H(this.f53554a, new r1());
            this.f53554a = null;
        }

        @Override // io.bidmachine.AdProcessCallback
        public void processExpired() {
            if (BidMachineAd.this.currentState.ordinal() > State.Success.ordinal()) {
                return;
            }
            BidMachineAd.this.log("processExpired");
            BidMachineAd.this.currentState = State.Expired;
            io.bidmachine.core.g.Z(new e());
            io.bidmachine.core.g.H(this.f53554a, new r1());
            this.f53554a = null;
        }

        @Override // io.bidmachine.AdProcessCallback
        public void processFillAd() {
            if (BidMachineAd.this.currentState.ordinal() > State.Success.ordinal()) {
                return;
            }
            BidMachineAd.this.log("processFillAd");
        }

        @Override // io.bidmachine.AdProcessCallback
        public void processFinished() {
            if (BidMachineAd.this.currentState.ordinal() > State.Success.ordinal() || !BidMachineAd.this.isFinishTracked.compareAndSet(false, true)) {
                return;
            }
            BidMachineAd.this.log("processFinished");
            io.bidmachine.core.g.Z(new RunnableC0780d());
        }

        @Override // io.bidmachine.AdProcessCallback
        public void processLoadFail(@NonNull final fr.a aVar) {
            BidMachineAd bidMachineAd = BidMachineAd.this;
            bidMachineAd.log("processLoadFail - " + aVar);
            BidMachineAd.this.currentState = State.Failed;
            io.bidmachine.core.g.Z(new Runnable() { // from class: io.bidmachine.t1
                @Override // java.lang.Runnable
                public final void run() {
                    BidMachineAd.d.this.f(aVar);
                }
            });
        }

        @Override // io.bidmachine.AdProcessCallback
        public void processLoadSuccess() {
            if (BidMachineAd.this.currentState.ordinal() > State.Loading.ordinal()) {
                return;
            }
            BidMachineAd.this.log("processLoadSuccess");
            BidMachineAd.this.currentState = State.Success;
            io.bidmachine.core.g.Z(new a());
            io.bidmachine.core.g.H(BidMachineAd.this.getAdResponse(), new Executable() { // from class: io.bidmachine.v1
                @Override // io.bidmachine.Executable
                public final void execute(Object obj) {
                    BidMachineAd.d.this.g((u) obj);
                }
            });
        }

        @Override // io.bidmachine.AdProcessCallback
        public void processShowFail(@NonNull final fr.a aVar) {
            BidMachineAd bidMachineAd = BidMachineAd.this;
            bidMachineAd.log("processShowFail - " + aVar);
            io.bidmachine.core.g.Z(new Runnable() { // from class: io.bidmachine.s1
                @Override // java.lang.Runnable
                public final void run() {
                    BidMachineAd.d.this.h(aVar);
                }
            });
        }

        @Override // io.bidmachine.AdProcessCallback
        public void processShown() {
            if (BidMachineAd.this.currentState.ordinal() > State.Success.ordinal()) {
                return;
            }
            BidMachineAd.this.log("processShown");
            io.bidmachine.core.g.Z(new b());
        }

        @Override // io.bidmachine.AdProcessCallback
        public void processVisibilityTrackerImpression() {
            if (BidMachineAd.this.currentState.ordinal() > State.Success.ordinal()) {
                return;
            }
            BidMachineAd.this.log("processImpression");
        }
    }

    public BidMachineAd(@NonNull Context context, @NonNull AdsType adsType) {
        this.contextProvider = new SimpleContextProvider(context);
        this.adsType = adsType;
    }

    private void attachRequest(@Nullable AdRequestType adrequesttype) {
        if (adrequesttype != null) {
            adrequesttype.addListener(this.adRequestListener);
            adrequesttype.addInternalListener(this.internalAdRequestListener);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void destroyAdRequest() {
        AdRequestType adrequesttype = this.adRequest;
        this.adRequest = null;
        if (adrequesttype != null) {
            detachRequest(adrequesttype);
            adrequesttype.destroy();
        }
    }

    private void detachRequest(@Nullable AdRequestType adrequesttype) {
        if (adrequesttype != null) {
            adrequesttype.removeListener(this.adRequestListener);
            adrequesttype.removeInternalListener(this.internalAdRequestListener);
        }
    }

    private boolean isNetworkAvailableDuringShow() {
        if (!l2.a() && !io.bidmachine.core.g.L(getContext())) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ String lambda$log$0(String str) {
        StringBuilder sb2 = new StringBuilder(this.adsType.name());
        lp.c auctionResult = getAuctionResult();
        if (auctionResult != null) {
            sb2.append(" (");
            sb2.append(auctionResult.a());
            sb2.append(")");
        }
        return String.format("%s - %s", sb2, str);
    }

    private void processRequest(@NonNull AdRequestType adrequesttype) {
        log("process request start");
        if (getAuctionResult() != null) {
            processRequestSuccess(adrequesttype);
            return;
        }
        this.currentState = State.Requesting;
        adrequesttype.request(getContext());
    }

    private void trackEvent(@NonNull TrackEventType trackEventType, @Nullable fr.a aVar) {
        this.trackingObject.eventFinish(trackEventType, getAdsType(), getAdResponse(), aVar);
    }

    @Override // io.bidmachine.IAd
    public boolean canShow() {
        if (isLoaded() && isCanShowAd() && isNetworkAvailableDuringShow()) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract AdObjectType createAdObject(@NonNull ContextProvider contextProvider, @NonNull AdRequestType adrequesttype, @NonNull NetworkAdapter networkAdapter, @NonNull lp.b bVar, @NonNull AdProcessCallback adProcessCallback);

    @Override // io.bidmachine.IAd
    public void destroy() {
        this.adProcessCallback.processDestroy();
        this.trackingObject.clear();
    }

    @Nullable
    protected final u getAdResponse() {
        AdRequestType adrequesttype = this.adRequest;
        if (adrequesttype != null) {
            return adrequesttype.getAdResponse();
        }
        return null;
    }

    @NonNull
    AdsType getAdsType() {
        return this.adsType;
    }

    @Override // io.bidmachine.IAd
    @Nullable
    public lp.c getAuctionResult() {
        AdRequestType adrequesttype = this.adRequest;
        if (adrequesttype != null) {
            return adrequesttype.getAuctionResult();
        }
        return null;
    }

    @NonNull
    Context getContext() {
        return this.contextProvider.getApplicationContext();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public ContextProvider getContextProvider() {
        return this.contextProvider;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public final AdObjectType getLoadedAdObject() {
        u adResponse = getAdResponse();
        if (adResponse == null) {
            return null;
        }
        try {
            return (AdObjectType) adResponse.A();
        } catch (Throwable unused) {
            return null;
        }
    }

    boolean isCanShowAd() {
        u adResponse = getAdResponse();
        if (adResponse != null && !adResponse.d0()) {
            return true;
        }
        return false;
    }

    @Override // io.bidmachine.IAd
    public boolean isDestroyed() {
        if (this.currentState == State.Destroyed) {
            return true;
        }
        return false;
    }

    public abstract boolean isDuplicateShowDisabled();

    @Override // io.bidmachine.IAd
    public boolean isExpired() {
        if (this.currentState == State.Expired) {
            return true;
        }
        return false;
    }

    @Override // io.bidmachine.IAd
    public boolean isLoaded() {
        if (getLoadedAdObject() != null && this.currentState == State.Success) {
            return true;
        }
        return false;
    }

    @Override // io.bidmachine.IAd
    public boolean isLoading() {
        State state = this.currentState;
        if (state != State.Requesting && state != State.Loading) {
            return false;
        }
        return true;
    }

    @Override // io.bidmachine.IAd
    @NonNull
    public SelfType load(AdRequestType adrequesttype) {
        log("load requested");
        this.trackingObject.eventStart(TrackEventType.Load);
        if (!j2.e().A()) {
            processRequestFail(fr.a.i("BidMachine not initialized"));
            return this;
        } else if (this.currentState != State.Idle) {
            log("request process abort because it's already processing");
            return this;
        } else if (adrequesttype == null) {
            processRequestFail(fr.a.k("AdRequest"));
            return this;
        } else {
            detachRequest(this.adRequest);
            this.adRequest = adrequesttype;
            attachRequest(adrequesttype);
            processRequest(adrequesttype);
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void log(@NonNull final String str) {
        io.bidmachine.core.a.b(this.tag, new hr.b() { // from class: io.bidmachine.q1
            @Override // hr.b
            public final Object get() {
                String lambda$log$0;
                lambda$log$0 = BidMachineAd.this.lambda$log$0(str);
                return lambda$log$0;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public AdObjectType prepareShow() {
        return prepareShow(isDuplicateShowDisabled());
    }

    void processPrepareShow() {
        trackEvent(TrackEventType.ImpressionOpportunity, null);
    }

    @VisibleForTesting
    void processRequestFail(@NonNull fr.a aVar) {
        if (this.currentState.ordinal() > State.Loading.ordinal()) {
            return;
        }
        trackEvent(TrackEventType.Load, aVar);
        this.adProcessCallback.processLoadFail(aVar);
    }

    @VisibleForTesting
    void processRequestSuccess(@NonNull AdRequestType adrequesttype) {
        int ordinal = this.currentState.ordinal();
        State state = State.Loading;
        if (ordinal > state.ordinal()) {
            return;
        }
        this.currentState = state;
        u adResponse = adrequesttype.getAdResponse();
        if (adResponse == null) {
            processRequestFail(fr.a.h("AdResponse is null"));
            return;
        }
        log("start loading");
        adResponse.T(this.contextProvider, adrequesttype, this, this.adProcessCallback);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void processShowFail(@NonNull fr.a aVar) {
        trackEvent(TrackEventType.Show, aVar);
        this.adProcessCallback.processShowFail(aVar);
    }

    @NonNull
    public SelfType setListener(@Nullable AdListenerType adlistenertype) {
        this.listener = adlistenertype;
        return this;
    }

    @Override // io.bidmachine.IAd
    @NonNull
    public SelfType setRendererConfiguration(@Nullable RendererConfiguration rendererConfiguration) {
        this.rendererConfiguration = rendererConfiguration;
        return this;
    }

    @NonNull
    public String toString() {
        return this.tag + ", state - " + this.currentState + ", auctionResult - " + getAuctionResult();
    }

    @Nullable
    private AdObjectType prepareShow(boolean z10) {
        processPrepareShow();
        if (!isNetworkAvailableDuringShow()) {
            processShowFail(fr.a.f51909e);
            return null;
        } else if (isDestroyed()) {
            processShowFail(fr.a.f51919o);
            return null;
        } else if (isExpired()) {
            processShowFail(fr.a.f51918n);
            return null;
        } else if (!isLoaded()) {
            processShowFail(fr.a.i("Ad not loaded"));
            return null;
        } else if (z10 && !isCanShowAd()) {
            processShowFail(fr.a.f51916l);
            return null;
        } else {
            return getLoadedAdObject();
        }
    }
}
