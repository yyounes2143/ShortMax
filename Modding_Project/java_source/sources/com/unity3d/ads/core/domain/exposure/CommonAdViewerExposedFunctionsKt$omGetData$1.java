package com.unity3d.ads.core.domain.exposure;

import com.unity3d.ads.adplayer.ExposedFunction;
import com.unity3d.ads.core.domain.om.GetOmData;
import kotlin.Metadata;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CommonAdViewerExposedFunctions.kt */
@Metadata
/* loaded from: classes7.dex */
public final class CommonAdViewerExposedFunctionsKt$omGetData$1 implements ExposedFunction {
    final /* synthetic */ GetOmData $getOmData;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CommonAdViewerExposedFunctionsKt$omGetData$1(GetOmData getOmData) {
        this.$getOmData = getOmData;
    }

    @Override // com.unity3d.ads.adplayer.ExposedFunction, kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(Object[] objArr, c<? super Object> cVar) {
        return invoke2(objArr, (c<Object>) cVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
    @org.jetbrains.annotations.Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invoke2(@org.jetbrains.annotations.NotNull java.lang.Object[] r4, @org.jetbrains.annotations.NotNull rs.c<java.lang.Object> r5) {
        /*
            r3 = this;
            boolean r4 = r5 instanceof com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$omGetData$1$invoke$1
            if (r4 == 0) goto L13
            r4 = r5
            com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$omGetData$1$invoke$1 r4 = (com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$omGetData$1$invoke$1) r4
            int r0 = r4.label
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r2 = r0 & r1
            if (r2 == 0) goto L13
            int r0 = r0 - r1
            r4.label = r0
            goto L18
        L13:
            com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$omGetData$1$invoke$1 r4 = new com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$omGetData$1$invoke$1
            r4.<init>(r3, r5)
        L18:
            java.lang.Object r5 = r4.result
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
            int r1 = r4.label
            r2 = 1
            if (r1 == 0) goto L31
            if (r1 != r2) goto L29
            kotlin.f.b(r5)
            goto L3f
        L29:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L31:
            kotlin.f.b(r5)
            com.unity3d.ads.core.domain.om.GetOmData r5 = r3.$getOmData
            r4.label = r2
            java.lang.Object r5 = r5.invoke(r4)
            if (r5 != r0) goto L3f
            return r0
        L3f:
            com.unity3d.ads.core.data.model.OMData r5 = (com.unity3d.ads.core.data.model.OMData) r5
            java.util.Map r4 = kotlin.collections.p0.c()
            java.lang.String r0 = r5.getVersion()
            java.lang.String r1 = "version"
            r4.put(r1, r0)
            java.lang.String r0 = "partnerName"
            java.lang.String r1 = r5.getPartnerName()
            r4.put(r0, r1)
            java.lang.String r0 = "partnerVersion"
            java.lang.String r5 = r5.getPartnerVersion()
            r4.put(r0, r5)
            java.util.Map r4 = kotlin.collections.p0.b(r4)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$omGetData$1.invoke2(java.lang.Object[], rs.c):java.lang.Object");
    }
}
