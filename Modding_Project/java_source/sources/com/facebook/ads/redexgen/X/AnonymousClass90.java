package com.facebook.ads.redexgen.X;

import android.net.Uri;
import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.Arrays;
/* renamed from: com.facebook.ads.redexgen.X.90  reason: invalid class name */
/* loaded from: assets/audience_network.dex */
public final class AnonymousClass90 implements InterfaceC2585lN {
    public static String[] A07 = {"YlHQuKLayYbpqzx9FSV6CQrLdQj96AeM", "S4RZcb4lBSGk97kEvSl91HaEV0P4", "uVSfNf", "Coq", "aQ2CxhcvUBulJYKynnVyQo", "flTysjHMhLtcJrzUbSTnFz15x2mZl", "8oFgaOvQgeQ1BxQlutu1jILF1QVjJ1FW", "wjWZdP"};
    public int A00;
    public int A01;
    public long A02;
    public byte[] A03;
    public final long A04;
    public final InterfaceC2731nl A05;
    public final byte[] A06;

    public AnonymousClass90(InterfaceC2731nl interfaceC2731nl, long j10, long j11) {
        this(interfaceC2731nl, j10, j11, false);
    }

    public AnonymousClass90(InterfaceC2731nl interfaceC2731nl, long j10, long j11, boolean z10) {
        this.A05 = interfaceC2731nl;
        this.A02 = j10;
        this.A04 = j11;
        this.A03 = new byte[65536];
        this.A06 = new byte[4096];
    }

    private int A00(int i10) {
        int bytesSkipped = Math.min(this.A00, i10);
        A05(bytesSkipped);
        return bytesSkipped;
    }

    private int A01(byte[] bArr, int i10, int i11) {
        if (this.A00 == 0) {
            return 0;
        }
        int min = Math.min(this.A00, i11);
        System.arraycopy(this.A03, 0, bArr, i10, min);
        A05(min);
        return min;
    }

    private int A02(byte[] bArr, int i10, int i11, int i12, boolean z10) throws IOException {
        if (!Thread.interrupted()) {
            int read = this.A05.read(bArr, i10 + i12, i11 - i12);
            if (read == -1) {
                if (i12 == 0 && z10) {
                    return -1;
                }
                throw new EOFException();
            }
            return i12 + read;
        }
        throw new InterruptedIOException();
    }

    private void A03(int i10) {
        if (i10 != -1) {
            this.A02 += i10;
        }
    }

    private void A04(int i10) {
        int i11 = this.A01 + i10;
        int requiredLength = this.A03.length;
        if (i11 > requiredLength) {
            int requiredLength2 = this.A03.length;
            int requiredLength3 = 524288 + i11;
            int newPeekCapacity = AbstractC10974a.A07(requiredLength2 * 2, 65536 + i11, requiredLength3);
            this.A03 = Arrays.copyOf(this.A03, newPeekCapacity);
        }
    }

    private void A05(int i10) {
        this.A00 -= i10;
        this.A01 = 0;
        byte[] bArr = this.A03;
        if (this.A00 < this.A03.length - 524288) {
            bArr = new byte[this.A00 + 65536];
        }
        byte[] bArr2 = this.A03;
        int i11 = this.A00;
        if (A07[3].length() != 3) {
            throw new RuntimeException();
        }
        String[] strArr = A07;
        strArr[7] = "U6HOVF";
        strArr[2] = "FLrwJS";
        System.arraycopy(bArr2, i10, bArr, 0, i11);
        this.A03 = bArr;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x003c, code lost:
        if (r4 == (-1)) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x003e, code lost:
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0040, code lost:
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0039, code lost:
        A03(r4);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean A06(int r7, boolean r8) throws java.io.IOException {
        /*
            r6 = this;
            int r4 = r6.A00(r7)
        L4:
            r3 = -1
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.AnonymousClass90.A07
            r0 = 1
            r1 = r2[r0]
            r0 = 5
            r0 = r2[r0]
            int r1 = r1.length()
            int r0 = r0.length()
            if (r1 == r0) goto L42
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.AnonymousClass90.A07
            java.lang.String r1 = "VT2oIT"
            r0 = 7
            r2[r0] = r1
            java.lang.String r1 = "AHKvNZ"
            r0 = 2
            r2[r0] = r1
            if (r4 >= r7) goto L39
            if (r4 == r3) goto L39
            byte[] r0 = r6.A06
            int r0 = r0.length
            int r0 = r0 + r4
            int r3 = java.lang.Math.min(r7, r0)
            byte[] r1 = r6.A06
            int r2 = -r4
            r0 = r6
            r5 = r8
            int r4 = r0.A02(r1, r2, r3, r4, r5)
            goto L4
        L39:
            r6.A03(r4)
            if (r4 == r3) goto L40
            r0 = 1
        L3f:
            return r0
        L40:
            r0 = 0
            goto L3f
        L42:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AnonymousClass90.A06(int, boolean):boolean");
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2585lN
    public final void A3z(int i10) throws IOException {
        A40(i10, false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0032, code lost:
        throw new java.lang.RuntimeException();
     */
    @Override // com.facebook.ads.redexgen.X.InterfaceC2585lN
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean A40(int r7, boolean r8) throws java.io.IOException {
        /*
            r6 = this;
            r3 = r7
            r6.A04(r3)
            int r4 = r6.A00
            int r0 = r6.A01
            int r4 = r4 - r0
        L9:
            if (r4 >= r3) goto L39
            byte[] r1 = r6.A03
            int r2 = r6.A01
            r0 = r6
            r5 = r8
            int r4 = r0.A02(r1, r2, r3, r4, r5)
            r0 = -1
            if (r4 != r0) goto L33
            r3 = 0
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.AnonymousClass90.A07
            r0 = 6
            r1 = r2[r0]
            r0 = 0
            r2 = r2[r0]
            r0 = 25
            char r1 = r1.charAt(r0)
            char r0 = r2.charAt(r0)
            if (r1 == r0) goto L59
        L2d:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L33:
            int r0 = r6.A01
            int r0 = r0 + r4
            r6.A00 = r0
            goto L9
        L39:
            int r0 = r6.A01
            int r0 = r0 + r3
            r6.A01 = r0
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.AnonymousClass90.A07
            r0 = 1
            r1 = r2[r0]
            r0 = 5
            r0 = r2[r0]
            int r1 = r1.length()
            int r0 = r0.length()
            if (r1 == r0) goto L2d
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.AnonymousClass90.A07
            java.lang.String r1 = "05c"
            r0 = 3
            r2[r0] = r1
            r0 = 1
            return r0
        L59:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.AnonymousClass90.A07
            java.lang.String r1 = "U9yRyStfgEDvt0OpJggQJXPRXL9S"
            r0 = 1
            r2[r0] = r1
            java.lang.String r1 = "yvkfr8ZSlHssIeYh6rwGG04GsxspU"
            r0 = 5
            r2[r0] = r1
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AnonymousClass90.A40(int, boolean):boolean");
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2585lN
    public final long A8G() {
        return this.A04;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2585lN
    public final long A8a() {
        return this.A02 + this.A01;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2585lN
    public final long A8f() {
        return this.A02;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2585lN
    public final Uri A9H() {
        return this.A05.A9H();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2585lN
    public final int AG8(byte[] bArr, int i10, int i11) throws IOException {
        int min;
        A04(i11);
        int bytesPeeked = this.A00 - this.A01;
        if (bytesPeeked == 0) {
            min = A02(this.A03, this.A01, i11, 0, true);
            if (min == -1) {
                return -1;
            }
            int peekBufferRemainingBytes = this.A00;
            this.A00 = peekBufferRemainingBytes + min;
        } else {
            min = Math.min(i11, bytesPeeked);
        }
        byte[] bArr2 = this.A03;
        int peekBufferRemainingBytes2 = this.A01;
        System.arraycopy(bArr2, peekBufferRemainingBytes2, bArr, i10, min);
        int peekBufferRemainingBytes3 = this.A01;
        this.A01 = peekBufferRemainingBytes3 + min;
        return min;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2585lN
    public final void AG9(byte[] bArr, int i10, int i11) throws IOException {
        AGA(bArr, i10, i11, false);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2585lN
    public final boolean AGA(byte[] bArr, int i10, int i11, boolean z10) throws IOException {
        if (!A40(i11, z10)) {
            return false;
        }
        System.arraycopy(this.A03, this.A01 - i11, bArr, i10, i11);
        return true;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2585lN
    public final boolean AGh(byte[] bArr, int i10, int i11, boolean z10) throws IOException {
        int A01 = A01(bArr, i10, i11);
        while (A01 < i11 && A01 != -1) {
            A01 = A02(bArr, i10, i11, A01, z10);
        }
        A03(A01);
        return A01 != -1;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2585lN
    public final void AI1() {
        this.A01 = 0;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2585lN
    public final int AJG(int i10) throws IOException {
        int A00 = A00(i10);
        if (A00 == 0) {
            byte[] bArr = this.A06;
            int bytesSkipped = this.A06.length;
            A00 = A02(bArr, 0, Math.min(i10, bytesSkipped), 0, true);
        }
        A03(A00);
        String[] strArr = A07;
        String str = strArr[7];
        String str2 = strArr[2];
        int length = str.length();
        int bytesSkipped2 = str2.length();
        if (length != bytesSkipped2) {
            throw new RuntimeException();
        }
        String[] strArr2 = A07;
        strArr2[6] = "4muWdj2u5Q3eId9F7O7O9kyn7QS9F70y";
        strArr2[0] = "MQBZi4ACHP4vbg8D4iuKjBQaYQ9ASuUs";
        return A00;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2585lN
    public final void AJJ(int i10) throws IOException {
        A06(i10, false);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2585lN, com.facebook.ads.redexgen.X.AnonymousClass20
    public final int read(byte[] bArr, int i10, int i11) throws IOException {
        int bytesRead = A01(bArr, i10, i11);
        if (bytesRead == 0) {
            bytesRead = A02(bArr, i10, i11, 0, true);
        }
        A03(bytesRead);
        return bytesRead;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2585lN
    public final void readFully(byte[] bArr, int i10, int i11) throws IOException {
        AGh(bArr, i10, i11, false);
    }
}
