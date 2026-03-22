package com.bykv.vk.openvk.preload.geckox.buffer.a;

import com.bykv.vk.openvk.preload.geckox.utils.CloseableUtils;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: FileBuffer.java */
/* loaded from: classes3.dex */
final class b implements com.bykv.vk.openvk.preload.geckox.buffer.a {

    /* renamed from: a  reason: collision with root package name */
    private RandomAccessFile f11355a;

    /* renamed from: b  reason: collision with root package name */
    private AtomicBoolean f11356b = new AtomicBoolean(false);

    /* renamed from: c  reason: collision with root package name */
    private File f11357c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(File file) throws IOException {
        this.f11357c = file;
        file.getParentFile().mkdirs();
        try {
            this.f11355a = new RandomAccessFile(file, "rw");
        } catch (Exception e10) {
            CloseableUtils.close(this.f11355a);
            throw new IOException("create raf mSwap failed! path: " + file.getAbsolutePath() + " caused by: " + e10.getMessage(), e10);
        }
    }

    @Override // com.bykv.vk.openvk.preload.geckox.buffer.a
    public final void a() throws IOException {
        if (this.f11356b.get()) {
            throw new IOException("released!");
        }
    }

    @Override // com.bykv.vk.openvk.preload.geckox.buffer.a
    public final long b() throws IOException {
        return this.f11355a.length();
    }

    @Override // com.bykv.vk.openvk.preload.geckox.buffer.a
    public final long c() throws IOException {
        if (!this.f11356b.get()) {
            return this.f11355a.getFilePointer();
        }
        throw new IOException("released!");
    }

    @Override // com.bykv.vk.openvk.preload.geckox.buffer.a
    public final int d() throws IOException {
        byte[] bArr = new byte[1];
        if (b(bArr) <= 0) {
            return -1;
        }
        return bArr[0];
    }

    @Override // com.bykv.vk.openvk.preload.geckox.buffer.a
    public final void e() {
        if (this.f11356b.getAndSet(true)) {
            return;
        }
        CloseableUtils.close(this.f11355a);
    }

    @Override // com.bykv.vk.openvk.preload.geckox.buffer.a
    public final File f() {
        return this.f11357c;
    }

    @Override // com.bykv.vk.openvk.preload.geckox.buffer.a
    public final void b(long j10) throws IOException {
        if (!this.f11356b.get()) {
            if (j10 < 0) {
                j10 = 0;
            }
            this.f11355a.seek(j10);
            return;
        }
        throw new IOException("released!");
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
        int i10;
        if (this.f11356b.get()) {
            throw new IOException("released!");
        }
        i10 = (int) j10;
        if (i10 == j10) {
        } else {
            throw new IOException("too large:".concat(String.valueOf(j10)));
        }
        return this.f11355a.skipBytes(i10);
    }

    @Override // com.bykv.vk.openvk.preload.geckox.buffer.a
    public final int b(byte[] bArr) throws IOException {
        return b(bArr, 0, bArr.length);
    }

    @Override // com.bykv.vk.openvk.preload.geckox.buffer.a
    public final int b(byte[] bArr, int i10, int i11) throws IOException {
        int read;
        if (!this.f11356b.get()) {
            if (bArr == null || i11 <= 0 || i10 < 0 || i10 >= bArr.length) {
                return 0;
            }
            if (i10 + i11 > bArr.length) {
                i11 = bArr.length - i10;
            }
            synchronized (this) {
                read = this.f11355a.read(bArr, i10, i11);
            }
            return read;
        }
        throw new IOException("released!");
    }

    @Override // com.bykv.vk.openvk.preload.geckox.buffer.a
    public final int a(byte[] bArr, int i10, int i11) throws IOException {
        if (!this.f11356b.get()) {
            if (bArr == null || bArr.length == 0 || i11 <= 0 || i10 < 0 || i10 >= bArr.length) {
                return 0;
            }
            if (i10 + i11 > bArr.length) {
                i11 = bArr.length - i10;
            }
            synchronized (this) {
                this.f11355a.write(bArr, i10, i11);
            }
            return i11;
        }
        throw new IOException("released!");
    }
}
