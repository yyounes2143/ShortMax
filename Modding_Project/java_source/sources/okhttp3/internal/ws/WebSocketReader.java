package okhttp3.internal.ws;

import java.io.Closeable;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.Util;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: WebSocketReader.kt */
@Metadata
@SourceDebugExtension({"SMAP\nWebSocketReader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WebSocketReader.kt\nokhttp3/internal/ws/WebSocketReader\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,298:1\n1#2:299\n*E\n"})
/* loaded from: classes8.dex */
public final class WebSocketReader implements Closeable {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f64231a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final BufferedSource f64232b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final FrameCallback f64233c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f64234d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f64235e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f64236f;

    /* renamed from: g  reason: collision with root package name */
    private int f64237g;

    /* renamed from: h  reason: collision with root package name */
    private long f64238h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f64239i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f64240j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f64241k;
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    private final Buffer f64242l;
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    private final Buffer f64243m;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private MessageInflater f64244n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private final byte[] f64245o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private final Buffer.UnsafeCursor f64246p;

    /* compiled from: WebSocketReader.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public interface FrameCallback {
        void a(@NotNull ByteString byteString);

        void b(@NotNull ByteString byteString);

        void c(@NotNull ByteString byteString) throws IOException;

        void onReadClose(int i10, @NotNull String str);

        void onReadMessage(@NotNull String str) throws IOException;
    }

    public WebSocketReader(boolean z10, @NotNull BufferedSource source, @NotNull FrameCallback frameCallback, boolean z11, boolean z12) {
        byte[] bArr;
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(frameCallback, "frameCallback");
        this.f64231a = z10;
        this.f64232b = source;
        this.f64233c = frameCallback;
        this.f64234d = z11;
        this.f64235e = z12;
        this.f64242l = new Buffer();
        this.f64243m = new Buffer();
        if (z10) {
            bArr = null;
        } else {
            bArr = new byte[4];
        }
        this.f64245o = bArr;
        this.f64246p = z10 ? null : new Buffer.UnsafeCursor();
    }

    private final void k() throws IOException {
        short s10;
        String str;
        long j10 = this.f64238h;
        if (j10 > 0) {
            this.f64232b.readFully(this.f64242l, j10);
            if (!this.f64231a) {
                Buffer buffer = this.f64242l;
                Buffer.UnsafeCursor unsafeCursor = this.f64246p;
                Intrinsics.checkNotNull(unsafeCursor);
                buffer.readAndWriteUnsafe(unsafeCursor);
                this.f64246p.seek(0L);
                WebSocketProtocol webSocketProtocol = WebSocketProtocol.f64230a;
                Buffer.UnsafeCursor unsafeCursor2 = this.f64246p;
                byte[] bArr = this.f64245o;
                Intrinsics.checkNotNull(bArr);
                webSocketProtocol.b(unsafeCursor2, bArr);
                this.f64246p.close();
            }
        }
        switch (this.f64237g) {
            case 8:
                long size = this.f64242l.size();
                if (size != 1) {
                    if (size != 0) {
                        s10 = this.f64242l.readShort();
                        str = this.f64242l.readUtf8();
                        String a10 = WebSocketProtocol.f64230a.a(s10);
                        if (a10 != null) {
                            throw new ProtocolException(a10);
                        }
                    } else {
                        s10 = 1005;
                        str = "";
                    }
                    this.f64233c.onReadClose(s10, str);
                    this.f64236f = true;
                    return;
                }
                throw new ProtocolException("Malformed close payload length of 1.");
            case 9:
                this.f64233c.a(this.f64242l.readByteString());
                return;
            case 10:
                this.f64233c.b(this.f64242l.readByteString());
                return;
            default:
                throw new ProtocolException("Unknown control opcode: " + Util.R(this.f64237g));
        }
    }

    private final void l() throws IOException, ProtocolException {
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        String str;
        if (!this.f64236f) {
            long timeoutNanos = this.f64232b.timeout().timeoutNanos();
            this.f64232b.timeout().clearTimeout();
            try {
                int d10 = Util.d(this.f64232b.readByte(), 255);
                this.f64232b.timeout().timeout(timeoutNanos, TimeUnit.NANOSECONDS);
                int i10 = d10 & 15;
                this.f64237g = i10;
                boolean z14 = false;
                if ((d10 & 128) != 0) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                this.f64239i = z10;
                if ((d10 & 8) != 0) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                this.f64240j = z11;
                if (z11 && !z10) {
                    throw new ProtocolException("Control frames must be final.");
                }
                if ((d10 & 64) != 0) {
                    z12 = true;
                } else {
                    z12 = false;
                }
                if (i10 != 1 && i10 != 2) {
                    if (z12) {
                        throw new ProtocolException("Unexpected rsv1 flag");
                    }
                } else {
                    if (z12) {
                        if (this.f64234d) {
                            z13 = true;
                        } else {
                            throw new ProtocolException("Unexpected rsv1 flag");
                        }
                    } else {
                        z13 = false;
                    }
                    this.f64241k = z13;
                }
                if ((d10 & 32) == 0) {
                    if ((d10 & 16) == 0) {
                        int d11 = Util.d(this.f64232b.readByte(), 255);
                        if ((d11 & 128) != 0) {
                            z14 = true;
                        }
                        if (z14 == this.f64231a) {
                            if (this.f64231a) {
                                str = "Server-sent frames must not be masked.";
                            } else {
                                str = "Client-sent frames must be masked.";
                            }
                            throw new ProtocolException(str);
                        }
                        long j10 = d11 & 127;
                        this.f64238h = j10;
                        if (j10 == 126) {
                            this.f64238h = Util.e(this.f64232b.readShort(), 65535);
                        } else if (j10 == 127) {
                            long readLong = this.f64232b.readLong();
                            this.f64238h = readLong;
                            if (readLong < 0) {
                                throw new ProtocolException("Frame length 0x" + Util.S(this.f64238h) + " > 0x7FFFFFFFFFFFFFFF");
                            }
                        }
                        if (this.f64240j && this.f64238h > 125) {
                            throw new ProtocolException("Control frame must be less than 125B.");
                        }
                        if (z14) {
                            BufferedSource bufferedSource = this.f64232b;
                            byte[] bArr = this.f64245o;
                            Intrinsics.checkNotNull(bArr);
                            bufferedSource.readFully(bArr);
                            return;
                        }
                        return;
                    }
                    throw new ProtocolException("Unexpected rsv3 flag");
                }
                throw new ProtocolException("Unexpected rsv2 flag");
            } catch (Throwable th2) {
                this.f64232b.timeout().timeout(timeoutNanos, TimeUnit.NANOSECONDS);
                throw th2;
            }
        }
        throw new IOException("closed");
    }

    private final void m() throws IOException {
        while (!this.f64236f) {
            long j10 = this.f64238h;
            if (j10 > 0) {
                this.f64232b.readFully(this.f64243m, j10);
                if (!this.f64231a) {
                    Buffer buffer = this.f64243m;
                    Buffer.UnsafeCursor unsafeCursor = this.f64246p;
                    Intrinsics.checkNotNull(unsafeCursor);
                    buffer.readAndWriteUnsafe(unsafeCursor);
                    this.f64246p.seek(this.f64243m.size() - this.f64238h);
                    WebSocketProtocol webSocketProtocol = WebSocketProtocol.f64230a;
                    Buffer.UnsafeCursor unsafeCursor2 = this.f64246p;
                    byte[] bArr = this.f64245o;
                    Intrinsics.checkNotNull(bArr);
                    webSocketProtocol.b(unsafeCursor2, bArr);
                    this.f64246p.close();
                }
            }
            if (!this.f64239i) {
                p();
                if (this.f64237g != 0) {
                    throw new ProtocolException("Expected continuation opcode. Got: " + Util.R(this.f64237g));
                }
            } else {
                return;
            }
        }
        throw new IOException("closed");
    }

    private final void o() throws IOException {
        int i10 = this.f64237g;
        if (i10 != 1 && i10 != 2) {
            throw new ProtocolException("Unknown opcode: " + Util.R(i10));
        }
        m();
        if (this.f64241k) {
            MessageInflater messageInflater = this.f64244n;
            if (messageInflater == null) {
                messageInflater = new MessageInflater(this.f64235e);
                this.f64244n = messageInflater;
            }
            messageInflater.a(this.f64243m);
        }
        if (i10 == 1) {
            this.f64233c.onReadMessage(this.f64243m.readUtf8());
        } else {
            this.f64233c.c(this.f64243m.readByteString());
        }
    }

    private final void p() throws IOException {
        while (!this.f64236f) {
            l();
            if (this.f64240j) {
                k();
            } else {
                return;
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        MessageInflater messageInflater = this.f64244n;
        if (messageInflater != null) {
            messageInflater.close();
        }
    }

    public final void d() throws IOException {
        l();
        if (this.f64240j) {
            k();
        } else {
            o();
        }
    }
}
