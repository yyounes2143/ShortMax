package com.vungle.ads.internal.bidding;

import android.content.Context;
import androidx.annotation.VisibleForTesting;
import com.vungle.ads.AnalyticsClient;
import com.vungle.ads.GzipEncodeError;
import com.vungle.ads.JsonEncodeError;
import com.vungle.ads.ServiceLocator;
import com.vungle.ads.SingleValueMetric;
import com.vungle.ads.internal.ConfigManager;
import com.vungle.ads.internal.model.CommonRequestBody;
import com.vungle.ads.internal.model.RtbRequest;
import com.vungle.ads.internal.model.RtbToken;
import com.vungle.ads.internal.network.VungleApiClient;
import com.vungle.ads.internal.network.VungleHeader;
import com.vungle.ads.internal.protos.Sdk;
import com.vungle.ads.internal.util.ActivityManager;
import com.vungle.ads.internal.util.InputOutputUtils;
import com.vungle.ads.internal.util.LogEntry;
import com.vungle.ads.internal.util.Logger;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.json.a;
import kotlinx.serialization.json.c;
import kotlinx.serialization.json.s;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import st.t;
/* compiled from: BidTokenEncoder.kt */
@Metadata
/* loaded from: classes7.dex */
public final class BidTokenEncoder {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String TAG = "BidTokenEncoder";
    public static final int TOKEN_VERSION = 6;
    @NotNull
    private SingleValueMetric bidTokenRequestedMetric;
    @NotNull
    private final Context context;
    private long enterBackgroundTime;
    @NotNull
    private final a json;
    private int ordinalView;

    /* compiled from: BidTokenEncoder.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class BiddingTokenInfo {
        @NotNull
        private final String bidToken;
        @NotNull
        private final String errorMessage;

        public BiddingTokenInfo(@NotNull String bidToken, @NotNull String errorMessage) {
            Intrinsics.checkNotNullParameter(bidToken, "bidToken");
            Intrinsics.checkNotNullParameter(errorMessage, "errorMessage");
            this.bidToken = bidToken;
            this.errorMessage = errorMessage;
        }

        public static /* synthetic */ BiddingTokenInfo copy$default(BiddingTokenInfo biddingTokenInfo, String str, String str2, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                str = biddingTokenInfo.bidToken;
            }
            if ((i10 & 2) != 0) {
                str2 = biddingTokenInfo.errorMessage;
            }
            return biddingTokenInfo.copy(str, str2);
        }

        @NotNull
        public final String component1() {
            return this.bidToken;
        }

        @NotNull
        public final String component2() {
            return this.errorMessage;
        }

        @NotNull
        public final BiddingTokenInfo copy(@NotNull String bidToken, @NotNull String errorMessage) {
            Intrinsics.checkNotNullParameter(bidToken, "bidToken");
            Intrinsics.checkNotNullParameter(errorMessage, "errorMessage");
            return new BiddingTokenInfo(bidToken, errorMessage);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof BiddingTokenInfo)) {
                return false;
            }
            BiddingTokenInfo biddingTokenInfo = (BiddingTokenInfo) obj;
            if (Intrinsics.areEqual(this.bidToken, biddingTokenInfo.bidToken) && Intrinsics.areEqual(this.errorMessage, biddingTokenInfo.errorMessage)) {
                return true;
            }
            return false;
        }

        @NotNull
        public final String getBidToken() {
            return this.bidToken;
        }

        @NotNull
        public final String getErrorMessage() {
            return this.errorMessage;
        }

        public int hashCode() {
            return (this.bidToken.hashCode() * 31) + this.errorMessage.hashCode();
        }

        @NotNull
        public String toString() {
            return "BiddingTokenInfo(bidToken=" + this.bidToken + ", errorMessage=" + this.errorMessage + ')';
        }
    }

    /* compiled from: BidTokenEncoder.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public BidTokenEncoder(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
        this.bidTokenRequestedMetric = new SingleValueMetric(Sdk.SDKMetric.SDKMetricType.BID_TOKEN_REQUESTED);
        this.json = s.b(null, new Function1<c, Unit>() { // from class: com.vungle.ads.internal.bidding.BidTokenEncoder$json$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(c cVar) {
                invoke2(cVar);
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull c Json) {
                Intrinsics.checkNotNullParameter(Json, "$this$Json");
                Json.f(true);
                Json.d(true);
                Json.e(false);
            }
        }, 1, null);
        ActivityManager.Companion.addLifecycleListener(new ActivityManager.LifeCycleCallback() { // from class: com.vungle.ads.internal.bidding.BidTokenEncoder.1
            @Override // com.vungle.ads.internal.util.ActivityManager.LifeCycleCallback
            public void onBackground() {
                BidTokenEncoder.this.onPause$vungle_ads_release();
            }

            @Override // com.vungle.ads.internal.util.ActivityManager.LifeCycleCallback
            public void onForeground() {
                BidTokenEncoder.this.onResume$vungle_ads_release();
            }
        });
    }

    /* renamed from: constructV6Token$lambda-0  reason: not valid java name */
    private static final VungleApiClient m4794constructV6Token$lambda0(i<VungleApiClient> iVar) {
        return iVar.getValue();
    }

    private final BiddingTokenInfo generateBidToken() {
        AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, this.bidTokenRequestedMetric, (LogEntry) null, (String) null, 6, (Object) null);
        try {
            String constructV6Token$vungle_ads_release = constructV6Token$vungle_ads_release();
            Logger.Companion companion = Logger.Companion;
            companion.d(TAG, "BidToken: " + constructV6Token$vungle_ads_release);
            try {
                String str = "6:" + InputOutputUtils.INSTANCE.convertForSending(constructV6Token$vungle_ads_release);
                companion.d(TAG, "After conversion: " + str);
                return new BiddingTokenInfo(str, "");
            } catch (Throwable th2) {
                String str2 = "Fail to gzip token data. " + th2.getLocalizedMessage();
                new GzipEncodeError(str2).logErrorNoReturnValue$vungle_ads_release();
                return new BiddingTokenInfo("", str2);
            }
        } catch (Throwable th3) {
            String str3 = "Failed to encode TokenParameters. " + th3.getLocalizedMessage();
            new JsonEncodeError(str3).logErrorNoReturnValue$vungle_ads_release();
            return new BiddingTokenInfo("", str3);
        }
    }

    @VisibleForTesting
    @NotNull
    public final String constructV6Token$vungle_ads_release() {
        ServiceLocator.Companion companion = ServiceLocator.Companion;
        final Context context = this.context;
        VungleApiClient m4794constructV6Token$lambda0 = m4794constructV6Token$lambda0(kotlin.c.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0<VungleApiClient>() { // from class: com.vungle.ads.internal.bidding.BidTokenEncoder$constructV6Token$$inlined$inject$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.network.VungleApiClient, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final VungleApiClient invoke() {
                return ServiceLocator.Companion.getInstance(context).getService(VungleApiClient.class);
            }
        }));
        ConfigManager configManager = ConfigManager.INSTANCE;
        CommonRequestBody requestBody = m4794constructV6Token$lambda0.requestBody(!configManager.signalsDisabled(), configManager.fpdEnabled());
        RtbToken rtbToken = new RtbToken(requestBody.getDevice(), requestBody.getUser(), requestBody.getExt(), new RtbRequest(VungleHeader.INSTANCE.getHeaderUa()), this.ordinalView);
        a aVar = this.json;
        KSerializer<Object> c10 = t.c(aVar.getSerializersModule(), Reflection.typeOf(RtbToken.class));
        Intrinsics.checkNotNull(c10, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
        return aVar.a(c10, rtbToken);
    }

    @NotNull
    public final BiddingTokenInfo encode() {
        this.ordinalView++;
        return generateBidToken();
    }

    public final long getEnterBackgroundTime$vungle_ads_release() {
        return this.enterBackgroundTime;
    }

    public final int getOrdinalView$vungle_ads_release() {
        return this.ordinalView;
    }

    @VisibleForTesting(otherwise = 2)
    public final void onPause$vungle_ads_release() {
        Logger.Companion.d(TAG, "BidTokenEncoder#onBackground()");
        this.enterBackgroundTime = System.currentTimeMillis();
    }

    @VisibleForTesting(otherwise = 2)
    public final void onResume$vungle_ads_release() {
        Logger.Companion.d(TAG, "BidTokenEncoder#onForeground()");
        if (System.currentTimeMillis() > this.enterBackgroundTime + ConfigManager.INSTANCE.getSessionTimeout()) {
            this.ordinalView = 0;
            this.enterBackgroundTime = 0L;
        }
    }

    public final void setEnterBackgroundTime$vungle_ads_release(long j10) {
        this.enterBackgroundTime = j10;
    }

    public final void setOrdinalView$vungle_ads_release(int i10) {
        this.ordinalView = i10;
    }

    @VisibleForTesting(otherwise = 2)
    public static /* synthetic */ void getEnterBackgroundTime$vungle_ads_release$annotations() {
    }

    private static /* synthetic */ void getJson$annotations() {
    }

    @VisibleForTesting(otherwise = 2)
    public static /* synthetic */ void getOrdinalView$vungle_ads_release$annotations() {
    }
}
