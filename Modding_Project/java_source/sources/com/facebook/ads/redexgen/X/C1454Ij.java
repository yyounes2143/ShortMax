package com.facebook.ads.redexgen.X;

import com.facebook.ads.androidx.media3.common.Metadata;
import com.facebook.ads.androidx.media3.extractor.metadata.mp4.SlowMotionData;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.jvm.internal.ByteCompanionObject;
/* renamed from: com.facebook.ads.redexgen.X.Ij  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1454Ij {
    public static byte[] A03;
    public static String[] A04 = {"1LFyGIpszZgsQUUW5R18ay4ATJEAL43c", "dt6orGbglcsjMqs", "9FFDgagoC1", "foXErnBO9GEWWKnhx2CBLj59I1mQsasl", "8wc6iy8fDBcca8zNmQv", "", "jjxV28nHyp6my1wOvIi", "qfRjwVGa5Ot2KmC8yJE9Z4CCjcQdKZvd"};
    public static final C2468jH A05;
    public static final C2468jH A06;
    public int A01;
    public final List<C1451Ig> A02 = new ArrayList();
    public int A00 = 0;

    public static String A02(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A03, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            byte b10 = (byte) ((copyOfRange[i13] ^ i12) ^ 58);
            if (A04[0].charAt(18) != '1') {
                throw new RuntimeException();
            }
            A04[1] = "QzkInJPgctLD5w2";
            copyOfRange[i13] = b10;
        }
        return new String(copyOfRange);
    }

    public static void A03() {
        A03 = new byte[]{45, 10, 18, 5, 8, 13, 0, 68, 55, 33, 34, 68, 10, 5, 9, 1, 56, 7, 4, 28, 38, 4, 31, 2, 4, 5, 52, 47, 10, 31, 10, 93, 123, 126, 107, 124, 81, 93, 98, 97, 121, 67, 97, 122, 103, 97, 96, 81, 76, 73, 67, 94, 120, 125, 104, ByteCompanionObject.MAX_VALUE, 82, 94, 97, 98, 122, 64, 98, 121, 100, 98, 99, 82, 73, 108, 121, 108, 50, 20, 17, 4, 19, 62, 50, 13, 14, 22, 44, 14, 21, 8, 14, 15, 62, 37, 4, 7, 13, 8, 2, 10, 4, 19, 8, 15, 6, 62, 46, 15, 65, 103, 98, 119, 96, 77, 65, 126, 125, 101, 95, 125, 102, 123, 125, 124, 77, 87, 118, 123, 102, 77, 86, 115, 102, 115};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 14 out of bounds for length 12
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:135)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:118)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:567)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:39)
     */
    private void A06(InterfaceC2585lN interfaceC2585lN, List<Metadata.Entry> list) throws IOException {
        long A8f = interfaceC2585lN.A8f();
        int A8G = (int) ((interfaceC2585lN.A8G() - interfaceC2585lN.A8f()) - this.A01);
        C4J c4j = new C4J(A8G);
        interfaceC2585lN.readFully(c4j.A0l(), 0, A8G);
        for (int i10 = 0; i10 < this.A02.size(); i10++) {
            C1451Ig c1451Ig = this.A02.get(i10);
            c4j.A0f((int) (c1451Ig.A02 - A8f));
            c4j.A0g(4);
            int A0E = c4j.A0E();
            String[] strArr = A04;
            if (strArr[6].length() != strArr[4].length()) {
                throw new RuntimeException();
            }
            A04[7] = "1HViS9NC9rn2qgqFvoB7LQiD1FLq6ChH";
            int A00 = A00(c4j.A0W(A0E));
            int i11 = c1451Ig.A01 - (A0E + 8);
            switch (A00) {
                case 2192:
                    list.add(A01(c4j, i11));
                    break;
                case 2816:
                case 2817:
                case 2819:
                case 2820:
                    break;
                default:
                    throw new IllegalStateException();
            }
        }
    }

    static {
        A03();
        A06 = C2468jH.A02(':');
        A05 = C2468jH.A02('*');
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static int A00(String str) throws C10532i {
        char c10;
        switch (str.hashCode()) {
            case -1711564334:
                if (str.equals(A02(16, 15, 81))) {
                    c10 = 0;
                    break;
                }
                c10 = 65535;
                break;
            case -1332107749:
                if (str.equals(A02(104, 26, 40))) {
                    c10 = 3;
                    break;
                }
                c10 = 65535;
                break;
            case -1251387154:
                if (str.equals(A02(51, 21, 55))) {
                    c10 = 1;
                    break;
                }
                c10 = 65535;
                break;
            case -830665521:
                if (str.equals(A02(72, 32, 91))) {
                    c10 = 4;
                    break;
                }
                c10 = 65535;
                break;
            case 1760745220:
                if (str.equals(A02(31, 20, 52))) {
                    c10 = 2;
                    break;
                }
                c10 = 65535;
                break;
            default:
                c10 = 65535;
                break;
        }
        switch (c10) {
            case 0:
                return 2192;
            case 1:
                return 2816;
            case 2:
                return 2817;
            case 3:
                return 2819;
            case 4:
                return 2820;
            default:
                throw C10532i.A01(A02(0, 16, 94), null);
        }
    }

    public static SlowMotionData A01(C4J c4j, int i10) throws C10532i {
        List<SlowMotionData.Segment> segments = new ArrayList<>();
        String dataString = c4j.A0W(i10);
        List<String> A062 = A05.A06(dataString);
        for (int i11 = 0; i11 < A062.size(); i11++) {
            List<String> A063 = A06.A06(A062.get(i11));
            if (A063.size() == 3) {
                try {
                    long parseLong = Long.parseLong(A063.get(0));
                    long startTimeMs = Long.parseLong(A063.get(1));
                    segments.add(new SlowMotionData.Segment(parseLong, startTimeMs, 1 << (Integer.parseInt(A063.get(2)) - 1)));
                } catch (NumberFormatException e10) {
                    throw C10532i.A01(null, e10);
                }
            } else {
                throw C10532i.A01(null, null);
            }
        }
        return new SlowMotionData(segments);
    }

    private void A04(InterfaceC2585lN interfaceC2585lN, C1413Gt c1413Gt) throws IOException {
        C4J c4j = new C4J(8);
        interfaceC2585lN.readFully(c4j.A0l(), 0, 8);
        this.A01 = c4j.A0E() + 8;
        if (c4j.A0C() != 1397048916) {
            c1413Gt.A00 = 0L;
            return;
        }
        c1413Gt.A00 = interfaceC2585lN.A8f() - (this.A01 - 12);
        this.A00 = 2;
    }

    private void A05(InterfaceC2585lN interfaceC2585lN, C1413Gt c1413Gt) throws IOException {
        long A8G = interfaceC2585lN.A8G();
        int i10 = (this.A01 - 12) - 8;
        C4J c4j = new C4J(i10);
        interfaceC2585lN.readFully(c4j.A0l(), 0, i10);
        for (int i11 = 0; i11 < i10 / 12; i11++) {
            c4j.A0g(2);
            int i12 = c4j.A0a();
            switch (i12) {
                case 2192:
                case 2816:
                case 2817:
                case 2819:
                case 2820:
                    long streamLength = this.A01;
                    long j10 = A8G - streamLength;
                    long streamLength2 = c4j.A0E();
                    int size = c4j.A0E();
                    this.A02.add(new C1451Ig(i12, j10 - streamLength2, size));
                    break;
                default:
                    c4j.A0g(8);
                    break;
            }
        }
        if (this.A02.isEmpty()) {
            c1413Gt.A00 = 0L;
            return;
        }
        this.A00 = 3;
        long streamLength3 = this.A02.get(0).A02;
        c1413Gt.A00 = streamLength3;
    }

    public final int A07(InterfaceC2585lN interfaceC2585lN, C1413Gt c1413Gt, List<Metadata.Entry> slowMotionMetadataEntries) throws IOException {
        long j10 = 0;
        switch (this.A00) {
            case 0:
                long A8G = interfaceC2585lN.A8G();
                if (A8G != -1 && A8G >= 8) {
                    j10 = A8G - 8;
                }
                c1413Gt.A00 = j10;
                this.A00 = 1;
                break;
            case 1:
                A04(interfaceC2585lN, c1413Gt);
                break;
            case 2:
                A05(interfaceC2585lN, c1413Gt);
                break;
            case 3:
                A06(interfaceC2585lN, slowMotionMetadataEntries);
                c1413Gt.A00 = 0L;
                break;
            default:
                throw new IllegalStateException();
        }
        return 1;
    }

    public final void A08() {
        this.A02.clear();
        this.A00 = 0;
    }
}
