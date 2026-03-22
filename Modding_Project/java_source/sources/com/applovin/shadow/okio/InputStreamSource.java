package com.applovin.shadow.okio;

import java.io.IOException;
import java.io.InputStream;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: JvmOkio.kt */
@Metadata
@SourceDebugExtension({"SMAP\nJvmOkio.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JvmOkio.kt\nokio/InputStreamSource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Util.kt\nokio/-SegmentedByteString\n*L\n1#1,239:1\n1#2:240\n86#3:241\n*S KotlinDebug\n*F\n+ 1 JvmOkio.kt\nokio/InputStreamSource\n*L\n92#1:241\n*E\n"})
/* loaded from: classes2.dex */
public class InputStreamSource implements Source {
    @NotNull
    private final InputStream input;
    @NotNull
    private final Timeout timeout;

    public InputStreamSource(@NotNull InputStream input, @NotNull Timeout timeout) {
        Intrinsics.checkNotNullParameter(input, "input");
        Intrinsics.checkNotNullParameter(timeout, "timeout");
        this.input = input;
        this.timeout = timeout;
    }

    @Override // com.applovin.shadow.okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.input.close();
    }

    @Override // com.applovin.shadow.okio.Source
    public long read(@NotNull Buffer sink, long j10) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        int i10 = (j10 > 0L ? 1 : (j10 == 0L ? 0 : -1));
        if (i10 == 0) {
            return 0L;
        }
        if (i10 >= 0) {
            try {
                this.timeout.throwIfReached();
                Segment writableSegment$okio = sink.writableSegment$okio(1);
                int read = this.input.read(writableSegment$okio.data, writableSegment$okio.limit, (int) Math.min(j10, 8192 - writableSegment$okio.limit));
                if (read == -1) {
                    if (writableSegment$okio.pos == writableSegment$okio.limit) {
                        sink.head = writableSegment$okio.pop();
                        SegmentPool.recycle(writableSegment$okio);
                        return -1L;
                    }
                    return -1L;
                }
                writableSegment$okio.limit += read;
                long j11 = read;
                sink.setSize$okio(sink.size() + j11);
                return j11;
            } catch (AssertionError e10) {
                if (Okio.isAndroidGetsocknameError(e10)) {
                    throw new IOException(e10);
                }
                throw e10;
            }
        }
        throw new IllegalArgumentException(("byteCount < 0: " + j10).toString());
    }

    @Override // com.applovin.shadow.okio.Source
    @NotNull
    public Timeout timeout() {
        return this.timeout;
    }

    @NotNull
    public String toString() {
        return "source(" + this.input + ')';
    }
}
