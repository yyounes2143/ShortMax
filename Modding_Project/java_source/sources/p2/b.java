package p2;

import com.inmobi.commons.core.configs.AdConfig;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
/* compiled from: TailAppendingInputStream.java */
/* loaded from: classes3.dex */
public class b extends FilterInputStream {

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f64502a;

    /* renamed from: b  reason: collision with root package name */
    private int f64503b;

    /* renamed from: c  reason: collision with root package name */
    private int f64504c;

    public b(InputStream inputStream, byte[] bArr) {
        super(inputStream);
        inputStream.getClass();
        bArr.getClass();
        this.f64502a = bArr;
    }

    private int d() {
        int i10 = this.f64503b;
        byte[] bArr = this.f64502a;
        if (i10 >= bArr.length) {
            return -1;
        }
        this.f64503b = i10 + 1;
        return bArr[i10] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void mark(int i10) {
        if (((FilterInputStream) this).in.markSupported()) {
            super.mark(i10);
            this.f64504c = this.f64503b;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int read = ((FilterInputStream) this).in.read();
        return read != -1 ? read : d();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void reset() throws IOException {
        if (((FilterInputStream) this).in.markSupported()) {
            ((FilterInputStream) this).in.reset();
            this.f64503b = this.f64504c;
            return;
        }
        throw new IOException("mark is not supported");
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        int read = ((FilterInputStream) this).in.read(bArr, i10, i11);
        if (read != -1) {
            return read;
        }
        int i12 = 0;
        if (i11 == 0) {
            return 0;
        }
        while (i12 < i11) {
            int d10 = d();
            if (d10 == -1) {
                break;
            }
            bArr[i10 + i12] = (byte) d10;
            i12++;
        }
        if (i12 > 0) {
            return i12;
        }
        return -1;
    }
}
