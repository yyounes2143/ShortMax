package com.bytedance.sdk.component.Pfn.tB.oJ.oJ;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
/* loaded from: classes3.dex */
class tB implements Closeable {
    private int Pfn;
    private final Charset ZYk;
    private int ex;
    private final InputStream oJ;
    private byte[] tB;

    public tB(InputStream inputStream, Charset charset) {
        this(inputStream, 8192, charset);
    }

    private void tB() throws IOException {
        InputStream inputStream = this.oJ;
        byte[] bArr = this.tB;
        int read = inputStream.read(bArr, 0, bArr.length);
        if (read != -1) {
            this.ex = 0;
            this.Pfn = read;
            return;
        }
        throw new EOFException();
    }

    public boolean ZYk() {
        if (this.Pfn == -1) {
            return true;
        }
        return false;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        synchronized (this.oJ) {
            try {
                if (this.tB != null) {
                    this.tB = null;
                    this.oJ.close();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public tB(InputStream inputStream, int i10, Charset charset) {
        if (inputStream == null || charset == null) {
            throw null;
        }
        if (i10 >= 0) {
            if (charset.equals(ex.oJ)) {
                this.oJ = inputStream;
                this.ZYk = charset;
                this.tB = new byte[i10];
                return;
            }
            throw new IllegalArgumentException("Unsupported encoding");
        }
        throw new IllegalArgumentException("capacity <= 0");
    }

    public String oJ() throws IOException {
        int i10;
        byte[] bArr;
        int i11;
        synchronized (this.oJ) {
            try {
                if (this.tB != null) {
                    if (this.ex >= this.Pfn) {
                        tB();
                    }
                    for (int i12 = this.ex; i12 != this.Pfn; i12++) {
                        byte[] bArr2 = this.tB;
                        if (bArr2[i12] == 10) {
                            int i13 = this.ex;
                            if (i12 != i13) {
                                i11 = i12 - 1;
                                if (bArr2[i11] == 13) {
                                    String str = new String(bArr2, i13, i11 - i13, this.ZYk.name());
                                    this.ex = i12 + 1;
                                    return str;
                                }
                            }
                            i11 = i12;
                            String str2 = new String(bArr2, i13, i11 - i13, this.ZYk.name());
                            this.ex = i12 + 1;
                            return str2;
                        }
                    }
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream((this.Pfn - this.ex) + 80) { // from class: com.bytedance.sdk.component.Pfn.tB.oJ.oJ.tB.1
                        @Override // java.io.ByteArrayOutputStream
                        public String toString() {
                            int i14 = ((ByteArrayOutputStream) this).count;
                            if (i14 > 0 && ((ByteArrayOutputStream) this).buf[i14 - 1] == 13) {
                                i14--;
                            }
                            try {
                                return new String(((ByteArrayOutputStream) this).buf, 0, i14, tB.this.ZYk.name());
                            } catch (UnsupportedEncodingException e10) {
                                throw new AssertionError(e10);
                            }
                        }
                    };
                    loop1: while (true) {
                        byte[] bArr3 = this.tB;
                        int i14 = this.ex;
                        byteArrayOutputStream.write(bArr3, i14, this.Pfn - i14);
                        this.Pfn = -1;
                        tB();
                        i10 = this.ex;
                        while (i10 != this.Pfn) {
                            bArr = this.tB;
                            if (bArr[i10] == 10) {
                                break loop1;
                            }
                            i10++;
                        }
                    }
                    int i15 = this.ex;
                    if (i10 != i15) {
                        byteArrayOutputStream.write(bArr, i15, i10 - i15);
                    }
                    this.ex = i10 + 1;
                    return byteArrayOutputStream.toString();
                }
                throw new IOException("LineReader is closed");
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
