package com.unity3d.ads.adplayer;

import android.view.InputEvent;
import kotlin.Metadata;
import kotlin.Unit;
import kt.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: WebViewContainer.kt */
@Metadata
/* loaded from: classes7.dex */
public interface WebViewContainer {
    @Nullable
    Object addJavascriptInterface(@NotNull WebViewBridge webViewBridge, @NotNull String str, @NotNull c<? super Unit> cVar);

    @Nullable
    Object destroy(@NotNull c<? super Unit> cVar);

    @Nullable
    Object evaluateJavascript(@NotNull String str, @NotNull c<? super Unit> cVar);

    @NotNull
    i<InputEvent> getLastInputEvent();

    @Nullable
    Object loadUrl(@NotNull String str, @NotNull c<? super Unit> cVar);
}
