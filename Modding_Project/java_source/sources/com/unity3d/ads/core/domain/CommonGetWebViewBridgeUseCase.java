package com.unity3d.ads.core.domain;

import com.unity3d.ads.adplayer.AndroidWebViewContainer;
import com.unity3d.ads.adplayer.CommonWebViewBridge;
import com.unity3d.ads.adplayer.WebViewBridge;
import gt.c0;
import gt.g0;
import gt.q0;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: CommonGetWebViewBridgeUseCase.kt */
@Metadata
/* loaded from: classes7.dex */
public final class CommonGetWebViewBridgeUseCase implements GetWebViewBridgeUseCase {
    @NotNull
    private final c0 dispatcher;
    @NotNull
    private final SendDiagnosticEvent sendDiagnosticEvent;

    public CommonGetWebViewBridgeUseCase(@NotNull c0 dispatcher, @NotNull SendDiagnosticEvent sendDiagnosticEvent) {
        Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
        Intrinsics.checkNotNullParameter(sendDiagnosticEvent, "sendDiagnosticEvent");
        this.dispatcher = dispatcher;
        this.sendDiagnosticEvent = sendDiagnosticEvent;
    }

    @Override // com.unity3d.ads.core.domain.GetWebViewBridgeUseCase
    @NotNull
    public WebViewBridge invoke(@NotNull AndroidWebViewContainer webViewContainer, @NotNull g0 adPlayerScope) {
        Intrinsics.checkNotNullParameter(webViewContainer, "webViewContainer");
        Intrinsics.checkNotNullParameter(adPlayerScope, "adPlayerScope");
        return new CommonWebViewBridge(this.dispatcher, webViewContainer, adPlayerScope, this.sendDiagnosticEvent);
    }

    public /* synthetic */ CommonGetWebViewBridgeUseCase(c0 c0Var, SendDiagnosticEvent sendDiagnosticEvent, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? q0.a() : c0Var, sendDiagnosticEvent);
    }
}
