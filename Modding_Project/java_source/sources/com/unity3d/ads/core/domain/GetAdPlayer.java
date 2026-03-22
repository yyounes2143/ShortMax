package com.unity3d.ads.core.domain;

import com.google.protobuf.ByteString;
import com.unity3d.ads.adplayer.AdPlayer;
import com.unity3d.ads.adplayer.AndroidWebViewContainer;
import com.unity3d.ads.adplayer.WebViewBridge;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: GetAdPlayer.kt */
@Metadata
/* loaded from: classes7.dex */
public interface GetAdPlayer {
    @NotNull
    AdPlayer invoke(@NotNull WebViewBridge webViewBridge, @NotNull AndroidWebViewContainer androidWebViewContainer, @NotNull ByteString byteString);
}
