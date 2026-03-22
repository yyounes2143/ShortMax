package io.bidmachine;

import androidx.annotation.NonNull;
import io.bidmachine.AdRequest;
import io.bidmachine.FullScreenAdRequest;
/* loaded from: classes7.dex */
public abstract class FullScreenAdRequest<SelfType extends FullScreenAdRequest<SelfType>> extends AdRequest<SelfType, FullScreenAdRequestParameters, xq.j> {

    /* loaded from: classes7.dex */
    protected static abstract class FullScreenRequestBuilder<SelfType extends FullScreenRequestBuilder<SelfType, ReturnType>, ReturnType extends FullScreenAdRequest<ReturnType>> extends AdRequest.AdRequestBuilderImpl<SelfType, ReturnType, FullScreenAdRequestParameters> {
        protected AdContentType adContentType = AdContentType.All;

        /* JADX INFO: Access modifiers changed from: protected */
        public SelfType setAdContentType(@NonNull AdContentType adContentType) {
            this.adContentType = adContentType;
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes7.dex */
    public static class b extends UnifiedAdRequestParamsImpl<FullScreenAdRequestParameters> implements xq.j {
        private b(@NonNull FullScreenAdRequestParameters fullScreenAdRequestParameters, @NonNull TargetingParams targetingParams, @NonNull lp.d dVar) {
            super(fullScreenAdRequestParameters, targetingParams, dVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public FullScreenAdRequest(@NonNull FullScreenAdRequestParameters fullScreenAdRequestParameters) {
        super(fullScreenAdRequestParameters);
    }

    @NonNull
    public AdContentType getAdContentType() {
        return getAdRequestParameters().getAdContentType();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // io.bidmachine.AdRequest
    public boolean isPlacementBuilderMatch(@NonNull om.n nVar) {
        if (super.isPlacementBuilderMatch(nVar) && getAdRequestParameters().isContentTypeMatch(nVar.g())) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.bidmachine.AdRequest
    @NonNull
    public xq.j createUnifiedAdRequestParams(@NonNull FullScreenAdRequestParameters fullScreenAdRequestParameters, @NonNull TargetingParams targetingParams, @NonNull lp.d dVar) {
        return new b(fullScreenAdRequestParameters, targetingParams, dVar);
    }
}
