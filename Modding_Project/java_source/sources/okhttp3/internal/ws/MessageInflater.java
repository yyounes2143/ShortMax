package okhttp3.internal.ws;

import java.io.Closeable;
import java.io.IOException;
import java.util.zip.Inflater;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okio.Buffer;
import okio.InflaterSource;
import okio.Source;
import org.jetbrains.annotations.NotNull;
/* compiled from: MessageInflater.kt */
@Metadata
/* loaded from: classes8.dex */
public final class MessageInflater implements Closeable {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f64179a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final Buffer f64180b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final Inflater f64181c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final InflaterSource f64182d;

    public MessageInflater(boolean z10) {
        this.f64179a = z10;
        Buffer buffer = new Buffer();
        this.f64180b = buffer;
        Inflater inflater = new Inflater(true);
        this.f64181c = inflater;
        this.f64182d = new InflaterSource((Source) buffer, inflater);
    }

    public final void a(@NotNull Buffer buffer) throws IOException {
        Intrinsics.checkNotNullParameter(buffer, "buffer");
        if (this.f64180b.size() == 0) {
            if (this.f64179a) {
                this.f64181c.reset();
            }
            this.f64180b.writeAll(buffer);
            this.f64180b.writeInt(65535);
            long bytesRead = this.f64181c.getBytesRead() + this.f64180b.size();
            do {
                this.f64182d.readOrInflate(buffer, Long.MAX_VALUE);
            } while (this.f64181c.getBytesRead() < bytesRead);
            return;
        }
        throw new IllegalArgumentException("Failed requirement.");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f64182d.close();
    }
}
