package com.applovin.shadow.okio;

import java.io.File;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.nio.file.OpenOption;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: -DeprecatedOkio.kt */
@ms.c
@Metadata
/* renamed from: com.applovin.shadow.okio.-DeprecatedOkio  reason: invalid class name */
/* loaded from: classes2.dex */
public final class DeprecatedOkio {
    @NotNull
    public static final DeprecatedOkio INSTANCE = new DeprecatedOkio();

    private DeprecatedOkio() {
    }

    @ms.c
    @NotNull
    public final Sink appendingSink(@NotNull File file) {
        Intrinsics.checkNotNullParameter(file, "file");
        return Okio.appendingSink(file);
    }

    @ms.c
    @NotNull
    public final Sink blackhole() {
        return Okio.blackhole();
    }

    @ms.c
    @NotNull
    public final BufferedSink buffer(@NotNull Sink sink) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        return Okio.buffer(sink);
    }

    @ms.c
    @NotNull
    public final Sink sink(@NotNull File file) {
        Sink sink$default;
        Intrinsics.checkNotNullParameter(file, "file");
        sink$default = Okio__JvmOkioKt.sink$default(file, false, 1, null);
        return sink$default;
    }

    @ms.c
    @NotNull
    public final Source source(@NotNull File file) {
        Intrinsics.checkNotNullParameter(file, "file");
        return Okio.source(file);
    }

    @ms.c
    @NotNull
    public final BufferedSource buffer(@NotNull Source source) {
        Intrinsics.checkNotNullParameter(source, "source");
        return Okio.buffer(source);
    }

    @ms.c
    @NotNull
    public final Sink sink(@NotNull OutputStream outputStream) {
        Intrinsics.checkNotNullParameter(outputStream, "outputStream");
        return Okio.sink(outputStream);
    }

    @ms.c
    @NotNull
    public final Source source(@NotNull InputStream inputStream) {
        Intrinsics.checkNotNullParameter(inputStream, "inputStream");
        return Okio.source(inputStream);
    }

    @ms.c
    @NotNull
    public final Sink sink(@NotNull java.nio.file.Path path, @NotNull OpenOption... options) {
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(options, "options");
        return Okio.sink(path, (OpenOption[]) Arrays.copyOf(options, options.length));
    }

    @ms.c
    @NotNull
    public final Source source(@NotNull java.nio.file.Path path, @NotNull OpenOption... options) {
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(options, "options");
        return Okio.source(path, (OpenOption[]) Arrays.copyOf(options, options.length));
    }

    @ms.c
    @NotNull
    public final Sink sink(@NotNull Socket socket) {
        Intrinsics.checkNotNullParameter(socket, "socket");
        return Okio.sink(socket);
    }

    @ms.c
    @NotNull
    public final Source source(@NotNull Socket socket) {
        Intrinsics.checkNotNullParameter(socket, "socket");
        return Okio.source(socket);
    }
}
