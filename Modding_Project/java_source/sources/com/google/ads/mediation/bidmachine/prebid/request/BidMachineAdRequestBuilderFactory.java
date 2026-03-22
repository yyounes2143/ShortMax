package com.google.ads.mediation.bidmachine.prebid.request;

import io.bidmachine.CustomParams;
import io.bidmachine.nativead.NativeRequest;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import lp.f;
import nm.b;
import org.jetbrains.annotations.NotNull;
import vq.c;
import xm.c;
@Metadata
/* loaded from: classes4.dex */
public final class BidMachineAdRequestBuilderFactory {
    @NotNull
    public static final BidMachineAdRequestBuilderFactory INSTANCE = new BidMachineAdRequestBuilderFactory();

    private BidMachineAdRequestBuilderFactory() {
    }

    @NotNull
    public static final <AdRequestBuilderT extends f<?, ?>> AdRequestBuilderT configure(@NotNull AdRequestBuilderT adRequestBuilder) {
        Intrinsics.checkNotNullParameter(adRequestBuilder, "adRequestBuilder");
        return (AdRequestBuilderT) configure$default(adRequestBuilder, null, 2, null);
    }

    public static /* synthetic */ f configure$default(f fVar, CustomParams customParams, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            customParams = new CustomParams();
        }
        return configure(fVar, customParams);
    }

    @NotNull
    public static final b.c createBannerRequestBuilder() {
        return createBannerRequestBuilder$default(null, 1, null);
    }

    public static /* synthetic */ b.c createBannerRequestBuilder$default(CustomParams customParams, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            customParams = new CustomParams();
        }
        return createBannerRequestBuilder(customParams);
    }

    @NotNull
    public static final c.b createInterstitialRequestBuilder() {
        return createInterstitialRequestBuilder$default(null, 1, null);
    }

    public static /* synthetic */ c.b createInterstitialRequestBuilder$default(CustomParams customParams, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            customParams = new CustomParams();
        }
        return createInterstitialRequestBuilder(customParams);
    }

    @NotNull
    public static final NativeRequest.Builder createNativeRequestBuilder() {
        return createNativeRequestBuilder$default(null, 1, null);
    }

    public static /* synthetic */ NativeRequest.Builder createNativeRequestBuilder$default(CustomParams customParams, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            customParams = new CustomParams();
        }
        return createNativeRequestBuilder(customParams);
    }

    @NotNull
    public static final c.b createRewardedRequestBuilder() {
        return createRewardedRequestBuilder$default(null, 1, null);
    }

    public static /* synthetic */ c.b createRewardedRequestBuilder$default(CustomParams customParams, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            customParams = new CustomParams();
        }
        return createRewardedRequestBuilder(customParams);
    }

    @NotNull
    public static final <AdRequestBuilderT extends f<?, ?>> AdRequestBuilderT configure(@NotNull AdRequestBuilderT adRequestBuilder, @NotNull CustomParams customParams) {
        Intrinsics.checkNotNullParameter(adRequestBuilder, "adRequestBuilder");
        Intrinsics.checkNotNullParameter(customParams, "customParams");
        customParams.m4919addParam("mediation_mode", "prebid_admob");
        adRequestBuilder.setCustomParams(customParams);
        return adRequestBuilder;
    }

    @NotNull
    public static final b.c createBannerRequestBuilder(@NotNull CustomParams customParams) {
        Intrinsics.checkNotNullParameter(customParams, "customParams");
        return (b.c) configure(new b.c(), customParams);
    }

    @NotNull
    public static final c.b createInterstitialRequestBuilder(@NotNull CustomParams customParams) {
        Intrinsics.checkNotNullParameter(customParams, "customParams");
        return (c.b) configure(new c.b(), customParams);
    }

    @NotNull
    public static final NativeRequest.Builder createNativeRequestBuilder(@NotNull CustomParams customParams) {
        Intrinsics.checkNotNullParameter(customParams, "customParams");
        return (NativeRequest.Builder) configure(new NativeRequest.Builder(), customParams);
    }

    @NotNull
    public static final c.b createRewardedRequestBuilder(@NotNull CustomParams customParams) {
        Intrinsics.checkNotNullParameter(customParams, "customParams");
        return (c.b) configure(new c.b(), customParams);
    }
}
