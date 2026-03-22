package com.unity3d.ads.adplayer;

import com.unity3d.ads.adplayer.model.WebViewEvent;
import kotlin.Metadata;
import kotlin.Unit;
import kt.f;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: WebViewBridge.kt */
@Metadata
/* loaded from: classes7.dex */
public interface WebViewBridge {
    @NotNull
    f<Invocation> getOnInvocation();

    void handleCallback(@NotNull String str, @NotNull String str2, @NotNull String str3);

    void handleInvocation(@NotNull String str);

    @Nullable
    Object request(@NotNull String str, @NotNull String str2, @NotNull Object[] objArr, @NotNull c<? super Object[]> cVar);

    @Nullable
    Object sendEvent(@NotNull WebViewEvent webViewEvent, @NotNull c<? super Unit> cVar);
}
