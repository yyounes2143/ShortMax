package nm;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.bidmachine.AdRequest;
import io.bidmachine.CustomParams;
import io.bidmachine.PriceFloorParams;
import io.bidmachine.SessionAdParams;
import io.bidmachine.TargetingParams;
import io.bidmachine.UnifiedAdRequestParamsImpl;
import io.bidmachine.banner.BannerSize;
import java.util.List;
import lp.d;
import lp.f;
import xq.g;
/* compiled from: BannerRequest.java */
/* loaded from: classes7.dex */
public final class b extends AdRequest<b, nm.a, g> {

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: BannerRequest.java */
    /* renamed from: nm.b$b  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static class C0878b extends UnifiedAdRequestParamsImpl<nm.a> implements g {
        @Override // io.bidmachine.UnifiedAdRequestParamsImpl, xq.d
        @NonNull
        public /* bridge */ /* synthetic */ nm.a getAdRequestParameters() {
            return (nm.a) super.getAdRequestParameters();
        }

        private C0878b(@NonNull nm.a aVar, @NonNull TargetingParams targetingParams, @NonNull d dVar) {
            super(aVar, targetingParams, dVar);
        }
    }

    /* compiled from: BannerRequest.java */
    /* loaded from: classes7.dex */
    public static final class c extends AdRequest.AdRequestBuilderImpl<c, b, nm.a> {

        /* renamed from: a  reason: collision with root package name */
        private BannerSize f62981a;

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.bidmachine.AdRequest.AdRequestBuilderImpl
        @NonNull
        /* renamed from: a */
        public b build(@NonNull nm.a aVar) {
            return new b(aVar);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.bidmachine.AdRequest.AdRequestBuilderImpl
        @NonNull
        /* renamed from: b */
        public nm.a createAdRequestParameters() {
            BannerSize bannerSize = this.f62981a;
            if (bannerSize != null) {
                return new nm.a(bannerSize);
            }
            throw new IllegalArgumentException("BannerSize can't be null");
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [nm.b, io.bidmachine.AdRequest] */
        @Override // io.bidmachine.AdRequest.AdRequestBuilderImpl
        @NonNull
        public /* bridge */ /* synthetic */ b build() {
            return super.build();
        }

        public c c(@NonNull BannerSize bannerSize) {
            this.f62981a = bannerSize;
            return this;
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [nm.b$c, lp.f] */
        @Override // io.bidmachine.AdRequest.AdRequestBuilderImpl
        @NonNull
        public /* bridge */ /* synthetic */ c setBidPayload(@Nullable String str) {
            return super.setBidPayload(str);
        }

        @Override // io.bidmachine.AdRequest.AdRequestBuilderImpl, lp.f
        @NonNull
        public /* bridge */ /* synthetic */ f setCustomParams(@Nullable CustomParams customParams) {
            return super.setCustomParams(customParams);
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [nm.b$c, lp.f] */
        @Override // io.bidmachine.AdRequest.AdRequestBuilderImpl
        @NonNull
        public /* bridge */ /* synthetic */ c setListener(@Nullable AdRequest.AdRequestListener<b> adRequestListener) {
            return super.setListener(adRequestListener);
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [nm.b$c, lp.f] */
        @Override // io.bidmachine.AdRequest.AdRequestBuilderImpl
        @NonNull
        public /* bridge */ /* synthetic */ c setLoadingTimeOut(@Nullable Integer num) {
            return super.setLoadingTimeOut(num);
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [nm.b$c, lp.f] */
        @Override // io.bidmachine.AdRequest.AdRequestBuilderImpl
        @NonNull
        public /* bridge */ /* synthetic */ c setNetworks(@Nullable String str) {
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

        /* JADX WARN: Type inference failed for: r1v1, types: [nm.b$c, lp.f] */
        @Override // io.bidmachine.AdRequest.AdRequestBuilderImpl
        @NonNull
        @Deprecated
        public /* bridge */ /* synthetic */ c setSessionAdParams(@Nullable SessionAdParams sessionAdParams) {
            return super.setSessionAdParams(sessionAdParams);
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [nm.b$c, lp.f] */
        @Override // io.bidmachine.AdRequest.AdRequestBuilderImpl
        @NonNull
        public /* bridge */ /* synthetic */ c setTargetingParams(@Nullable TargetingParams targetingParams) {
            return super.setTargetingParams(targetingParams);
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [nm.b$c, lp.f] */
        @Override // io.bidmachine.AdRequest.AdRequestBuilderImpl
        @NonNull
        public /* bridge */ /* synthetic */ c setNetworks(@Nullable List list) {
            return super.setNetworks(list);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.bidmachine.AdRequest
    @NonNull
    /* renamed from: j */
    public g createUnifiedAdRequestParams(@NonNull nm.a aVar, @NonNull TargetingParams targetingParams, @NonNull d dVar) {
        return new C0878b(aVar, targetingParams, dVar);
    }

    public BannerSize k() {
        return getAdRequestParameters().b();
    }

    private b(@NonNull nm.a aVar) {
        super(aVar);
    }
}
