package vq;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.explorestack.protobuf.adcom.Placement;
import io.bidmachine.AdRequest;
import io.bidmachine.CustomParams;
import io.bidmachine.FullScreenAdRequest;
import io.bidmachine.FullScreenAdRequestParameters;
import io.bidmachine.PriceFloorParams;
import io.bidmachine.SessionAdParams;
import io.bidmachine.TargetingParams;
import java.util.List;
import lp.f;
/* compiled from: RewardedRequest.java */
/* loaded from: classes8.dex */
public final class c extends FullScreenAdRequest<c> {

    /* compiled from: RewardedRequest.java */
    /* loaded from: classes8.dex */
    public static final class b extends FullScreenAdRequest.FullScreenRequestBuilder<b, c> {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.bidmachine.AdRequest.AdRequestBuilderImpl
        @NonNull
        /* renamed from: a */
        public c build(@NonNull FullScreenAdRequestParameters fullScreenAdRequestParameters) {
            return new c(fullScreenAdRequestParameters);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.bidmachine.AdRequest.AdRequestBuilderImpl
        @NonNull
        /* renamed from: b */
        public FullScreenAdRequestParameters createAdRequestParameters() {
            return new vq.b(this.adContentType);
        }

        @Override // io.bidmachine.AdRequest.AdRequestBuilderImpl
        @NonNull
        public /* bridge */ /* synthetic */ AdRequest build() {
            return super.build();
        }

        @Override // io.bidmachine.AdRequest.AdRequestBuilderImpl
        @NonNull
        public /* bridge */ /* synthetic */ f setBidPayload(@Nullable String str) {
            return super.setBidPayload(str);
        }

        @Override // io.bidmachine.AdRequest.AdRequestBuilderImpl, lp.f
        @NonNull
        public /* bridge */ /* synthetic */ f setCustomParams(@Nullable CustomParams customParams) {
            return super.setCustomParams(customParams);
        }

        @Override // io.bidmachine.AdRequest.AdRequestBuilderImpl
        @NonNull
        public /* bridge */ /* synthetic */ f setListener(@Nullable AdRequest.AdRequestListener adRequestListener) {
            return super.setListener(adRequestListener);
        }

        @Override // io.bidmachine.AdRequest.AdRequestBuilderImpl
        @NonNull
        public /* bridge */ /* synthetic */ f setLoadingTimeOut(@Nullable Integer num) {
            return super.setLoadingTimeOut(num);
        }

        @Override // io.bidmachine.AdRequest.AdRequestBuilderImpl
        @NonNull
        public /* bridge */ /* synthetic */ f setNetworks(@Nullable String str) {
            return super.setNetworks(str);
        }

        @Override // io.bidmachine.AdRequest.AdRequestBuilderImpl, lp.f
        @NonNull
        public /* bridge */ /* synthetic */ f setPlacementId(@Nullable String str) {
            return super.setPlacementId(str);
        }

        @Override // io.bidmachine.AdRequest.AdRequestBuilderImpl, lp.f
        @NonNull
        public /* bridge */ /* synthetic */ f setPriceFloorParams(@Nullable PriceFloorParams priceFloorParams) {
            return super.setPriceFloorParams(priceFloorParams);
        }

        @Override // io.bidmachine.AdRequest.AdRequestBuilderImpl
        @NonNull
        @Deprecated
        public /* bridge */ /* synthetic */ f setSessionAdParams(@Nullable SessionAdParams sessionAdParams) {
            return super.setSessionAdParams(sessionAdParams);
        }

        @Override // io.bidmachine.AdRequest.AdRequestBuilderImpl
        @NonNull
        public /* bridge */ /* synthetic */ f setTargetingParams(@Nullable TargetingParams targetingParams) {
            return super.setTargetingParams(targetingParams);
        }

        @Override // io.bidmachine.AdRequest.AdRequestBuilderImpl
        @NonNull
        public /* bridge */ /* synthetic */ f setNetworks(@Nullable List list) {
            return super.setNetworks(list);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.bidmachine.AdRequest
    public void onBuildPlacement(@NonNull Placement.Builder builder) {
        super.onBuildPlacement(builder);
        builder.setReward(true);
    }

    private c(@NonNull FullScreenAdRequestParameters fullScreenAdRequestParameters) {
        super(fullScreenAdRequestParameters);
    }
}
