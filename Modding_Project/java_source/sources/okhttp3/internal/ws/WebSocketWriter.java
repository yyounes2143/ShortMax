package okhttp3.internal.ws;

import java.io.Closeable;
import java.io.IOException;
import java.util.Random;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okio.Buffer;
import okio.BufferedSink;
import okio.ByteString;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: WebSocketWriter.kt */
@Metadata
@SourceDebugExtension({"SMAP\nWebSocketWriter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WebSocketWriter.kt\nokhttp3/internal/ws/WebSocketWriter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,202:1\n1#2:203\n*E\n"})
/* loaded from: classes8.dex */
public final class WebSocketWriter implements Closeable {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f64247a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final BufferedSink f64248b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final Random f64249c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f64250d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f64251e;

    /* renamed from: f  reason: collision with root package name */
    private final long f64252f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private final Buffer f64253g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    private final Buffer f64254h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f64255i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private MessageDeflater f64256j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private final byte[] f64257k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private final Buffer.UnsafeCursor f64258l;

    public WebSocketWriter(boolean z10, @NotNull BufferedSink sink, @NotNull Random random, boolean z11, boolean z12, long j10) {
        byte[] bArr;
        Intrinsics.checkNotNullParameter(sink, "sink");
        Intrinsics.checkNotNullParameter(random, "random");
        this.f64247a = z10;
        this.f64248b = sink;
        this.f64249c = random;
        this.f64250d = z11;
        this.f64251e = z12;
        this.f64252f = j10;
        this.f64253g = new Buffer();
        this.f64254h = sink.getBuffer();
        if (z10) {
            bArr = new byte[4];
        } else {
            bArr = null;
        }
        this.f64257k = bArr;
        this.f64258l = z10 ? new Buffer.UnsafeCursor() : null;
    }

    private final void b(int i10, ByteString byteString) throws IOException {
        if (!this.f64255i) {
            int size = byteString.size();
            if (size <= 125) {
                this.f64254h.writeByte(i10 | 128);
                if (this.f64247a) {
                    this.f64254h.writeByte(size | 128);
                    Random random = this.f64249c;
                    byte[] bArr = this.f64257k;
                    Intrinsics.checkNotNull(bArr);
                    random.nextBytes(bArr);
                    this.f64254h.write(this.f64257k);
                    if (size > 0) {
                        long size2 = this.f64254h.size();
                        this.f64254h.write(byteString);
                        Buffer buffer = this.f64254h;
                        Buffer.UnsafeCursor unsafeCursor = this.f64258l;
                        Intrinsics.checkNotNull(unsafeCursor);
                        buffer.readAndWriteUnsafe(unsafeCursor);
                        this.f64258l.seek(size2);
                        WebSocketProtocol.f64230a.b(this.f64258l, this.f64257k);
                        this.f64258l.close();
                    }
                } else {
                    this.f64254h.writeByte(size);
                    this.f64254h.write(byteString);
                }
                this.f64248b.flush();
                return;
            }
            throw new IllegalArgumentException("Payload size must be less than or equal to 125");
        }
        throw new IOException("closed");
    }

    public final void a(int i10, @Nullable ByteString byteString) throws IOException {
        ByteString byteString2 = ByteString.EMPTY;
        if (i10 != 0 || byteString != null) {
            if (i10 != 0) {
                WebSocketProtocol.f64230a.c(i10);
            }
            Buffer buffer = new Buffer();
            buffer.writeShort(i10);
            if (byteString != null) {
                buffer.write(byteString);
            }
            byteString2 = buffer.readByteString();
        }
        try {
            b(8, byteString2);
        } finally {
            this.f64255i = true;
        }
    }

    public final void c(int i10, @NotNull ByteString data) throws IOException {
        int i11;
        Intrinsics.checkNotNullParameter(data, "data");
        if (!this.f64255i) {
            this.f64253g.write(data);
            int i12 = i10 | 128;
            if (this.f64250d && data.size() >= this.f64252f) {
                MessageDeflater messageDeflater = this.f64256j;
                if (messageDeflater == null) {
                    messageDeflater = new MessageDeflater(this.f64251e);
                    this.f64256j = messageDeflater;
                }
                messageDeflater.a(this.f64253g);
                i12 = i10 | 192;
            }
            long size = this.f64253g.size();
            this.f64254h.writeByte(i12);
            if (this.f64247a) {
                i11 = 128;
            } else {
                i11 = 0;
            }
            if (size <= 125) {
                this.f64254h.writeByte(i11 | ((int) size));
            } else if (size <= com.applovin.shadow.okhttp3.internal.ws.WebSocketProtocol.PAYLOAD_SHORT_MAX) {
                this.f64254h.writeByte(i11 | 126);
                this.f64254h.writeShort((int) size);
            } else {
                this.f64254h.writeByte(i11 | 127);
                this.f64254h.writeLong(size);
            }
            if (this.f64247a) {
                Random random = this.f64249c;
                byte[] bArr = this.f64257k;
                Intrinsics.checkNotNull(bArr);
                random.nextBytes(bArr);
                this.f64254h.write(this.f64257k);
                if (size > 0) {
                    Buffer buffer = this.f64253g;
                    Buffer.UnsafeCursor unsafeCursor = this.f64258l;
                    Intrinsics.checkNotNull(unsafeCursor);
                    buffer.readAndWriteUnsafe(unsafeCursor);
                    this.f64258l.seek(0L);
                    WebSocketProtocol.f64230a.b(this.f64258l, this.f64257k);
                    this.f64258l.close();
                }
            }
            this.f64254h.write(this.f64253g, size);
            this.f64248b.emit();
            return;
        }
        throw new IOException("closed");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        MessageDeflater messageDeflater = this.f64256j;
        if (messageDeflater != null) {
            messageDeflater.close();
        }
    }

    public final void d(@NotNull ByteString payload) throws IOException {
        Intrinsics.checkNotNullParameter(payload, "payload");
        b(9, payload);
    }

    public final void g(@NotNull ByteString payload) throws IOException {
        Intrinsics.checkNotNullParameter(payload, "payload");
        b(10, payload);
    }
}
