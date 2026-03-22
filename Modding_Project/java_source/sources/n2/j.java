package n2;

import androidx.annotation.VisibleForTesting;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
/* compiled from: PooledByteStreams.java */
/* loaded from: classes3.dex */
public class j {

    /* renamed from: a  reason: collision with root package name */
    private final int f62736a;

    /* renamed from: b  reason: collision with root package name */
    private final a f62737b;

    public j(a aVar) {
        this(aVar, 16384);
    }

    public long a(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = this.f62737b.get(this.f62736a);
        long j10 = 0;
        while (true) {
            try {
                int read = inputStream.read(bArr, 0, this.f62736a);
                if (read == -1) {
                    return j10;
                }
                outputStream.write(bArr, 0, read);
                j10 += read;
            } finally {
                this.f62737b.release(bArr);
            }
        }
    }

    @VisibleForTesting
    public j(a aVar, int i10) {
        k2.h.b(Boolean.valueOf(i10 > 0));
        this.f62736a = i10;
        this.f62737b = aVar;
    }
}
