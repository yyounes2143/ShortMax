package com.applovin.shadow.okhttp3;

import com.applovin.shadow.okio.ByteString;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: WebSocketListener.kt */
@Metadata
/* loaded from: classes2.dex */
public abstract class WebSocketListener {
    public void onClosed(@NotNull WebSocket webSocket, int i10, @NotNull String reason) {
        Intrinsics.checkNotNullParameter(webSocket, "webSocket");
        Intrinsics.checkNotNullParameter(reason, "reason");
    }

    public void onClosing(@NotNull WebSocket webSocket, int i10, @NotNull String reason) {
        Intrinsics.checkNotNullParameter(webSocket, "webSocket");
        Intrinsics.checkNotNullParameter(reason, "reason");
    }

    public void onFailure(@NotNull WebSocket webSocket, @NotNull Throwable t10, @Nullable Response response) {
        Intrinsics.checkNotNullParameter(webSocket, "webSocket");
        Intrinsics.checkNotNullParameter(t10, "t");
    }

    public void onMessage(@NotNull WebSocket webSocket, @NotNull ByteString bytes) {
        Intrinsics.checkNotNullParameter(webSocket, "webSocket");
        Intrinsics.checkNotNullParameter(bytes, "bytes");
    }

    public void onOpen(@NotNull WebSocket webSocket, @NotNull Response response) {
        Intrinsics.checkNotNullParameter(webSocket, "webSocket");
        Intrinsics.checkNotNullParameter(response, "response");
    }

    public void onMessage(@NotNull WebSocket webSocket, @NotNull String text) {
        Intrinsics.checkNotNullParameter(webSocket, "webSocket");
        Intrinsics.checkNotNullParameter(text, "text");
    }
}
