package com.unity3d.ads.core.domain.exposure;

import com.unity3d.ads.adplayer.ExposedFunction;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.domain.om.OmImpressionOccurred;
import kotlin.Metadata;
import kotlin.Unit;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CommonAdViewerExposedFunctions.kt */
@Metadata
/* loaded from: classes7.dex */
public final class CommonAdViewerExposedFunctionsKt$omImpression$1 implements ExposedFunction {
    final /* synthetic */ AdObject $adObject;
    final /* synthetic */ OmImpressionOccurred $omImpressionOccurred;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CommonAdViewerExposedFunctionsKt$omImpression$1(OmImpressionOccurred omImpressionOccurred, AdObject adObject) {
        this.$omImpressionOccurred = omImpressionOccurred;
        this.$adObject = adObject;
    }

    @Override // com.unity3d.ads.adplayer.ExposedFunction, kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(Object[] objArr, c<? super Object> cVar) {
        return invoke2(objArr, (c<? super Unit>) cVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
    @org.jetbrains.annotations.Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invoke2(@org.jetbrains.annotations.NotNull java.lang.Object[] r5, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$omImpression$1$invoke$1
            if (r0 == 0) goto L13
            r0 = r6
            com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$omImpression$1$invoke$1 r0 = (com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$omImpression$1$invoke$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$omImpression$1$invoke$1 r0 = new com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$omImpression$1$invoke$1
            r0.<init>(r4, r6)
        L18:
            java.lang.Object r6 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.f.b(r6)
            goto L4f
        L29:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L31:
            kotlin.f.b(r6)
            r6 = 0
            r5 = r5[r6]
            java.lang.String r6 = "null cannot be cast to non-null type kotlin.Boolean"
            kotlin.jvm.internal.Intrinsics.checkNotNull(r5, r6)
            java.lang.Boolean r5 = (java.lang.Boolean) r5
            boolean r5 = r5.booleanValue()
            com.unity3d.ads.core.domain.om.OmImpressionOccurred r6 = r4.$omImpressionOccurred
            com.unity3d.ads.core.data.model.AdObject r2 = r4.$adObject
            r0.label = r3
            java.lang.Object r5 = r6.invoke(r2, r5, r0)
            if (r5 != r1) goto L4f
            return r1
        L4f:
            kotlin.Unit r5 = kotlin.Unit.f60915a
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$omImpression$1.invoke2(java.lang.Object[], rs.c):java.lang.Object");
    }
}
