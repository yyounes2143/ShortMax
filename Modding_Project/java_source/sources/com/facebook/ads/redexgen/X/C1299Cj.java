package com.facebook.ads.redexgen.X;

import java.io.EOFException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import kotlin.jvm.internal.ByteCompanionObject;
/* renamed from: com.facebook.ads.redexgen.X.Cj  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1299Cj {
    public static String[] A07 = {"1TUPUvqjuckMieKxy618dXqeho2I2nXO", "1tw", "Rv8BHxt03y9lIrpcW4kHhbfWsqmFKBVK", "r8Px", "D2vXeeTjlCXB4Odv", "hN", "uuD40", "TpLNmCJV5wG1YwTXf3toM93vl9iWeWk7"};
    public long A00;
    public C2638mG A01;
    public C2638mG A02;
    public C2638mG A03;
    public final int A04;
    public final C4J A05 = new C4J(32);
    public final EO A06;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static C2638mG A04(C2638mG c2638mG, C2718nY c2718nY, C1301Cl c1301Cl, C4J c4j) {
        int i10;
        long j10 = c1301Cl.A01;
        c4j.A0d(1);
        C2638mG A03 = A03(c2638mG, j10, c4j.A0l(), 1);
        long j11 = j10 + 1;
        byte b10 = c4j.A0l()[0];
        boolean z10 = (b10 & ByteCompanionObject.MIN_VALUE) != 0;
        int i11 = b10 & ByteCompanionObject.MAX_VALUE;
        C5N c5n = c2718nY.A05;
        if (c5n.A04 == null) {
            c5n.A04 = new byte[16];
        } else {
            Arrays.fill(c5n.A04, (byte) 0);
        }
        C2638mG A032 = A03(A03, j11, c5n.A04, i11);
        long j12 = j11 + i11;
        if (z10) {
            c4j.A0d(2);
            A032 = A03(A032, j12, c4j.A0l(), 2);
            j12 += 2;
            i10 = c4j.A0M();
        } else {
            i10 = 1;
            if (A07[7].charAt(5) == 'i') {
                throw new RuntimeException();
            }
            A07[7] = "Hpyz1f8ALnZx1iP9R6alck8MxH3P54oK";
        }
        int[] iArr = c5n.A06;
        if (iArr == null || iArr.length < i10) {
            iArr = new int[i10];
        }
        int[] iArr2 = c5n.A07;
        if (iArr2 == null || iArr2.length < i10) {
            iArr2 = new int[i10];
        }
        if (z10) {
            int i12 = i10 * 6;
            c4j.A0d(i12);
            A032 = A03(A032, j12, c4j.A0l(), i12);
            j12 += i12;
            c4j.A0f(0);
            for (int i13 = 0; i13 < i10; i13++) {
                iArr[i13] = c4j.A0M();
                iArr2[i13] = c4j.A0L();
            }
        } else {
            iArr[0] = 0;
            iArr2[0] = c1301Cl.A00 - ((int) (j12 - c1301Cl.A01));
        }
        C1419Gz c1419Gz = (C1419Gz) AbstractC10974a.A0f(c1301Cl.A02);
        c5n.A02(i10, iArr, iArr2, c1419Gz.A03, c5n.A04, c1419Gz.A01, c1419Gz.A02, c1419Gz.A00);
        int i14 = (int) (j12 - c1301Cl.A01);
        c1301Cl.A01 += i14;
        if (A07[0].charAt(1) == 'T') {
            A07[0] = "nTpP9ibfF3cbwjVbkTA4UIhNPpZui5fl";
            c1301Cl.A00 -= i14;
            return A032;
        }
        String[] strArr = A07;
        strArr[3] = "b8i1";
        strArr[6] = "bRWrT";
        c1301Cl.A00 -= i14;
        return A032;
    }

    public C1299Cj(EO eo2) {
        this.A06 = eo2;
        this.A04 = eo2.A8A();
        this.A01 = new C2638mG(0L, this.A04);
        this.A02 = this.A01;
        this.A03 = this.A01;
    }

    private int A00(int i10) {
        if (this.A03.A03 == null) {
            this.A03.A03(this.A06.A41(), new C2638mG(this.A03.A00, this.A04));
        }
        return Math.min(i10, (int) (this.A03.A00 - this.A00));
    }

    public static C2638mG A01(C2638mG c2638mG, long j10) {
        while (j10 >= c2638mG.A00) {
            c2638mG = c2638mG.A02;
        }
        return c2638mG;
    }

    public static C2638mG A02(C2638mG c2638mG, long j10, ByteBuffer byteBuffer, int i10) {
        C2638mG A01 = A01(c2638mG, j10);
        while (i10 > 0) {
            int remaining = (int) (A01.A00 - j10);
            int min = Math.min(i10, remaining);
            byte[] bArr = A01.A03.A01;
            int remaining2 = A01.A00(j10);
            byteBuffer.put(bArr, remaining2, min);
            i10 -= min;
            j10 += min;
            int remaining3 = (j10 > A01.A00 ? 1 : (j10 == A01.A00 ? 0 : -1));
            if (remaining3 == 0) {
                A01 = A01.A02;
            }
        }
        return A01;
    }

    public static C2638mG A03(C2638mG c2638mG, long j10, byte[] bArr, int i10) {
        C2638mG A01 = A01(c2638mG, j10);
        int i11 = i10;
        while (i11 > 0) {
            int min = Math.min(i11, (int) (A01.A00 - j10));
            byte[] bArr2 = A01.A03.A01;
            int toCopy = A01.A00(j10);
            int remaining = i10 - i11;
            System.arraycopy(bArr2, toCopy, bArr, remaining, min);
            i11 -= min;
            j10 += min;
            int remaining2 = (j10 > A01.A00 ? 1 : (j10 == A01.A00 ? 0 : -1));
            if (remaining2 == 0) {
                A01 = A01.A02;
            }
        }
        return A01;
    }

    public static C2638mG A05(C2638mG c2638mG, C2718nY c2718nY, C1301Cl c1301Cl, C4J c4j) {
        if (c2718nY.A0E()) {
            c2638mG = A04(c2638mG, c2718nY, c1301Cl, c4j);
        }
        if (c2718nY.A03()) {
            c4j.A0d(4);
            C2638mG A03 = A03(c2638mG, c1301Cl.A01, c4j.A0l(), 4);
            int A0L = c4j.A0L();
            c1301Cl.A01 += 4;
            c1301Cl.A00 -= 4;
            c2718nY.A0C(A0L);
            C2638mG A02 = A02(A03, c1301Cl.A01, c2718nY.A02, A0L);
            c1301Cl.A01 += A0L;
            c1301Cl.A00 -= A0L;
            c2718nY.A0D(c1301Cl.A00);
            return A02(A02, c1301Cl.A01, c2718nY.A03, c1301Cl.A00);
        }
        c2718nY.A0C(c1301Cl.A00);
        return A02(c2638mG, c1301Cl.A01, c2718nY.A02, c1301Cl.A00);
    }

    private void A06(int i10) {
        this.A00 += i10;
        if (this.A00 == this.A03.A00) {
            this.A03 = this.A03.A02;
        }
    }

    private void A07(C2638mG c2638mG) {
        if (c2638mG.A03 == null) {
            return;
        }
        this.A06.AGu(c2638mG);
        c2638mG.A01();
    }

    public final int A08(AnonymousClass20 anonymousClass20, int i10, boolean z10) throws IOException {
        int read = anonymousClass20.read(this.A03.A03.A01, this.A03.A00(this.A00), A00(i10));
        if (read == -1) {
            if (z10) {
                return -1;
            }
            throw new EOFException();
        }
        A06(read);
        return read;
    }

    public final long A09() {
        return this.A00;
    }

    public final void A0A() {
        A07(this.A01);
        this.A01.A02(0L, this.A04);
        this.A02 = this.A01;
        this.A03 = this.A01;
        this.A00 = 0L;
        this.A06.AJi();
    }

    public final void A0B() {
        this.A02 = this.A01;
    }

    public final void A0C(long j10) {
        if (j10 == -1) {
            return;
        }
        while (j10 >= this.A01.A00) {
            this.A06.AGt(this.A01.A03);
            this.A01 = this.A01.A01();
        }
        int i10 = (this.A02.A01 > this.A01.A01 ? 1 : (this.A02.A01 == this.A01.A01 ? 0 : -1));
        String[] strArr = A07;
        if (strArr[3].length() == strArr[6].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A07;
        strArr2[3] = "kTcq";
        strArr2[6] = "Dj6YZ";
        if (i10 < 0) {
            this.A02 = this.A01;
        }
    }

    public final void A0D(C4J c4j, int i10) {
        while (i10 > 0) {
            int A00 = A00(i10);
            byte[] bArr = this.A03.A03.A01;
            int bytesAppended = this.A03.A00(this.A00);
            c4j.A0k(bArr, bytesAppended, A00);
            i10 -= A00;
            A06(A00);
        }
    }

    public final void A0E(C2718nY c2718nY, C1301Cl c1301Cl) {
        A05(this.A02, c2718nY, c1301Cl, this.A05);
    }

    public final void A0F(C2718nY c2718nY, C1301Cl c1301Cl) {
        this.A02 = A05(this.A02, c2718nY, c1301Cl, this.A05);
    }
}
