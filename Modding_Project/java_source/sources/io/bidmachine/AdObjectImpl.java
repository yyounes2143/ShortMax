package io.bidmachine;

import android.app.Activity;
import android.content.Context;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.bidmachine.AdRequest;
import io.bidmachine.core.VisibilitySource;
import java.util.Map;
import lp.b;
import xq.b;
import xq.c;
import xq.d;
/* loaded from: classes7.dex */
public abstract class AdObjectImpl<AdRequestType extends AdRequest<AdRequestType, ?, UnifiedAdRequestParamsType>, AdObjectParamsType extends lp.b, UnifiedAdType extends xq.b<UnifiedAdCallbackType, UnifiedAdRequestParamsType>, UnifiedAdCallbackType extends xq.c, UnifiedAdRequestParamsType extends xq.d> implements lp.a<AdObjectParamsType, UnifiedAdRequestParamsType, UnifiedAdCallbackType> {
    @NonNull
    private final AdObjectParamsType adObjectParams;
    @NonNull
    private final AdRequestType adRequest;
    @NonNull
    private final ContextProvider contextProvider;
    @NonNull
    private final AdProcessCallback processCallback;
    @NonNull
    private final UnifiedAdType unifiedAd;
    @NonNull
    private final UnifiedAdCallbackType unifiedAdCallback;

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes7.dex */
    public static class BaseUnifiedAdCallback implements xq.c {
        @NonNull
        protected final AdProcessCallback processCallback;

        public BaseUnifiedAdCallback(@NonNull AdProcessCallback adProcessCallback) {
            this.processCallback = adProcessCallback;
        }

        @Override // xq.c
        public void onAdClicked() {
            this.processCallback.processClicked();
        }

        @Override // xq.c
        public void onAdExpired() {
            this.processCallback.processExpired();
        }

        @Override // xq.c
        public void onAdLoadFailed(@NonNull fr.a aVar) {
            this.processCallback.processLoadFail(aVar);
        }

        @Override // xq.c
        public void onAdShowFailed(@NonNull fr.a aVar) {
            this.processCallback.processShowFail(aVar);
        }

        @Override // xq.c
        public void onAdShown() {
            this.processCallback.processShown();
        }

        @Override // xq.c
        public void onBrokenCreativeEvent(@Nullable Map<String, Object> map) {
            this.processCallback.onBrokenCreativeEvent(map);
        }

        @Override // xq.c
        public void setVisibilitySource(@NonNull VisibilitySource visibilitySource) {
            this.processCallback.setVisibilitySource(visibilitySource);
        }
    }

    public AdObjectImpl(@NonNull ContextProvider contextProvider, @NonNull AdProcessCallback adProcessCallback, @NonNull AdRequestType adrequesttype, @NonNull AdObjectParamsType adobjectparamstype, @NonNull UnifiedAdType unifiedadtype) {
        this.contextProvider = contextProvider;
        this.processCallback = adProcessCallback;
        this.adRequest = adrequesttype;
        this.adObjectParams = adobjectparamstype;
        this.unifiedAd = unifiedadtype;
        this.unifiedAdCallback = (UnifiedAdCallbackType) createUnifiedCallback(adProcessCallback);
    }

    @NonNull
    public abstract /* synthetic */ xq.c createUnifiedCallback(@NonNull AdProcessCallback adProcessCallback);

    @Nullable
    public Activity getActivity() {
        return this.contextProvider.getActivity();
    }

    @NonNull
    public AdRequestType getAdRequest() {
        return this.adRequest;
    }

    @NonNull
    public Context getApplicationContext() {
        return this.contextProvider.getApplicationContext();
    }

    @Override // lp.a
    @Nullable
    public Map<String, Object> getCustomParams() {
        return getUnifiedAd().a();
    }

    @Override // lp.a
    @NonNull
    public AdObjectParamsType getParams() {
        return this.adObjectParams;
    }

    @NonNull
    public AdProcessCallback getProcessCallback() {
        return this.processCallback;
    }

    @NonNull
    public UnifiedAdType getUnifiedAd() {
        return this.unifiedAd;
    }

    @NonNull
    public UnifiedAdCallbackType getUnifiedAdCallback() {
        return this.unifiedAdCallback;
    }

    @Override // lp.a
    public void load(@NonNull ContextProvider contextProvider, @NonNull UnifiedAdRequestParamsType unifiedadrequestparamstype, @NonNull NetworkAdUnit networkAdUnit) throws Throwable {
        this.unifiedAd.b(contextProvider, this.unifiedAdCallback, unifiedadrequestparamstype, this.adObjectParams.c(), networkAdUnit);
    }

    @Override // lp.a
    @CallSuper
    public void onClicked() {
        getUnifiedAd().c();
    }

    @Override // lp.a
    @CallSuper
    public void onClosed(boolean z10) {
        UnifiedAdType unifiedAd = getUnifiedAd();
        if (unifiedAd instanceof xq.h) {
            ((xq.h) unifiedAd).i(z10);
        }
    }

    @Override // lp.a
    @CallSuper
    public void onDestroy() {
        getUnifiedAd().d();
    }

    @Override // lp.a
    public void onExpired() {
        getUnifiedAd().e();
    }

    @Override // lp.a
    @CallSuper
    public void onFinished() {
        UnifiedAdType unifiedAd = getUnifiedAd();
        if (unifiedAd instanceof xq.h) {
            ((xq.h) unifiedAd).j();
        }
    }

    @Override // lp.a
    @CallSuper
    public void onImpression() {
        getUnifiedAd().f();
    }

    @Override // lp.a
    @CallSuper
    public void onShowFailed() {
        getUnifiedAd().g();
    }

    @Override // lp.a
    @CallSuper
    public void onShown() {
        getUnifiedAd().h();
    }

    @Override // lp.a
    public void hide() {
    }
}
