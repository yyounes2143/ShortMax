package com.amazonaws.services.s3.internal;

import com.amazonaws.internal.SdkInputStream;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes2.dex */
public class RepeatableFileInputStream extends SdkInputStream {

    /* renamed from: e  reason: collision with root package name */
    private static final Log f5928e = LogFactory.c("RepeatableFIS");

    /* renamed from: a  reason: collision with root package name */
    private final File f5929a;

    /* renamed from: b  reason: collision with root package name */
    private FileInputStream f5930b;

    /* renamed from: c  reason: collision with root package name */
    private long f5931c = 0;

    /* renamed from: d  reason: collision with root package name */
    private long f5932d = 0;

    public RepeatableFileInputStream(File file) throws FileNotFoundException {
        this.f5930b = null;
        if (file != null) {
            this.f5930b = new FileInputStream(file);
            this.f5929a = file;
            return;
        }
        throw new IllegalArgumentException("File cannot be null");
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        l();
        return this.f5930b.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f5930b.close();
        l();
    }

    @Override // com.amazonaws.internal.SdkInputStream
    public InputStream m() {
        return this.f5930b;
    }

    @Override // java.io.InputStream
    public void mark(int i10) {
        l();
        this.f5932d += this.f5931c;
        this.f5931c = 0L;
        Log log = f5928e;
        if (log.i()) {
            log.h("Input stream marked at " + this.f5932d + " bytes");
        }
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return true;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        l();
        int read = this.f5930b.read();
        if (read != -1) {
            this.f5931c++;
            return read;
        }
        return -1;
    }

    @Override // java.io.InputStream
    public void reset() throws IOException {
        this.f5930b.close();
        l();
        this.f5930b = new FileInputStream(this.f5929a);
        long j10 = this.f5932d;
        while (j10 > 0) {
            j10 -= this.f5930b.skip(j10);
        }
        Log log = f5928e;
        if (log.i()) {
            log.h("Reset to mark point " + this.f5932d + " after returning " + this.f5931c + " bytes");
        }
        this.f5931c = 0L;
    }

    @Override // java.io.InputStream
    public long skip(long j10) throws IOException {
        l();
        long skip = this.f5930b.skip(j10);
        this.f5931c += skip;
        return skip;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        l();
        int read = this.f5930b.read(bArr, i10, i11);
        this.f5931c += read;
        return read;
    }
}
