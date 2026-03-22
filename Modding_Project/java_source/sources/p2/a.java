package p2;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
/* compiled from: LimitedInputStream.java */
/* loaded from: classes3.dex */
public class a extends FilterInputStream {

    /* renamed from: a  reason: collision with root package name */
    private int f64500a;

    /* renamed from: b  reason: collision with root package name */
    private int f64501b;

    public a(InputStream inputStream, int i10) {
        super(inputStream);
        inputStream.getClass();
        if (i10 >= 0) {
            this.f64500a = i10;
            this.f64501b = -1;
            return;
        }
        throw new IllegalArgumentException("limit must be >= 0");
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() throws IOException {
        return Math.min(((FilterInputStream) this).in.available(), this.f64500a);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void mark(int i10) {
        if (((FilterInputStream) this).in.markSupported()) {
            ((FilterInputStream) this).in.mark(i10);
            this.f64501b = this.f64500a;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        if (this.f64500a == 0) {
            return -1;
        }
        int read = ((FilterInputStream) this).in.read();
        if (read != -1) {
            this.f64500a--;
        }
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void reset() throws IOException {
        if (((FilterInputStream) this).in.markSupported()) {
            if (this.f64501b != -1) {
                ((FilterInputStream) this).in.reset();
                this.f64500a = this.f64501b;
                return;
            }
            throw new IOException("mark not set");
        }
        throw new IOException("mark is not supported");
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j10) throws IOException {
        long skip = ((FilterInputStream) this).in.skip(Math.min(j10, this.f64500a));
        this.f64500a = (int) (this.f64500a - skip);
        return skip;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        int i12 = this.f64500a;
        if (i12 == 0) {
            return -1;
        }
        int read = ((FilterInputStream) this).in.read(bArr, i10, Math.min(i11, i12));
        if (read > 0) {
            this.f64500a -= read;
        }
        return read;
    }
}
