package okhttp3.internal.http2;

import androidx.collection.SieveCacheKt;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.d;
import kotlin.ranges.e;
import okhttp3.internal.Util;
import okhttp3.internal.http2.Hpack;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;
import okio.Source;
import okio.Timeout;
import org.jetbrains.annotations.NotNull;
/* compiled from: Http2Reader.kt */
@Metadata
/* loaded from: classes8.dex */
public final class Http2Reader implements Closeable {
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public static final Companion f64033e = new Companion(null);
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private static final Logger f64034f;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final BufferedSource f64035a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f64036b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final ContinuationSource f64037c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final Hpack.Reader f64038d;

    /* compiled from: Http2Reader.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final Logger a() {
            return Http2Reader.f64034f;
        }

        public final int b(int i10, int i11, int i12) throws IOException {
            if ((i11 & 8) != 0) {
                i10--;
            }
            if (i12 <= i10) {
                return i10 - i12;
            }
            throw new IOException("PROTOCOL_ERROR padding " + i12 + " > remaining length " + i10);
        }

        private Companion() {
        }
    }

    /* compiled from: Http2Reader.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public interface Handler {
        void a(int i10, @NotNull ErrorCode errorCode);

        void ackSettings();

        void b(int i10, @NotNull ErrorCode errorCode, @NotNull ByteString byteString);

        void c(boolean z10, @NotNull Settings settings);

        void d(boolean z10, int i10, @NotNull BufferedSource bufferedSource, int i11) throws IOException;

        void headers(boolean z10, int i10, int i11, @NotNull List<Header> list);

        void ping(boolean z10, int i10, int i11);

        void priority(int i10, int i11, int i12, boolean z10);

        void pushPromise(int i10, int i11, @NotNull List<Header> list) throws IOException;

        void windowUpdate(int i10, long j10);
    }

    static {
        Logger logger = Logger.getLogger(Http2.class.getName());
        Intrinsics.checkNotNullExpressionValue(logger, "getLogger(Http2::class.java.name)");
        f64034f = logger;
    }

    public Http2Reader(@NotNull BufferedSource source, boolean z10) {
        Intrinsics.checkNotNullParameter(source, "source");
        this.f64035a = source;
        this.f64036b = z10;
        ContinuationSource continuationSource = new ContinuationSource(source);
        this.f64037c = continuationSource;
        this.f64038d = new Hpack.Reader(continuationSource, 4096, 0, 4, null);
    }

    private final void k(Handler handler, int i10, int i11, int i12) throws IOException {
        boolean z10;
        if (i12 != 0) {
            int i13 = 0;
            if ((i11 & 1) != 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            if ((i11 & 32) == 0) {
                if ((i11 & 8) != 0) {
                    i13 = Util.d(this.f64035a.readByte(), 255);
                }
                handler.d(z10, i12, this.f64035a, f64033e.b(i10, i11, i13));
                this.f64035a.skip(i13);
                return;
            }
            throw new IOException("PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA");
        }
        throw new IOException("PROTOCOL_ERROR: TYPE_DATA streamId == 0");
    }

    private final void l(Handler handler, int i10, int i11, int i12) throws IOException {
        if (i10 >= 8) {
            if (i12 == 0) {
                int readInt = this.f64035a.readInt();
                int readInt2 = this.f64035a.readInt();
                int i13 = i10 - 8;
                ErrorCode a10 = ErrorCode.Companion.a(readInt2);
                if (a10 != null) {
                    ByteString byteString = ByteString.EMPTY;
                    if (i13 > 0) {
                        byteString = this.f64035a.readByteString(i13);
                    }
                    handler.b(readInt, a10, byteString);
                    return;
                }
                throw new IOException("TYPE_GOAWAY unexpected error code: " + readInt2);
            }
            throw new IOException("TYPE_GOAWAY streamId != 0");
        }
        throw new IOException("TYPE_GOAWAY length < 8: " + i10);
    }

    private final List<Header> m(int i10, int i11, int i12, int i13) throws IOException {
        this.f64037c.m(i10);
        ContinuationSource continuationSource = this.f64037c;
        continuationSource.o(continuationSource.d());
        this.f64037c.p(i11);
        this.f64037c.l(i12);
        this.f64037c.q(i13);
        this.f64038d.k();
        return this.f64038d.e();
    }

    private final void o(Handler handler, int i10, int i11, int i12) throws IOException {
        boolean z10;
        if (i12 != 0) {
            int i13 = 0;
            if ((i11 & 1) != 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            if ((i11 & 8) != 0) {
                i13 = Util.d(this.f64035a.readByte(), 255);
            }
            if ((i11 & 32) != 0) {
                q(handler, i12);
                i10 -= 5;
            }
            handler.headers(z10, i12, -1, m(f64033e.b(i10, i11, i13), i13, i11, i12));
            return;
        }
        throw new IOException("PROTOCOL_ERROR: TYPE_HEADERS streamId == 0");
    }

    private final void p(Handler handler, int i10, int i11, int i12) throws IOException {
        if (i10 == 8) {
            if (i12 == 0) {
                int readInt = this.f64035a.readInt();
                int readInt2 = this.f64035a.readInt();
                boolean z10 = true;
                if ((i11 & 1) == 0) {
                    z10 = false;
                }
                handler.ping(z10, readInt, readInt2);
                return;
            }
            throw new IOException("TYPE_PING streamId != 0");
        }
        throw new IOException("TYPE_PING length != 8: " + i10);
    }

    private final void q(Handler handler, int i10) throws IOException {
        boolean z10;
        int readInt = this.f64035a.readInt();
        if ((Integer.MIN_VALUE & readInt) != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        handler.priority(i10, readInt & Integer.MAX_VALUE, Util.d(this.f64035a.readByte(), 255) + 1, z10);
    }

    private final void r(Handler handler, int i10, int i11, int i12) throws IOException {
        if (i10 == 5) {
            if (i12 != 0) {
                q(handler, i12);
                return;
            }
            throw new IOException("TYPE_PRIORITY streamId == 0");
        }
        throw new IOException("TYPE_PRIORITY length: " + i10 + " != 5");
    }

    private final void s(Handler handler, int i10, int i11, int i12) throws IOException {
        int i13;
        if (i12 != 0) {
            if ((i11 & 8) != 0) {
                i13 = Util.d(this.f64035a.readByte(), 255);
            } else {
                i13 = 0;
            }
            handler.pushPromise(i12, this.f64035a.readInt() & Integer.MAX_VALUE, m(f64033e.b(i10 - 4, i11, i13), i13, i11, i12));
            return;
        }
        throw new IOException("PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0");
    }

    private final void t(Handler handler, int i10, int i11, int i12) throws IOException {
        if (i10 == 4) {
            if (i12 != 0) {
                int readInt = this.f64035a.readInt();
                ErrorCode a10 = ErrorCode.Companion.a(readInt);
                if (a10 != null) {
                    handler.a(i12, a10);
                    return;
                }
                throw new IOException("TYPE_RST_STREAM unexpected error code: " + readInt);
            }
            throw new IOException("TYPE_RST_STREAM streamId == 0");
        }
        throw new IOException("TYPE_RST_STREAM length: " + i10 + " != 4");
    }

    private final void u(Handler handler, int i10, int i11, int i12) throws IOException {
        int readInt;
        if (i12 == 0) {
            if ((i11 & 1) != 0) {
                if (i10 == 0) {
                    handler.ackSettings();
                    return;
                }
                throw new IOException("FRAME_SIZE_ERROR ack frame should be empty!");
            } else if (i10 % 6 == 0) {
                Settings settings = new Settings();
                d u10 = e.u(e.v(0, i10), 6);
                int c10 = u10.c();
                int d10 = u10.d();
                int e10 = u10.e();
                if ((e10 > 0 && c10 <= d10) || (e10 < 0 && d10 <= c10)) {
                    while (true) {
                        int e11 = Util.e(this.f64035a.readShort(), 65535);
                        readInt = this.f64035a.readInt();
                        if (e11 != 2) {
                            if (e11 != 3) {
                                if (e11 != 4) {
                                    if (e11 == 5 && (readInt < 16384 || readInt > 16777215)) {
                                        break;
                                    }
                                } else if (readInt >= 0) {
                                    e11 = 7;
                                } else {
                                    throw new IOException("PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1");
                                }
                            } else {
                                e11 = 4;
                            }
                        } else if (readInt != 0 && readInt != 1) {
                            throw new IOException("PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1");
                        }
                        settings.h(e11, readInt);
                        if (c10 == d10) {
                            break;
                        }
                        c10 += e10;
                    }
                    throw new IOException("PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: " + readInt);
                }
                handler.c(false, settings);
                return;
            } else {
                throw new IOException("TYPE_SETTINGS length % 6 != 0: " + i10);
            }
        }
        throw new IOException("TYPE_SETTINGS streamId != 0");
    }

    private final void v(Handler handler, int i10, int i11, int i12) throws IOException {
        if (i10 == 4) {
            long f10 = Util.f(this.f64035a.readInt(), SieveCacheKt.NodeLinkMask);
            if (f10 != 0) {
                handler.windowUpdate(i12, f10);
                return;
            }
            throw new IOException("windowSizeIncrement was 0");
        }
        throw new IOException("TYPE_WINDOW_UPDATE length !=4: " + i10);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f64035a.close();
    }

    public final boolean g(boolean z10, @NotNull Handler handler) throws IOException {
        Intrinsics.checkNotNullParameter(handler, "handler");
        try {
            this.f64035a.require(9L);
            int K = Util.K(this.f64035a);
            if (K <= 16384) {
                int d10 = Util.d(this.f64035a.readByte(), 255);
                int d11 = Util.d(this.f64035a.readByte(), 255);
                int readInt = this.f64035a.readInt() & Integer.MAX_VALUE;
                Logger logger = f64034f;
                if (logger.isLoggable(Level.FINE)) {
                    logger.fine(Http2.f63946a.c(true, readInt, K, d10, d11));
                }
                if (z10 && d10 != 4) {
                    throw new IOException("Expected a SETTINGS frame but was " + Http2.f63946a.b(d10));
                }
                switch (d10) {
                    case 0:
                        k(handler, K, d11, readInt);
                        return true;
                    case 1:
                        o(handler, K, d11, readInt);
                        return true;
                    case 2:
                        r(handler, K, d11, readInt);
                        return true;
                    case 3:
                        t(handler, K, d11, readInt);
                        return true;
                    case 4:
                        u(handler, K, d11, readInt);
                        return true;
                    case 5:
                        s(handler, K, d11, readInt);
                        return true;
                    case 6:
                        p(handler, K, d11, readInt);
                        return true;
                    case 7:
                        l(handler, K, d11, readInt);
                        return true;
                    case 8:
                        v(handler, K, d11, readInt);
                        return true;
                    default:
                        this.f64035a.skip(K);
                        return true;
                }
            }
            throw new IOException("FRAME_SIZE_ERROR: " + K);
        } catch (EOFException unused) {
            return false;
        }
    }

    public final void i(@NotNull Handler handler) throws IOException {
        Intrinsics.checkNotNullParameter(handler, "handler");
        if (this.f64036b) {
            if (!g(true, handler)) {
                throw new IOException("Required SETTINGS preface not received");
            }
            return;
        }
        BufferedSource bufferedSource = this.f64035a;
        ByteString byteString = Http2.f63947b;
        ByteString readByteString = bufferedSource.readByteString(byteString.size());
        Logger logger = f64034f;
        if (logger.isLoggable(Level.FINE)) {
            logger.fine(Util.t("<< CONNECTION " + readByteString.hex(), new Object[0]));
        }
        if (Intrinsics.areEqual(byteString, readByteString)) {
            return;
        }
        throw new IOException("Expected a connection header but was " + readByteString.utf8());
    }

    /* compiled from: Http2Reader.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class ContinuationSource implements Source {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final BufferedSource f64039a;

        /* renamed from: b  reason: collision with root package name */
        private int f64040b;

        /* renamed from: c  reason: collision with root package name */
        private int f64041c;

        /* renamed from: d  reason: collision with root package name */
        private int f64042d;

        /* renamed from: e  reason: collision with root package name */
        private int f64043e;

        /* renamed from: f  reason: collision with root package name */
        private int f64044f;

        public ContinuationSource(@NotNull BufferedSource source) {
            Intrinsics.checkNotNullParameter(source, "source");
            this.f64039a = source;
        }

        private final void k() throws IOException {
            int i10 = this.f64042d;
            int K = Util.K(this.f64039a);
            this.f64043e = K;
            this.f64040b = K;
            int d10 = Util.d(this.f64039a.readByte(), 255);
            this.f64041c = Util.d(this.f64039a.readByte(), 255);
            Companion companion = Http2Reader.f64033e;
            if (companion.a().isLoggable(Level.FINE)) {
                companion.a().fine(Http2.f63946a.c(true, this.f64042d, this.f64040b, d10, this.f64041c));
            }
            int readInt = this.f64039a.readInt() & Integer.MAX_VALUE;
            this.f64042d = readInt;
            if (d10 == 9) {
                if (readInt == i10) {
                    return;
                }
                throw new IOException("TYPE_CONTINUATION streamId changed");
            }
            throw new IOException(d10 + " != TYPE_CONTINUATION");
        }

        public final int d() {
            return this.f64043e;
        }

        public final void l(int i10) {
            this.f64041c = i10;
        }

        public final void m(int i10) {
            this.f64043e = i10;
        }

        public final void o(int i10) {
            this.f64040b = i10;
        }

        public final void p(int i10) {
            this.f64044f = i10;
        }

        public final void q(int i10) {
            this.f64042d = i10;
        }

        @Override // okio.Source
        public long read(@NotNull Buffer sink, long j10) throws IOException {
            Intrinsics.checkNotNullParameter(sink, "sink");
            while (true) {
                int i10 = this.f64043e;
                if (i10 == 0) {
                    this.f64039a.skip(this.f64044f);
                    this.f64044f = 0;
                    if ((this.f64041c & 4) != 0) {
                        return -1L;
                    }
                    k();
                } else {
                    long read = this.f64039a.read(sink, Math.min(j10, i10));
                    if (read == -1) {
                        return -1L;
                    }
                    this.f64043e -= (int) read;
                    return read;
                }
            }
        }

        @Override // okio.Source
        @NotNull
        public Timeout timeout() {
            return this.f64039a.timeout();
        }

        @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
        }
    }
}
