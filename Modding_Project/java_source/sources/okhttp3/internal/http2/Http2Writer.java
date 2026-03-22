package okhttp3.internal.http2;

import androidx.collection.SieveCacheKt;
import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.Util;
import okhttp3.internal.http2.Hpack;
import okio.Buffer;
import okio.BufferedSink;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Http2Writer.kt */
@Metadata
@SourceDebugExtension({"SMAP\nHttp2Writer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Http2Writer.kt\nokhttp3/internal/http2/Http2Writer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,317:1\n1#2:318\n*E\n"})
/* loaded from: classes8.dex */
public final class Http2Writer implements Closeable {
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public static final Companion f64073g = new Companion(null);

    /* renamed from: h  reason: collision with root package name */
    private static final Logger f64074h = Logger.getLogger(Http2.class.getName());
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final BufferedSink f64075a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f64076b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final Buffer f64077c;

    /* renamed from: d  reason: collision with root package name */
    private int f64078d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f64079e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final Hpack.Writer f64080f;

    /* compiled from: Http2Writer.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public Http2Writer(@NotNull BufferedSink sink, boolean z10) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        this.f64075a = sink;
        this.f64076b = z10;
        Buffer buffer = new Buffer();
        this.f64077c = buffer;
        this.f64078d = 16384;
        this.f64080f = new Hpack.Writer(0, false, buffer, 3, null);
    }

    private final void u(int i10, long j10) throws IOException {
        int i11;
        while (j10 > 0) {
            long min = Math.min(this.f64078d, j10);
            j10 -= min;
            int i12 = (int) min;
            if (j10 == 0) {
                i11 = 4;
            } else {
                i11 = 0;
            }
            k(i10, i12, 9, i11);
            this.f64075a.write(this.f64077c, min);
        }
    }

    public final synchronized void a(@NotNull Settings peerSettings) throws IOException {
        try {
            Intrinsics.checkNotNullParameter(peerSettings, "peerSettings");
            if (!this.f64079e) {
                this.f64078d = peerSettings.e(this.f64078d);
                if (peerSettings.b() != -1) {
                    this.f64080f.e(peerSettings.b());
                }
                k(0, 0, 4, 1);
                this.f64075a.flush();
            } else {
                throw new IOException("closed");
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        this.f64079e = true;
        this.f64075a.close();
    }

    public final synchronized void d() throws IOException {
        try {
            if (!this.f64079e) {
                if (!this.f64076b) {
                    return;
                }
                Logger logger = f64074h;
                if (logger.isLoggable(Level.FINE)) {
                    logger.fine(Util.t(">> CONNECTION " + Http2.f63947b.hex(), new Object[0]));
                }
                this.f64075a.write(Http2.f63947b);
                this.f64075a.flush();
                return;
            }
            throw new IOException("closed");
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final synchronized void flush() throws IOException {
        if (!this.f64079e) {
            this.f64075a.flush();
        } else {
            throw new IOException("closed");
        }
    }

    public final synchronized void g(boolean z10, int i10, @Nullable Buffer buffer, int i11) throws IOException {
        if (!this.f64079e) {
            i(i10, z10 ? 1 : 0, buffer, i11);
        } else {
            throw new IOException("closed");
        }
    }

    public final void i(int i10, int i11, @Nullable Buffer buffer, int i12) throws IOException {
        k(i10, i12, 0, i11);
        if (i12 > 0) {
            BufferedSink bufferedSink = this.f64075a;
            Intrinsics.checkNotNull(buffer);
            bufferedSink.write(buffer, i12);
        }
    }

    public final void k(int i10, int i11, int i12, int i13) throws IOException {
        Logger logger = f64074h;
        if (logger.isLoggable(Level.FINE)) {
            logger.fine(Http2.f63946a.c(false, i10, i11, i12, i13));
        }
        if (i11 <= this.f64078d) {
            if ((Integer.MIN_VALUE & i10) == 0) {
                Util.c0(this.f64075a, i11);
                this.f64075a.writeByte(i12 & 255);
                this.f64075a.writeByte(i13 & 255);
                this.f64075a.writeInt(i10 & Integer.MAX_VALUE);
                return;
            }
            throw new IllegalArgumentException(("reserved bit set: " + i10).toString());
        }
        throw new IllegalArgumentException(("FRAME_SIZE_ERROR length > " + this.f64078d + ": " + i11).toString());
    }

    public final synchronized void l(int i10, @NotNull ErrorCode errorCode, @NotNull byte[] debugData) throws IOException {
        try {
            Intrinsics.checkNotNullParameter(errorCode, "errorCode");
            Intrinsics.checkNotNullParameter(debugData, "debugData");
            if (!this.f64079e) {
                if (errorCode.getHttpCode() != -1) {
                    boolean z10 = false;
                    k(0, debugData.length + 8, 7, 0);
                    this.f64075a.writeInt(i10);
                    this.f64075a.writeInt(errorCode.getHttpCode());
                    if (debugData.length == 0) {
                        z10 = true;
                    }
                    if (!z10) {
                        this.f64075a.write(debugData);
                    }
                    this.f64075a.flush();
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

    public final synchronized void m(boolean z10, int i10, @NotNull List<Header> headerBlock) throws IOException {
        int i11;
        Intrinsics.checkNotNullParameter(headerBlock, "headerBlock");
        if (!this.f64079e) {
            this.f64080f.g(headerBlock);
            long size = this.f64077c.size();
            long min = Math.min(this.f64078d, size);
            int i12 = (size > min ? 1 : (size == min ? 0 : -1));
            if (i12 == 0) {
                i11 = 4;
            } else {
                i11 = 0;
            }
            if (z10) {
                i11 |= 1;
            }
            k(i10, (int) min, 1, i11);
            this.f64075a.write(this.f64077c, min);
            if (i12 > 0) {
                u(i10, size - min);
            }
        } else {
            throw new IOException("closed");
        }
    }

    public final int o() {
        return this.f64078d;
    }

    public final synchronized void p(boolean z10, int i10, int i11) throws IOException {
        if (!this.f64079e) {
            k(0, 8, 6, z10 ? 1 : 0);
            this.f64075a.writeInt(i10);
            this.f64075a.writeInt(i11);
            this.f64075a.flush();
        } else {
            throw new IOException("closed");
        }
    }

    public final synchronized void q(int i10, int i11, @NotNull List<Header> requestHeaders) throws IOException {
        int i12;
        Intrinsics.checkNotNullParameter(requestHeaders, "requestHeaders");
        if (!this.f64079e) {
            this.f64080f.g(requestHeaders);
            long size = this.f64077c.size();
            int min = (int) Math.min(this.f64078d - 4, size);
            int i13 = min + 4;
            long j10 = min;
            int i14 = (size > j10 ? 1 : (size == j10 ? 0 : -1));
            if (i14 == 0) {
                i12 = 4;
            } else {
                i12 = 0;
            }
            k(i10, i13, 5, i12);
            this.f64075a.writeInt(i11 & Integer.MAX_VALUE);
            this.f64075a.write(this.f64077c, j10);
            if (i14 > 0) {
                u(i10, size - j10);
            }
        } else {
            throw new IOException("closed");
        }
    }

    public final synchronized void r(int i10, @NotNull ErrorCode errorCode) throws IOException {
        Intrinsics.checkNotNullParameter(errorCode, "errorCode");
        if (!this.f64079e) {
            if (errorCode.getHttpCode() != -1) {
                k(i10, 4, 3, 0);
                this.f64075a.writeInt(errorCode.getHttpCode());
                this.f64075a.flush();
            } else {
                throw new IllegalArgumentException("Failed requirement.");
            }
        } else {
            throw new IOException("closed");
        }
    }

    public final synchronized void s(@NotNull Settings settings) throws IOException {
        int i10;
        try {
            Intrinsics.checkNotNullParameter(settings, "settings");
            if (!this.f64079e) {
                k(0, settings.i() * 6, 4, 0);
                for (int i11 = 0; i11 < 10; i11++) {
                    if (settings.f(i11)) {
                        if (i11 != 4) {
                            if (i11 != 7) {
                                i10 = i11;
                            } else {
                                i10 = 4;
                            }
                        } else {
                            i10 = 3;
                        }
                        this.f64075a.writeShort(i10);
                        this.f64075a.writeInt(settings.a(i11));
                    }
                }
                this.f64075a.flush();
            } else {
                throw new IOException("closed");
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final synchronized void t(int i10, long j10) throws IOException {
        if (!this.f64079e) {
            if (j10 != 0 && j10 <= SieveCacheKt.NodeLinkMask) {
                k(i10, 4, 8, 0);
                this.f64075a.writeInt((int) j10);
                this.f64075a.flush();
            } else {
                throw new IllegalArgumentException(("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: " + j10).toString());
            }
        } else {
            throw new IOException("closed");
        }
    }
}
