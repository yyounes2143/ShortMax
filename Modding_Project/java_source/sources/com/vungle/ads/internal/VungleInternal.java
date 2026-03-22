package com.vungle.ads.internal;

import android.content.Context;
import com.vungle.ads.AnalyticsClient;
import com.vungle.ads.BidTokenCallback;
import com.vungle.ads.BuildConfig;
import com.vungle.ads.SdkVersionTooLow;
import com.vungle.ads.ServiceLocator;
import com.vungle.ads.TimeIntervalMetric;
import com.vungle.ads.VungleAds;
import com.vungle.ads.internal.bidding.BidTokenEncoder;
import com.vungle.ads.internal.executor.FutureResult;
import com.vungle.ads.internal.executor.SDKExecutors;
import com.vungle.ads.internal.privacy.PrivacyManager;
import com.vungle.ads.internal.protos.Sdk;
import com.vungle.ads.internal.util.ConcurrencyTimeoutProvider;
import com.vungle.ads.internal.util.LogEntry;
import com.vungle.ads.internal.util.Utils;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: VungleInternal.kt */
@Metadata
/* loaded from: classes7.dex */
public final class VungleInternal {
    /* renamed from: getAvailableBidTokens$lambda-0  reason: not valid java name */
    private static final ConcurrencyTimeoutProvider m4787getAvailableBidTokens$lambda0(i<ConcurrencyTimeoutProvider> iVar) {
        return iVar.getValue();
    }

    /* renamed from: getAvailableBidTokens$lambda-1  reason: not valid java name */
    private static final SDKExecutors m4788getAvailableBidTokens$lambda1(i<SDKExecutors> iVar) {
        return iVar.getValue();
    }

    /* renamed from: getAvailableBidTokens$lambda-2  reason: not valid java name */
    private static final BidTokenEncoder m4789getAvailableBidTokens$lambda2(i<BidTokenEncoder> iVar) {
        return iVar.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: getAvailableBidTokens$lambda-3  reason: not valid java name */
    public static final String m4790getAvailableBidTokens$lambda3(i bidTokenEncoder$delegate) {
        Intrinsics.checkNotNullParameter(bidTokenEncoder$delegate, "$bidTokenEncoder$delegate");
        return m4789getAvailableBidTokens$lambda2(bidTokenEncoder$delegate).encode().getBidToken();
    }

    /* renamed from: getAvailableBidTokensAsync$lambda-4  reason: not valid java name */
    private static final BidTokenEncoder m4791getAvailableBidTokensAsync$lambda4(i<BidTokenEncoder> iVar) {
        return iVar.getValue();
    }

    /* renamed from: getAvailableBidTokensAsync$lambda-5  reason: not valid java name */
    private static final SDKExecutors m4792getAvailableBidTokensAsync$lambda5(i<SDKExecutors> iVar) {
        return iVar.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: getAvailableBidTokensAsync$lambda-6  reason: not valid java name */
    public static final void m4793getAvailableBidTokensAsync$lambda6(BidTokenCallback callback, i bidTokenEncoder$delegate) {
        Intrinsics.checkNotNullParameter(callback, "$callback");
        Intrinsics.checkNotNullParameter(bidTokenEncoder$delegate, "$bidTokenEncoder$delegate");
        TimeIntervalMetric timeIntervalMetric = new TimeIntervalMetric(Sdk.SDKMetric.SDKMetricType.BID_TOKEN_REQUEST_TO_RESPONSE_DURATION_MS);
        timeIntervalMetric.markStart();
        BidTokenEncoder.BiddingTokenInfo encode = m4791getAvailableBidTokensAsync$lambda4(bidTokenEncoder$delegate).encode();
        timeIntervalMetric.markEnd();
        if (encode.getBidToken().length() > 0) {
            callback.onBidTokenCollected(encode.getBidToken());
        } else {
            timeIntervalMetric.setMetricType(Sdk.SDKMetric.SDKMetricType.BID_TOKEN_REQUEST_TO_FAIL_DURATION_MS);
            timeIntervalMetric.setMeta(encode.getErrorMessage());
            callback.onBidTokenError(encode.getErrorMessage());
        }
        AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, timeIntervalMetric, (LogEntry) null, (String) null, 6, (Object) null);
    }

    @Nullable
    public final String getAvailableBidTokens(@NotNull final Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (Utils.INSTANCE.isOSVersionInvalid()) {
            new SdkVersionTooLow("Deprecated RTB: SDK is supported only for API versions 25 and above.").logErrorNoReturnValue$vungle_ads_release();
            return null;
        }
        TimeIntervalMetric timeIntervalMetric = new TimeIntervalMetric(Sdk.SDKMetric.SDKMetricType.BID_TOKEN_REQUEST_TO_RESPONSE_DURATION_MS);
        timeIntervalMetric.markStart();
        if (!VungleAds.Companion.isInitialized()) {
            PrivacyManager privacyManager = PrivacyManager.INSTANCE;
            Context applicationContext = context.getApplicationContext();
            Intrinsics.checkNotNullExpressionValue(applicationContext, "context.applicationContext");
            privacyManager.init(applicationContext);
        }
        ServiceLocator.Companion companion = ServiceLocator.Companion;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        i a10 = kotlin.c.a(lazyThreadSafetyMode, new Function0<ConcurrencyTimeoutProvider>() { // from class: com.vungle.ads.internal.VungleInternal$getAvailableBidTokens$$inlined$inject$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.util.ConcurrencyTimeoutProvider, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ConcurrencyTimeoutProvider invoke() {
                return ServiceLocator.Companion.getInstance(context).getService(ConcurrencyTimeoutProvider.class);
            }
        });
        i a11 = kotlin.c.a(lazyThreadSafetyMode, new Function0<SDKExecutors>() { // from class: com.vungle.ads.internal.VungleInternal$getAvailableBidTokens$$inlined$inject$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.executor.SDKExecutors, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final SDKExecutors invoke() {
                return ServiceLocator.Companion.getInstance(context).getService(SDKExecutors.class);
            }
        });
        final i a12 = kotlin.c.a(lazyThreadSafetyMode, new Function0<BidTokenEncoder>() { // from class: com.vungle.ads.internal.VungleInternal$getAvailableBidTokens$$inlined$inject$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.bidding.BidTokenEncoder, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final BidTokenEncoder invoke() {
                return ServiceLocator.Companion.getInstance(context).getService(BidTokenEncoder.class);
            }
        });
        String str = (String) new FutureResult(m4788getAvailableBidTokens$lambda1(a11).getApiExecutor().submit(new Callable() { // from class: com.vungle.ads.internal.d
            @Override // java.util.concurrent.Callable
            public final Object call() {
                String m4790getAvailableBidTokens$lambda3;
                m4790getAvailableBidTokens$lambda3 = VungleInternal.m4790getAvailableBidTokens$lambda3(i.this);
                return m4790getAvailableBidTokens$lambda3;
            }
        })).get(m4787getAvailableBidTokens$lambda0(a10).getTimeout(), TimeUnit.MILLISECONDS);
        if (str == null || str.length() == 0) {
            timeIntervalMetric.setMetricType(Sdk.SDKMetric.SDKMetricType.BID_TOKEN_REQUEST_TO_FAIL_DURATION_MS);
            timeIntervalMetric.setMeta("Bid token is null or empty");
        }
        timeIntervalMetric.markEnd();
        AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, timeIntervalMetric, (LogEntry) null, (String) null, 6, (Object) null);
        return str;
    }

    public final void getAvailableBidTokensAsync(@NotNull final Context context, @NotNull final BidTokenCallback callback) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(callback, "callback");
        if (Utils.INSTANCE.isOSVersionInvalid()) {
            new SdkVersionTooLow("RTB: SDK is supported only for API versions 25 and above.").logErrorNoReturnValue$vungle_ads_release();
            callback.onBidTokenError("RTB: SDK is supported only for API versions 25 and above.");
            return;
        }
        if (!VungleAds.Companion.isInitialized()) {
            PrivacyManager privacyManager = PrivacyManager.INSTANCE;
            Context applicationContext = context.getApplicationContext();
            Intrinsics.checkNotNullExpressionValue(applicationContext, "context.applicationContext");
            privacyManager.init(applicationContext);
        }
        ServiceLocator.Companion companion = ServiceLocator.Companion;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        final i a10 = kotlin.c.a(lazyThreadSafetyMode, new Function0<BidTokenEncoder>() { // from class: com.vungle.ads.internal.VungleInternal$getAvailableBidTokensAsync$$inlined$inject$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.bidding.BidTokenEncoder, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final BidTokenEncoder invoke() {
                return ServiceLocator.Companion.getInstance(context).getService(BidTokenEncoder.class);
            }
        });
        m4792getAvailableBidTokensAsync$lambda5(kotlin.c.a(lazyThreadSafetyMode, new Function0<SDKExecutors>() { // from class: com.vungle.ads.internal.VungleInternal$getAvailableBidTokensAsync$$inlined$inject$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.executor.SDKExecutors, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final SDKExecutors invoke() {
                return ServiceLocator.Companion.getInstance(context).getService(SDKExecutors.class);
            }
        })).getApiExecutor().execute(new Runnable() { // from class: com.vungle.ads.internal.e
            @Override // java.lang.Runnable
            public final void run() {
                VungleInternal.m4793getAvailableBidTokensAsync$lambda6(BidTokenCallback.this, a10);
            }
        });
    }

    @NotNull
    public final String getSdkVersion() {
        return BuildConfig.VERSION_NAME;
    }
}
