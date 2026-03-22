package com.mbridge.msdk.thrid.okio;

import androidx.annotation.Nullable;
import androidx.collection.SieveCacheKt;
import com.inmobi.commons.core.configs.AdConfig;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.charset.Charset;
/* compiled from: Buffer.java */
/* loaded from: classes6.dex */
public final class c implements e, d, Cloneable, ByteChannel {

    /* renamed from: c  reason: collision with root package name */
    private static final byte[] f30130c = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102};
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    o f30131a;

    /* renamed from: b  reason: collision with root package name */
    long f30132b;

    /* compiled from: Buffer.java */
    /* loaded from: classes6.dex */
    class a extends InputStream {
        a() {
        }

        @Override // java.io.InputStream
        public int available() {
            return (int) Math.min(c.this.f30132b, (long) SieveCacheKt.NodeLinkMask);
        }

        @Override // java.io.InputStream
        public int read() {
            c cVar = c.this;
            if (cVar.f30132b > 0) {
                return cVar.readByte() & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
            }
            return -1;
        }

        public String toString() {
            return c.this + ".inputStream()";
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i10, int i11) {
            return c.this.read(bArr, i10, i11);
        }

        @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }
    }

    @Override // com.mbridge.msdk.thrid.okio.e, com.mbridge.msdk.thrid.okio.d
    public c a() {
        return this;
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public f b(long j10) throws EOFException {
        return new f(c(j10));
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public String c() throws EOFException {
        return d(Long.MAX_VALUE);
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public String d(long j10) throws EOFException {
        if (j10 >= 0) {
            long j11 = j10 != Long.MAX_VALUE ? j10 + 1 : Long.MAX_VALUE;
            long a10 = a((byte) 10, 0L, j11);
            if (a10 != -1) {
                return h(a10);
            }
            if (j11 < size() && f(j11 - 1) == 13 && f(j11) == 10) {
                return h(j11);
            }
            c cVar = new c();
            a(cVar, 0L, Math.min(32L, size()));
            throw new EOFException("\\n not found: limit=" + Math.min(size(), j10) + " content=" + cVar.o().b() + (char) 8230);
        }
        throw new IllegalArgumentException("limit < 0: " + j10);
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public void e(long j10) throws EOFException {
        if (this.f30132b < j10) {
            throw new EOFException();
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        long j10 = this.f30132b;
        if (j10 != cVar.f30132b) {
            return false;
        }
        long j11 = 0;
        if (j10 == 0) {
            return true;
        }
        o oVar = this.f30131a;
        o oVar2 = cVar.f30131a;
        int i10 = oVar.f30165b;
        int i11 = oVar2.f30165b;
        while (j11 < this.f30132b) {
            long min = Math.min(oVar.f30166c - i10, oVar2.f30166c - i11);
            int i12 = 0;
            while (i12 < min) {
                int i13 = i10 + 1;
                int i14 = i11 + 1;
                if (oVar.f30164a[i10] != oVar2.f30164a[i11]) {
                    return false;
                }
                i12++;
                i10 = i13;
                i11 = i14;
            }
            if (i10 == oVar.f30166c) {
                oVar = oVar.f30169f;
                i10 = oVar.f30165b;
            }
            if (i11 == oVar2.f30166c) {
                oVar2 = oVar2.f30169f;
                i11 = oVar2.f30165b;
            }
            j11 += min;
        }
        return true;
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public boolean f() {
        return this.f30132b == 0;
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public short g() {
        return u.a(readShort());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String h(long j10) throws EOFException {
        if (j10 > 0) {
            long j11 = j10 - 1;
            if (f(j11) == 13) {
                String g10 = g(j11);
                skip(2L);
                return g10;
            }
        }
        String g11 = g(j10);
        skip(1L);
        return g11;
    }

    public int hashCode() {
        o oVar = this.f30131a;
        if (oVar == null) {
            return 0;
        }
        int i10 = 1;
        do {
            int i11 = oVar.f30166c;
            for (int i12 = oVar.f30165b; i12 < i11; i12++) {
                i10 = (i10 * 31) + oVar.f30164a[i12];
            }
            oVar = oVar.f30169f;
        } while (oVar != this.f30131a);
        return i10;
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00a2 A[EDGE_INSN: B:41:0x00a2->B:37:0x00a2 ?: BREAK  , SYNTHETIC] */
    @Override // com.mbridge.msdk.thrid.okio.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long i() {
        /*
            r14 = this;
            long r0 = r14.f30132b
            r2 = 0
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 == 0) goto La9
            r0 = 0
            r1 = r0
            r4 = r2
        Lb:
            com.mbridge.msdk.thrid.okio.o r6 = r14.f30131a
            byte[] r7 = r6.f30164a
            int r8 = r6.f30165b
            int r9 = r6.f30166c
        L13:
            if (r8 >= r9) goto L8e
            r10 = r7[r8]
            r11 = 48
            if (r10 < r11) goto L22
            r11 = 57
            if (r10 > r11) goto L22
            int r11 = r10 + (-48)
            goto L37
        L22:
            r11 = 97
            if (r10 < r11) goto L2d
            r11 = 102(0x66, float:1.43E-43)
            if (r10 > r11) goto L2d
            int r11 = r10 + (-87)
            goto L37
        L2d:
            r11 = 65
            if (r10 < r11) goto L6f
            r11 = 70
            if (r10 > r11) goto L6f
            int r11 = r10 + (-55)
        L37:
            r12 = -1152921504606846976(0xf000000000000000, double:-3.105036184601418E231)
            long r12 = r12 & r4
            int r12 = (r12 > r2 ? 1 : (r12 == r2 ? 0 : -1))
            if (r12 != 0) goto L47
            r10 = 4
            long r4 = r4 << r10
            long r10 = (long) r11
            long r4 = r4 | r10
            int r8 = r8 + 1
            int r0 = r0 + 1
            goto L13
        L47:
            com.mbridge.msdk.thrid.okio.c r0 = new com.mbridge.msdk.thrid.okio.c
            r0.<init>()
            com.mbridge.msdk.thrid.okio.c r0 = r0.a(r4)
            com.mbridge.msdk.thrid.okio.c r0 = r0.writeByte(r10)
            java.lang.NumberFormatException r1 = new java.lang.NumberFormatException
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "Number too large: "
            r2.append(r3)
            java.lang.String r0 = r0.p()
            r2.append(r0)
            java.lang.String r0 = r2.toString()
            r1.<init>(r0)
            throw r1
        L6f:
            if (r0 == 0) goto L73
            r1 = 1
            goto L8e
        L73:
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Expected leading [0-9a-fA-F] character but was 0x"
            r1.append(r2)
            java.lang.String r2 = java.lang.Integer.toHexString(r10)
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L8e:
            if (r8 != r9) goto L9a
            com.mbridge.msdk.thrid.okio.o r7 = r6.b()
            r14.f30131a = r7
            com.mbridge.msdk.thrid.okio.p.a(r6)
            goto L9c
        L9a:
            r6.f30165b = r8
        L9c:
            if (r1 != 0) goto La2
            com.mbridge.msdk.thrid.okio.o r6 = r14.f30131a
            if (r6 != 0) goto Lb
        La2:
            long r1 = r14.f30132b
            long r6 = (long) r0
            long r1 = r1 - r6
            r14.f30132b = r1
            return r4
        La9:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "size == 0"
            r0.<init>(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.thrid.okio.c.i():long");
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return true;
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public InputStream j() {
        return new a();
    }

    public final void k() {
        try {
            skip(this.f30132b);
        } catch (EOFException e10) {
            throw new AssertionError(e10);
        }
    }

    /* renamed from: l */
    public c clone() {
        c cVar = new c();
        if (this.f30132b == 0) {
            return cVar;
        }
        o c10 = this.f30131a.c();
        cVar.f30131a = c10;
        c10.f30170g = c10;
        c10.f30169f = c10;
        for (o oVar = this.f30131a.f30169f; oVar != this.f30131a; oVar = oVar.f30169f) {
            cVar.f30131a.f30170g.a(oVar.c());
        }
        cVar.f30132b = this.f30132b;
        return cVar;
    }

    public final long m() {
        long j10 = this.f30132b;
        if (j10 == 0) {
            return 0L;
        }
        o oVar = this.f30131a.f30170g;
        int i10 = oVar.f30166c;
        if (i10 < 8192 && oVar.f30168e) {
            return j10 - (i10 - oVar.f30165b);
        }
        return j10;
    }

    public byte[] n() {
        try {
            return c(this.f30132b);
        } catch (EOFException e10) {
            throw new AssertionError(e10);
        }
    }

    public f o() {
        return new f(n());
    }

    public String p() {
        try {
            return a(this.f30132b, u.f30179a);
        } catch (EOFException e10) {
            throw new AssertionError(e10);
        }
    }

    public final f q() {
        long j10 = this.f30132b;
        if (j10 <= SieveCacheKt.NodeLinkMask) {
            return a((int) j10);
        }
        throw new IllegalArgumentException("size > Integer.MAX_VALUE: " + this.f30132b);
    }

    public int read(byte[] bArr, int i10, int i11) {
        u.a(bArr.length, i10, i11);
        o oVar = this.f30131a;
        if (oVar == null) {
            return -1;
        }
        int min = Math.min(i11, oVar.f30166c - oVar.f30165b);
        System.arraycopy(oVar.f30164a, oVar.f30165b, bArr, i10, min);
        int i12 = oVar.f30165b + min;
        oVar.f30165b = i12;
        this.f30132b -= min;
        if (i12 == oVar.f30166c) {
            this.f30131a = oVar.b();
            p.a(oVar);
        }
        return min;
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public byte readByte() {
        long j10 = this.f30132b;
        if (j10 != 0) {
            o oVar = this.f30131a;
            int i10 = oVar.f30165b;
            int i11 = oVar.f30166c;
            int i12 = i10 + 1;
            byte b10 = oVar.f30164a[i10];
            this.f30132b = j10 - 1;
            if (i12 == i11) {
                this.f30131a = oVar.b();
                p.a(oVar);
            } else {
                oVar.f30165b = i12;
            }
            return b10;
        }
        throw new IllegalStateException("size == 0");
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public void readFully(byte[] bArr) throws EOFException {
        int i10 = 0;
        while (i10 < bArr.length) {
            int read = read(bArr, i10, bArr.length - i10);
            if (read != -1) {
                i10 += read;
            } else {
                throw new EOFException();
            }
        }
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public int readInt() {
        long j10 = this.f30132b;
        if (j10 >= 4) {
            o oVar = this.f30131a;
            int i10 = oVar.f30165b;
            int i11 = oVar.f30166c;
            if (i11 - i10 < 4) {
                return ((readByte() & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 24) | ((readByte() & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 16) | ((readByte() & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8) | (readByte() & AdConfig.NETWORK_LOAD_LIMIT_DISABLED);
            }
            byte[] bArr = oVar.f30164a;
            int i12 = ((bArr[i10 + 1] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 16) | ((bArr[i10] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 24);
            int i13 = i10 + 3;
            int i14 = i10 + 4;
            int i15 = (bArr[i13] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) | i12 | ((bArr[i10 + 2] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8);
            this.f30132b = j10 - 4;
            if (i14 == i11) {
                this.f30131a = oVar.b();
                p.a(oVar);
            } else {
                oVar.f30165b = i14;
            }
            return i15;
        }
        throw new IllegalStateException("size < 4: " + this.f30132b);
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public short readShort() {
        long j10 = this.f30132b;
        if (j10 >= 2) {
            o oVar = this.f30131a;
            int i10 = oVar.f30165b;
            int i11 = oVar.f30166c;
            if (i11 - i10 < 2) {
                return (short) (((readByte() & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8) | (readByte() & AdConfig.NETWORK_LOAD_LIMIT_DISABLED));
            }
            byte[] bArr = oVar.f30164a;
            int i12 = i10 + 1;
            int i13 = i10 + 2;
            int i14 = (bArr[i12] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) | ((bArr[i10] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8);
            this.f30132b = j10 - 2;
            if (i13 == i11) {
                this.f30131a = oVar.b();
                p.a(oVar);
            } else {
                oVar.f30165b = i13;
            }
            return (short) i14;
        }
        throw new IllegalStateException("size < 2: " + this.f30132b);
    }

    public final long size() {
        return this.f30132b;
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public void skip(long j10) throws EOFException {
        o oVar;
        while (j10 > 0) {
            if (this.f30131a != null) {
                int min = (int) Math.min(j10, oVar.f30166c - oVar.f30165b);
                long j11 = min;
                this.f30132b -= j11;
                j10 -= j11;
                o oVar2 = this.f30131a;
                int i10 = oVar2.f30165b + min;
                oVar2.f30165b = i10;
                if (i10 == oVar2.f30166c) {
                    this.f30131a = oVar2.b();
                    p.a(oVar2);
                }
            } else {
                throw new EOFException();
            }
        }
    }

    public String toString() {
        return q().toString();
    }

    @Override // com.mbridge.msdk.thrid.okio.d
    /* renamed from: b */
    public c a(String str) {
        return a(str, 0, str.length());
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public byte[] c(long j10) throws EOFException {
        u.a(this.f30132b, 0L, j10);
        if (j10 <= SieveCacheKt.NodeLinkMask) {
            byte[] bArr = new byte[(int) j10];
            readFully(bArr);
            return bArr;
        }
        throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: " + j10);
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public int e() {
        return u.a(readInt());
    }

    public final byte f(long j10) {
        u.a(this.f30132b, j10, 1L);
        long j11 = this.f30132b;
        if (j11 - j10 > j10) {
            o oVar = this.f30131a;
            while (true) {
                int i10 = oVar.f30166c;
                int i11 = oVar.f30165b;
                long j12 = i10 - i11;
                if (j10 < j12) {
                    return oVar.f30164a[i11 + ((int) j10)];
                }
                j10 -= j12;
                oVar = oVar.f30169f;
            }
        } else {
            long j13 = j10 - j11;
            o oVar2 = this.f30131a.f30170g;
            while (true) {
                int i12 = oVar2.f30166c;
                int i13 = oVar2.f30165b;
                j13 += i12 - i13;
                if (j13 >= 0) {
                    return oVar2.f30164a[i13 + ((int) j13)];
                }
                oVar2 = oVar2.f30170g;
            }
        }
    }

    public String g(long j10) throws EOFException {
        return a(j10, u.f30179a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public o b(int i10) {
        if (i10 >= 1 && i10 <= 8192) {
            o oVar = this.f30131a;
            if (oVar == null) {
                o a10 = p.a();
                this.f30131a = a10;
                a10.f30170g = a10;
                a10.f30169f = a10;
                return a10;
            }
            o oVar2 = oVar.f30170g;
            return (oVar2.f30166c + i10 > 8192 || !oVar2.f30168e) ? oVar2.a(p.a()) : oVar2;
        }
        throw new IllegalArgumentException();
    }

    @Override // com.mbridge.msdk.thrid.okio.d
    /* renamed from: e */
    public c writeShort(int i10) {
        o b10 = b(2);
        byte[] bArr = b10.f30164a;
        int i11 = b10.f30166c;
        bArr[i11] = (byte) ((i10 >>> 8) & 255);
        bArr[i11 + 1] = (byte) (i10 & 255);
        b10.f30166c = i11 + 2;
        this.f30132b += 2;
        return this;
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(ByteBuffer byteBuffer) throws IOException {
        if (byteBuffer != null) {
            int remaining = byteBuffer.remaining();
            int i10 = remaining;
            while (i10 > 0) {
                o b10 = b(1);
                int min = Math.min(i10, 8192 - b10.f30166c);
                byteBuffer.get(b10.f30164a, b10.f30166c, min);
                i10 -= min;
                b10.f30166c += min;
            }
            this.f30132b += remaining;
            return remaining;
        }
        throw new IllegalArgumentException("source == null");
    }

    public final c a(c cVar, long j10, long j11) {
        if (cVar != null) {
            u.a(this.f30132b, j10, j11);
            if (j11 == 0) {
                return this;
            }
            cVar.f30132b += j11;
            o oVar = this.f30131a;
            while (true) {
                long j12 = oVar.f30166c - oVar.f30165b;
                if (j10 < j12) {
                    break;
                }
                j10 -= j12;
                oVar = oVar.f30169f;
            }
            while (j11 > 0) {
                o c10 = oVar.c();
                int i10 = (int) (c10.f30165b + j10);
                c10.f30165b = i10;
                c10.f30166c = Math.min(i10 + ((int) j11), c10.f30166c);
                o oVar2 = cVar.f30131a;
                if (oVar2 == null) {
                    c10.f30170g = c10;
                    c10.f30169f = c10;
                    cVar.f30131a = c10;
                } else {
                    oVar2.f30170g.a(c10);
                }
                j11 -= c10.f30166c - c10.f30165b;
                oVar = oVar.f30169f;
                j10 = 0;
            }
            return this;
        }
        throw new IllegalArgumentException("out == null");
    }

    @Override // com.mbridge.msdk.thrid.okio.d
    /* renamed from: c */
    public c writeByte(int i10) {
        o b10 = b(1);
        byte[] bArr = b10.f30164a;
        int i11 = b10.f30166c;
        b10.f30166c = i11 + 1;
        bArr[i11] = (byte) i10;
        this.f30132b++;
        return this;
    }

    @Override // com.mbridge.msdk.thrid.okio.s
    public long b(c cVar, long j10) {
        if (cVar != null) {
            if (j10 >= 0) {
                long j11 = this.f30132b;
                if (j11 == 0) {
                    return -1L;
                }
                if (j10 > j11) {
                    j10 = j11;
                }
                cVar.a(this, j10);
                return j10;
            }
            throw new IllegalArgumentException("byteCount < 0: " + j10);
        }
        throw new IllegalArgumentException("sink == null");
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer byteBuffer) throws IOException {
        o oVar = this.f30131a;
        if (oVar == null) {
            return -1;
        }
        int min = Math.min(byteBuffer.remaining(), oVar.f30166c - oVar.f30165b);
        byteBuffer.put(oVar.f30164a, oVar.f30165b, min);
        int i10 = oVar.f30165b + min;
        oVar.f30165b = i10;
        this.f30132b -= min;
        if (i10 == oVar.f30166c) {
            this.f30131a = oVar.b();
            p.a(oVar);
        }
        return min;
    }

    @Override // com.mbridge.msdk.thrid.okio.d
    /* renamed from: d */
    public c writeInt(int i10) {
        o b10 = b(4);
        byte[] bArr = b10.f30164a;
        int i11 = b10.f30166c;
        bArr[i11] = (byte) ((i10 >>> 24) & 255);
        bArr[i11 + 1] = (byte) ((i10 >>> 16) & 255);
        bArr[i11 + 2] = (byte) ((i10 >>> 8) & 255);
        bArr[i11 + 3] = (byte) (i10 & 255);
        b10.f30166c = i11 + 4;
        this.f30132b += 4;
        return this;
    }

    public c f(int i10) {
        if (i10 < 128) {
            writeByte(i10);
        } else if (i10 < 2048) {
            writeByte((i10 >> 6) | 192);
            writeByte((i10 & 63) | 128);
        } else if (i10 < 65536) {
            if (i10 >= 55296 && i10 <= 57343) {
                writeByte(63);
            } else {
                writeByte((i10 >> 12) | 224);
                writeByte(((i10 >> 6) & 63) | 128);
                writeByte((i10 & 63) | 128);
            }
        } else if (i10 <= 1114111) {
            writeByte((i10 >> 18) | 240);
            writeByte(((i10 >> 12) & 63) | 128);
            writeByte(((i10 >> 6) & 63) | 128);
            writeByte((i10 & 63) | 128);
        } else {
            throw new IllegalArgumentException("Unexpected code point: " + Integer.toHexString(i10));
        }
        return this;
    }

    @Override // com.mbridge.msdk.thrid.okio.s
    public t b() {
        return t.f30175d;
    }

    public String a(long j10, Charset charset) throws EOFException {
        u.a(this.f30132b, 0L, j10);
        if (charset != null) {
            if (j10 > SieveCacheKt.NodeLinkMask) {
                throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: " + j10);
            } else if (j10 == 0) {
                return "";
            } else {
                o oVar = this.f30131a;
                int i10 = oVar.f30165b;
                if (i10 + j10 > oVar.f30166c) {
                    return new String(c(j10), charset);
                }
                String str = new String(oVar.f30164a, i10, (int) j10, charset);
                int i11 = (int) (oVar.f30165b + j10);
                oVar.f30165b = i11;
                this.f30132b -= j10;
                if (i11 == oVar.f30166c) {
                    this.f30131a = oVar.b();
                    p.a(oVar);
                }
                return str;
            }
        }
        throw new IllegalArgumentException("charset == null");
    }

    @Override // com.mbridge.msdk.thrid.okio.s, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // com.mbridge.msdk.thrid.okio.d, com.mbridge.msdk.thrid.okio.r, java.io.Flushable
    public void flush() {
    }

    @Override // com.mbridge.msdk.thrid.okio.d
    /* renamed from: i */
    public c a(long j10) {
        if (j10 == 0) {
            return writeByte(48);
        }
        int numberOfTrailingZeros = (Long.numberOfTrailingZeros(Long.highestOneBit(j10)) / 4) + 1;
        o b10 = b(numberOfTrailingZeros);
        byte[] bArr = b10.f30164a;
        int i10 = b10.f30166c;
        for (int i11 = (i10 + numberOfTrailingZeros) - 1; i11 >= i10; i11--) {
            bArr[i11] = f30130c[(int) (15 & j10)];
            j10 >>>= 4;
        }
        b10.f30166c += numberOfTrailingZeros;
        this.f30132b += numberOfTrailingZeros;
        return this;
    }

    public c a(f fVar) {
        if (fVar != null) {
            fVar.a(this);
            return this;
        }
        throw new IllegalArgumentException("byteString == null");
    }

    public c a(String str, int i10, int i11) {
        char charAt;
        if (str != null) {
            if (i10 < 0) {
                throw new IllegalArgumentException("beginIndex < 0: " + i10);
            } else if (i11 >= i10) {
                if (i11 > str.length()) {
                    throw new IllegalArgumentException("endIndex > string.length: " + i11 + " > " + str.length());
                }
                while (i10 < i11) {
                    char charAt2 = str.charAt(i10);
                    if (charAt2 < 128) {
                        o b10 = b(1);
                        byte[] bArr = b10.f30164a;
                        int i12 = b10.f30166c - i10;
                        int min = Math.min(i11, 8192 - i12);
                        int i13 = i10 + 1;
                        bArr[i10 + i12] = (byte) charAt2;
                        while (true) {
                            i10 = i13;
                            if (i10 >= min || (charAt = str.charAt(i10)) >= 128) {
                                break;
                            }
                            i13 = i10 + 1;
                            bArr[i10 + i12] = (byte) charAt;
                        }
                        int i14 = b10.f30166c;
                        int i15 = (i12 + i10) - i14;
                        b10.f30166c = i14 + i15;
                        this.f30132b += i15;
                    } else {
                        if (charAt2 < 2048) {
                            writeByte((charAt2 >> 6) | 192);
                            writeByte((charAt2 & '?') | 128);
                        } else if (charAt2 >= 55296 && charAt2 <= 57343) {
                            int i16 = i10 + 1;
                            char charAt3 = i16 < i11 ? str.charAt(i16) : (char) 0;
                            if (charAt2 <= 56319 && charAt3 >= 56320 && charAt3 <= 57343) {
                                int i17 = (((charAt2 & 10239) << 10) | (9215 & charAt3)) + 65536;
                                writeByte((i17 >> 18) | 240);
                                writeByte(((i17 >> 12) & 63) | 128);
                                writeByte(((i17 >> 6) & 63) | 128);
                                writeByte((i17 & 63) | 128);
                                i10 += 2;
                            } else {
                                writeByte(63);
                                i10 = i16;
                            }
                        } else {
                            writeByte((charAt2 >> '\f') | 224);
                            writeByte(((charAt2 >> 6) & 63) | 128);
                            writeByte((charAt2 & '?') | 128);
                        }
                        i10++;
                    }
                }
                return this;
            } else {
                throw new IllegalArgumentException("endIndex < beginIndex: " + i11 + " < " + i10);
            }
        }
        throw new IllegalArgumentException("string == null");
    }

    public c a(String str, int i10, int i11, Charset charset) {
        if (str != null) {
            if (i10 < 0) {
                throw new IllegalAccessError("beginIndex < 0: " + i10);
            } else if (i11 >= i10) {
                if (i11 <= str.length()) {
                    if (charset != null) {
                        if (charset.equals(u.f30179a)) {
                            return a(str, i10, i11);
                        }
                        byte[] bytes = str.substring(i10, i11).getBytes(charset);
                        return write(bytes, 0, bytes.length);
                    }
                    throw new IllegalArgumentException("charset == null");
                }
                throw new IllegalArgumentException("endIndex > string.length: " + i11 + " > " + str.length());
            } else {
                throw new IllegalArgumentException("endIndex < beginIndex: " + i11 + " < " + i10);
            }
        }
        throw new IllegalArgumentException("string == null");
    }

    @Override // com.mbridge.msdk.thrid.okio.d
    /* renamed from: a */
    public c write(byte[] bArr) {
        if (bArr != null) {
            return write(bArr, 0, bArr.length);
        }
        throw new IllegalArgumentException("source == null");
    }

    @Override // com.mbridge.msdk.thrid.okio.d
    /* renamed from: a */
    public c write(byte[] bArr, int i10, int i11) {
        if (bArr != null) {
            long j10 = i11;
            u.a(bArr.length, i10, j10);
            int i12 = i11 + i10;
            while (i10 < i12) {
                o b10 = b(1);
                int min = Math.min(i12 - i10, 8192 - b10.f30166c);
                System.arraycopy(bArr, i10, b10.f30164a, b10.f30166c, min);
                i10 += min;
                b10.f30166c += min;
            }
            this.f30132b += j10;
            return this;
        }
        throw new IllegalArgumentException("source == null");
    }

    public long a(s sVar) throws IOException {
        if (sVar == null) {
            throw new IllegalArgumentException("source == null");
        }
        long j10 = 0;
        while (true) {
            long b10 = sVar.b(this, 8192L);
            if (b10 == -1) {
                return j10;
            }
            j10 += b10;
        }
    }

    @Override // com.mbridge.msdk.thrid.okio.r
    public void a(c cVar, long j10) {
        if (cVar == null) {
            throw new IllegalArgumentException("source == null");
        }
        if (cVar != this) {
            u.a(cVar.f30132b, 0L, j10);
            while (j10 > 0) {
                o oVar = cVar.f30131a;
                if (j10 < oVar.f30166c - oVar.f30165b) {
                    o oVar2 = this.f30131a;
                    o oVar3 = oVar2 != null ? oVar2.f30170g : null;
                    if (oVar3 != null && oVar3.f30168e) {
                        if ((oVar3.f30166c + j10) - (oVar3.f30167d ? 0 : oVar3.f30165b) <= 8192) {
                            oVar.a(oVar3, (int) j10);
                            cVar.f30132b -= j10;
                            this.f30132b += j10;
                            return;
                        }
                    }
                    cVar.f30131a = oVar.a((int) j10);
                }
                o oVar4 = cVar.f30131a;
                long j11 = oVar4.f30166c - oVar4.f30165b;
                cVar.f30131a = oVar4.b();
                o oVar5 = this.f30131a;
                if (oVar5 == null) {
                    this.f30131a = oVar4;
                    oVar4.f30170g = oVar4;
                    oVar4.f30169f = oVar4;
                } else {
                    oVar5.f30170g.a(oVar4).a();
                }
                cVar.f30132b -= j11;
                this.f30132b += j11;
                j10 -= j11;
            }
            return;
        }
        throw new IllegalArgumentException("source == this");
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public long a(byte b10) {
        return a(b10, 0L, Long.MAX_VALUE);
    }

    public long a(byte b10, long j10, long j11) {
        o oVar;
        long j12 = 0;
        if (j10 >= 0 && j11 >= j10) {
            long j13 = this.f30132b;
            long j14 = j11 > j13 ? j13 : j11;
            if (j10 == j14 || (oVar = this.f30131a) == null) {
                return -1L;
            }
            if (j13 - j10 < j10) {
                while (j13 > j10) {
                    oVar = oVar.f30170g;
                    j13 -= oVar.f30166c - oVar.f30165b;
                }
            } else {
                while (true) {
                    long j15 = (oVar.f30166c - oVar.f30165b) + j12;
                    if (j15 >= j10) {
                        break;
                    }
                    oVar = oVar.f30169f;
                    j12 = j15;
                }
                j13 = j12;
            }
            long j16 = j10;
            while (j13 < j14) {
                byte[] bArr = oVar.f30164a;
                int min = (int) Math.min(oVar.f30166c, (oVar.f30165b + j14) - j13);
                for (int i10 = (int) ((oVar.f30165b + j16) - j13); i10 < min; i10++) {
                    if (bArr[i10] == b10) {
                        return (i10 - oVar.f30165b) + j13;
                    }
                }
                j13 += oVar.f30166c - oVar.f30165b;
                oVar = oVar.f30169f;
                j16 = j13;
            }
            return -1L;
        }
        throw new IllegalArgumentException(String.format("size=%s fromIndex=%s toIndex=%s", Long.valueOf(this.f30132b), Long.valueOf(j10), Long.valueOf(j11)));
    }

    public final f a(int i10) {
        if (i10 == 0) {
            return f.f30135e;
        }
        return new q(this, i10);
    }
}
