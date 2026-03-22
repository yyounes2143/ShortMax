package com.unity3d.ads.core.domain;

import com.unity3d.ads.adplayer.AndroidWebViewContainer;
import com.unity3d.ads.adplayer.WebViewBridge;
import gt.g0;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: GetWebViewBridgeUseCase.kt */
@Metadata
/* loaded from: classes7.dex */
public interface GetWebViewBridgeUseCase {
    @NotNull
    WebViewBridge invoke(@NotNull AndroidWebViewContainer androidWebViewContainer, @NotNull g0 g0Var);
}
