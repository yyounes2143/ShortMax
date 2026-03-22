package com.unity3d.ads.core.domain.exposure;

import com.unity3d.ads.adplayer.ExposedFunction;
import com.unity3d.ads.core.domain.ExecuteAdViewerRequest;
import com.unity3d.services.core.network.model.RequestType;
import kotlin.Metadata;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CommonAdViewerExposedFunctions.kt */
@Metadata
/* loaded from: classes7.dex */
public final class CommonAdViewerExposedFunctionsKt$request$1 implements ExposedFunction {
    final /* synthetic */ ExecuteAdViewerRequest $executeAdViewerRequest;
    final /* synthetic */ RequestType $type;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CommonAdViewerExposedFunctionsKt$request$1(ExecuteAdViewerRequest executeAdViewerRequest, RequestType requestType) {
        this.$executeAdViewerRequest = executeAdViewerRequest;
        this.$type = requestType;
    }

    @Override // com.unity3d.ads.adplayer.ExposedFunction, kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(Object[] objArr, c<? super Object> cVar) {
        return invoke2(objArr, (c<Object>) cVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x006e A[Catch: Exception -> 0x0031, TryCatch #1 {Exception -> 0x0031, blocks: (B:12:0x002d, B:23:0x0064, B:25:0x006e, B:30:0x0081, B:26:0x0071, B:28:0x0075), top: B:41:0x002d }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0071 A[Catch: Exception -> 0x0031, TryCatch #1 {Exception -> 0x0031, blocks: (B:12:0x002d, B:23:0x0064, B:25:0x006e, B:30:0x0081, B:26:0x0071, B:28:0x0075), top: B:41:0x002d }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00af  */
    @org.jetbrains.annotations.Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invoke2(@org.jetbrains.annotations.NotNull java.lang.Object[] r7, @org.jetbrains.annotations.NotNull rs.c<java.lang.Object> r8) {
        /*
            r6 = this;
            boolean r0 = r8 instanceof com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$request$1$invoke$1
            if (r0 == 0) goto L13
            r0 = r8
            com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$request$1$invoke$1 r0 = (com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$request$1$invoke$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$request$1$invoke$1 r0 = new com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$request$1$invoke$1
            r0.<init>(r6, r8)
        L18:
            java.lang.Object r8 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L3c
            if (r2 != r3) goto L34
            java.lang.Object r7 = r0.L$1
            java.lang.String r7 = (java.lang.String) r7
            java.lang.Object r0 = r0.L$0
            java.lang.String r0 = (java.lang.String) r0
            kotlin.f.b(r8)     // Catch: java.lang.Exception -> L31
            goto L64
        L31:
            r8 = move-exception
            goto La7
        L34:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L3c:
            kotlin.f.b(r8)
            java.lang.Object r8 = kotlin.collections.n.k0(r7)
            java.lang.String r2 = "null cannot be cast to non-null type kotlin.String"
            kotlin.jvm.internal.Intrinsics.checkNotNull(r8, r2)
            java.lang.String r8 = (java.lang.String) r8
            java.lang.Object r2 = kotlin.collections.n.t0(r7, r3)
            java.lang.String r2 = (java.lang.String) r2
            com.unity3d.ads.core.domain.ExecuteAdViewerRequest r4 = r6.$executeAdViewerRequest     // Catch: java.lang.Exception -> La3
            com.unity3d.services.core.network.model.RequestType r5 = r6.$type     // Catch: java.lang.Exception -> La3
            r0.L$0 = r8     // Catch: java.lang.Exception -> La3
            r0.L$1 = r2     // Catch: java.lang.Exception -> La3
            r0.label = r3     // Catch: java.lang.Exception -> La3
            java.lang.Object r7 = r4.invoke(r5, r7, r0)     // Catch: java.lang.Exception -> La3
            if (r7 != r1) goto L61
            return r1
        L61:
            r0 = r8
            r8 = r7
            r7 = r2
        L64:
            com.unity3d.services.core.network.model.HttpResponse r8 = (com.unity3d.services.core.network.model.HttpResponse) r8     // Catch: java.lang.Exception -> L31
            java.lang.Object r1 = r8.getBody()     // Catch: java.lang.Exception -> L31
            boolean r2 = r1 instanceof java.lang.String     // Catch: java.lang.Exception -> L31
            if (r2 == 0) goto L71
            java.lang.String r1 = (java.lang.String) r1     // Catch: java.lang.Exception -> L31
            goto L81
        L71:
            boolean r2 = r1 instanceof byte[]     // Catch: java.lang.Exception -> L31
            if (r2 == 0) goto L80
            java.lang.String r2 = new java.lang.String     // Catch: java.lang.Exception -> L31
            byte[] r1 = (byte[]) r1     // Catch: java.lang.Exception -> L31
            java.nio.charset.Charset r3 = kotlin.text.Charsets.UTF_8     // Catch: java.lang.Exception -> L31
            r2.<init>(r1, r3)     // Catch: java.lang.Exception -> L31
            r1 = r2
            goto L81
        L80:
            r1 = 0
        L81:
            com.unity3d.ads.adplayer.model.OnWebRequestComplete r2 = new com.unity3d.ads.adplayer.model.OnWebRequestComplete     // Catch: java.lang.Exception -> L31
            java.lang.String r3 = r8.getUrlString()     // Catch: java.lang.Exception -> L31
            int r4 = r8.getStatusCode()     // Catch: java.lang.Exception -> L31
            java.lang.Integer r4 = kotlin.coroutines.jvm.internal.a.d(r4)     // Catch: java.lang.Exception -> L31
            java.util.Map r8 = r8.getHeaders()     // Catch: java.lang.Exception -> L31
            org.json.JSONArray r8 = com.unity3d.services.core.network.mapper.HttpResponseHeaderToJSONArrayKt.toResponseHeadersMap(r8)     // Catch: java.lang.Exception -> L31
            java.lang.Object[] r8 = new java.lang.Object[]{r0, r3, r1, r4, r8}     // Catch: java.lang.Exception -> L31
            java.util.List r8 = kotlin.collections.CollectionsKt.q(r8)     // Catch: java.lang.Exception -> L31
            r2.<init>(r8)     // Catch: java.lang.Exception -> L31
            goto Lbc
        La3:
            r7 = move-exception
            r0 = r8
            r8 = r7
            r7 = r2
        La7:
            com.unity3d.ads.adplayer.model.OnWebRequestFailed r2 = new com.unity3d.ads.adplayer.model.OnWebRequestFailed
            java.lang.String r8 = r8.getMessage()
            if (r8 != 0) goto Lb1
            java.lang.String r8 = ""
        Lb1:
            java.lang.String[] r7 = new java.lang.String[]{r0, r7, r8}
            java.util.List r7 = kotlin.collections.CollectionsKt.q(r7)
            r2.<init>(r7)
        Lbc:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$request$1.invoke2(java.lang.Object[], rs.c):java.lang.Object");
    }
}
