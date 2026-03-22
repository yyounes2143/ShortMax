package com.bykv.vk.openvk.preload.geckox.buffer.a;

import com.bykv.vk.openvk.preload.geckox.utils.CloseableUtils;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: RAFBuffer.java */
/* loaded from: classes3.dex */
final class c implements com.bykv.vk.openvk.preload.geckox.buffer.a {

    /* renamed from: a  reason: collision with root package name */
    private long f11358a;

    /* renamed from: b  reason: collision with root package name */
    private long f11359b;

    /* renamed from: c  reason: collision with root package name */
    private RandomAccessFile f11360c;

    /* renamed from: d  reason: collision with root package name */
    private AtomicBoolean f11361d = new AtomicBoolean(false);

    /* renamed from: e  reason: collision with root package name */
    private File f11362e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(long j10, File file) throws IOException {
        this.f11358a = j10;
        this.f11362e = file;
        file.getParentFile().mkdirs();
        try {
            RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
            this.f11360c = randomAccessFile;
            randomAccessFile.setLength(j10);
        } catch (Exception e10) {
            CloseableUtils.close(this.f11360c);
            throw new IOException("create raf swap failed! path: " + file.getAbsolutePath() + " caused by: " + e10.getMessage(), e10);
        }
    }

    @Override // com.bykv.vk.openvk.preload.geckox.buffer.a
    public final void a() throws IOException {
        if (this.f11361d.get()) {
            throw new IOException("released!");
        }
    }

    @Override // com.bykv.vk.openvk.preload.geckox.buffer.a
    public final long b() {
        return this.f11358a;
    }

    @Override // com.bykv.vk.openvk.preload.geckox.buffer.a
    public final long c() throws IOException {
        if (!this.f11361d.get()) {
            return this.f11359b;
        }
        throw new IOException("released!");
    }

    @Override // com.bykv.vk.openvk.preload.geckox.buffer.a
    public final int d() throws IOException {
        byte[] bArr = new byte[1];
        if (b(bArr) == 0) {
            return -1;
        }
        return bArr[0];
    }

    @Override // com.bykv.vk.openvk.preload.geckox.buffer.a
    public final void e() {
        if (this.f11361d.getAndSet(true)) {
            return;
        }
        CloseableUtils.close(this.f11360c);
    }

    @Override // com.bykv.vk.openvk.preload.geckox.buffer.a
    public final File f() {
        return this.f11362e;
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0014, code lost:
        if (r4 > r0) goto L5;
     */
    @Override // com.bykv.vk.openvk.preload.geckox.buffer.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void b(long r4) throws java.io.IOException {
        /*
            r3 = this;
            java.util.concurrent.atomic.AtomicBoolean r0 = r3.f11361d
            boolean r0 = r0.get()
            if (r0 != 0) goto L1f
            r0 = 0
            int r2 = (r4 > r0 ? 1 : (r4 == r0 ? 0 : -1))
            if (r2 >= 0) goto L10
        Le:
            r4 = r0
            goto L17
        L10:
            long r0 = r3.f11358a
            int r2 = (r4 > r0 ? 1 : (r4 == r0 ? 0 : -1))
            if (r2 <= 0) goto L17
            goto Le
        L17:
            r3.f11359b = r4
            java.io.RandomAccessFile r0 = r3.f11360c
            r0.seek(r4)
            return
        L1f:
            java.io.IOException r4 = new java.io.IOException
            java.lang.String r5 = "released!"
            r4.<init>(r5)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bykv.vk.openvk.preload.geckox.buffer.a.c.b(long):void");
    }

    @Override // com.bykv.vk.openvk.preload.geckox.buffer.a
    public final void a(int i10) throws IOException {
        a(new byte[]{(byte) i10});
    }

    @Override // com.bykv.vk.openvk.preload.geckox.buffer.a
    public final void a(byte[] bArr) throws IOException {
        a(bArr, 0, bArr.length);
    }

    @Override // com.bykv.vk.openvk.preload.geckox.buffer.a
    public final synchronized long a(long j10) throws IOException {
        int skipBytes;
        if (this.f11361d.get()) {
            throw new IOException("released!");
        }
        int i10 = (int) j10;
        if (i10 == j10) {
            skipBytes = this.f11360c.skipBytes(i10);
            this.f11359b = this.f11360c.getFilePointer();
        } else {
            throw new IOException("too large:".concat(String.valueOf(j10)));
        }
        return skipBytes;
    }

    @Override // com.bykv.vk.openvk.preload.geckox.buffer.a
    public final int b(byte[] bArr) throws IOException {
        return b(bArr, 0, bArr.length);
    }

    @Override // com.bykv.vk.openvk.preload.geckox.buffer.a
    public final int b(byte[] bArr, int i10, int i11) throws IOException {
        if (!this.f11361d.get()) {
            if (bArr == null || i11 <= 0 || i10 < 0 || i10 >= bArr.length) {
                return 0;
            }
            if (i10 + i11 > bArr.length) {
                i11 = bArr.length - i10;
            }
            synchronized (this) {
                try {
                    long j10 = this.f11359b;
                    long j11 = this.f11358a;
                    if (j10 == j11) {
                        return -1;
                    }
                    if (i11 + j10 > j11) {
                        i11 = (int) (j11 - j10);
                    }
                    int read = this.f11360c.read(bArr, i10, i11);
                    if (read == -1) {
                        return -1;
                    }
                    this.f11359b += read;
                    return read;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        throw new IOException("released!");
    }

    @Override // com.bykv.vk.openvk.preload.geckox.buffer.a
    public final int a(byte[] bArr, int i10, int i11) throws IOException {
        if (!this.f11361d.get()) {
            if (bArr == null || bArr.length == 0 || i11 <= 0 || i10 < 0 || i10 >= bArr.length) {
                return 0;
            }
            if (i10 + i11 > bArr.length) {
                i11 = bArr.length - i10;
            }
            synchronized (this) {
                try {
                    long j10 = this.f11359b;
                    long j11 = this.f11358a;
                    if (j10 == j11) {
                        return 0;
                    }
                    if (i11 + j10 > j11) {
                        i11 = (int) (j11 - j10);
                    }
                    this.f11360c.write(bArr, i10, i11);
                    this.f11359b += i11;
                    return i11;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        throw new IOException("released!");
    }
}
