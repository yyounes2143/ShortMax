package androidx.privacysandbox.ads.adservices.adselection;

import android.annotation.SuppressLint;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresExtension;
import androidx.annotation.RequiresPermission;
import androidx.annotation.RestrictTo;
import androidx.core.os.OutcomeReceiverKt;
import androidx.privacysandbox.ads.adservices.internal.AdServicesInfo;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AdSelectionManagerImplCommon.kt */
@RequiresExtension.Container({@RequiresExtension(extension = TTVideoEngineInterface.PLAYER_TIME_BASE, version = 4), @RequiresExtension(extension = 31, version = 9)})
@Metadata
@SuppressLint({"NewApi", "ClassVerificationFailure"})
@RestrictTo({RestrictTo.Scope.LIBRARY})
@SourceDebugExtension({"SMAP\nAdSelectionManagerImplCommon.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdSelectionManagerImplCommon.kt\nandroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,230:1\n314#2,11:231\n314#2,11:242\n*S KotlinDebug\n*F\n+ 1 AdSelectionManagerImplCommon.kt\nandroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon\n*L\n50#1:231,11\n70#1:242,11\n*E\n"})
/* loaded from: classes2.dex */
public class AdSelectionManagerImplCommon extends AdSelectionManager {
    @NotNull
    private final android.adservices.adselection.AdSelectionManager mAdSelectionManager;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AdSelectionManagerImplCommon.kt */
    @RequiresExtension.Container({@RequiresExtension(extension = TTVideoEngineInterface.PLAYER_TIME_BASE, version = 10), @RequiresExtension(extension = 31, version = 10)})
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Ext10Impl {
        @NotNull
        public static final Companion Companion = new Companion(null);

        /* compiled from: AdSelectionManagerImplCommon.kt */
        @Metadata
        @SourceDebugExtension({"SMAP\nAdSelectionManagerImplCommon.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdSelectionManagerImplCommon.kt\nandroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon$Ext10Impl$Companion\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,230:1\n314#2,11:231\n314#2,11:242\n314#2,11:253\n*S KotlinDebug\n*F\n+ 1 AdSelectionManagerImplCommon.kt\nandroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon$Ext10Impl$Companion\n*L\n146#1:231,11\n165#1:242,11\n182#1:253,11\n*E\n"})
        /* loaded from: classes2.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
            /* JADX WARN: Removed duplicated region for block: B:14:0x003a  */
            @androidx.annotation.RequiresPermission("android.permission.ACCESS_ADSERVICES_CUSTOM_AUDIENCE")
            @androidx.annotation.DoNotInline
            @org.jetbrains.annotations.Nullable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object getAdSelectionData(@org.jetbrains.annotations.NotNull android.adservices.adselection.AdSelectionManager r5, @org.jetbrains.annotations.NotNull androidx.privacysandbox.ads.adservices.adselection.GetAdSelectionDataRequest r6, @org.jetbrains.annotations.NotNull rs.c<? super androidx.privacysandbox.ads.adservices.adselection.GetAdSelectionDataOutcome> r7) {
                /*
                    r4 = this;
                    boolean r0 = r7 instanceof androidx.privacysandbox.ads.adservices.adselection.AdSelectionManagerImplCommon$Ext10Impl$Companion$getAdSelectionData$1
                    if (r0 == 0) goto L13
                    r0 = r7
                    androidx.privacysandbox.ads.adservices.adselection.AdSelectionManagerImplCommon$Ext10Impl$Companion$getAdSelectionData$1 r0 = (androidx.privacysandbox.ads.adservices.adselection.AdSelectionManagerImplCommon$Ext10Impl$Companion$getAdSelectionData$1) r0
                    int r1 = r0.label
                    r2 = -2147483648(0xffffffff80000000, float:-0.0)
                    r3 = r1 & r2
                    if (r3 == 0) goto L13
                    int r1 = r1 - r2
                    r0.label = r1
                    goto L18
                L13:
                    androidx.privacysandbox.ads.adservices.adselection.AdSelectionManagerImplCommon$Ext10Impl$Companion$getAdSelectionData$1 r0 = new androidx.privacysandbox.ads.adservices.adselection.AdSelectionManagerImplCommon$Ext10Impl$Companion$getAdSelectionData$1
                    r0.<init>(r4, r7)
                L18:
                    java.lang.Object r7 = r0.result
                    java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
                    int r2 = r0.label
                    r3 = 1
                    if (r2 == 0) goto L3a
                    if (r2 != r3) goto L32
                    java.lang.Object r5 = r0.L$1
                    androidx.privacysandbox.ads.adservices.adselection.GetAdSelectionDataRequest r5 = (androidx.privacysandbox.ads.adservices.adselection.GetAdSelectionDataRequest) r5
                    java.lang.Object r5 = r0.L$0
                    androidx.privacysandbox.ads.adservices.adselection.r.a(r5)
                    kotlin.f.b(r7)
                    goto L6f
                L32:
                    java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
                    java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                    r5.<init>(r6)
                    throw r5
                L3a:
                    kotlin.f.b(r7)
                    r0.L$0 = r5
                    r0.L$1 = r6
                    r0.label = r3
                    kotlinx.coroutines.e r7 = new kotlinx.coroutines.e
                    rs.c r2 = kotlin.coroutines.intrinsics.a.c(r0)
                    r7.<init>(r2, r3)
                    r7.H()
                    android.adservices.adselection.GetAdSelectionDataRequest r6 = r6.convertToAdServices$ads_adservices_release()
                    androidx.credentials.a r2 = new androidx.credentials.a
                    r2.<init>()
                    android.os.OutcomeReceiver r3 = androidx.core.os.OutcomeReceiverKt.asOutcomeReceiver(r7)
                    androidx.privacysandbox.ads.adservices.adselection.w.a(r5, r6, r2, r3)
                    java.lang.Object r7 = r7.B()
                    java.lang.Object r5 = kotlin.coroutines.intrinsics.a.f()
                    if (r7 != r5) goto L6c
                    kotlin.coroutines.jvm.internal.f.c(r0)
                L6c:
                    if (r7 != r1) goto L6f
                    return r1
                L6f:
                    android.adservices.adselection.GetAdSelectionDataOutcome r5 = androidx.privacysandbox.ads.adservices.adselection.x.a(r7)
                    androidx.privacysandbox.ads.adservices.adselection.GetAdSelectionDataOutcome r6 = new androidx.privacysandbox.ads.adservices.adselection.GetAdSelectionDataOutcome
                    r6.<init>(r5)
                    return r6
                */
                throw new UnsupportedOperationException("Method not decompiled: androidx.privacysandbox.ads.adservices.adselection.AdSelectionManagerImplCommon.Ext10Impl.Companion.getAdSelectionData(android.adservices.adselection.AdSelectionManager, androidx.privacysandbox.ads.adservices.adselection.GetAdSelectionDataRequest, rs.c):java.lang.Object");
            }

            /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
            /* JADX WARN: Removed duplicated region for block: B:14:0x003a  */
            @androidx.annotation.RequiresPermission("android.permission.ACCESS_ADSERVICES_CUSTOM_AUDIENCE")
            @androidx.annotation.DoNotInline
            @org.jetbrains.annotations.Nullable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object persistAdSelectionResult(@org.jetbrains.annotations.NotNull android.adservices.adselection.AdSelectionManager r5, @org.jetbrains.annotations.NotNull androidx.privacysandbox.ads.adservices.adselection.PersistAdSelectionResultRequest r6, @org.jetbrains.annotations.NotNull rs.c<? super androidx.privacysandbox.ads.adservices.adselection.AdSelectionOutcome> r7) {
                /*
                    r4 = this;
                    boolean r0 = r7 instanceof androidx.privacysandbox.ads.adservices.adselection.AdSelectionManagerImplCommon$Ext10Impl$Companion$persistAdSelectionResult$1
                    if (r0 == 0) goto L13
                    r0 = r7
                    androidx.privacysandbox.ads.adservices.adselection.AdSelectionManagerImplCommon$Ext10Impl$Companion$persistAdSelectionResult$1 r0 = (androidx.privacysandbox.ads.adservices.adselection.AdSelectionManagerImplCommon$Ext10Impl$Companion$persistAdSelectionResult$1) r0
                    int r1 = r0.label
                    r2 = -2147483648(0xffffffff80000000, float:-0.0)
                    r3 = r1 & r2
                    if (r3 == 0) goto L13
                    int r1 = r1 - r2
                    r0.label = r1
                    goto L18
                L13:
                    androidx.privacysandbox.ads.adservices.adselection.AdSelectionManagerImplCommon$Ext10Impl$Companion$persistAdSelectionResult$1 r0 = new androidx.privacysandbox.ads.adservices.adselection.AdSelectionManagerImplCommon$Ext10Impl$Companion$persistAdSelectionResult$1
                    r0.<init>(r4, r7)
                L18:
                    java.lang.Object r7 = r0.result
                    java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
                    int r2 = r0.label
                    r3 = 1
                    if (r2 == 0) goto L3a
                    if (r2 != r3) goto L32
                    java.lang.Object r5 = r0.L$1
                    androidx.privacysandbox.ads.adservices.adselection.PersistAdSelectionResultRequest r5 = (androidx.privacysandbox.ads.adservices.adselection.PersistAdSelectionResultRequest) r5
                    java.lang.Object r5 = r0.L$0
                    androidx.privacysandbox.ads.adservices.adselection.r.a(r5)
                    kotlin.f.b(r7)
                    goto L6f
                L32:
                    java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
                    java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                    r5.<init>(r6)
                    throw r5
                L3a:
                    kotlin.f.b(r7)
                    r0.L$0 = r5
                    r0.L$1 = r6
                    r0.label = r3
                    kotlinx.coroutines.e r7 = new kotlinx.coroutines.e
                    rs.c r2 = kotlin.coroutines.intrinsics.a.c(r0)
                    r7.<init>(r2, r3)
                    r7.H()
                    android.adservices.adselection.PersistAdSelectionResultRequest r6 = r6.convertToAdServices$ads_adservices_release()
                    androidx.credentials.a r2 = new androidx.credentials.a
                    r2.<init>()
                    android.os.OutcomeReceiver r3 = androidx.core.os.OutcomeReceiverKt.asOutcomeReceiver(r7)
                    androidx.privacysandbox.ads.adservices.adselection.y.a(r5, r6, r2, r3)
                    java.lang.Object r7 = r7.B()
                    java.lang.Object r5 = kotlin.coroutines.intrinsics.a.f()
                    if (r7 != r5) goto L6c
                    kotlin.coroutines.jvm.internal.f.c(r0)
                L6c:
                    if (r7 != r1) goto L6f
                    return r1
                L6f:
                    android.adservices.adselection.AdSelectionOutcome r5 = androidx.privacysandbox.ads.adservices.adselection.s.a(r7)
                    androidx.privacysandbox.ads.adservices.adselection.AdSelectionOutcome r6 = new androidx.privacysandbox.ads.adservices.adselection.AdSelectionOutcome
                    r6.<init>(r5)
                    return r6
                */
                throw new UnsupportedOperationException("Method not decompiled: androidx.privacysandbox.ads.adservices.adselection.AdSelectionManagerImplCommon.Ext10Impl.Companion.persistAdSelectionResult(android.adservices.adselection.AdSelectionManager, androidx.privacysandbox.ads.adservices.adselection.PersistAdSelectionResultRequest, rs.c):java.lang.Object");
            }

            /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
            /* JADX WARN: Removed duplicated region for block: B:14:0x003a  */
            @androidx.annotation.RequiresPermission("android.permission.ACCESS_ADSERVICES_CUSTOM_AUDIENCE")
            @androidx.annotation.DoNotInline
            @org.jetbrains.annotations.Nullable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object selectAds(@org.jetbrains.annotations.NotNull android.adservices.adselection.AdSelectionManager r5, @org.jetbrains.annotations.NotNull androidx.privacysandbox.ads.adservices.adselection.AdSelectionFromOutcomesConfig r6, @org.jetbrains.annotations.NotNull rs.c<? super androidx.privacysandbox.ads.adservices.adselection.AdSelectionOutcome> r7) {
                /*
                    r4 = this;
                    boolean r0 = r7 instanceof androidx.privacysandbox.ads.adservices.adselection.AdSelectionManagerImplCommon$Ext10Impl$Companion$selectAds$1
                    if (r0 == 0) goto L13
                    r0 = r7
                    androidx.privacysandbox.ads.adservices.adselection.AdSelectionManagerImplCommon$Ext10Impl$Companion$selectAds$1 r0 = (androidx.privacysandbox.ads.adservices.adselection.AdSelectionManagerImplCommon$Ext10Impl$Companion$selectAds$1) r0
                    int r1 = r0.label
                    r2 = -2147483648(0xffffffff80000000, float:-0.0)
                    r3 = r1 & r2
                    if (r3 == 0) goto L13
                    int r1 = r1 - r2
                    r0.label = r1
                    goto L18
                L13:
                    androidx.privacysandbox.ads.adservices.adselection.AdSelectionManagerImplCommon$Ext10Impl$Companion$selectAds$1 r0 = new androidx.privacysandbox.ads.adservices.adselection.AdSelectionManagerImplCommon$Ext10Impl$Companion$selectAds$1
                    r0.<init>(r4, r7)
                L18:
                    java.lang.Object r7 = r0.result
                    java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
                    int r2 = r0.label
                    r3 = 1
                    if (r2 == 0) goto L3a
                    if (r2 != r3) goto L32
                    java.lang.Object r5 = r0.L$1
                    androidx.privacysandbox.ads.adservices.adselection.AdSelectionFromOutcomesConfig r5 = (androidx.privacysandbox.ads.adservices.adselection.AdSelectionFromOutcomesConfig) r5
                    java.lang.Object r5 = r0.L$0
                    androidx.privacysandbox.ads.adservices.adselection.r.a(r5)
                    kotlin.f.b(r7)
                    goto L6f
                L32:
                    java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
                    java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                    r5.<init>(r6)
                    throw r5
                L3a:
                    kotlin.f.b(r7)
                    r0.L$0 = r5
                    r0.L$1 = r6
                    r0.label = r3
                    kotlinx.coroutines.e r7 = new kotlinx.coroutines.e
                    rs.c r2 = kotlin.coroutines.intrinsics.a.c(r0)
                    r7.<init>(r2, r3)
                    r7.H()
                    android.adservices.adselection.AdSelectionFromOutcomesConfig r6 = r6.convertToAdServices$ads_adservices_release()
                    androidx.credentials.a r2 = new androidx.credentials.a
                    r2.<init>()
                    android.os.OutcomeReceiver r3 = androidx.core.os.OutcomeReceiverKt.asOutcomeReceiver(r7)
                    androidx.privacysandbox.ads.adservices.adselection.v.a(r5, r6, r2, r3)
                    java.lang.Object r7 = r7.B()
                    java.lang.Object r5 = kotlin.coroutines.intrinsics.a.f()
                    if (r7 != r5) goto L6c
                    kotlin.coroutines.jvm.internal.f.c(r0)
                L6c:
                    if (r7 != r1) goto L6f
                    return r1
                L6f:
                    android.adservices.adselection.AdSelectionOutcome r5 = androidx.privacysandbox.ads.adservices.adselection.s.a(r7)
                    androidx.privacysandbox.ads.adservices.adselection.AdSelectionOutcome r6 = new androidx.privacysandbox.ads.adservices.adselection.AdSelectionOutcome
                    r6.<init>(r5)
                    return r6
                */
                throw new UnsupportedOperationException("Method not decompiled: androidx.privacysandbox.ads.adservices.adselection.AdSelectionManagerImplCommon.Ext10Impl.Companion.selectAds(android.adservices.adselection.AdSelectionManager, androidx.privacysandbox.ads.adservices.adselection.AdSelectionFromOutcomesConfig, rs.c):java.lang.Object");
            }

            private Companion() {
            }
        }

        private Ext10Impl() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AdSelectionManagerImplCommon.kt */
    @RequiresExtension.Container({@RequiresExtension(extension = TTVideoEngineInterface.PLAYER_TIME_BASE, version = 8), @RequiresExtension(extension = 31, version = 9)})
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Ext8Impl {
        @NotNull
        public static final Companion Companion = new Companion(null);

        /* compiled from: AdSelectionManagerImplCommon.kt */
        @Metadata
        @SourceDebugExtension({"SMAP\nAdSelectionManagerImplCommon.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdSelectionManagerImplCommon.kt\nandroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon$Ext8Impl$Companion\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,230:1\n314#2,11:231\n314#2,11:242\n*S KotlinDebug\n*F\n+ 1 AdSelectionManagerImplCommon.kt\nandroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon$Ext8Impl$Companion\n*L\n204#1:231,11\n219#1:242,11\n*E\n"})
        /* loaded from: classes2.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @RequiresPermission("android.permission.ACCESS_ADSERVICES_CUSTOM_AUDIENCE")
            @DoNotInline
            @Nullable
            public final Object reportEvent(@NotNull android.adservices.adselection.AdSelectionManager adSelectionManager, @NotNull ReportEventRequest reportEventRequest, @NotNull rs.c<? super Unit> cVar) {
                kotlinx.coroutines.e eVar = new kotlinx.coroutines.e(kotlin.coroutines.intrinsics.a.c(cVar), 1);
                eVar.H();
                adSelectionManager.reportEvent(reportEventRequest.convertToAdServices$ads_adservices_release(), new androidx.credentials.a(), OutcomeReceiverKt.asOutcomeReceiver(eVar));
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
            @Nullable
            public final Object updateAdCounterHistogram(@NotNull android.adservices.adselection.AdSelectionManager adSelectionManager, @NotNull UpdateAdCounterHistogramRequest updateAdCounterHistogramRequest, @NotNull rs.c<? super Unit> cVar) {
                kotlinx.coroutines.e eVar = new kotlinx.coroutines.e(kotlin.coroutines.intrinsics.a.c(cVar), 1);
                eVar.H();
                adSelectionManager.updateAdCounterHistogram(updateAdCounterHistogramRequest.convertToAdServices$ads_adservices_release(), new androidx.credentials.a(), OutcomeReceiverKt.asOutcomeReceiver(eVar));
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

        private Ext8Impl() {
        }
    }

    public AdSelectionManagerImplCommon(@NotNull android.adservices.adselection.AdSelectionManager mAdSelectionManager) {
        Intrinsics.checkNotNullParameter(mAdSelectionManager, "mAdSelectionManager");
        this.mAdSelectionManager = mAdSelectionManager;
    }

    @RequiresPermission("android.permission.ACCESS_ADSERVICES_CUSTOM_AUDIENCE")
    @DoNotInline
    static /* synthetic */ Object getAdSelectionData$suspendImpl(AdSelectionManagerImplCommon adSelectionManagerImplCommon, GetAdSelectionDataRequest getAdSelectionDataRequest, rs.c<? super GetAdSelectionDataOutcome> cVar) {
        AdServicesInfo adServicesInfo = AdServicesInfo.INSTANCE;
        if (adServicesInfo.adServicesVersion() < 10 && adServicesInfo.extServicesVersionS() < 10) {
            throw new UnsupportedOperationException("API is not available. Min version is API 31 ext 10");
        }
        return Ext10Impl.Companion.getAdSelectionData(adSelectionManagerImplCommon.mAdSelectionManager, getAdSelectionDataRequest, cVar);
    }

    @RequiresPermission("android.permission.ACCESS_ADSERVICES_CUSTOM_AUDIENCE")
    @DoNotInline
    static /* synthetic */ Object persistAdSelectionResult$suspendImpl(AdSelectionManagerImplCommon adSelectionManagerImplCommon, PersistAdSelectionResultRequest persistAdSelectionResultRequest, rs.c<? super AdSelectionOutcome> cVar) {
        AdServicesInfo adServicesInfo = AdServicesInfo.INSTANCE;
        if (adServicesInfo.adServicesVersion() < 10 && adServicesInfo.extServicesVersionS() < 10) {
            throw new UnsupportedOperationException("API is not available. Min version is API 31 ext 10");
        }
        return Ext10Impl.Companion.persistAdSelectionResult(adSelectionManagerImplCommon.mAdSelectionManager, persistAdSelectionResultRequest, cVar);
    }

    @RequiresPermission("android.permission.ACCESS_ADSERVICES_CUSTOM_AUDIENCE")
    @DoNotInline
    static /* synthetic */ Object reportEvent$suspendImpl(AdSelectionManagerImplCommon adSelectionManagerImplCommon, ReportEventRequest reportEventRequest, rs.c<? super Unit> cVar) {
        AdServicesInfo adServicesInfo = AdServicesInfo.INSTANCE;
        if (adServicesInfo.adServicesVersion() < 8 && adServicesInfo.extServicesVersionS() < 9) {
            throw new UnsupportedOperationException("API is unsupported. Min version is API 33 ext 8 or API 31/32 ext 9");
        }
        Object reportEvent = Ext8Impl.Companion.reportEvent(adSelectionManagerImplCommon.mAdSelectionManager, reportEventRequest, cVar);
        if (reportEvent == kotlin.coroutines.intrinsics.a.f()) {
            return reportEvent;
        }
        return Unit.f60915a;
    }

    @RequiresPermission("android.permission.ACCESS_ADSERVICES_CUSTOM_AUDIENCE")
    @DoNotInline
    static /* synthetic */ Object reportImpression$suspendImpl(AdSelectionManagerImplCommon adSelectionManagerImplCommon, ReportImpressionRequest reportImpressionRequest, rs.c<? super Unit> cVar) {
        kotlinx.coroutines.e eVar = new kotlinx.coroutines.e(kotlin.coroutines.intrinsics.a.c(cVar), 1);
        eVar.H();
        adSelectionManagerImplCommon.getMAdSelectionManager().reportImpression(reportImpressionRequest.convertToAdServices$ads_adservices_release(), new androidx.credentials.a(), OutcomeReceiverKt.asOutcomeReceiver(eVar));
        Object B = eVar.B();
        if (B == kotlin.coroutines.intrinsics.a.f()) {
            kotlin.coroutines.jvm.internal.f.c(cVar);
        }
        if (B == kotlin.coroutines.intrinsics.a.f()) {
            return B;
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
    @androidx.annotation.RequiresPermission("android.permission.ACCESS_ADSERVICES_CUSTOM_AUDIENCE")
    @androidx.annotation.DoNotInline
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ java.lang.Object selectAds$suspendImpl(androidx.privacysandbox.ads.adservices.adselection.AdSelectionManagerImplCommon r4, androidx.privacysandbox.ads.adservices.adselection.AdSelectionConfig r5, rs.c<? super androidx.privacysandbox.ads.adservices.adselection.AdSelectionOutcome> r6) {
        /*
            boolean r0 = r6 instanceof androidx.privacysandbox.ads.adservices.adselection.AdSelectionManagerImplCommon$selectAds$1
            if (r0 == 0) goto L13
            r0 = r6
            androidx.privacysandbox.ads.adservices.adselection.AdSelectionManagerImplCommon$selectAds$1 r0 = (androidx.privacysandbox.ads.adservices.adselection.AdSelectionManagerImplCommon$selectAds$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.privacysandbox.ads.adservices.adselection.AdSelectionManagerImplCommon$selectAds$1 r0 = new androidx.privacysandbox.ads.adservices.adselection.AdSelectionManagerImplCommon$selectAds$1
            r0.<init>(r4, r6)
        L18:
            java.lang.Object r6 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.f.b(r6)
            goto L41
        L29:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L31:
            kotlin.f.b(r6)
            android.adservices.adselection.AdSelectionConfig r5 = r5.convertToAdServices$ads_adservices_release()
            r0.label = r3
            java.lang.Object r6 = r4.selectAdsInternal(r5, r0)
            if (r6 != r1) goto L41
            return r1
        L41:
            android.adservices.adselection.AdSelectionOutcome r4 = androidx.privacysandbox.ads.adservices.adselection.s.a(r6)
            androidx.privacysandbox.ads.adservices.adselection.AdSelectionOutcome r5 = new androidx.privacysandbox.ads.adservices.adselection.AdSelectionOutcome
            r5.<init>(r4)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.privacysandbox.ads.adservices.adselection.AdSelectionManagerImplCommon.selectAds$suspendImpl(androidx.privacysandbox.ads.adservices.adselection.AdSelectionManagerImplCommon, androidx.privacysandbox.ads.adservices.adselection.AdSelectionConfig, rs.c):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresPermission("android.permission.ACCESS_ADSERVICES_CUSTOM_AUDIENCE")
    public final Object selectAdsInternal(android.adservices.adselection.AdSelectionConfig adSelectionConfig, rs.c<? super android.adservices.adselection.AdSelectionOutcome> cVar) {
        kotlinx.coroutines.e eVar = new kotlinx.coroutines.e(kotlin.coroutines.intrinsics.a.c(cVar), 1);
        eVar.H();
        getMAdSelectionManager().selectAds(adSelectionConfig, new androidx.credentials.a(), OutcomeReceiverKt.asOutcomeReceiver(eVar));
        Object B = eVar.B();
        if (B == kotlin.coroutines.intrinsics.a.f()) {
            kotlin.coroutines.jvm.internal.f.c(cVar);
        }
        return B;
    }

    @RequiresPermission("android.permission.ACCESS_ADSERVICES_CUSTOM_AUDIENCE")
    @DoNotInline
    static /* synthetic */ Object updateAdCounterHistogram$suspendImpl(AdSelectionManagerImplCommon adSelectionManagerImplCommon, UpdateAdCounterHistogramRequest updateAdCounterHistogramRequest, rs.c<? super Unit> cVar) {
        AdServicesInfo adServicesInfo = AdServicesInfo.INSTANCE;
        if (adServicesInfo.adServicesVersion() < 8 && adServicesInfo.extServicesVersionS() < 9) {
            throw new UnsupportedOperationException("API is unsupported. Min version is API 33 ext 8 or API 31/32 ext 9");
        }
        Object updateAdCounterHistogram = Ext8Impl.Companion.updateAdCounterHistogram(adSelectionManagerImplCommon.mAdSelectionManager, updateAdCounterHistogramRequest, cVar);
        if (updateAdCounterHistogram == kotlin.coroutines.intrinsics.a.f()) {
            return updateAdCounterHistogram;
        }
        return Unit.f60915a;
    }

    @Override // androidx.privacysandbox.ads.adservices.adselection.AdSelectionManager
    @RequiresPermission("android.permission.ACCESS_ADSERVICES_CUSTOM_AUDIENCE")
    @DoNotInline
    @Nullable
    public Object getAdSelectionData(@NotNull GetAdSelectionDataRequest getAdSelectionDataRequest, @NotNull rs.c<? super GetAdSelectionDataOutcome> cVar) {
        return getAdSelectionData$suspendImpl(this, getAdSelectionDataRequest, cVar);
    }

    @NotNull
    protected final android.adservices.adselection.AdSelectionManager getMAdSelectionManager() {
        return this.mAdSelectionManager;
    }

    @Override // androidx.privacysandbox.ads.adservices.adselection.AdSelectionManager
    @RequiresPermission("android.permission.ACCESS_ADSERVICES_CUSTOM_AUDIENCE")
    @DoNotInline
    @Nullable
    public Object persistAdSelectionResult(@NotNull PersistAdSelectionResultRequest persistAdSelectionResultRequest, @NotNull rs.c<? super AdSelectionOutcome> cVar) {
        return persistAdSelectionResult$suspendImpl(this, persistAdSelectionResultRequest, cVar);
    }

    @Override // androidx.privacysandbox.ads.adservices.adselection.AdSelectionManager
    @RequiresPermission("android.permission.ACCESS_ADSERVICES_CUSTOM_AUDIENCE")
    @DoNotInline
    @Nullable
    public Object reportEvent(@NotNull ReportEventRequest reportEventRequest, @NotNull rs.c<? super Unit> cVar) {
        return reportEvent$suspendImpl(this, reportEventRequest, cVar);
    }

    @Override // androidx.privacysandbox.ads.adservices.adselection.AdSelectionManager
    @RequiresPermission("android.permission.ACCESS_ADSERVICES_CUSTOM_AUDIENCE")
    @DoNotInline
    @Nullable
    public Object reportImpression(@NotNull ReportImpressionRequest reportImpressionRequest, @NotNull rs.c<? super Unit> cVar) {
        return reportImpression$suspendImpl(this, reportImpressionRequest, cVar);
    }

    @Override // androidx.privacysandbox.ads.adservices.adselection.AdSelectionManager
    @RequiresPermission("android.permission.ACCESS_ADSERVICES_CUSTOM_AUDIENCE")
    @DoNotInline
    @Nullable
    public Object selectAds(@NotNull AdSelectionConfig adSelectionConfig, @NotNull rs.c<? super AdSelectionOutcome> cVar) {
        return selectAds$suspendImpl(this, adSelectionConfig, cVar);
    }

    @Override // androidx.privacysandbox.ads.adservices.adselection.AdSelectionManager
    @RequiresPermission("android.permission.ACCESS_ADSERVICES_CUSTOM_AUDIENCE")
    @DoNotInline
    @Nullable
    public Object updateAdCounterHistogram(@NotNull UpdateAdCounterHistogramRequest updateAdCounterHistogramRequest, @NotNull rs.c<? super Unit> cVar) {
        return updateAdCounterHistogram$suspendImpl(this, updateAdCounterHistogramRequest, cVar);
    }

    @Override // androidx.privacysandbox.ads.adservices.adselection.AdSelectionManager
    @RequiresPermission("android.permission.ACCESS_ADSERVICES_CUSTOM_AUDIENCE")
    @DoNotInline
    @Nullable
    public Object selectAds(@NotNull AdSelectionFromOutcomesConfig adSelectionFromOutcomesConfig, @NotNull rs.c<? super AdSelectionOutcome> cVar) {
        return selectAds$suspendImpl(this, adSelectionFromOutcomesConfig, cVar);
    }

    @RequiresPermission("android.permission.ACCESS_ADSERVICES_CUSTOM_AUDIENCE")
    @DoNotInline
    static /* synthetic */ Object selectAds$suspendImpl(AdSelectionManagerImplCommon adSelectionManagerImplCommon, AdSelectionFromOutcomesConfig adSelectionFromOutcomesConfig, rs.c<? super AdSelectionOutcome> cVar) {
        AdServicesInfo adServicesInfo = AdServicesInfo.INSTANCE;
        if (adServicesInfo.adServicesVersion() < 10 && adServicesInfo.extServicesVersionS() < 10) {
            throw new UnsupportedOperationException("API is not available. Min version is API 31 ext 10");
        }
        return Ext10Impl.Companion.selectAds(adSelectionManagerImplCommon.mAdSelectionManager, adSelectionFromOutcomesConfig, cVar);
    }
}
