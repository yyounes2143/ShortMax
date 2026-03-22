package io.bidmachine.nativead;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.bidmachine.AdRequest;
import io.bidmachine.CustomParams;
import io.bidmachine.MediaAssetType;
import io.bidmachine.PriceFloorParams;
import io.bidmachine.SessionAdParams;
import io.bidmachine.TargetingParams;
import io.bidmachine.UnifiedAdRequestParamsImpl;
import io.bidmachine.protobuf.ResponsePayload;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import lp.d;
import lp.f;
import xq.n;
/* loaded from: classes8.dex */
public final class NativeRequest extends AdRequest<NativeRequest, io.bidmachine.nativead.a, n> {

    /* loaded from: classes8.dex */
    public static final class Builder extends AdRequest.AdRequestBuilderImpl<Builder, NativeRequest, io.bidmachine.nativead.a> {

        /* renamed from: a  reason: collision with root package name */
        private final List<MediaAssetType> f57949a = new ArrayList<MediaAssetType>(MediaAssetType.values().length) { // from class: io.bidmachine.nativead.NativeRequest.Builder.1
            {
                add(MediaAssetType.Icon);
                add(MediaAssetType.Image);
            }
        };

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.bidmachine.AdRequest.AdRequestBuilderImpl
        @NonNull
        /* renamed from: a */
        public NativeRequest build(@NonNull io.bidmachine.nativead.a aVar) {
            return new NativeRequest(aVar);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.bidmachine.AdRequest.AdRequestBuilderImpl
        @NonNull
        /* renamed from: b */
        public io.bidmachine.nativead.a createAdRequestParameters() {
            return new io.bidmachine.nativead.a(this.f57949a);
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [io.bidmachine.nativead.NativeRequest, io.bidmachine.AdRequest] */
        @Override // io.bidmachine.AdRequest.AdRequestBuilderImpl
        @NonNull
        public /* bridge */ /* synthetic */ NativeRequest build() {
            return super.build();
        }

        public Builder c(@NonNull MediaAssetType... mediaAssetTypeArr) {
            if (mediaAssetTypeArr.length > 0) {
                this.f57949a.clear();
                this.f57949a.addAll(Arrays.asList(mediaAssetTypeArr));
            }
            return this;
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [io.bidmachine.nativead.NativeRequest$Builder, lp.f] */
        @Override // io.bidmachine.AdRequest.AdRequestBuilderImpl
        @NonNull
        public /* bridge */ /* synthetic */ Builder setBidPayload(@Nullable String str) {
            return super.setBidPayload(str);
        }

        @Override // io.bidmachine.AdRequest.AdRequestBuilderImpl, lp.f
        @NonNull
        public /* bridge */ /* synthetic */ f setCustomParams(@Nullable CustomParams customParams) {
            return super.setCustomParams(customParams);
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [io.bidmachine.nativead.NativeRequest$Builder, lp.f] */
        @Override // io.bidmachine.AdRequest.AdRequestBuilderImpl
        @NonNull
        public /* bridge */ /* synthetic */ Builder setListener(@Nullable AdRequest.AdRequestListener<NativeRequest> adRequestListener) {
            return super.setListener(adRequestListener);
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [io.bidmachine.nativead.NativeRequest$Builder, lp.f] */
        @Override // io.bidmachine.AdRequest.AdRequestBuilderImpl
        @NonNull
        public /* bridge */ /* synthetic */ Builder setLoadingTimeOut(@Nullable Integer num) {
            return super.setLoadingTimeOut(num);
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [io.bidmachine.nativead.NativeRequest$Builder, lp.f] */
        @Override // io.bidmachine.AdRequest.AdRequestBuilderImpl
        @NonNull
        public /* bridge */ /* synthetic */ Builder setNetworks(@Nullable String str) {
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

        /* JADX WARN: Type inference failed for: r1v1, types: [io.bidmachine.nativead.NativeRequest$Builder, lp.f] */
        @Override // io.bidmachine.AdRequest.AdRequestBuilderImpl
        @NonNull
        @Deprecated
        public /* bridge */ /* synthetic */ Builder setSessionAdParams(@Nullable SessionAdParams sessionAdParams) {
            return super.setSessionAdParams(sessionAdParams);
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [io.bidmachine.nativead.NativeRequest$Builder, lp.f] */
        @Override // io.bidmachine.AdRequest.AdRequestBuilderImpl
        @NonNull
        public /* bridge */ /* synthetic */ Builder setTargetingParams(@Nullable TargetingParams targetingParams) {
            return super.setTargetingParams(targetingParams);
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [io.bidmachine.nativead.NativeRequest$Builder, lp.f] */
        @Override // io.bidmachine.AdRequest.AdRequestBuilderImpl
        @NonNull
        public /* bridge */ /* synthetic */ Builder setNetworks(@Nullable List list) {
            return super.setNetworks(list);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes8.dex */
    public static class b extends UnifiedAdRequestParamsImpl<io.bidmachine.nativead.a> implements n {
        @Override // io.bidmachine.UnifiedAdRequestParamsImpl, xq.d
        @NonNull
        public /* bridge */ /* synthetic */ io.bidmachine.nativead.a getAdRequestParameters() {
            return (io.bidmachine.nativead.a) super.getAdRequestParameters();
        }

        private b(@NonNull io.bidmachine.nativead.a aVar, @NonNull TargetingParams targetingParams, @NonNull d dVar) {
            super(aVar, targetingParams, dVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.bidmachine.AdRequest
    @NonNull
    /* renamed from: j */
    public n createUnifiedAdRequestParams(@NonNull io.bidmachine.nativead.a aVar, @NonNull TargetingParams targetingParams, @NonNull d dVar) {
        return new b(aVar, targetingParams, dVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.bidmachine.AdRequest
    public void processBidPayload(@NonNull ResponsePayload responsePayload) {
        getAdRequestParameters().d(false);
        super.processBidPayload(responsePayload);
    }

    private NativeRequest(@NonNull io.bidmachine.nativead.a aVar) {
        super(aVar);
    }
}
