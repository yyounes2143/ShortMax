package com.applovin.shadow.okio;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Okio.kt */
@Metadata
/* loaded from: classes2.dex */
public final class BlackholeSink implements Sink {
    @Override // com.applovin.shadow.okio.Sink
    @NotNull
    public Timeout timeout() {
        return Timeout.NONE;
    }

    @Override // com.applovin.shadow.okio.Sink
    public void write(@NotNull Buffer source, long j10) {
        Intrinsics.checkNotNullParameter(source, "source");
        source.skip(j10);
    }

    @Override // com.applovin.shadow.okio.Sink, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // com.applovin.shadow.okio.Sink, java.io.Flushable
    public void flush() {
    }
}
