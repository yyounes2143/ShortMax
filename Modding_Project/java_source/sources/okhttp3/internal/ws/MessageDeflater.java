package okhttp3.internal.ws;

import java.io.Closeable;
import java.io.IOException;
import java.util.zip.Deflater;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okio.Buffer;
import okio.ByteString;
import okio.DeflaterSink;
import okio.Sink;
import org.jetbrains.annotations.NotNull;
import ws.b;
/* compiled from: MessageDeflater.kt */
@Metadata
/* loaded from: classes8.dex */
public final class MessageDeflater implements Closeable {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f64174a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final Buffer f64175b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final Deflater f64176c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final DeflaterSink f64177d;

    public MessageDeflater(boolean z10) {
        this.f64174a = z10;
        Buffer buffer = new Buffer();
        this.f64175b = buffer;
        Deflater deflater = new Deflater(-1, true);
        this.f64176c = deflater;
        this.f64177d = new DeflaterSink((Sink) buffer, deflater);
    }

    private final boolean b(Buffer buffer, ByteString byteString) {
        return buffer.rangeEquals(buffer.size() - byteString.size(), byteString);
    }

    public final void a(@NotNull Buffer buffer) throws IOException {
        ByteString byteString;
        Intrinsics.checkNotNullParameter(buffer, "buffer");
        if (this.f64175b.size() == 0) {
            if (this.f64174a) {
                this.f64176c.reset();
            }
            this.f64177d.write(buffer, buffer.size());
            this.f64177d.flush();
            Buffer buffer2 = this.f64175b;
            byteString = MessageDeflaterKt.f64178a;
            if (b(buffer2, byteString)) {
                long size = this.f64175b.size() - 4;
                Buffer.UnsafeCursor readAndWriteUnsafe$default = Buffer.readAndWriteUnsafe$default(this.f64175b, null, 1, null);
                try {
                    readAndWriteUnsafe$default.resizeBuffer(size);
                    b.a(readAndWriteUnsafe$default, null);
                } finally {
                }
            } else {
                this.f64175b.writeByte(0);
            }
            Buffer buffer3 = this.f64175b;
            buffer.write(buffer3, buffer3.size());
            return;
        }
        throw new IllegalArgumentException("Failed requirement.");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f64177d.close();
    }
}
