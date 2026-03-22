package androidx.privacysandbox.ads.adservices.customaudience;

import android.adservices.common.AdData;
import android.adservices.common.AdSelectionSignals;
import android.adservices.customaudience.CustomAudience;
import android.adservices.customaudience.JoinCustomAudienceRequest;
import android.adservices.customaudience.LeaveCustomAudienceRequest;
import android.adservices.customaudience.TrustedBiddingData;
import android.annotation.SuppressLint;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresExtension;
import androidx.annotation.RequiresPermission;
import androidx.annotation.RestrictTo;
import androidx.core.os.OutcomeReceiverKt;
import androidx.privacysandbox.ads.adservices.internal.AdServicesInfo;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CustomAudienceManagerImplCommon.kt */
@RequiresExtension.Container({@RequiresExtension(extension = TTVideoEngineInterface.PLAYER_TIME_BASE, version = 4), @RequiresExtension(extension = 31, version = 9)})
@Metadata
@SuppressLint({"NewApi", "ClassVerificationFailure"})
@RestrictTo({RestrictTo.Scope.LIBRARY})
@SourceDebugExtension({"SMAP\nCustomAudienceManagerImplCommon.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CustomAudienceManagerImplCommon.kt\nandroidx/privacysandbox/ads/adservices/customaudience/CustomAudienceManagerImplCommon\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,148:1\n314#2,11:149\n314#2,11:160\n*S KotlinDebug\n*F\n+ 1 CustomAudienceManagerImplCommon.kt\nandroidx/privacysandbox/ads/adservices/customaudience/CustomAudienceManagerImplCommon\n*L\n44#1:149,11\n67#1:160,11\n*E\n"})
/* loaded from: classes2.dex */
public class CustomAudienceManagerImplCommon extends CustomAudienceManager {
    @NotNull
    private final android.adservices.customaudience.CustomAudienceManager customAudienceManager;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: CustomAudienceManagerImplCommon.kt */
    @RequiresExtension.Container({@RequiresExtension(extension = TTVideoEngineInterface.PLAYER_TIME_BASE, version = 10), @RequiresExtension(extension = 31, version = 10)})
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Ext10Impl {
        @NotNull
        public static final Companion Companion = new Companion(null);

        /* compiled from: CustomAudienceManagerImplCommon.kt */
        @Metadata
        @SourceDebugExtension({"SMAP\nCustomAudienceManagerImplCommon.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CustomAudienceManagerImplCommon.kt\nandroidx/privacysandbox/ads/adservices/customaudience/CustomAudienceManagerImplCommon$Ext10Impl$Companion\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,148:1\n314#2,11:149\n*S KotlinDebug\n*F\n+ 1 CustomAudienceManagerImplCommon.kt\nandroidx/privacysandbox/ads/adservices/customaudience/CustomAudienceManagerImplCommon$Ext10Impl$Companion\n*L\n137#1:149,11\n*E\n"})
        /* loaded from: classes2.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @RequiresPermission("android.permission.ACCESS_ADSERVICES_CUSTOM_AUDIENCE")
            @DoNotInline
            @Nullable
            public final Object fetchAndJoinCustomAudience(@NotNull android.adservices.customaudience.CustomAudienceManager customAudienceManager, @NotNull FetchAndJoinCustomAudienceRequest fetchAndJoinCustomAudienceRequest, @NotNull rs.c<? super Unit> cVar) {
                kotlinx.coroutines.e eVar = new kotlinx.coroutines.e(kotlin.coroutines.intrinsics.a.c(cVar), 1);
                eVar.H();
                customAudienceManager.fetchAndJoinCustomAudience(fetchAndJoinCustomAudienceRequest.convertToAdServices$ads_adservices_release(), new androidx.credentials.a(), OutcomeReceiverKt.asOutcomeReceiver(eVar));
                Object B = eVar.B();
                if (B == kotlin.coroutines.intrinsics.a.f()) {
                    kotlin.coroutines.jvm.internal.f.c(cVar);
                }
                if (B == kotlin.coroutines.intrinsics.a.f()) {
                    return B;
                }
                return Unit.f60915a;
            }

            private Companion() {
            }
        }

        private Ext10Impl() {
        }
    }

    public CustomAudienceManagerImplCommon(@NotNull android.adservices.customaudience.CustomAudienceManager customAudienceManager) {
        Intrinsics.checkNotNullParameter(customAudienceManager, "customAudienceManager");
        this.customAudienceManager = customAudienceManager;
    }

    private final List<AdData> convertAds(List<androidx.privacysandbox.ads.adservices.common.AdData> list) {
        ArrayList arrayList = new ArrayList();
        for (androidx.privacysandbox.ads.adservices.common.AdData adData : list) {
            arrayList.add(adData.convertToAdServices$ads_adservices_release());
        }
        return arrayList;
    }

    private final android.adservices.customaudience.CustomAudience convertCustomAudience(CustomAudience customAudience) {
        CustomAudience.Builder activationTime;
        CustomAudience.Builder ads;
        CustomAudience.Builder biddingLogicUri;
        CustomAudience.Builder buyer;
        CustomAudience.Builder dailyUpdateUri;
        CustomAudience.Builder expirationTime;
        CustomAudience.Builder name;
        CustomAudience.Builder trustedBiddingData;
        AdSelectionSignals adSelectionSignals;
        CustomAudience.Builder userBiddingSignals;
        android.adservices.customaudience.CustomAudience build;
        activationTime = s.a().setActivationTime(customAudience.getActivationTime());
        ads = activationTime.setAds(convertAds(customAudience.getAds()));
        biddingLogicUri = ads.setBiddingLogicUri(customAudience.getBiddingLogicUri());
        buyer = biddingLogicUri.setBuyer(customAudience.getBuyer().convertToAdServices$ads_adservices_release());
        dailyUpdateUri = buyer.setDailyUpdateUri(customAudience.getDailyUpdateUri());
        expirationTime = dailyUpdateUri.setExpirationTime(customAudience.getExpirationTime());
        name = expirationTime.setName(customAudience.getName());
        trustedBiddingData = name.setTrustedBiddingData(convertTrustedSignals(customAudience.getTrustedBiddingSignals()));
        androidx.privacysandbox.ads.adservices.common.AdSelectionSignals userBiddingSignals2 = customAudience.getUserBiddingSignals();
        if (userBiddingSignals2 != null) {
            adSelectionSignals = userBiddingSignals2.convertToAdServices$ads_adservices_release();
        } else {
            adSelectionSignals = null;
        }
        userBiddingSignals = trustedBiddingData.setUserBiddingSignals(adSelectionSignals);
        build = userBiddingSignals.build();
        Intrinsics.checkNotNullExpressionValue(build, "Builder()\n            .s…s())\n            .build()");
        return build;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final android.adservices.customaudience.JoinCustomAudienceRequest convertJoinRequest(JoinCustomAudienceRequest joinCustomAudienceRequest) {
        JoinCustomAudienceRequest.Builder customAudience;
        android.adservices.customaudience.JoinCustomAudienceRequest build;
        customAudience = r.a().setCustomAudience(convertCustomAudience(joinCustomAudienceRequest.getCustomAudience()));
        build = customAudience.build();
        Intrinsics.checkNotNullExpressionValue(build, "Builder()\n            .s…ce))\n            .build()");
        return build;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final android.adservices.customaudience.LeaveCustomAudienceRequest convertLeaveRequest(LeaveCustomAudienceRequest leaveCustomAudienceRequest) {
        LeaveCustomAudienceRequest.Builder buyer;
        LeaveCustomAudienceRequest.Builder name;
        android.adservices.customaudience.LeaveCustomAudienceRequest build;
        buyer = p.a().setBuyer(leaveCustomAudienceRequest.getBuyer().convertToAdServices$ads_adservices_release());
        name = buyer.setName(leaveCustomAudienceRequest.getName());
        build = name.build();
        Intrinsics.checkNotNullExpressionValue(build, "Builder()\n            .s…ame)\n            .build()");
        return build;
    }

    private final android.adservices.customaudience.TrustedBiddingData convertTrustedSignals(TrustedBiddingData trustedBiddingData) {
        TrustedBiddingData.Builder trustedBiddingKeys;
        TrustedBiddingData.Builder trustedBiddingUri;
        android.adservices.customaudience.TrustedBiddingData build;
        if (trustedBiddingData != null) {
            trustedBiddingKeys = q.a().setTrustedBiddingKeys(trustedBiddingData.getTrustedBiddingKeys());
            trustedBiddingUri = trustedBiddingKeys.setTrustedBiddingUri(trustedBiddingData.getTrustedBiddingUri());
            build = trustedBiddingUri.build();
            return build;
        }
        return null;
    }

    @RequiresPermission("android.permission.ACCESS_ADSERVICES_CUSTOM_AUDIENCE")
    @DoNotInline
    static /* synthetic */ Object fetchAndJoinCustomAudience$suspendImpl(CustomAudienceManagerImplCommon customAudienceManagerImplCommon, FetchAndJoinCustomAudienceRequest fetchAndJoinCustomAudienceRequest, rs.c<? super Unit> cVar) {
        AdServicesInfo adServicesInfo = AdServicesInfo.INSTANCE;
        if (adServicesInfo.adServicesVersion() < 10 && adServicesInfo.extServicesVersionS() < 10) {
            throw new UnsupportedOperationException("API is not available. Min version is API 31 ext 10");
        }
        Object fetchAndJoinCustomAudience = Ext10Impl.Companion.fetchAndJoinCustomAudience(customAudienceManagerImplCommon.customAudienceManager, fetchAndJoinCustomAudienceRequest, cVar);
        if (fetchAndJoinCustomAudience == kotlin.coroutines.intrinsics.a.f()) {
            return fetchAndJoinCustomAudience;
        }
        return Unit.f60915a;
    }

    @RequiresPermission("android.permission.ACCESS_ADSERVICES_CUSTOM_AUDIENCE")
    @DoNotInline
    static /* synthetic */ Object joinCustomAudience$suspendImpl(CustomAudienceManagerImplCommon customAudienceManagerImplCommon, JoinCustomAudienceRequest joinCustomAudienceRequest, rs.c<? super Unit> cVar) {
        kotlinx.coroutines.e eVar = new kotlinx.coroutines.e(kotlin.coroutines.intrinsics.a.c(cVar), 1);
        eVar.H();
        customAudienceManagerImplCommon.getCustomAudienceManager().joinCustomAudience(customAudienceManagerImplCommon.convertJoinRequest(joinCustomAudienceRequest), new androidx.credentials.a(), OutcomeReceiverKt.asOutcomeReceiver(eVar));
        Object B = eVar.B();
        if (B == kotlin.coroutines.intrinsics.a.f()) {
            kotlin.coroutines.jvm.internal.f.c(cVar);
        }
        if (B == kotlin.coroutines.intrinsics.a.f()) {
            return B;
        }
        return Unit.f60915a;
    }

    @RequiresPermission("android.permission.ACCESS_ADSERVICES_CUSTOM_AUDIENCE")
    @DoNotInline
    static /* synthetic */ Object leaveCustomAudience$suspendImpl(CustomAudienceManagerImplCommon customAudienceManagerImplCommon, LeaveCustomAudienceRequest leaveCustomAudienceRequest, rs.c<? super Unit> cVar) {
        kotlinx.coroutines.e eVar = new kotlinx.coroutines.e(kotlin.coroutines.intrinsics.a.c(cVar), 1);
        eVar.H();
        customAudienceManagerImplCommon.getCustomAudienceManager().leaveCustomAudience(customAudienceManagerImplCommon.convertLeaveRequest(leaveCustomAudienceRequest), new androidx.credentials.a(), OutcomeReceiverKt.asOutcomeReceiver(eVar));
        Object B = eVar.B();
        if (B == kotlin.coroutines.intrinsics.a.f()) {
            kotlin.coroutines.jvm.internal.f.c(cVar);
        }
        if (B == kotlin.coroutines.intrinsics.a.f()) {
            return B;
        }
        return Unit.f60915a;
    }

    @Override // androidx.privacysandbox.ads.adservices.customaudience.CustomAudienceManager
    @RequiresPermission("android.permission.ACCESS_ADSERVICES_CUSTOM_AUDIENCE")
    @DoNotInline
    @Nullable
    public Object fetchAndJoinCustomAudience(@NotNull FetchAndJoinCustomAudienceRequest fetchAndJoinCustomAudienceRequest, @NotNull rs.c<? super Unit> cVar) {
        return fetchAndJoinCustomAudience$suspendImpl(this, fetchAndJoinCustomAudienceRequest, cVar);
    }

    @NotNull
    protected final android.adservices.customaudience.CustomAudienceManager getCustomAudienceManager() {
        return this.customAudienceManager;
    }

    @Override // androidx.privacysandbox.ads.adservices.customaudience.CustomAudienceManager
    @RequiresPermission("android.permission.ACCESS_ADSERVICES_CUSTOM_AUDIENCE")
    @DoNotInline
    @Nullable
    public Object joinCustomAudience(@NotNull JoinCustomAudienceRequest joinCustomAudienceRequest, @NotNull rs.c<? super Unit> cVar) {
        return joinCustomAudience$suspendImpl(this, joinCustomAudienceRequest, cVar);
    }

    @Override // androidx.privacysandbox.ads.adservices.customaudience.CustomAudienceManager
    @RequiresPermission("android.permission.ACCESS_ADSERVICES_CUSTOM_AUDIENCE")
    @DoNotInline
    @Nullable
    public Object leaveCustomAudience(@NotNull LeaveCustomAudienceRequest leaveCustomAudienceRequest, @NotNull rs.c<? super Unit> cVar) {
        return leaveCustomAudience$suspendImpl(this, leaveCustomAudienceRequest, cVar);
    }
}
