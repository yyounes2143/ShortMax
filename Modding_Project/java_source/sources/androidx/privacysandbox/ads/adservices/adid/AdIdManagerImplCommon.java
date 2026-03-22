package androidx.privacysandbox.ads.adservices.adid;

import android.annotation.SuppressLint;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresExtension;
import androidx.annotation.RequiresPermission;
import androidx.annotation.RestrictTo;
import androidx.core.os.OutcomeReceiverKt;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AdIdManagerImplCommon.kt */
@RequiresExtension.Container({@RequiresExtension(extension = TTVideoEngineInterface.PLAYER_TIME_BASE, version = 4), @RequiresExtension(extension = 31, version = 9)})
@Metadata
@SuppressLint({"ClassVerificationFailure", "NewApi"})
@RestrictTo({RestrictTo.Scope.LIBRARY})
@SourceDebugExtension({"SMAP\nAdIdManagerImplCommon.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdIdManagerImplCommon.kt\nandroidx/privacysandbox/ads/adservices/adid/AdIdManagerImplCommon\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,53:1\n314#2,11:54\n*S KotlinDebug\n*F\n+ 1 AdIdManagerImplCommon.kt\nandroidx/privacysandbox/ads/adservices/adid/AdIdManagerImplCommon\n*L\n45#1:54,11\n*E\n"})
/* loaded from: classes2.dex */
public class AdIdManagerImplCommon extends AdIdManager {
    @NotNull
    private final android.adservices.adid.AdIdManager mAdIdManager;

    public AdIdManagerImplCommon(@NotNull android.adservices.adid.AdIdManager mAdIdManager) {
        Intrinsics.checkNotNullParameter(mAdIdManager, "mAdIdManager");
        this.mAdIdManager = mAdIdManager;
    }

    private final AdId convertResponse(android.adservices.adid.AdId adId) {
        String adId2;
        boolean isLimitAdTrackingEnabled;
        adId2 = adId.getAdId();
        Intrinsics.checkNotNullExpressionValue(adId2, "response.adId");
        isLimitAdTrackingEnabled = adId.isLimitAdTrackingEnabled();
        return new AdId(adId2, isLimitAdTrackingEnabled);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0035  */
    @androidx.annotation.RequiresPermission("android.permission.ACCESS_ADSERVICES_AD_ID")
    @androidx.annotation.DoNotInline
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ java.lang.Object getAdId$suspendImpl(androidx.privacysandbox.ads.adservices.adid.AdIdManagerImplCommon r4, rs.c<? super androidx.privacysandbox.ads.adservices.adid.AdId> r5) {
        /*
            boolean r0 = r5 instanceof androidx.privacysandbox.ads.adservices.adid.AdIdManagerImplCommon$getAdId$1
            if (r0 == 0) goto L13
            r0 = r5
            androidx.privacysandbox.ads.adservices.adid.AdIdManagerImplCommon$getAdId$1 r0 = (androidx.privacysandbox.ads.adservices.adid.AdIdManagerImplCommon$getAdId$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.privacysandbox.ads.adservices.adid.AdIdManagerImplCommon$getAdId$1 r0 = new androidx.privacysandbox.ads.adservices.adid.AdIdManagerImplCommon$getAdId$1
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.lang.Object r4 = r0.L$0
            androidx.privacysandbox.ads.adservices.adid.AdIdManagerImplCommon r4 = (androidx.privacysandbox.ads.adservices.adid.AdIdManagerImplCommon) r4
            kotlin.f.b(r5)
            goto L43
        L2d:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L35:
            kotlin.f.b(r5)
            r0.L$0 = r4
            r0.label = r3
            java.lang.Object r5 = r4.getAdIdAsyncInternal(r0)
            if (r5 != r1) goto L43
            return r1
        L43:
            android.adservices.adid.AdId r5 = androidx.privacysandbox.ads.adservices.adid.d.a(r5)
            androidx.privacysandbox.ads.adservices.adid.AdId r4 = r4.convertResponse(r5)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.privacysandbox.ads.adservices.adid.AdIdManagerImplCommon.getAdId$suspendImpl(androidx.privacysandbox.ads.adservices.adid.AdIdManagerImplCommon, rs.c):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresPermission("android.permission.ACCESS_ADSERVICES_AD_ID")
    public final Object getAdIdAsyncInternal(rs.c<? super android.adservices.adid.AdId> cVar) {
        kotlinx.coroutines.e eVar = new kotlinx.coroutines.e(kotlin.coroutines.intrinsics.a.c(cVar), 1);
        eVar.H();
        this.mAdIdManager.getAdId(new androidx.credentials.a(), OutcomeReceiverKt.asOutcomeReceiver(eVar));
        Object B = eVar.B();
        if (B == kotlin.coroutines.intrinsics.a.f()) {
            kotlin.coroutines.jvm.internal.f.c(cVar);
        }
        return B;
    }

    @Override // androidx.privacysandbox.ads.adservices.adid.AdIdManager
    @RequiresPermission("android.permission.ACCESS_ADSERVICES_AD_ID")
    @DoNotInline
    @Nullable
    public Object getAdId(@NotNull rs.c<? super AdId> cVar) {
        return getAdId$suspendImpl(this, cVar);
    }
}
