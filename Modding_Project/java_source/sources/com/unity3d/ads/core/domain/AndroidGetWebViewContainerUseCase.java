package com.unity3d.ads.core.domain;

import android.content.Context;
import com.unity3d.ads.adplayer.AndroidWebViewClient;
import gt.c0;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: AndroidGetWebViewContainerUseCase.kt */
@Metadata
/* loaded from: classes7.dex */
public final class AndroidGetWebViewContainerUseCase implements GetWebViewContainerUseCase {
    @NotNull
    private final AndroidWebViewClient androidWebViewClient;
    @NotNull
    private final Context context;
    @NotNull
    private final c0 defaultDispatcher;
    @NotNull
    private final c0 mainDispatcher;
    @NotNull
    private final SendWebViewClientErrorDiagnostics sendWebViewClientErrorDiagnostics;

    public AndroidGetWebViewContainerUseCase(@NotNull Context context, @NotNull AndroidWebViewClient androidWebViewClient, @NotNull SendWebViewClientErrorDiagnostics sendWebViewClientErrorDiagnostics, @NotNull c0 mainDispatcher, @NotNull c0 defaultDispatcher) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(androidWebViewClient, "androidWebViewClient");
        Intrinsics.checkNotNullParameter(sendWebViewClientErrorDiagnostics, "sendWebViewClientErrorDiagnostics");
        Intrinsics.checkNotNullParameter(mainDispatcher, "mainDispatcher");
        Intrinsics.checkNotNullParameter(defaultDispatcher, "defaultDispatcher");
        this.context = context;
        this.androidWebViewClient = androidWebViewClient;
        this.sendWebViewClientErrorDiagnostics = sendWebViewClientErrorDiagnostics;
        this.mainDispatcher = mainDispatcher;
        this.defaultDispatcher = defaultDispatcher;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x003a  */
    @Override // com.unity3d.ads.core.domain.GetWebViewContainerUseCase
    @android.annotation.SuppressLint({"SetJavaScriptEnabled"})
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object invoke(@org.jetbrains.annotations.NotNull gt.g0 r11, @org.jetbrains.annotations.NotNull rs.c<? super com.unity3d.ads.adplayer.AndroidWebViewContainer> r12) {
        /*
            r10 = this;
            boolean r0 = r12 instanceof com.unity3d.ads.core.domain.AndroidGetWebViewContainerUseCase$invoke$1
            if (r0 == 0) goto L13
            r0 = r12
            com.unity3d.ads.core.domain.AndroidGetWebViewContainerUseCase$invoke$1 r0 = (com.unity3d.ads.core.domain.AndroidGetWebViewContainerUseCase$invoke$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.unity3d.ads.core.domain.AndroidGetWebViewContainerUseCase$invoke$1 r0 = new com.unity3d.ads.core.domain.AndroidGetWebViewContainerUseCase$invoke$1
            r0.<init>(r10, r12)
        L18:
            java.lang.Object r12 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L3a
            if (r2 != r3) goto L32
            java.lang.Object r11 = r0.L$1
            gt.g0 r11 = (gt.g0) r11
            java.lang.Object r0 = r0.L$0
            com.unity3d.ads.core.domain.AndroidGetWebViewContainerUseCase r0 = (com.unity3d.ads.core.domain.AndroidGetWebViewContainerUseCase) r0
            kotlin.f.b(r12)
        L30:
            r8 = r11
            goto L54
        L32:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r12)
            throw r11
        L3a:
            kotlin.f.b(r12)
            gt.c0 r12 = r10.mainDispatcher
            com.unity3d.ads.core.domain.AndroidGetWebViewContainerUseCase$invoke$webview$1 r2 = new com.unity3d.ads.core.domain.AndroidGetWebViewContainerUseCase$invoke$webview$1
            r4 = 0
            r2.<init>(r10, r4)
            r0.L$0 = r10
            r0.L$1 = r11
            r0.label = r3
            java.lang.Object r12 = gt.e.g(r12, r2, r0)
            if (r12 != r1) goto L52
            return r1
        L52:
            r0 = r10
            goto L30
        L54:
            r3 = r12
            android.webkit.WebView r3 = (android.webkit.WebView) r3
            com.unity3d.ads.adplayer.AndroidWebViewContainer r11 = new com.unity3d.ads.adplayer.AndroidWebViewContainer
            com.unity3d.ads.adplayer.AndroidWebViewClient r4 = r0.androidWebViewClient
            com.unity3d.ads.core.domain.SendWebViewClientErrorDiagnostics r5 = r0.sendWebViewClientErrorDiagnostics
            gt.c0 r6 = r0.mainDispatcher
            gt.c0 r7 = r0.defaultDispatcher
            android.content.Context r9 = r0.context
            r2 = r11
            r2.<init>(r3, r4, r5, r6, r7, r8, r9)
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.AndroidGetWebViewContainerUseCase.invoke(gt.g0, rs.c):java.lang.Object");
    }
}
