package com.inmobi.media;

import java.io.Closeable;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.charset.Charset;
/* loaded from: classes5.dex */
public final class Fd implements Closeable {

    /* renamed from: a  reason: collision with root package name */
    public final FileInputStream f23662a;

    /* renamed from: b  reason: collision with root package name */
    public final Charset f23663b;

    /* renamed from: c  reason: collision with root package name */
    public byte[] f23664c;

    /* renamed from: d  reason: collision with root package name */
    public int f23665d;

    /* renamed from: e  reason: collision with root package name */
    public int f23666e;

    public Fd(FileInputStream fileInputStream, Charset charset) {
        charset.getClass();
        if (charset.equals(Ge.f23689a)) {
            this.f23662a = fileInputStream;
            this.f23663b = charset;
            this.f23664c = new byte[8192];
            return;
        }
        throw new IllegalArgumentException("Unsupported encoding");
    }

    public final String a() {
        int i10;
        synchronized (this.f23662a) {
            try {
                byte[] bArr = this.f23664c;
                if (bArr != null) {
                    if (this.f23665d >= this.f23666e) {
                        int read = this.f23662a.read(bArr, 0, bArr.length);
                        if (read != -1) {
                            this.f23665d = 0;
                            this.f23666e = read;
                        } else {
                            throw new EOFException();
                        }
                    }
                    for (int i11 = this.f23665d; i11 != this.f23666e; i11++) {
                        byte[] bArr2 = this.f23664c;
                        if (bArr2[i11] == 10) {
                            int i12 = this.f23665d;
                            if (i11 != i12) {
                                i10 = i11 - 1;
                                if (bArr2[i10] == 13) {
                                    String str = new String(bArr2, i12, i10 - i12, this.f23663b.name());
                                    this.f23665d = i11 + 1;
                                    return str;
                                }
                            }
                            i10 = i11;
                            String str2 = new String(bArr2, i12, i10 - i12, this.f23663b.name());
                            this.f23665d = i11 + 1;
                            return str2;
                        }
                    }
                    Ed ed2 = new Ed(this, (this.f23666e - this.f23665d) + 80);
                    while (true) {
                        byte[] bArr3 = this.f23664c;
                        int i13 = this.f23665d;
                        ed2.write(bArr3, i13, this.f23666e - i13);
                        this.f23666e = -1;
                        FileInputStream fileInputStream = this.f23662a;
                        byte[] bArr4 = this.f23664c;
                        int read2 = fileInputStream.read(bArr4, 0, bArr4.length);
                        if (read2 != -1) {
                            this.f23665d = 0;
                            this.f23666e = read2;
                            for (int i14 = 0; i14 != this.f23666e; i14++) {
                                byte[] bArr5 = this.f23664c;
                                if (bArr5[i14] == 10) {
                                    int i15 = this.f23665d;
                                    if (i14 != i15) {
                                        ed2.write(bArr5, i15, i14 - i15);
                                    }
                                    this.f23665d = i14 + 1;
                                    return ed2.toString();
                                }
                            }
                        } else {
                            throw new EOFException();
                        }
                    }
                } else {
                    throw new IOException("LineReader is closed");
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        synchronized (this.f23662a) {
            try {
                if (this.f23664c != null) {
                    this.f23664c = null;
                    this.f23662a.close();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
