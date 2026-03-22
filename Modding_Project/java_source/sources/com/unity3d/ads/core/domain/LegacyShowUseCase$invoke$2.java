package com.unity3d.ads.core.domain;

import at.q;
import com.unity3d.ads.UnityAds;
import com.unity3d.ads.core.data.model.AdObject;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: LegacyShowUseCase.kt */
@Metadata
@d(c = "com.unity3d.ads.core.domain.LegacyShowUseCase$invoke$2", f = "LegacyShowUseCase.kt", l = {179, 185, 186}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class LegacyShowUseCase$invoke$2 extends SuspendLambda implements Function2<Function0<? extends Unit>, c<? super Unit>, Object> {
    final /* synthetic */ AdObject $adObject;
    final /* synthetic */ boolean $isBanner;
    final /* synthetic */ String $placement;
    final /* synthetic */ q<String, UnityAds.UnityAdsShowError, String, Integer, String, c<? super Unit>, Object> $reportShowError;
    final /* synthetic */ boolean $useTimeout;
    /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ LegacyShowUseCase this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public LegacyShowUseCase$invoke$2(LegacyShowUseCase legacyShowUseCase, boolean z10, AdObject adObject, boolean z11, q<? super String, ? super UnityAds.UnityAdsShowError, ? super String, ? super Integer, ? super String, ? super c<? super Unit>, ? extends Object> qVar, String str, c<? super LegacyShowUseCase$invoke$2> cVar) {
        super(2, cVar);
        this.this$0 = legacyShowUseCase;
        this.$isBanner = z10;
        this.$adObject = adObject;
        this.$useTimeout = z11;
        this.$reportShowError = qVar;
        this.$placement = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        LegacyShowUseCase$invoke$2 legacyShowUseCase$invoke$2 = new LegacyShowUseCase$invoke$2(this.this$0, this.$isBanner, this.$adObject, this.$useTimeout, this.$reportShowError, this.$placement, cVar);
        legacyShowUseCase$invoke$2.L$0 = obj;
        return legacyShowUseCase$invoke$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(Function0<? extends Unit> function0, c<? super Unit> cVar) {
        return invoke2((Function0<Unit>) function0, cVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00b3 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00b4  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r11) {
        /*
            r10 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
            int r1 = r10.label
            r2 = 3
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L32
            if (r1 == r4) goto L2a
            if (r1 == r3) goto L22
            if (r1 != r2) goto L1a
            java.lang.Object r0 = r10.L$0
            kotlin.jvm.functions.Function0 r0 = (kotlin.jvm.functions.Function0) r0
            kotlin.f.b(r11)
            goto Lb5
        L1a:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r0)
            throw r11
        L22:
            java.lang.Object r1 = r10.L$0
            kotlin.jvm.functions.Function0 r1 = (kotlin.jvm.functions.Function0) r1
            kotlin.f.b(r11)
            goto L8d
        L2a:
            java.lang.Object r1 = r10.L$0
            kotlin.jvm.functions.Function0 r1 = (kotlin.jvm.functions.Function0) r1
            kotlin.f.b(r11)
            goto L76
        L32:
            kotlin.f.b(r11)
            java.lang.Object r11 = r10.L$0
            r1 = r11
            kotlin.jvm.functions.Function0 r1 = (kotlin.jvm.functions.Function0) r1
            com.unity3d.ads.core.domain.LegacyShowUseCase r11 = r10.this$0
            kt.e r11 = com.unity3d.ads.core.domain.LegacyShowUseCase.access$getHasStarted$p(r11)
            java.lang.Object r11 = r11.getValue()
            java.lang.Boolean r11 = (java.lang.Boolean) r11
            boolean r11 = r11.booleanValue()
            if (r11 != 0) goto Lbb
            com.unity3d.ads.core.domain.LegacyShowUseCase r11 = r10.this$0
            kt.e r11 = com.unity3d.ads.core.domain.LegacyShowUseCase.access$getTimeoutCancellationRequested$p(r11)
            java.lang.Object r11 = r11.getValue()
            java.lang.Boolean r11 = (java.lang.Boolean) r11
            boolean r11 = r11.booleanValue()
            if (r11 != 0) goto Lbb
            boolean r11 = r10.$isBanner
            if (r11 == 0) goto L63
            goto Lbb
        L63:
            com.unity3d.ads.core.domain.LegacyShowUseCase r11 = r10.this$0
            gatewayprotocol.v1.OperativeEventRequestOuterClass$OperativeEventErrorType r5 = gatewayprotocol.v1.OperativeEventRequestOuterClass.OperativeEventErrorType.OPERATIVE_EVENT_ERROR_TYPE_TIMEOUT
            com.unity3d.ads.core.data.model.AdObject r6 = r10.$adObject
            r10.L$0 = r1
            r10.label = r4
            java.lang.String r4 = "timeout"
            java.lang.Object r11 = com.unity3d.ads.core.domain.LegacyShowUseCase.access$sendOperativeError(r11, r5, r4, r6, r10)
            if (r11 != r0) goto L76
            return r0
        L76:
            boolean r11 = r10.$useTimeout
            if (r11 == 0) goto Lb8
            com.unity3d.ads.core.domain.LegacyShowUseCase r11 = r10.this$0
            com.unity3d.ads.core.domain.Show r11 = com.unity3d.ads.core.domain.LegacyShowUseCase.access$getShow$p(r11)
            com.unity3d.ads.core.data.model.AdObject r4 = r10.$adObject
            r10.L$0 = r1
            r10.label = r3
            java.lang.Object r11 = r11.terminate(r4, r10)
            if (r11 != r0) goto L8d
            return r0
        L8d:
            at.q<java.lang.String, com.unity3d.ads.UnityAds$UnityAdsShowError, java.lang.String, java.lang.Integer, java.lang.String, rs.c<? super kotlin.Unit>, java.lang.Object> r3 = r10.$reportShowError
            com.unity3d.ads.UnityAds$UnityAdsShowError r5 = com.unity3d.ads.UnityAds.UnityAdsShowError.TIMEOUT
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            r11.<init>()
            java.lang.String r4 = "[UnityAds] Timeout while trying to show "
            r11.append(r4)
            java.lang.String r4 = r10.$placement
            r11.append(r4)
            java.lang.String r6 = r11.toString()
            r10.L$0 = r1
            r10.label = r2
            java.lang.String r4 = "timeout"
            r7 = 0
            r8 = 0
            r9 = r10
            java.lang.Object r11 = r3.invoke(r4, r5, r6, r7, r8, r9)
            if (r11 != r0) goto Lb4
            return r0
        Lb4:
            r0 = r1
        Lb5:
            r0.invoke()
        Lb8:
            kotlin.Unit r11 = kotlin.Unit.f60915a
            return r11
        Lbb:
            kotlin.Unit r11 = kotlin.Unit.f60915a
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.LegacyShowUseCase$invoke$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object invoke2(@NotNull Function0<Unit> function0, @Nullable c<? super Unit> cVar) {
        return ((LegacyShowUseCase$invoke$2) create(function0, cVar)).invokeSuspend(Unit.f60915a);
    }
}
