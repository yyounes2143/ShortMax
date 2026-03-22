package com.applovin.shadow.okhttp3;

import java.net.Socket;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Connection.kt */
@Metadata
/* loaded from: classes2.dex */
public interface Connection {
    @Nullable
    Handshake handshake();

    @NotNull
    Protocol protocol();

    @NotNull
    Route route();

    @NotNull
    Socket socket();
}
