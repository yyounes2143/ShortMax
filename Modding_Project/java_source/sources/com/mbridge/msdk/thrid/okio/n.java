package com.mbridge.msdk.thrid.okio;

import androidx.collection.SieveCacheKt;
import com.inmobi.commons.core.configs.AdConfig;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RealBufferedSource.java */
/* loaded from: classes6.dex */
public final class n implements e {

    /* renamed from: a  reason: collision with root package name */
    public final c f30160a = new c();

    /* renamed from: b  reason: collision with root package name */
    public final s f30161b;

    /* renamed from: c  reason: collision with root package name */
    boolean f30162c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(s sVar) {
        if (sVar != null) {
            this.f30161b = sVar;
            return;
        }
        throw new NullPointerException("source == null");
    }

    @Override // com.mbridge.msdk.thrid.okio.e, com.mbridge.msdk.thrid.okio.d
    public c a() {
        return this.f30160a;
    }

    @Override // com.mbridge.msdk.thrid.okio.s
    public long b(c cVar, long j10) throws IOException {
        if (cVar != null) {
            if (j10 >= 0) {
                if (!this.f30162c) {
                    c cVar2 = this.f30160a;
                    if (cVar2.f30132b == 0 && this.f30161b.b(cVar2, 8192L) == -1) {
                        return -1L;
                    }
                    return this.f30160a.b(cVar, Math.min(j10, this.f30160a.f30132b));
                }
                throw new IllegalStateException("closed");
            }
            throw new IllegalArgumentException("byteCount < 0: " + j10);
        }
        throw new IllegalArgumentException("sink == null");
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public byte[] c(long j10) throws IOException {
        e(j10);
        return this.f30160a.c(j10);
    }

    @Override // com.mbridge.msdk.thrid.okio.s, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f30162c) {
            return;
        }
        this.f30162c = true;
        this.f30161b.close();
        this.f30160a.k();
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public String d(long j10) throws IOException {
        long j11;
        if (j10 >= 0) {
            if (j10 == Long.MAX_VALUE) {
                j11 = Long.MAX_VALUE;
            } else {
                j11 = j10 + 1;
            }
            long a10 = a((byte) 10, 0L, j11);
            if (a10 != -1) {
                return this.f30160a.h(a10);
            }
            if (j11 < Long.MAX_VALUE && f(j11) && this.f30160a.f(j11 - 1) == 13 && f(1 + j11) && this.f30160a.f(j11) == 10) {
                return this.f30160a.h(j11);
            }
            c cVar = new c();
            c cVar2 = this.f30160a;
            cVar2.a(cVar, 0L, Math.min(32L, cVar2.size()));
            throw new EOFException("\\n not found: limit=" + Math.min(this.f30160a.size(), j10) + " content=" + cVar.o().b() + (char) 8230);
        }
        throw new IllegalArgumentException("limit < 0: " + j10);
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public void e(long j10) throws IOException {
        if (!f(j10)) {
            throw new EOFException();
        }
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public boolean f() throws IOException {
        if (this.f30162c) {
            throw new IllegalStateException("closed");
        }
        return this.f30160a.f() && this.f30161b.b(this.f30160a, 8192L) == -1;
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public short g() throws IOException {
        e(2L);
        return this.f30160a.g();
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0031, code lost:
        if (r0 == 0) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0047, code lost:
        throw new java.lang.NumberFormatException(java.lang.String.format("Expected leading [0-9a-fA-F] character but was %#x", java.lang.Byte.valueOf(r2)));
     */
    @Override // com.mbridge.msdk.thrid.okio.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long i() throws java.io.IOException {
        /*
            r5 = this;
            r0 = 1
            r5.e(r0)
            r0 = 0
        L6:
            int r1 = r0 + 1
            long r2 = (long) r1
            boolean r2 = r5.f(r2)
            if (r2 == 0) goto L48
            com.mbridge.msdk.thrid.okio.c r2 = r5.f30160a
            long r3 = (long) r0
            byte r2 = r2.f(r3)
            r3 = 48
            if (r2 < r3) goto L1e
            r3 = 57
            if (r2 <= r3) goto L2f
        L1e:
            r3 = 97
            if (r2 < r3) goto L26
            r3 = 102(0x66, float:1.43E-43)
            if (r2 <= r3) goto L2f
        L26:
            r3 = 65
            if (r2 < r3) goto L31
            r3 = 70
            if (r2 <= r3) goto L2f
            goto L31
        L2f:
            r0 = r1
            goto L6
        L31:
            if (r0 == 0) goto L34
            goto L48
        L34:
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            java.lang.Byte r1 = java.lang.Byte.valueOf(r2)
            java.lang.Object[] r1 = new java.lang.Object[]{r1}
            java.lang.String r2 = "Expected leading [0-9a-fA-F] character but was %#x"
            java.lang.String r1 = java.lang.String.format(r2, r1)
            r0.<init>(r1)
            throw r0
        L48:
            com.mbridge.msdk.thrid.okio.c r0 = r5.f30160a
            long r0 = r0.i()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.thrid.okio.n.i():long");
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return !this.f30162c;
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public InputStream j() {
        return new a();
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer byteBuffer) throws IOException {
        c cVar = this.f30160a;
        if (cVar.f30132b == 0 && this.f30161b.b(cVar, 8192L) == -1) {
            return -1;
        }
        return this.f30160a.read(byteBuffer);
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public byte readByte() throws IOException {
        e(1L);
        return this.f30160a.readByte();
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public void readFully(byte[] bArr) throws IOException {
        try {
            e(bArr.length);
            this.f30160a.readFully(bArr);
        } catch (EOFException e10) {
            int i10 = 0;
            while (true) {
                c cVar = this.f30160a;
                long j10 = cVar.f30132b;
                if (j10 > 0) {
                    int read = cVar.read(bArr, i10, (int) j10);
                    if (read != -1) {
                        i10 += read;
                    } else {
                        throw new AssertionError();
                    }
                } else {
                    throw e10;
                }
            }
        }
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public int readInt() throws IOException {
        e(4L);
        return this.f30160a.readInt();
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public short readShort() throws IOException {
        e(2L);
        return this.f30160a.readShort();
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public void skip(long j10) throws IOException {
        if (!this.f30162c) {
            while (j10 > 0) {
                c cVar = this.f30160a;
                if (cVar.f30132b == 0 && this.f30161b.b(cVar, 8192L) == -1) {
                    throw new EOFException();
                }
                long min = Math.min(j10, this.f30160a.size());
                this.f30160a.skip(min);
                j10 -= min;
            }
            return;
        }
        throw new IllegalStateException("closed");
    }

    public String toString() {
        return "buffer(" + this.f30161b + ")";
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public long a(byte b10) throws IOException {
        return a(b10, 0L, Long.MAX_VALUE);
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public int e() throws IOException {
        e(4L);
        return this.f30160a.e();
    }

    public long a(byte b10, long j10, long j11) throws IOException {
        if (this.f30162c) {
            throw new IllegalStateException("closed");
        }
        if (j10 < 0 || j11 < j10) {
            throw new IllegalArgumentException(String.format("fromIndex=%s toIndex=%s", Long.valueOf(j10), Long.valueOf(j11)));
        }
        while (j10 < j11) {
            long a10 = this.f30160a.a(b10, j10, j11);
            if (a10 == -1) {
                c cVar = this.f30160a;
                long j12 = cVar.f30132b;
                if (j12 >= j11 || this.f30161b.b(cVar, 8192L) == -1) {
                    break;
                }
                j10 = Math.max(j10, j12);
            } else {
                return a10;
            }
        }
        return -1L;
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public String c() throws IOException {
        return d(Long.MAX_VALUE);
    }

    public boolean f(long j10) throws IOException {
        c cVar;
        if (j10 >= 0) {
            if (!this.f30162c) {
                do {
                    cVar = this.f30160a;
                    if (cVar.f30132b >= j10) {
                        return true;
                    }
                } while (this.f30161b.b(cVar, 8192L) != -1);
                return false;
            }
            throw new IllegalStateException("closed");
        }
        throw new IllegalArgumentException("byteCount < 0: " + j10);
    }

    /* compiled from: RealBufferedSource.java */
    /* loaded from: classes6.dex */
    class a extends InputStream {
        a() {
        }

        @Override // java.io.InputStream
        public int available() throws IOException {
            n nVar = n.this;
            if (!nVar.f30162c) {
                return (int) Math.min(nVar.f30160a.f30132b, (long) SieveCacheKt.NodeLinkMask);
            }
            throw new IOException("closed");
        }

        @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            n.this.close();
        }

        @Override // java.io.InputStream
        public int read() throws IOException {
            n nVar = n.this;
            if (!nVar.f30162c) {
                c cVar = nVar.f30160a;
                if (cVar.f30132b == 0 && nVar.f30161b.b(cVar, 8192L) == -1) {
                    return -1;
                }
                return n.this.f30160a.readByte() & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
            }
            throw new IOException("closed");
        }

        public String toString() {
            return n.this + ".inputStream()";
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i10, int i11) throws IOException {
            if (!n.this.f30162c) {
                u.a(bArr.length, i10, i11);
                n nVar = n.this;
                c cVar = nVar.f30160a;
                if (cVar.f30132b == 0 && nVar.f30161b.b(cVar, 8192L) == -1) {
                    return -1;
                }
                return n.this.f30160a.read(bArr, i10, i11);
            }
            throw new IOException("closed");
        }
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public f b(long j10) throws IOException {
        e(j10);
        return this.f30160a.b(j10);
    }

    @Override // com.mbridge.msdk.thrid.okio.s
    public t b() {
        return this.f30161b.b();
    }
}
