package com.applovin.shadow.okhttp3.internal.http2;

import androidx.collection.SieveCacheKt;
import com.applovin.shadow.okhttp3.internal.Util;
import com.applovin.shadow.okhttp3.internal.http2.Hpack;
import com.applovin.shadow.okio.Buffer;
import com.applovin.shadow.okio.BufferedSink;
import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Http2Writer.kt */
@Metadata
@SourceDebugExtension({"SMAP\nHttp2Writer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Http2Writer.kt\nokhttp3/internal/http2/Http2Writer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,317:1\n1#2:318\n*E\n"})
/* loaded from: classes2.dex */
public final class Http2Writer implements Closeable {
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final Logger logger = Logger.getLogger(Http2.class.getName());
    private final boolean client;
    private boolean closed;
    @NotNull
    private final Buffer hpackBuffer;
    @NotNull
    private final Hpack.Writer hpackWriter;
    private int maxFrameSize;
    @NotNull
    private final BufferedSink sink;

    /* compiled from: Http2Writer.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public Http2Writer(@NotNull BufferedSink sink, boolean z10) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        this.sink = sink;
        this.client = z10;
        Buffer buffer = new Buffer();
        this.hpackBuffer = buffer;
        this.maxFrameSize = 16384;
        this.hpackWriter = new Hpack.Writer(0, false, buffer, 3, null);
    }

    private final void writeContinuationFrames(int i10, long j10) throws IOException {
        int i11;
        while (j10 > 0) {
            long min = Math.min(this.maxFrameSize, j10);
            j10 -= min;
            int i12 = (int) min;
            if (j10 == 0) {
                i11 = 4;
            } else {
                i11 = 0;
            }
            frameHeader(i10, i12, 9, i11);
            this.sink.write(this.hpackBuffer, min);
        }
    }

    public final synchronized void applyAndAckSettings(@NotNull Settings peerSettings) throws IOException {
        try {
            Intrinsics.checkNotNullParameter(peerSettings, "peerSettings");
            if (!this.closed) {
                this.maxFrameSize = peerSettings.getMaxFrameSize(this.maxFrameSize);
                if (peerSettings.getHeaderTableSize() != -1) {
                    this.hpackWriter.resizeHeaderTable(peerSettings.getHeaderTableSize());
                }
                frameHeader(0, 0, 4, 1);
                this.sink.flush();
            } else {
                throw new IOException("closed");
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        this.closed = true;
        this.sink.close();
    }

    public final synchronized void connectionPreface() throws IOException {
        try {
            if (!this.closed) {
                if (!this.client) {
                    return;
                }
                Logger logger2 = logger;
                if (logger2.isLoggable(Level.FINE)) {
                    logger2.fine(Util.format(">> CONNECTION " + Http2.CONNECTION_PREFACE.hex(), new Object[0]));
                }
                this.sink.write(Http2.CONNECTION_PREFACE);
                this.sink.flush();
                return;
            }
            throw new IOException("closed");
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final synchronized void data(boolean z10, int i10, @Nullable Buffer buffer, int i11) throws IOException {
        if (!this.closed) {
            dataFrame(i10, z10 ? 1 : 0, buffer, i11);
        } else {
            throw new IOException("closed");
        }
    }

    public final void dataFrame(int i10, int i11, @Nullable Buffer buffer, int i12) throws IOException {
        frameHeader(i10, i12, 0, i11);
        if (i12 > 0) {
            BufferedSink bufferedSink = this.sink;
            Intrinsics.checkNotNull(buffer);
            bufferedSink.write(buffer, i12);
        }
    }

    public final synchronized void flush() throws IOException {
        if (!this.closed) {
            this.sink.flush();
        } else {
            throw new IOException("closed");
        }
    }

    public final void frameHeader(int i10, int i11, int i12, int i13) throws IOException {
        Logger logger2 = logger;
        if (logger2.isLoggable(Level.FINE)) {
            logger2.fine(Http2.INSTANCE.frameLog(false, i10, i11, i12, i13));
        }
        if (i11 <= this.maxFrameSize) {
            if ((Integer.MIN_VALUE & i10) == 0) {
                Util.writeMedium(this.sink, i11);
                this.sink.writeByte(i12 & 255);
                this.sink.writeByte(i13 & 255);
                this.sink.writeInt(i10 & Integer.MAX_VALUE);
                return;
            }
            throw new IllegalArgumentException(("reserved bit set: " + i10).toString());
        }
        throw new IllegalArgumentException(("FRAME_SIZE_ERROR length > " + this.maxFrameSize + ": " + i11).toString());
    }

    @NotNull
    public final Hpack.Writer getHpackWriter() {
        return this.hpackWriter;
    }

    public final synchronized void goAway(int i10, @NotNull ErrorCode errorCode, @NotNull byte[] debugData) throws IOException {
        try {
            Intrinsics.checkNotNullParameter(errorCode, "errorCode");
            Intrinsics.checkNotNullParameter(debugData, "debugData");
            if (!this.closed) {
                if (errorCode.getHttpCode() != -1) {
                    boolean z10 = false;
                    frameHeader(0, debugData.length + 8, 7, 0);
                    this.sink.writeInt(i10);
                    this.sink.writeInt(errorCode.getHttpCode());
                    if (debugData.length == 0) {
                        z10 = true;
                    }
                    if (!z10) {
                        this.sink.write(debugData);
                    }
                    this.sink.flush();
                } else {
                    throw new IllegalArgumentException("errorCode.httpCode == -1");
                }
            } else {
                throw new IOException("closed");
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final synchronized void headers(boolean z10, int i10, @NotNull List<Header> headerBlock) throws IOException {
        int i11;
        Intrinsics.checkNotNullParameter(headerBlock, "headerBlock");
        if (!this.closed) {
            this.hpackWriter.writeHeaders(headerBlock);
            long size = this.hpackBuffer.size();
            long min = Math.min(this.maxFrameSize, size);
            int i12 = (size > min ? 1 : (size == min ? 0 : -1));
            if (i12 == 0) {
                i11 = 4;
            } else {
                i11 = 0;
            }
            if (z10) {
                i11 |= 1;
            }
            frameHeader(i10, (int) min, 1, i11);
            this.sink.write(this.hpackBuffer, min);
            if (i12 > 0) {
                writeContinuationFrames(i10, size - min);
            }
        } else {
            throw new IOException("closed");
        }
    }

    public final int maxDataLength() {
        return this.maxFrameSize;
    }

    public final synchronized void ping(boolean z10, int i10, int i11) throws IOException {
        if (!this.closed) {
            frameHeader(0, 8, 6, z10 ? 1 : 0);
            this.sink.writeInt(i10);
            this.sink.writeInt(i11);
            this.sink.flush();
        } else {
            throw new IOException("closed");
        }
    }

    public final synchronized void pushPromise(int i10, int i11, @NotNull List<Header> requestHeaders) throws IOException {
        int i12;
        Intrinsics.checkNotNullParameter(requestHeaders, "requestHeaders");
        if (!this.closed) {
            this.hpackWriter.writeHeaders(requestHeaders);
            long size = this.hpackBuffer.size();
            int min = (int) Math.min(this.maxFrameSize - 4, size);
            int i13 = min + 4;
            long j10 = min;
            int i14 = (size > j10 ? 1 : (size == j10 ? 0 : -1));
            if (i14 == 0) {
                i12 = 4;
            } else {
                i12 = 0;
            }
            frameHeader(i10, i13, 5, i12);
            this.sink.writeInt(i11 & Integer.MAX_VALUE);
            this.sink.write(this.hpackBuffer, j10);
            if (i14 > 0) {
                writeContinuationFrames(i10, size - j10);
            }
        } else {
            throw new IOException("closed");
        }
    }

    public final synchronized void rstStream(int i10, @NotNull ErrorCode errorCode) throws IOException {
        Intrinsics.checkNotNullParameter(errorCode, "errorCode");
        if (!this.closed) {
            if (errorCode.getHttpCode() != -1) {
                frameHeader(i10, 4, 3, 0);
                this.sink.writeInt(errorCode.getHttpCode());
                this.sink.flush();
            } else {
                throw new IllegalArgumentException("Failed requirement.");
            }
        } else {
            throw new IOException("closed");
        }
    }

    public final synchronized void settings(@NotNull Settings settings) throws IOException {
        int i10;
        try {
            Intrinsics.checkNotNullParameter(settings, "settings");
            if (!this.closed) {
                frameHeader(0, settings.size() * 6, 4, 0);
                for (int i11 = 0; i11 < 10; i11++) {
                    if (settings.isSet(i11)) {
                        if (i11 != 4) {
                            if (i11 != 7) {
                                i10 = i11;
                            } else {
                                i10 = 4;
                            }
                        } else {
                            i10 = 3;
                        }
                        this.sink.writeShort(i10);
                        this.sink.writeInt(settings.get(i11));
                    }
                }
                this.sink.flush();
            } else {
                throw new IOException("closed");
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final synchronized void windowUpdate(int i10, long j10) throws IOException {
        if (!this.closed) {
            if (j10 != 0 && j10 <= SieveCacheKt.NodeLinkMask) {
                frameHeader(i10, 4, 8, 0);
                this.sink.writeInt((int) j10);
                this.sink.flush();
            } else {
                throw new IllegalArgumentException(("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: " + j10).toString());
            }
        } else {
            throw new IOException("closed");
        }
    }
}
