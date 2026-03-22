package com.applovin.shadow.okhttp3.internal.connection;

import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import ms.d;
import org.jetbrains.annotations.NotNull;
/* compiled from: RouteException.kt */
@Metadata
/* loaded from: classes2.dex */
public final class RouteException extends RuntimeException {
    @NotNull
    private final IOException firstConnectException;
    @NotNull
    private IOException lastConnectException;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RouteException(@NotNull IOException firstConnectException) {
        super(firstConnectException);
        Intrinsics.checkNotNullParameter(firstConnectException, "firstConnectException");
        this.firstConnectException = firstConnectException;
        this.lastConnectException = firstConnectException;
    }

    public final void addConnectException(@NotNull IOException e10) {
        Intrinsics.checkNotNullParameter(e10, "e");
        d.a(this.firstConnectException, e10);
        this.lastConnectException = e10;
    }

    @NotNull
    public final IOException getFirstConnectException() {
        return this.firstConnectException;
    }

    @NotNull
    public final IOException getLastConnectException() {
        return this.lastConnectException;
    }
}
