package com.facebook.ads.redexgen.X;

import android.net.Uri;
import android.util.Pair;
import android.util.SparseArray;
import androidx.collection.SieveCacheKt;
import com.facebook.ads.androidx.media3.common.DrmInitData;
import com.facebook.ads.androidx.media3.extractor.metadata.emsg.EventMessage;
import com.ss.ttm.player.MediaPlayer;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import kotlin.jvm.internal.ByteCompanionObject;
/* renamed from: com.facebook.ads.redexgen.X.kb  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C2549kb implements GX {
    public static byte[] A0e;
    public static String[] A0f = {"ywSCwlzG1SMdvvW", "WbYO2rYjmhbf4R3oYDPvQZ3H98amgjSr", "Za", "aa8pMmtLKrvpWkukTfymetmlHniL9M", "752FE5aLUbaesINptKDix8v", "1m6bsNbzXuacY99BBbBsLUDHw0asFdhp", "tFAwrqTGVJ2tUOf2i", "X0elgRXJnrwhMbXNAucG6j3nQ1B9k96A"};
    public static final InterfaceC1395Gb A0g;
    public static final C2796or A0h;
    public static final byte[] A0i;
    public int A00;
    public int A01;
    public int A02;
    public int A03;
    public int A04;
    public int A05;
    public int A06;
    public long A07;
    public long A08;
    public long A09;
    public long A0A;
    public long A0B;
    public long A0C;
    public SparseArray<IV> A0D;
    public C4J A0E;
    public GY A0F;
    public IV A0G;
    public boolean A0H;
    public boolean A0I;
    public boolean A0J;
    public H1[] A0K;
    public H1[] A0L;
    public final int A0M;
    public final DrmInitData A0N;
    public final C4J A0O;
    public final C4J A0P;
    public final C4J A0Q;
    public final C4J A0R;
    public final C4J A0S;
    public final C4R A0T;
    public final H1 A0U;
    public final HO A0V;
    public final C1457Im A0W;
    public final ArrayDeque<C2557kj> A0X;
    public final ArrayDeque<IU> A0Y;
    public final List<C2796or> A0Z;
    public final boolean A0a;
    public final boolean A0b;
    public final boolean A0c;
    public final byte[] A0d;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static int A00(IV iv, int i10, long j10, int i11, C4J c4j, int i12) {
        int i13;
        int i14;
        int i15 = i12;
        long j11 = j10;
        c4j.A0f(8);
        int A00 = II.A00(c4j.A0C());
        C1457Im c1457Im = iv.A05;
        C1459Io c1459Io = iv.A07;
        IP ip2 = c1459Io.A06;
        c1459Io.A0C[i10] = c4j.A0L();
        c1459Io.A0E[i10] = c1459Io.A04;
        if ((A00 & 1) != 0) {
            long[] jArr = c1459Io.A0E;
            String[] strArr = A0f;
            if (strArr[1].charAt(23) == strArr[5].charAt(23)) {
                A0f[2] = "02";
                jArr[i10] = jArr[i10] + c4j.A0C();
            }
            throw new RuntimeException();
        }
        boolean z10 = (A00 & 4) != 0;
        int i16 = ip2.A01;
        if (z10) {
            i16 = c4j.A0L();
        }
        boolean z11 = (A00 & 256) != 0;
        boolean z12 = (A00 & 512) != 0;
        boolean z13 = (A00 & 1024) != 0;
        boolean z14 = (A00 & 2048) != 0;
        long j12 = 0;
        if (c1457Im.A08 != null && c1457Im.A08.length == 1 && c1457Im.A08[0] == 0) {
            j12 = c1457Im.A09[0];
        }
        int[] iArr = c1459Io.A0B;
        long[] jArr2 = c1459Io.A0D;
        boolean[] zArr = c1459Io.A0G;
        boolean z15 = c1457Im.A03 == 2 && (i11 & 1) != 0;
        int i17 = i15 + c1459Io.A0C[i10];
        long j13 = c1457Im.A06;
        if (i10 > 0) {
            j11 = c1459Io.A05;
        }
        while (i15 < i17) {
            int A0L = z11 ? c4j.A0L() : ip2.A00;
            if (z12) {
                i13 = c4j.A0L();
                String[] strArr2 = A0f;
                if (strArr2[3].length() == strArr2[6].length()) {
                    throw new RuntimeException();
                }
                String[] strArr3 = A0f;
                strArr3[1] = "prYCRILb9XoLiqEuzjLvSymHGedE7tyJ";
                strArr3[5] = "tQPxWhVMkiMqfE1WSn5JfVNHf8FlQpL7";
            } else {
                i13 = ip2.A03;
            }
            if (i15 == 0 && z10) {
                i14 = i16;
            } else if (z13) {
                i14 = c4j.A0C();
            } else if (A0f[4].length() != 23) {
                throw new RuntimeException();
            } else {
                A0f[4] = "VUSN2W3IkwtruuiuKY2zNmE";
                i14 = ip2.A01;
            }
            jArr2[i15] = AbstractC10974a.A0U(((z14 ? c4j.A0C() : 0) + j11) - j12, 1000000L, j13);
            zArr[i15] = ((i14 >> 16) & 1) == 0 && (!z15 || i15 == 0);
            iArr[i15] = i13;
            j11 += A0L;
            i15++;
        }
        c1459Io.A05 = j11;
        return i17;
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static Pair<Long, C2590lT> A04(C4J c4j, long j10) throws C10532i {
        long A0R;
        long A0R2;
        c4j.A0f(8);
        int A01 = II.A01(c4j.A0C());
        c4j.A0g(4);
        long A0Q = c4j.A0Q();
        if (A01 == 0) {
            A0R = c4j.A0Q();
            A0R2 = j10 + c4j.A0Q();
        } else {
            A0R = c4j.A0R();
            A0R2 = j10 + c4j.A0R();
        }
        long A0U = AbstractC10974a.A0U(A0R, 1000000L, A0Q);
        c4j.A0g(2);
        int A0M = c4j.A0M();
        int[] iArr = new int[A0M];
        long[] jArr = new long[A0M];
        long[] jArr2 = new long[A0M];
        long[] jArr3 = new long[A0M];
        long j11 = A0U;
        for (int i10 = 0; i10 < A0M; i10++) {
            int A0C = c4j.A0C();
            if ((Integer.MIN_VALUE & A0C) != 0) {
                throw new C10532i(A0B(634, 28, 93));
            }
            long A0Q2 = c4j.A0Q();
            iArr[i10] = Integer.MAX_VALUE & A0C;
            jArr[i10] = A0R2;
            jArr3[i10] = j11;
            A0R += A0Q2;
            j11 = AbstractC10974a.A0U(A0R, 1000000L, A0Q);
            String[] strArr = A0f;
            if (strArr[3].length() == strArr[6].length()) {
                throw new RuntimeException();
            }
            A0f[7] = "mBjUzKzbBV9DJWZlH52EoviqXd7Fx3w7";
            jArr2[i10] = j11 - jArr3[i10];
            c4j.A0g(4);
            A0R2 += iArr[i10];
        }
        return Pair.create(Long.valueOf(A0U), new C2590lT(iArr, jArr, jArr2, jArr3));
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 12 out of bounds for length 11
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:135)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:118)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:567)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:39)
     */
    public static IV A09(C4J c4j, SparseArray<IV> sparseArray, boolean z10) {
        c4j.A0f(8);
        int A00 = II.A00(c4j.A0C());
        IV A08 = A08(sparseArray, c4j.A0C(), z10);
        if (A08 == null) {
            return null;
        }
        if ((A00 & 1) != 0) {
            long A0R = c4j.A0R();
            A08.A07.A04 = A0R;
            A08.A07.A03 = A0R;
        }
        IP ip2 = A08.A04;
        A08.A07.A06 = new IP((A00 & 2) != 0 ? c4j.A0L() - 1 : ip2.A02, (A00 & 8) != 0 ? c4j.A0L() : ip2.A00, (A00 & 16) != 0 ? c4j.A0L() : ip2.A03, (A00 & 32) != 0 ? c4j.A0L() : ip2.A01);
        return A08;
    }

    public static String A0B(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A0e, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] ^ i12) ^ 99);
        }
        return new String(copyOfRange);
    }

    public static void A0E() {
        String[] strArr = A0f;
        if (strArr[1].charAt(23) != strArr[5].charAt(23)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0f;
        strArr2[1] = "BGZmKOZPo9hBykc2GdFNUQpHC0I3sPv1";
        strArr2[5] = "CvUkm70dQ0grN9w1V6xWMg6HVylPciNL";
        A0e = new byte[]{84, 88, 95, 106, 113, 115, 62, 109, 119, 100, 123, 62, 114, 123, 109, 109, 62, 106, 118, ByteCompanionObject.MAX_VALUE, 112, 62, 118, 123, ByteCompanionObject.MAX_VALUE, 122, 123, 108, 62, 114, 123, 112, 121, 106, 118, 62, 54, 107, 112, 109, 107, 110, 110, 113, 108, 106, 123, 122, 55, 48, 99, 72, 82, 84, 95, 6, 69, 73, 83, 72, 82, 6, 79, 72, 6, 85, 68, 65, 86, 6, 7, 27, 6, 23, 6, 14, 83, 72, 85, 83, 86, 86, 73, 84, 82, 67, 66, 15, 8, 73, 98, 120, 126, 117, 44, 111, 99, 121, 98, 120, 44, 101, 98, 44, ByteCompanionObject.MAX_VALUE, 107, 124, 104, 44, 45, 49, 44, 61, 44, 36, 121, 98, ByteCompanionObject.MAX_VALUE, 121, 124, 124, 99, 126, 120, 105, 104, 37, 34, 104, 92, 79, 73, 67, 75, 64, 90, 75, 74, 99, 94, 26, 107, 86, 90, 92, 79, 77, 90, 65, 92, 57, 23, 30, 31, 2, 25, 30, 23, 80, 30, 21, 23, 17, 4, 25, 6, 21, 80, 31, 22, 22, 3, 21, 4, 80, 4, 31, 80, 3, 17, 29, 0, 28, 21, 80, 20, 17, 4, 17, 94, 116, 83, 75, 92, 81, 84, 89, 29, 115, 124, 113, 29, 81, 88, 83, 90, 73, 85, 113, 88, 92, 91, 29, 92, 73, 82, 80, 29, 89, 88, 91, 84, 83, 88, 78, 29, 88, 69, 73, 88, 83, 89, 88, 89, 29, 92, 73, 82, 80, 29, 78, 84, 71, 88, 29, 21, 72, 83, 78, 72, 77, 77, 82, 79, 73, 88, 89, 20, 19, 62, 23, 19, 20, 82, 19, 6, 29, 31, 82, 5, 27, 6, 26, 82, 30, 23, 28, 21, 6, 26, 82, 76, 82, 64, 67, 70, 69, 70, 74, 65, 68, 70, 69, 82, 90, 7, 28, 1, 7, 2, 2, 29, 0, 6, 23, 22, 91, 92, 2, 43, 32, 41, 58, 38, 110, 35, 39, 61, 35, 47, 58, 45, 38, 116, 110, 82, 123, 123, 110, 120, 105, 61, 105, 114, 61, 120, 115, 126, 111, 100, 109, 105, 116, 114, 115, 61, 121, 124, 105, 124, 61, 106, 124, 110, 61, 115, 120, 122, 124, 105, 116, 107, 120, 51, 123, 82, 82, 71, 81, 64, 20, 64, 91, 20, 81, 90, 80, 20, 91, 82, 20, 89, 80, 85, 64, 20, 67, 85, 71, 20, 90, 81, 83, 85, 64, 93, 66, 81, 26, 61, 4, 23, 0, 0, 27, 22, 27, 28, 21, 82, 38, 0, 19, 17, 25, 55, 28, 17, 0, 11, 2, 6, 27, 29, 28, 48, 29, 10, 82, 2, 19, 0, 19, 31, 23, 6, 23, 0, 1, 82, 27, 1, 82, 7, 28, 1, 7, 2, 2, 29, 0, 6, 23, 22, 92, 84, 108, 110, 119, 119, 98, 99, 39, 119, 116, 116, 111, 39, 102, 115, 104, 106, 39, 47, 97, 102, 110, 107, 98, 99, 39, 115, 104, 39, 98, ByteCompanionObject.MAX_VALUE, 115, 117, 102, 100, 115, 39, 114, 114, 110, 99, 46, 60, 4, 6, 31, 31, 6, 1, 8, 79, 14, 27, 0, 2, 79, 24, 6, 27, 7, 79, 3, 10, 1, 8, 27, 7, 79, 81, 79, 93, 94, 91, 88, 91, 87, 92, 89, 91, 88, 79, 71, 26, 1, 28, 26, 31, 31, 0, 29, 27, 10, 11, 70, 65, 79, 119, 117, 108, 108, 117, 114, 123, 60, 105, 114, 111, 105, 108, 108, 115, 110, 104, 121, 120, 60, 121, 113, 111, 123, 60, 106, 121, 110, 111, 117, 115, 114, 38, 60, 57, 2, 9, 20, 28, 9, 15, 24, 9, 8, 76, 1, 3, 3, 26, 76, 14, 3, 20, 66, 71, 124, 119, 106, 98, 119, 113, 102, 119, 118, 50, 97, 115, 123, 125, 50, 119, 124, 102, 96, 107, 50, 113, 125, 103, 124, 102, 40, 50, 107, 80, 86, 95, 80, 90, 82, 91, 90, 30, 87, 80, 90, 87, 76, 91, 93, 74, 30, 76, 91, 88, 91, 76, 91, 80, 93, 91, 107, 92, 79, 84, 92, 95, 81, 88, 29, 81, 88, 83, 90, 73, 85, 29, 89, 88, 78, 94, 79, 84, 77, 73, 84, 82, 83, 29, 84, 83, 29, 78, 90, 77, 89, 29, 91, 82, 72, 83, 89, 29, 21, 72, 83, 78, 72, 77, 77, 82, 79, 73, 88, 89, 20, 83, 66, 66, 94, 91, 81, 83, 70, 91, 93, 92, 29, 74, 31, 87, 95, 65, 85, 66, 83, 83, 79, 74, 64, 66, 87, 74, 76, 77, 12, 91, 14, 78, 83, 23, 14, 85, 87, 87, 70, 89, 84, 85, 95, 31, 88, 85, 70, 83, 40, 55, 58, 59, 49, 113, 51, 46, 106};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    private void A0I(C4J c4j, Uri uri) {
        String str;
        String str2;
        long j10;
        long A0U;
        long A0Q;
        if (this.A0L == null || this.A0L.length == 0) {
            return;
        }
        c4j.A0f(8);
        int A01 = II.A01(c4j.A0C());
        long j11 = -9223372036854775807L;
        switch (A01) {
            case 0:
                str = (String) C3M.A01(c4j.A0U());
                str2 = (String) C3M.A01(c4j.A0U());
                if (A0f[2].length() != 2) {
                    throw new RuntimeException();
                }
                A0f[0] = "4yWaL9iFGGaDiXT";
                long A0Q2 = c4j.A0Q();
                j11 = AbstractC10974a.A0U(c4j.A0Q(), 1000000L, A0Q2);
                j10 = this.A0C != -9223372036854775807L ? this.A0C + j11 : -9223372036854775807L;
                A0U = AbstractC10974a.A0U(c4j.A0Q(), 1000L, A0Q2);
                A0Q = c4j.A0Q();
                break;
            case 1:
                long A0Q3 = c4j.A0Q();
                j10 = AbstractC10974a.A0U(c4j.A0R(), 1000000L, A0Q3);
                A0U = AbstractC10974a.A0U(c4j.A0Q(), 1000L, A0Q3);
                A0Q = c4j.A0Q();
                str = (String) C3M.A01(c4j.A0U());
                str2 = (String) C3M.A01(c4j.A0U());
                break;
            default:
                AnonymousClass44.A07(A0B(128, 22, 77), A0B(550, 35, 127) + A01);
                return;
        }
        byte[] bArr = new byte[c4j.A07()];
        c4j.A0k(bArr, 0, c4j.A07());
        int i10 = 0;
        C4J c4j2 = new C4J(this.A0V.A01(new EventMessage(str, str2, A0U, A0Q, bArr)));
        int A07 = c4j2.A07();
        H1[] h1Arr = this.A0L;
        int length = h1Arr.length;
        int i11 = 0;
        while (i11 < length) {
            H1 h12 = h1Arr[i11];
            c4j2.A0f(i10);
            h12.AJu(uri);
            h12.AI7(c4j2, A07);
            i11++;
            i10 = 0;
        }
        if (j10 == -9223372036854775807L) {
            this.A0Y.addLast(new IU(j11, A07));
            this.A03 += A07;
            return;
        }
        if (this.A0T != null) {
            j10 = this.A0T.A05(j10);
        }
        if (this.A0b && this.A0A != -9223372036854775807L) {
            j10 = this.A0A;
        }
        for (H1 h13 : this.A0L) {
            h13.AIA(j10, 1, A07, 0, null);
        }
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static void A0J(C4J c4j, C4J c4j2, String str, C1459Io c1459Io) throws C10532i {
        c4j.A0f(8);
        int A0C = c4j.A0C();
        if (c4j.A0C() != 1936025959) {
            return;
        }
        int A01 = II.A01(A0C);
        if (A0f[2].length() != 2) {
            throw new RuntimeException();
        }
        A0f[0] = "QrVDtjxvyixdHPq";
        if (A01 == 1) {
            c4j.A0g(4);
        }
        if (c4j.A0C() != 1) {
            throw new C10532i(A0B(50, 39, 69));
        }
        c4j2.A0f(8);
        int A0C2 = c4j2.A0C();
        if (c4j2.A0C() != 1936025959) {
            return;
        }
        int A012 = II.A01(A0C2);
        if (A012 == 1) {
            if (c4j2.A0Q() == 0) {
                throw new C10532i(A0B(662, 55, 94));
            }
        } else if (A012 >= 2) {
            c4j2.A0g(4);
        }
        if (c4j2.A0Q() != 1) {
            throw new C10532i(A0B(89, 39, 111));
        }
        c4j2.A0g(1);
        int A0I = c4j2.A0I();
        int i10 = (A0I & 240) >> 4;
        int i11 = A0I & 15;
        boolean z10 = c4j2.A0I() == 1;
        if (z10) {
            int A0I2 = c4j2.A0I();
            byte[] bArr = new byte[16];
            c4j2.A0k(bArr, 0, bArr.length);
            byte[] bArr2 = null;
            if (A0I2 == 0) {
                int A0I3 = c4j2.A0I();
                bArr2 = new byte[A0I3];
                c4j2.A0k(bArr2, 0, A0I3);
            }
            c1459Io.A08 = true;
            c1459Io.A07 = new C1458In(z10, str, A0I2, bArr, i10, i11, bArr2);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x0187, code lost:
        throw new java.lang.RuntimeException();
     */
    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void A0R(com.facebook.ads.redexgen.X.C2557kj r17) throws com.facebook.ads.redexgen.X.C10532i {
        /*
            Method dump skipped, instructions count: 392
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C2549kb.A0R(com.facebook.ads.redexgen.X.kj):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0068, code lost:
        if (r0 != null) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x006a, code lost:
        A0W(r3, r0.A00, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x006f, code lost:
        r0 = r9.A07(1935763823);
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0076, code lost:
        if (r0 == null) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0078, code lost:
        r5 = r0.A00;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0087, code lost:
        if (com.facebook.ads.redexgen.X.C2549kb.A0f[7].charAt(29) == '0') goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0089, code lost:
        com.facebook.ads.redexgen.X.C2549kb.A0f[2] = "tW";
        A0K(r5, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0093, code lost:
        r0 = r9.A07(1936027235);
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x009a, code lost:
        if (r0 == null) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x009c, code lost:
        A0L(r0.A00, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00a1, code lost:
        r1 = r9.A07(1935828848);
        r0 = r9.A07(1936158820);
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00af, code lost:
        if (r1 == null) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00b1, code lost:
        if (r0 == null) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00b3, code lost:
        r2 = r1.A00;
        r1 = r0.A00;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00b7, code lost:
        if (r3 == null) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00b9, code lost:
        r0 = r3.A02;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00bb, code lost:
        A0J(r2, r1, r0, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00be, code lost:
        r5 = r9.A02.size();
        r3 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00c5, code lost:
        if (r3 >= r5) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00c7, code lost:
        r2 = r9.A02.get(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00d4, code lost:
        if (((com.facebook.ads.redexgen.X.II) r2).A00 != 1970628964) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00d6, code lost:
        A0M(r2.A00, r4, r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00db, code lost:
        r3 = r3 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00de, code lost:
        r0 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00e0, code lost:
        com.facebook.ads.redexgen.X.C2549kb.A0f[0] = "kXc0iULHRQw05uA";
        A0K(r5, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0106, code lost:
        if (r0 != null) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x010a, code lost:
        return;
     */
    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 20 out of bounds for length 14
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:135)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:118)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:567)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:39)
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void A0T(com.facebook.ads.redexgen.X.C2557kj r9, android.util.SparseArray<com.facebook.ads.redexgen.X.IV> r10, int r11, byte[] r12, boolean r13) throws com.facebook.ads.redexgen.X.C10532i {
        /*
            Method dump skipped, instructions count: 267
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C2549kb.A0T(com.facebook.ads.redexgen.X.kj, android.util.SparseArray, int, byte[], boolean):void");
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static void A0W(C1458In c1458In, C4J c4j, C1459Io c1459Io) throws C10532i {
        int i10 = c1458In.A00;
        c4j.A0f(8);
        if ((II.A00(c4j.A0C()) & 1) == 1) {
            c4j.A0g(8);
        }
        int A0I = c4j.A0I();
        int A0L = c4j.A0L();
        if (A0L != c1459Io.A00) {
            throw new C10532i(A0B(308, 17, 45) + A0L + A0B(0, 2, 27) + c1459Io.A00);
        }
        int i11 = 0;
        if (A0I == 0) {
            boolean[] zArr = c1459Io.A0F;
            for (int i12 = 0; i12 < A0L; i12++) {
                int A0I2 = c4j.A0I();
                i11 += A0I2;
                zArr[i12] = A0I2 > i10;
            }
        } else {
            i11 = 0 + (A0I * A0L);
            Arrays.fill(c1459Io.A0F, 0, A0L, A0I > i10);
        }
        c1459Io.A02(i11);
    }

    static {
        A0E();
        A0g = new InterfaceC1395Gb() { // from class: com.facebook.ads.redexgen.X.kf
            @Override // com.facebook.ads.redexgen.X.InterfaceC1395Gb
            public final GX[] A5F() {
                return C2549kb.A0b();
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC1395Gb
            public final /* synthetic */ GX[] A5G(Uri uri, Map map) {
                return AbstractC1394Ga.A01(this, uri, map);
            }
        };
        A0i = new byte[]{-94, 57, 79, 82, 90, -101, 79, 20, -94, 68, 108, 66, 124, 100, -115, -12};
        A0h = new C2D().A11(A0B(717, 18, 81)).A14();
    }

    public C2549kb() {
        this(0);
    }

    public C2549kb(int i10) {
        this(i10, null);
    }

    public C2549kb(int i10, C4R c4r) {
        this(i10, c4r, null, null);
    }

    public C2549kb(int i10, C4R c4r, C1457Im c1457Im, DrmInitData drmInitData) {
        this(i10, c4r, c1457Im, drmInitData, Collections.emptyList());
    }

    public C2549kb(int i10, C4R c4r, C1457Im c1457Im, DrmInitData drmInitData, List<C2796or> list) {
        this(i10, c4r, c1457Im, drmInitData, list, null, false, false, false);
    }

    public C2549kb(int i10, C4R c4r, C1457Im c1457Im, DrmInitData drmInitData, List<C2796or> list, H1 h12, boolean z10, boolean z11, boolean z12) {
        this.A0A = -9223372036854775807L;
        this.A0M = (c1457Im != null ? 8 : 0) | i10;
        this.A0T = c4r;
        this.A0W = c1457Im;
        this.A0N = drmInitData;
        this.A0Z = Collections.unmodifiableList(list);
        this.A0U = h12;
        this.A0c = z10;
        this.A0b = z11;
        this.A0a = z12;
        this.A0V = new HO();
        this.A0O = new C4J(16);
        this.A0R = new C4J(AbstractC1410Gq.A03);
        this.A0Q = new C4J(5);
        this.A0P = new C4J();
        this.A0d = new byte[16];
        this.A0S = new C4J(this.A0d);
        this.A0X = new ArrayDeque<>();
        this.A0Y = new ArrayDeque<>();
        this.A0D = new SparseArray<>();
        this.A08 = -9223372036854775807L;
        this.A0B = -9223372036854775807L;
        this.A0C = -9223372036854775807L;
        A0C();
    }

    public static long A01(C4J c4j) {
        c4j.A0f(8);
        int fullAtom = c4j.A0C();
        return II.A01(fullAtom) == 0 ? c4j.A0Q() : c4j.A0R();
    }

    public static long A02(C4J c4j) {
        c4j.A0f(8);
        int fullAtom = c4j.A0C();
        int version = II.A01(fullAtom);
        return version == 1 ? c4j.A0R() : c4j.A0Q();
    }

    public static Pair<Integer, IP> A03(C4J c4j) {
        c4j.A0f(12);
        int defaultSampleDescriptionIndex = c4j.A0C();
        int trackId = c4j.A0L();
        int defaultSampleFlags = c4j.A0L();
        int defaultSampleSize = c4j.A0L();
        int defaultSampleDuration = c4j.A0C();
        return Pair.create(Integer.valueOf(defaultSampleDescriptionIndex), new IP(trackId - 1, defaultSampleFlags, defaultSampleSize, defaultSampleDuration));
    }

    public static DrmInitData A05(List<C2556ki> list) {
        ArrayList arrayList = null;
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            C2556ki c2556ki = list.get(i10);
            int leafChildrenSize = A0f[4].length();
            if (leafChildrenSize != 23) {
                throw new RuntimeException();
            }
            A0f[0] = "gRucWkmmr3YeQcV";
            C2556ki c2556ki2 = c2556ki;
            int leafChildrenSize2 = ((II) c2556ki2).A00;
            if (leafChildrenSize2 == 1886614376) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                byte[] bArr = c2556ki2.A00.A00;
                UUID A02 = AbstractC1450If.A02(bArr);
                if (A02 == null) {
                    AnonymousClass44.A07(A0B(128, 22, 77), A0B(MediaPlayer.MEDIA_PLAYER_OPTION_CMAF_HTTP_REQ_FINISH_TIME, 42, 100));
                } else {
                    arrayList.add(new DrmInitData.SchemeData(A02, A0B(766, 9, 61), bArr));
                }
            }
        }
        if (arrayList == null) {
            return null;
        }
        return new DrmInitData(arrayList);
    }

    private IP A06(SparseArray<IP> sparseArray, int i10) {
        if (sparseArray.size() == 1) {
            return sparseArray.valueAt(0);
        }
        return (IP) C3M.A01(sparseArray.get(i10));
    }

    public static IV A07(SparseArray<IV> sparseArray) {
        IV iv = null;
        long j10 = Long.MAX_VALUE;
        int size = sparseArray.size();
        for (int i10 = 0; i10 < size; i10++) {
            IV valueAt = sparseArray.valueAt(i10);
            if (valueAt.A02 != valueAt.A07.A01) {
                long nextTrackRunOffset = valueAt.A07.A0E[valueAt.A02];
                if (nextTrackRunOffset < j10) {
                    iv = valueAt;
                    j10 = nextTrackRunOffset;
                }
            }
        }
        return iv;
    }

    public static IV A08(SparseArray<IV> sparseArray, int i10, boolean z10) {
        if (sparseArray.size() == 1 && !z10) {
            return sparseArray.valueAt(0);
        }
        return sparseArray.get(i10);
    }

    private final C1457Im A0A(C1457Im c1457Im) {
        return c1457Im;
    }

    private void A0C() {
        this.A02 = 0;
        this.A00 = 0;
    }

    /* JADX WARN: Incorrect condition in loop: B:21:0x007e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void A0D() {
        /*
            r6 = this;
            com.facebook.ads.redexgen.X.H1[] r0 = r6.A0L
            if (r0 != 0) goto L6c
            r0 = 2
            com.facebook.ads.redexgen.X.H1[] r0 = new com.facebook.ads.redexgen.X.H1[r0]
            r6.A0L = r0
            r3 = 0
            com.facebook.ads.redexgen.X.H1 r0 = r6.A0U
            if (r0 == 0) goto L17
            com.facebook.ads.redexgen.X.H1[] r2 = r6.A0L
            int r1 = r3 + 1
            com.facebook.ads.redexgen.X.H1 r0 = r6.A0U
            r2[r3] = r0
            r3 = r1
        L17:
            int r0 = r6.A0M
            r0 = r0 & 4
            if (r0 == 0) goto L4c
            com.facebook.ads.redexgen.X.H1[] r4 = r6.A0L
            int r5 = r3 + 1
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.C2549kb.A0f
            r0 = 7
            r1 = r1[r0]
            r0 = 29
            char r1 = r1.charAt(r0)
            r0 = 48
            if (r1 == r0) goto L66
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C2549kb.A0f
            java.lang.String r1 = "2Ynf6gmdLfe6xE9EEWKUzFfHKl41sL7a"
            r0 = 1
            r2[r0] = r1
            java.lang.String r1 = "AN0qqeacVBgpTr6ZS3JdezHHRUzhKU8l"
            r0 = 5
            r2[r0] = r1
            com.facebook.ads.redexgen.X.GY r2 = r6.A0F
            android.util.SparseArray<com.facebook.ads.redexgen.X.IV> r0 = r6.A0D
            int r1 = r0.size()
            r0 = 5
            com.facebook.ads.redexgen.X.H1 r0 = r2.AJh(r1, r0)
            r4[r3] = r0
            r3 = r5
        L4c:
            com.facebook.ads.redexgen.X.H1[] r0 = r6.A0L
            java.lang.Object[] r0 = java.util.Arrays.copyOf(r0, r3)
            com.facebook.ads.redexgen.X.H1[] r0 = (com.facebook.ads.redexgen.X.H1[]) r0
            r6.A0L = r0
            com.facebook.ads.redexgen.X.H1[] r4 = r6.A0L
            int r3 = r4.length
            r2 = 0
        L5a:
            if (r2 >= r3) goto L6c
            r1 = r4[r2]
            com.facebook.ads.redexgen.X.or r0 = com.facebook.ads.redexgen.X.C2549kb.A0h
            r1.A6W(r0)
            int r2 = r2 + 1
            goto L5a
        L66:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L6c:
            com.facebook.ads.redexgen.X.H1[] r0 = r6.A0K
            if (r0 != 0) goto La2
            java.util.List<com.facebook.ads.redexgen.X.or> r0 = r6.A0Z
            int r0 = r0.size()
            com.facebook.ads.redexgen.X.H1[] r0 = new com.facebook.ads.redexgen.X.H1[r0]
            r6.A0K = r0
            r3 = 0
        L7b:
            com.facebook.ads.redexgen.X.H1[] r0 = r6.A0K
            int r0 = r0.length
            if (r3 >= r0) goto La2
            com.facebook.ads.redexgen.X.GY r2 = r6.A0F
            android.util.SparseArray<com.facebook.ads.redexgen.X.IV> r0 = r6.A0D
            int r0 = r0.size()
            int r1 = r0 + 1
            int r1 = r1 + r3
            r0 = 3
            com.facebook.ads.redexgen.X.H1 r1 = r2.AJh(r1, r0)
            java.util.List<com.facebook.ads.redexgen.X.or> r0 = r6.A0Z
            java.lang.Object r0 = r0.get(r3)
            com.facebook.ads.redexgen.X.or r0 = (com.facebook.ads.redexgen.X.C2796or) r0
            r1.A6W(r0)
            com.facebook.ads.redexgen.X.H1[] r0 = r6.A0K
            r0[r3] = r1
            int r3 = r3 + 1
            goto L7b
        La2:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C2549kb.A0D():void");
    }

    private void A0F(long j10) {
        while (!this.A0Y.isEmpty()) {
            IU removeFirst = this.A0Y.removeFirst();
            this.A03 -= removeFirst.A00;
            long j11 = j10 + removeFirst.A01;
            if (this.A0T != null) {
                j11 = this.A0T.A05(j11);
            }
            for (H1 h12 : this.A0L) {
                h12.AIA(j11, 1, removeFirst.A00, this.A03, null);
            }
        }
    }

    private void A0G(long j10) throws C10532i {
        while (!this.A0X.isEmpty() && this.A0X.peek().A00 == j10) {
            A0P(this.A0X.pop());
        }
        A0C();
    }

    public static void A0H(C4J c4j, int i10, C1459Io c1459Io) throws C10532i {
        c4j.A0f(i10 + 8);
        int fullAtom = c4j.A0C();
        int flags = II.A00(fullAtom);
        int fullAtom2 = flags & 1;
        if (fullAtom2 == 0) {
            int fullAtom3 = flags & 2;
            boolean z10 = fullAtom3 != 0;
            int sampleCount = c4j.A0L();
            int fullAtom4 = c1459Io.A00;
            if (sampleCount == fullAtom4) {
                Arrays.fill(c1459Io.A0F, 0, sampleCount, z10);
                int fullAtom5 = c4j.A07();
                c1459Io.A02(fullAtom5);
                c1459Io.A04(c4j);
                return;
            }
            StringBuilder append = new StringBuilder().append(A0B(308, 17, 45)).append(sampleCount).append(A0B(0, 2, 27));
            int fullAtom6 = c1459Io.A00;
            throw new C10532i(append.append(fullAtom6).toString());
        }
        throw new C10532i(A0B(MediaPlayer.MEDIA_PLAYER_OPTION_BYTEVC1_SW_FORBIDDEN, 56, 17));
    }

    public static void A0K(C4J c4j, C1459Io c1459Io) throws C10532i {
        c4j.A0f(8);
        int flags = c4j.A0C();
        int fullAtom = II.A00(flags) & 1;
        if (fullAtom == 1) {
            c4j.A0g(8);
        }
        int A0L = c4j.A0L();
        if (A0L == 1) {
            int entryCount = II.A01(flags);
            c1459Io.A03 += entryCount == 0 ? c4j.A0Q() : c4j.A0R();
            return;
        }
        throw new C10532i(A0B(605, 29, 113) + A0L);
    }

    public static void A0L(C4J c4j, C1459Io c1459Io) throws C10532i {
        A0H(c4j, 0, c1459Io);
    }

    public static void A0M(C4J c4j, C1459Io c1459Io, byte[] bArr) throws C10532i {
        c4j.A0f(8);
        c4j.A0k(bArr, 0, 16);
        if (!Arrays.equals(bArr, A0i)) {
            return;
        }
        A0H(c4j, 16, c1459Io);
    }

    private void A0N(InterfaceC2585lN interfaceC2585lN) throws IOException {
        int i10 = ((int) this.A07) - this.A00;
        if (this.A0E != null) {
            interfaceC2585lN.readFully(this.A0E.A00, 8, i10);
            A0V(new C2556ki(this.A01, this.A0E), interfaceC2585lN);
        } else {
            interfaceC2585lN.AJJ(i10);
        }
        A0G(interfaceC2585lN.A8f());
    }

    private void A0O(InterfaceC2585lN interfaceC2585lN) throws IOException {
        IV iv = null;
        long j10 = Long.MAX_VALUE;
        int size = this.A0D.size();
        int i10 = 0;
        while (true) {
            if (i10 < size) {
                IV nextTrackBundle = this.A0D.valueAt(i10);
                C1459Io c1459Io = nextTrackBundle.A07;
                if (c1459Io.A0A) {
                    long nextDataOffset = c1459Io.A03;
                    String[] strArr = A0f;
                    if (strArr[3].length() == strArr[6].length()) {
                        break;
                    }
                    A0f[4] = "mIjUpcDFQdM2YkTgY6cnbvy";
                    if (nextDataOffset < j10) {
                        j10 = c1459Io.A03;
                        iv = this.A0D.valueAt(i10);
                    }
                }
                i10++;
            } else if (iv != null) {
                int A8f = (int) (j10 - interfaceC2585lN.A8f());
                if (A8f >= 0) {
                    interfaceC2585lN.AJJ(A8f);
                    iv.A07.A05(interfaceC2585lN);
                    return;
                }
                throw new C10532i(A0B(325, 39, 126));
            } else if (A0f[4].length() == 23) {
                A0f[0] = "NbtoUSPOiQE3wq0";
                this.A02 = 3;
                return;
            }
        }
        throw new RuntimeException();
    }

    private void A0P(C2557kj c2557kj) throws C10532i {
        if (((II) c2557kj).A00 == 1836019574) {
            A0R(c2557kj);
        } else if (((II) c2557kj).A00 == 1836019558) {
            A0Q(c2557kj);
        } else if (this.A0X.isEmpty()) {
        } else {
            this.A0X.peek().A08(c2557kj);
        }
    }

    private void A0Q(C2557kj c2557kj) throws C10532i {
        A0S(c2557kj, this.A0D, this.A0M, this.A0d, this.A0c);
        DrmInitData A05 = this.A0N != null ? null : A05(c2557kj.A02);
        if (A05 != null) {
            int i10 = this.A0D.size();
            for (int trackCount = 0; trackCount < i10; trackCount++) {
                this.A0D.valueAt(trackCount).A07(A05);
            }
        }
        if (this.A0B != -9223372036854775807L) {
            int size = this.A0D.size();
            for (int i11 = 0; i11 < size; i11++) {
                this.A0D.valueAt(i11).A06(this.A0B);
            }
            this.A0B = -9223372036854775807L;
        }
    }

    public static void A0S(C2557kj c2557kj, SparseArray<IV> sparseArray, int i10, byte[] bArr, boolean z10) throws C10532i {
        int size = c2557kj.A01.size();
        for (int i11 = 0; i11 < size; i11++) {
            C2557kj child = c2557kj.A01.get(i11);
            int i12 = ((II) child).A00;
            if (i12 == 1953653094) {
                boolean z11 = true;
                A0T(child, sparseArray, i10, bArr, (size <= 1 || !z10) ? false : false);
            }
        }
    }

    public static void A0U(C2557kj c2557kj, IV iv, long j10, int i10) {
        int i11 = 0;
        int i12 = 0;
        List<C2556ki> list = c2557kj.A02;
        int size = list.size();
        int i13 = 0;
        while (true) {
            String[] strArr = A0f;
            if (strArr[1].charAt(23) != strArr[5].charAt(23)) {
                throw new RuntimeException();
            }
            A0f[0] = "3b9EJYgpciD07do";
            if (i13 < size) {
                C2556ki c2556ki = list.get(i13);
                if (((II) c2556ki).A00 == 1953658222) {
                    C4J trunData = c2556ki.A00;
                    trunData.A0f(12);
                    int A0L = trunData.A0L();
                    if (A0L > 0) {
                        i12 += A0L;
                        i11++;
                    }
                }
                i13++;
            } else {
                iv.A02 = 0;
                iv.A00 = 0;
                iv.A01 = 0;
                iv.A07.A03(i11, i12);
                int i14 = 0;
                int trunStartPosition = 0;
                for (int i15 = 0; i15 < size; i15++) {
                    C2556ki c2556ki2 = list.get(i15);
                    if (((II) c2556ki2).A00 == 1953658222) {
                        trunStartPosition = A00(iv, i14, j10, i10, c2556ki2.A00, trunStartPosition);
                        i14++;
                    }
                }
                return;
            }
        }
    }

    private void A0V(C2556ki c2556ki, InterfaceC2585lN interfaceC2585lN) throws C10532i {
        Uri A9H;
        if (!this.A0X.isEmpty()) {
            this.A0X.peek().A09(c2556ki);
        } else if (((II) c2556ki).A00 == 1936286840) {
            Pair<Long, C2590lT> A04 = A04(c2556ki.A00, interfaceC2585lN.A8f());
            this.A0C = ((Long) A04.first).longValue();
            this.A0F.AIN((InterfaceC1416Gw) A04.second);
            if (A0f[2].length() != 2) {
                throw new RuntimeException();
            }
            A0f[2] = "jw";
            this.A0H = true;
        } else if (((II) c2556ki).A00 != 1701671783 || (A9H = interfaceC2585lN.A9H()) == null) {
        } else {
            A0I(c2556ki.A00, A9H);
        }
    }

    public static boolean A0X(int i10) {
        return i10 == 1836019574 || i10 == 1953653099 || i10 == 1835297121 || i10 == 1835626086 || i10 == 1937007212 || i10 == 1836019558 || i10 == 1953653094 || i10 == 1836475768 || i10 == 1701082227;
    }

    public static boolean A0Y(int i10) {
        if (i10 != 1751411826 && i10 != 1835296868 && i10 != 1836476516 && i10 != 1936286840 && i10 != 1937011556 && i10 != 1952867444 && i10 != 1952868452 && i10 != 1953196132 && i10 != 1953654136 && i10 != 1953658222 && i10 != 1886614376) {
            if (A0f[0].length() != 15) {
                throw new RuntimeException();
            }
            String[] strArr = A0f;
            strArr[1] = "pufslWDHGkolcxIdleA53YlHTmcCni23";
            strArr[5] = "pxTVwd0BvZHkKJbeu8mcyfUHnPvesqsQ";
            if (i10 != 1935763834 && i10 != 1935763823 && i10 != 1936027235 && i10 != 1970628964 && i10 != 1935828848 && i10 != 1936158820 && i10 != 1701606260 && i10 != 1835362404 && i10 != 1701671783) {
                return false;
            }
        }
        return true;
    }

    private boolean A0Z(InterfaceC2585lN interfaceC2585lN) throws IOException {
        if (this.A00 == 0) {
            if (!interfaceC2585lN.AGh(this.A0O.A00, 0, 8, true)) {
                return false;
            }
            this.A00 = 8;
            this.A0O.A0f(0);
            this.A07 = this.A0O.A0Q();
            this.A01 = this.A0O.A0C();
        }
        if (this.A07 == 1) {
            interfaceC2585lN.readFully(this.A0O.A00, 8, 8);
            int headerBytesRemaining = this.A00;
            this.A00 = headerBytesRemaining + 8;
            this.A07 = this.A0O.A0R();
        } else if (this.A07 == 0) {
            long A8G = interfaceC2585lN.A8G();
            int trackCount = (A8G > (-1L) ? 1 : (A8G == (-1L) ? 0 : -1));
            if (trackCount == 0 && !this.A0X.isEmpty()) {
                A8G = this.A0X.peek().A00;
            }
            int trackCount2 = (A8G > (-1L) ? 1 : (A8G == (-1L) ? 0 : -1));
            if (trackCount2 != 0) {
                long A8f = A8G - interfaceC2585lN.A8f();
                int trackCount3 = this.A00;
                this.A07 = A8f + trackCount3;
            }
        }
        if (this.A07 >= this.A00) {
            long A8f2 = interfaceC2585lN.A8f() - this.A00;
            if (this.A01 == 1836019558) {
                int size = this.A0D.size();
                for (int i10 = 0; i10 < size; i10++) {
                    C1459Io c1459Io = this.A0D.valueAt(i10).A07;
                    c1459Io.A02 = A8f2;
                    c1459Io.A03 = A8f2;
                    c1459Io.A04 = A8f2;
                }
            }
            if (this.A01 == 1835295092) {
                this.A0G = null;
                this.A09 = this.A07 + A8f2;
                if (!this.A0H) {
                    this.A0F.AIN(new C2580lI(this.A08, A8f2));
                    this.A0H = true;
                }
                this.A02 = 2;
                return true;
            }
            boolean A0X = A0X(this.A01);
            String[] strArr = A0f;
            if (strArr[3].length() != strArr[6].length()) {
                A0f[7] = "BTpsgrbOJA5y808qoKaZGmPima83kMX9";
                if (A0X) {
                    long A8f3 = (interfaceC2585lN.A8f() + this.A07) - 8;
                    this.A0X.push(new C2557kj(this.A01, A8f3));
                    if (this.A07 == this.A00) {
                        A0G(A8f3);
                    } else {
                        A0C();
                    }
                } else if (A0Y(this.A01)) {
                    if (this.A00 == 8) {
                        if (this.A07 <= SieveCacheKt.NodeLinkMask) {
                            this.A0E = new C4J((int) this.A07);
                            System.arraycopy(this.A0O.A00, 0, this.A0E.A00, 0, 8);
                            this.A02 = 1;
                        } else {
                            throw new C10532i(A0B(MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_RANGE_TIME, 49, 17));
                        }
                    } else {
                        throw new C10532i(A0B(208, 51, 94));
                    }
                } else if (this.A07 <= SieveCacheKt.NodeLinkMask) {
                    this.A0E = null;
                    this.A02 = 1;
                } else {
                    throw new C10532i(A0B(TTVideoEngineInterface.PLAYER_OPTION_SET_FIRST_FRAME_MILLISECOND, 53, 12));
                }
                return true;
            }
            throw new RuntimeException();
        }
        throw new C10532i(A0B(2, 48, 125));
    }

    /* JADX WARN: Code restructure failed: missing block: B:102:0x0315, code lost:
        throw new com.facebook.ads.redexgen.X.C10532i(A0B(190, 18, 94));
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0096, code lost:
        if (r18.A0G.A09() == false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0098, code lost:
        r18.A0G = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x009a, code lost:
        r18.A02 = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x009c, code lost:
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00af, code lost:
        if (r18.A0G.A09() == false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0104, code lost:
        if (r5 != 0) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0106, code lost:
        r10 = r18.A0Q.A00;
        r10[0] = 0;
        r10[1] = 0;
        r10[2] = 0;
        r5 = r11.A01 + 1;
        r3 = 4 - r11.A01;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0118, code lost:
        r15 = r18.A04;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x011c, code lost:
        if (r15 >= r18.A06) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0120, code lost:
        if (r18.A05 != 0) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0122, code lost:
        r19.readFully(r10, r3, r5);
        r18.A0Q.A0f(r13);
        r0 = r18.A0Q.A0C();
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0130, code lost:
        if (r0 < r12) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0132, code lost:
        r18.A05 = r0 - 1;
        r18.A0R.A0f(r13);
        r7.AI7(r18.A0R, r14);
        r7.AI7(r18.A0Q, r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0148, code lost:
        if (r18.A0K.length <= 0) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0154, code lost:
        if (com.facebook.ads.redexgen.X.AbstractC1410Gq.A0I(r11.A07.A0W, r10[r14]) == false) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0156, code lost:
        r0 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0157, code lost:
        r18.A0J = r0;
        r18.A04 += 5;
        r12 = com.facebook.ads.redexgen.X.C2549kb.A0f[2].length();
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0169, code lost:
        if (r12 == 2) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0170, code lost:
        throw new java.lang.RuntimeException();
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0171, code lost:
        r15 = com.facebook.ads.redexgen.X.C2549kb.A0f;
        r15[3] = "rGJs1bdDcV9vWCpHaV2ADCTyGiB9Xi";
        r15[6] = "SO50y9aywvhjzs541";
        r18.A06 += r3;
        r12 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0184, code lost:
        r0 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0188, code lost:
        if (r18.A0J == false) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x018a, code lost:
        r18.A0P.A0d(r18.A05);
        r19.readFully(r18.A0P.A00, r13, r18.A05);
        r7.AI7(r18.A0P, r18.A05);
        r12 = r18.A05;
        r16 = com.facebook.ads.redexgen.X.AbstractC1410Gq.A02(r18.A0P.A00, r18.A0P.A0A());
        r18.A0P.A0f(A0B(com.ss.ttm.player.MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_PRELOAD_GEAR, 10, 83).equals(r11.A07.A0W) ? 1 : 0);
        r18.A0P.A0e(r16);
        com.facebook.ads.redexgen.X.JG.A03(r1, r18.A0P, r18.A0K);
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x01da, code lost:
        r18.A04 += r12;
        r18.A05 -= r12;
        r14 = 4;
        r12 = 1;
        r13 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x01e9, code lost:
        r12 = r18.A05;
        r12 = r7.AI5(r19, r12, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x01fd, code lost:
        if (r5 != 0) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0203, code lost:
        if (r18.A0I == false) goto L101;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0205, code lost:
        com.facebook.ads.redexgen.X.GI.A07(r18.A06, r18.A0S);
        r3 = r18.A0S.A0A();
        r7.AI7(r18.A0S, r3);
        r18.A06 += r3;
        r18.A04 += r3;
        r18.A0I = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0228, code lost:
        if (r18.A04 >= r18.A06) goto L108;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x022a, code lost:
        r11 = r18.A06;
        r11 = r11 - r18.A04;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x023b, code lost:
        if (com.facebook.ads.redexgen.X.C2549kb.A0f[4].length() == 23) goto L106;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x023f, code lost:
        com.facebook.ads.redexgen.X.C2549kb.A0f[4] = "4fzpRPid5Z3e8Rz7esUDMjQ";
        r3 = r7.AI5(r19, r11, false);
        r18.A04 += r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0250, code lost:
        r11 = r8.A0G[r6];
        r8 = null;
        r3 = r18.A0G.A00();
        r11 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x025b, code lost:
        if (r3 == null) goto L79;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x025d, code lost:
        r11 = r11 ? 1 : 0;
        r8 = r3.A01;
        r11 = r11 | 1073741824;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0262, code lost:
        r11 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0264, code lost:
        if (r18.A0G == null) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0266, code lost:
        r11 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x026a, code lost:
        if (r18.A0G.A05 == null) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x026c, code lost:
        r11 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0272, code lost:
        if (r18.A0G.A05.A07 == null) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0274, code lost:
        r6 = r18.A0G.A05.A07.A0W;
        r5 = com.facebook.ads.redexgen.X.C2549kb.A0f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x028e, code lost:
        if (r5[3].length() == r5[6].length()) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0290, code lost:
        com.facebook.ads.redexgen.X.C2549kb.A0f[2] = "aG";
        r11 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x029f, code lost:
        if (r6 != A0B(com.ss.ttvideoengine.TTVideoEngineInterface.PLAYER_OPTION_ENABLE_DECODE_SEI_ONCE, 21, 64)) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x02a1, code lost:
        r11 = r11 ? 1 : 0;
        r11 = r11 | 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x02a3, code lost:
        r0 = r18.A06;
        r5 = r1;
        r7.AIA(r1, r11, r0, 0, r8);
        r18.A0A = r5;
        A0F(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x02b9, code lost:
        if (r18.A0G.A09() != false) goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x02bb, code lost:
        r2 = com.facebook.ads.redexgen.X.C2549kb.A0f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x02ce, code lost:
        if (r2[1].charAt(23) == r2[5].charAt(23)) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x02d0, code lost:
        r18.A0G = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x02d2, code lost:
        r18.A02 = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x02d6, code lost:
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x02d7, code lost:
        r2 = com.facebook.ads.redexgen.X.C2549kb.A0f;
        r2[1] = "si2y9gsn9mC0ma4HRQ4DLaiHkSELP0XP";
        r2[5] = "aeCrUYztm6cMo33HVXFI6qvHQZYHBxKr";
        r18.A0G = null;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean A0a(com.facebook.ads.redexgen.X.InterfaceC2585lN r19) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 790
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C2549kb.A0a(com.facebook.ads.redexgen.X.lN):boolean");
    }

    public static /* synthetic */ GX[] A0b() {
        return new GX[]{new C2549kb()};
    }

    @Override // com.facebook.ads.redexgen.X.GX
    public final void AA4(GY gy) {
        this.A0F = gy;
        if (this.A0W != null) {
            IV iv = new IV(gy.AJh(0, this.A0W.A03));
            iv.A08(this.A0W, new IP(0, 0, 0, 0));
            this.A0D.put(0, iv);
            A0D();
            this.A0F.A6G();
        }
    }

    @Override // com.facebook.ads.redexgen.X.GX
    public final int AGb(InterfaceC2585lN interfaceC2585lN, C1413Gt c1413Gt) throws IOException {
        while (true) {
            int i10 = this.A02;
            if (A0f[0].length() == 15) {
                String[] strArr = A0f;
                strArr[3] = "yYIiClYY3RZS73RDJ5vLPk2bDdZFXU";
                strArr[6] = "bGm4sUzBrXbQjG5ES";
                switch (i10) {
                    case 0:
                        if (A0Z(interfaceC2585lN)) {
                            break;
                        } else {
                            return -1;
                        }
                    case 1:
                        A0N(interfaceC2585lN);
                        break;
                    case 2:
                        A0O(interfaceC2585lN);
                        break;
                    default:
                        if (!A0a(interfaceC2585lN)) {
                            break;
                        } else {
                            return 0;
                        }
                }
            } else {
                throw new RuntimeException();
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.GX
    public final void AGr() {
    }

    @Override // com.facebook.ads.redexgen.X.GX
    public final void AIM(long j10, long j11) {
        int size = this.A0D.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.A0D.valueAt(i10).A05();
        }
        this.A0Y.clear();
        this.A03 = 0;
        this.A0B = j11;
        this.A0X.clear();
        this.A0I = false;
        A0C();
    }

    @Override // com.facebook.ads.redexgen.X.GX
    public final boolean AJL(InterfaceC2585lN interfaceC2585lN) throws IOException {
        return AbstractC1455Ik.A01(interfaceC2585lN);
    }
}
