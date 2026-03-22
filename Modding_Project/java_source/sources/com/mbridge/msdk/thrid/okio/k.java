package com.mbridge.msdk.thrid.okio;

import java.io.IOException;
import java.util.zip.Inflater;
/* compiled from: InflaterSource.java */
/* loaded from: classes6.dex */
public final class k implements s {

    /* renamed from: a  reason: collision with root package name */
    private final e f30147a;

    /* renamed from: b  reason: collision with root package name */
    private final Inflater f30148b;

    /* renamed from: c  reason: collision with root package name */
    private int f30149c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f30150d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(e eVar, Inflater inflater) {
        if (eVar != null) {
            if (inflater != null) {
                this.f30147a = eVar;
                this.f30148b = inflater;
                return;
            }
            throw new IllegalArgumentException("inflater == null");
        }
        throw new IllegalArgumentException("source == null");
    }

    private void h() throws IOException {
        int i10 = this.f30149c;
        if (i10 == 0) {
            return;
        }
        int remaining = i10 - this.f30148b.getRemaining();
        this.f30149c -= remaining;
        this.f30147a.skip(remaining);
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0057, code lost:
        h();
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x005e, code lost:
        if (r1.f30165b != r1.f30166c) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0060, code lost:
        r7.f30131a = r1.b();
        com.mbridge.msdk.thrid.okio.p.a(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0069, code lost:
        return -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:?, code lost:
        return -1;
     */
    @Override // com.mbridge.msdk.thrid.okio.s
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long b(com.mbridge.msdk.thrid.okio.c r7, long r8) throws java.io.IOException {
        /*
            r6 = this;
            r0 = 0
            int r2 = (r8 > r0 ? 1 : (r8 == r0 ? 0 : -1))
            if (r2 < 0) goto L7a
            boolean r3 = r6.f30150d
            if (r3 != 0) goto L72
            if (r2 != 0) goto Ld
            return r0
        Ld:
            boolean r0 = r6.d()
            r1 = 1
            com.mbridge.msdk.thrid.okio.o r1 = r7.b(r1)     // Catch: java.util.zip.DataFormatException -> L38
            int r2 = r1.f30166c     // Catch: java.util.zip.DataFormatException -> L38
            int r2 = 8192 - r2
            long r2 = (long) r2     // Catch: java.util.zip.DataFormatException -> L38
            long r2 = java.lang.Math.min(r8, r2)     // Catch: java.util.zip.DataFormatException -> L38
            int r2 = (int) r2     // Catch: java.util.zip.DataFormatException -> L38
            java.util.zip.Inflater r3 = r6.f30148b     // Catch: java.util.zip.DataFormatException -> L38
            byte[] r4 = r1.f30164a     // Catch: java.util.zip.DataFormatException -> L38
            int r5 = r1.f30166c     // Catch: java.util.zip.DataFormatException -> L38
            int r2 = r3.inflate(r4, r5, r2)     // Catch: java.util.zip.DataFormatException -> L38
            if (r2 <= 0) goto L3a
            int r8 = r1.f30166c     // Catch: java.util.zip.DataFormatException -> L38
            int r8 = r8 + r2
            r1.f30166c = r8     // Catch: java.util.zip.DataFormatException -> L38
            long r8 = r7.f30132b     // Catch: java.util.zip.DataFormatException -> L38
            long r0 = (long) r2     // Catch: java.util.zip.DataFormatException -> L38
            long r8 = r8 + r0
            r7.f30132b = r8     // Catch: java.util.zip.DataFormatException -> L38
            return r0
        L38:
            r7 = move-exception
            goto L6c
        L3a:
            java.util.zip.Inflater r2 = r6.f30148b     // Catch: java.util.zip.DataFormatException -> L38
            boolean r2 = r2.finished()     // Catch: java.util.zip.DataFormatException -> L38
            if (r2 != 0) goto L57
            java.util.zip.Inflater r2 = r6.f30148b     // Catch: java.util.zip.DataFormatException -> L38
            boolean r2 = r2.needsDictionary()     // Catch: java.util.zip.DataFormatException -> L38
            if (r2 == 0) goto L4b
            goto L57
        L4b:
            if (r0 != 0) goto L4e
            goto Ld
        L4e:
            java.io.EOFException r7 = new java.io.EOFException     // Catch: java.util.zip.DataFormatException -> L38
            java.lang.String r8 = "source exhausted prematurely"
            r7.<init>(r8)     // Catch: java.util.zip.DataFormatException -> L38
            throw r7     // Catch: java.util.zip.DataFormatException -> L38
        L57:
            r6.h()     // Catch: java.util.zip.DataFormatException -> L38
            int r8 = r1.f30165b     // Catch: java.util.zip.DataFormatException -> L38
            int r9 = r1.f30166c     // Catch: java.util.zip.DataFormatException -> L38
            if (r8 != r9) goto L69
            com.mbridge.msdk.thrid.okio.o r8 = r1.b()     // Catch: java.util.zip.DataFormatException -> L38
            r7.f30131a = r8     // Catch: java.util.zip.DataFormatException -> L38
            com.mbridge.msdk.thrid.okio.p.a(r1)     // Catch: java.util.zip.DataFormatException -> L38
        L69:
            r7 = -1
            return r7
        L6c:
            java.io.IOException r8 = new java.io.IOException
            r8.<init>(r7)
            throw r8
        L72:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "closed"
            r7.<init>(r8)
            throw r7
        L7a:
            java.lang.IllegalArgumentException r7 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "byteCount < 0: "
            r0.append(r1)
            r0.append(r8)
            java.lang.String r8 = r0.toString()
            r7.<init>(r8)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.thrid.okio.k.b(com.mbridge.msdk.thrid.okio.c, long):long");
    }

    @Override // com.mbridge.msdk.thrid.okio.s, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f30150d) {
            return;
        }
        this.f30148b.end();
        this.f30150d = true;
        this.f30147a.close();
    }

    public final boolean d() throws IOException {
        if (!this.f30148b.needsInput()) {
            return false;
        }
        h();
        if (this.f30148b.getRemaining() == 0) {
            if (this.f30147a.f()) {
                return true;
            }
            o oVar = this.f30147a.a().f30131a;
            int i10 = oVar.f30166c;
            int i11 = oVar.f30165b;
            int i12 = i10 - i11;
            this.f30149c = i12;
            this.f30148b.setInput(oVar.f30164a, i11, i12);
            return false;
        }
        throw new IllegalStateException("?");
    }

    @Override // com.mbridge.msdk.thrid.okio.s
    public t b() {
        return this.f30147a.b();
    }
}
