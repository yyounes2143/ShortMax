package com.applovin.shadow.okhttp3.internal.ws;

import com.applovin.shadow.okio.Buffer;
import com.applovin.shadow.okio.InflaterSource;
import com.applovin.shadow.okio.Source;
import java.io.Closeable;
import java.io.IOException;
import java.util.zip.Inflater;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: MessageInflater.kt */
@Metadata
/* loaded from: classes2.dex */
public final class MessageInflater implements Closeable {
    @NotNull
    private final Buffer deflatedBytes;
    @NotNull
    private final Inflater inflater;
    @NotNull
    private final InflaterSource inflaterSource;
    private final boolean noContextTakeover;

    public MessageInflater(boolean z10) {
        this.noContextTakeover = z10;
        Buffer buffer = new Buffer();
        this.deflatedBytes = buffer;
        Inflater inflater = new Inflater(true);
        this.inflater = inflater;
        this.inflaterSource = new InflaterSource((Source) buffer, inflater);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.inflaterSource.close();
    }

    public final void inflate(@NotNull Buffer buffer) throws IOException {
        Intrinsics.checkNotNullParameter(buffer, "buffer");
        if (this.deflatedBytes.size() == 0) {
            if (this.noContextTakeover) {
                this.inflater.reset();
            }
            this.deflatedBytes.writeAll(buffer);
            this.deflatedBytes.writeInt(65535);
            long bytesRead = this.inflater.getBytesRead() + this.deflatedBytes.size();
            do {
                this.inflaterSource.readOrInflate(buffer, Long.MAX_VALUE);
            } while (this.inflater.getBytesRead() < bytesRead);
            return;
        }
        throw new IllegalArgumentException("Failed requirement.");
    }
}
