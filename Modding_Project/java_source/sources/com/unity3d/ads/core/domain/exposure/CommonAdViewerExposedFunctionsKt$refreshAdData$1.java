package com.unity3d.ads.core.domain.exposure;

import com.unity3d.ads.adplayer.ExposedFunction;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.domain.Refresh;
import kotlin.Metadata;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CommonAdViewerExposedFunctions.kt */
@Metadata
/* loaded from: classes7.dex */
public final class CommonAdViewerExposedFunctionsKt$refreshAdData$1 implements ExposedFunction {
    final /* synthetic */ AdObject $adObject;
    final /* synthetic */ Refresh $refresh;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CommonAdViewerExposedFunctionsKt$refreshAdData$1(Refresh refresh, AdObject adObject) {
        this.$refresh = refresh;
        this.$adObject = adObject;
    }

    @Override // com.unity3d.ads.adplayer.ExposedFunction, kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(Object[] objArr, c<? super Object> cVar) {
        return invoke2(objArr, (c<Object>) cVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0027  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00af  */
    @org.jetbrains.annotations.Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invoke2(@org.jetbrains.annotations.NotNull java.lang.Object[] r8, @org.jetbrains.annotations.NotNull rs.c<java.lang.Object> r9) {
        /*
            r7 = this;
            boolean r0 = r9 instanceof com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$refreshAdData$1$invoke$1
            if (r0 == 0) goto L13
            r0 = r9
            com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$refreshAdData$1$invoke$1 r0 = (com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$refreshAdData$1$invoke$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$refreshAdData$1$invoke$1 r0 = new com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$refreshAdData$1$invoke$1
            r0.<init>(r7, r9)
        L18:
            java.lang.Object r9 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.label
            java.lang.String r3 = "adDataRefreshToken"
            r4 = 0
            r5 = 0
            r6 = 1
            if (r2 == 0) goto L35
            if (r2 != r6) goto L2d
            kotlin.f.b(r9)
            goto L6a
        L2d:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L35:
            kotlin.f.b(r9)
            int r9 = r8.length
            if (r9 != 0) goto L3e
            com.google.protobuf.ByteString r8 = com.google.protobuf.ByteString.EMPTY
            goto L54
        L3e:
            r8 = r8[r5]
            java.lang.String r9 = "null cannot be cast to non-null type org.json.JSONObject"
            kotlin.jvm.internal.Intrinsics.checkNotNull(r8, r9)
            org.json.JSONObject r8 = (org.json.JSONObject) r8
            java.lang.String r8 = r8.optString(r3)
            java.lang.String r9 = "refreshToken"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r8, r9)
            com.google.protobuf.ByteString r8 = com.unity3d.ads.core.extensions.ProtobufExtensionsKt.fromBase64$default(r8, r5, r6, r4)
        L54:
            com.unity3d.ads.core.domain.Refresh r9 = r7.$refresh
            java.lang.String r2 = "refreshTokenByteString"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r8, r2)
            com.unity3d.ads.core.data.model.AdObject r2 = r7.$adObject
            com.google.protobuf.ByteString r2 = r2.getOpportunityId()
            r0.label = r6
            java.lang.Object r9 = r9.invoke(r8, r2, r0)
            if (r9 != r1) goto L6a
            return r1
        L6a:
            gatewayprotocol.v1.AdDataRefreshResponseOuterClass$AdDataRefreshResponse r9 = (gatewayprotocol.v1.AdDataRefreshResponseOuterClass.AdDataRefreshResponse) r9
            boolean r8 = r9.hasError()
            if (r8 != 0) goto Laf
            java.util.Map r8 = kotlin.collections.p0.c()
            com.google.protobuf.ByteString r0 = r9.getAdData()
            java.lang.String r1 = "adRefreshResponse.adData"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            java.lang.String r0 = com.unity3d.ads.core.extensions.ProtobufExtensionsKt.toBase64$default(r0, r5, r6, r4)
            java.lang.String r1 = "adData"
            r8.put(r1, r0)
            com.google.protobuf.ByteString r0 = r9.getAdDataRefreshToken()
            java.lang.String r1 = "adRefreshResponse.adDataRefreshToken"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            java.lang.String r0 = com.unity3d.ads.core.extensions.ProtobufExtensionsKt.toBase64$default(r0, r5, r6, r4)
            r8.put(r3, r0)
            com.google.protobuf.ByteString r9 = r9.getTrackingToken()
            java.lang.String r0 = "adRefreshResponse.trackingToken"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r9, r0)
            java.lang.String r9 = com.unity3d.ads.core.extensions.ProtobufExtensionsKt.toBase64$default(r9, r5, r6, r4)
            java.lang.String r0 = "trackingToken"
            r8.put(r0, r9)
            java.util.Map r8 = kotlin.collections.p0.b(r8)
            return r8
        Laf:
            java.lang.IllegalArgumentException r8 = new java.lang.IllegalArgumentException
            java.lang.String r9 = "Refresh failed"
            r8.<init>(r9)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$refreshAdData$1.invoke2(java.lang.Object[], rs.c):java.lang.Object");
    }
}
