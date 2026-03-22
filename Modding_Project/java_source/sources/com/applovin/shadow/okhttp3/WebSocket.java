package com.applovin.shadow.okhttp3;

import com.applovin.shadow.okio.ByteString;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: WebSocket.kt */
@Metadata
/* loaded from: classes2.dex */
public interface WebSocket {

    /* compiled from: WebSocket.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public interface Factory {
        @NotNull
        WebSocket newWebSocket(@NotNull Request request, @NotNull WebSocketListener webSocketListener);
    }

    void cancel();

    boolean close(int i10, @Nullable String str);

    long queueSize();

    @NotNull
    Request request();

    boolean send(@NotNull ByteString byteString);

    boolean send(@NotNull String str);
}
