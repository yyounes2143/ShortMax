package com.facebook.ads.redexgen.X;

import android.net.Uri;
import androidx.collection.SieveCacheKt;
import com.facebook.ads.androidx.media3.common.Metadata;
import com.facebook.ads.androidx.media3.extractor.metadata.mp4.MotionPhotoMetadata;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
/* renamed from: com.facebook.ads.redexgen.X.kY  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C2546kY implements GX, InterfaceC1416Gw {
    public static byte[] A0Q;
    public static String[] A0R = {"uzhMW", "LbToze1ZyMStOzMPMggUyU89k761Fydj", "roznHbdGo", "zeOiwqyw9G80TO", "hwgMtT9WWej", "AZ5CtgA3jsgDmrh", "c4g75mNjYzBkznfgxB8HcDFPfSogi", "Prtl1ARtkjOsoD"};
    public static final InterfaceC1395Gb A0S;
    public int A00;
    public int A01;
    public int A02;
    public int A03;
    public int A04;
    public int A05;
    public int A06;
    public int A07;
    public int A08;
    public long A09;
    @MetaExoPlayerCustomization(type = {"NEW_CLASS_ARG"}, value = "D54927862 get video/audio duration for progressive")
    public long A0A;
    public long A0B;
    @MetaExoPlayerCustomization(type = {"NEW_CLASS_ARG"}, value = "D54927862 get video/audio duration for progressive")
    public long A0C;
    public C4J A0D;
    public GY A0E;
    public MotionPhotoMetadata A0F;
    public C1447Ic[] A0G;
    public long[][] A0H;
    public final int A0I;
    public final C4J A0J;
    public final C4J A0K;
    public final C4J A0L;
    public final C4J A0M;
    public final C1454Ij A0N;
    public final ArrayDeque<C2557kj> A0O;
    public final List<Metadata.Entry> A0P;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 25 out of bounds for length 24
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.restartVar(DebugInfoParser.java:193)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:141)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:118)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:567)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:39)
     */
    private int A03(InterfaceC2585lN interfaceC2585lN, C1413Gt c1413Gt) throws IOException {
        int i10;
        long A8f = interfaceC2585lN.A8f();
        if (this.A08 == -1) {
            this.A08 = A01(A8f);
            if (this.A08 == -1) {
                return -1;
            }
        }
        C1447Ic c1447Ic = this.A0G[this.A08];
        H1 h12 = c1447Ic.A01;
        int i11 = c1447Ic.A00;
        long j10 = c1447Ic.A04.A06[i11];
        int i12 = c1447Ic.A04.A05[i11];
        H2 h22 = c1447Ic.A02;
        long j11 = (j10 - A8f) + this.A05;
        if (j11 < 0 || j11 >= 262144) {
            c1413Gt.A00 = j10;
            return 1;
        }
        int i13 = c1447Ic.A03.A02;
        if (A0R[2].length() != 19) {
            A0R[6] = "rX6gisAdcV7LBeXwmOhQV8Eb98OXk";
            if (i13 == 1) {
                j11 += 8;
                if (A0R[6].length() == 29) {
                    String[] strArr = A0R;
                    strArr[3] = "KKgaKTwS1RwNPE";
                    strArr[7] = "5hDvshmtbzc6vz";
                    i12 -= 8;
                }
            }
            interfaceC2585lN.AJJ((int) j11);
            if (c1447Ic.A03.A01 != 0) {
                byte[] A0l = this.A0K.A0l();
                A0l[0] = 0;
                A0l[1] = 0;
                A0l[2] = 0;
                int i14 = c1447Ic.A03.A01;
                int i15 = 4 - c1447Ic.A03.A01;
                while (this.A06 < i12) {
                    if (this.A07 == 0) {
                        interfaceC2585lN.readFully(A0l, i15, i14);
                        this.A05 += i14;
                        this.A0K.A0f(0);
                        int A0C = this.A0K.A0C();
                        if (A0C < 0) {
                            throw C10532i.A01(A09(48, 18, 118), null);
                        }
                        this.A07 = A0C;
                        this.A0L.A0f(0);
                        h12.AI7(this.A0L, 4);
                        this.A06 += 4;
                        i12 += i15;
                    } else {
                        int AI5 = h12.AI5(interfaceC2585lN, this.A07, false);
                        this.A05 += AI5;
                        this.A06 += AI5;
                        this.A07 -= AI5;
                    }
                }
            } else {
                if (A09(66, 9, 68).equals(c1447Ic.A03.A07.A0W)) {
                    if (this.A06 == 0) {
                        GI.A07(i12, this.A0M);
                        h12.AI7(this.A0M, 7);
                        this.A06 += 7;
                    }
                    i12 += 7;
                } else if (h22 != null) {
                    h22.A03(interfaceC2585lN);
                }
                while (this.A06 < i12) {
                    int AI52 = h12.AI5(interfaceC2585lN, i12 - this.A06, false);
                    this.A05 += AI52;
                    this.A06 += AI52;
                    this.A07 -= AI52;
                }
            }
            long j12 = c1447Ic.A04.A07[i11];
            int i16 = c1447Ic.A04.A04[i11];
            if (A0R[4].length() == 11) {
                String[] strArr2 = A0R;
                strArr2[5] = "dniiMzQMBKOANx9";
                strArr2[0] = "Fj7cY";
                if (h22 != null) {
                    i10 = 0;
                    h22.A04(h12, j12, i16, i12, 0, null);
                    if (i11 + 1 == c1447Ic.A04.A01) {
                        h22.A05(h12, null);
                    }
                } else {
                    i10 = 0;
                    h12.AIA(j12, i16, i12, 0, null);
                }
                c1447Ic.A00++;
                this.A08 = -1;
                this.A05 = i10;
                this.A06 = i10;
                this.A07 = i10;
                return i10;
            }
        }
        throw new RuntimeException();
    }

    public static String A09(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A0Q, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] - i12) - 83);
        }
        return new String(copyOfRange);
    }

    public static void A0C() {
        A0Q = new byte[]{-47, 4, -1, -3, -80, 3, -7, 10, -11, -80, -4, -11, 3, 3, -80, 4, -8, -15, -2, -80, -8, -11, -15, -12, -11, 2, -80, -4, -11, -2, -9, 4, -8, -80, -72, 5, -2, 3, 5, 0, 0, -1, 2, 4, -11, -12, -71, -66, 18, 55, 63, 42, 53, 50, 45, -23, 23, 10, 21, -23, 53, 46, 55, 48, 61, 49, -8, 12, -5, 0, 6, -58, -8, -6, -53, 49, 69, 52, 57, 63, -1, 68, 66, 69, 53, -3, 56, 52};
    }

    static {
        A0C();
        A0S = new InterfaceC1395Gb() { // from class: com.facebook.ads.redexgen.X.kZ
            @Override // com.facebook.ads.redexgen.X.InterfaceC1395Gb
            public final GX[] A5F() {
                return C2546kY.A0M();
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC1395Gb
            public final /* synthetic */ GX[] A5G(Uri uri, Map map) {
                return AbstractC1394Ga.A01(this, uri, map);
            }
        };
    }

    public C2546kY() {
        this(0);
    }

    public C2546kY(int i10) {
        this.A0I = i10;
        this.A04 = (i10 & 4) != 0 ? 3 : 0;
        this.A0N = new C1454Ij();
        this.A0P = new ArrayList();
        this.A0J = new C4J(16);
        this.A0O = new ArrayDeque<>();
        this.A0L = new C4J(AbstractC1410Gq.A03);
        this.A0K = new C4J(4);
        this.A0M = new C4J();
        this.A08 = -1;
        this.A0E = GY.A00;
        this.A0G = new C1447Ic[0];
    }

    public static int A00(int i10) {
        switch (i10) {
            case 1751476579:
                return 2;
            case 1903435808:
                if (A0R[6].length() != 29) {
                    throw new RuntimeException();
                }
                A0R[1] = "rbgKKZbH0NS3XFJda55b1nN6iCZjcLPR";
                return 1;
            default:
                if (A0R[6].length() != 29) {
                    throw new RuntimeException();
                }
                A0R[4] = "05jGjYjRxbz";
                return 0;
        }
    }

    private int A01(long j10) {
        long j11 = Long.MAX_VALUE;
        int preferredTrackIndex = 1;
        int i10 = -1;
        long sampleOffset = Long.MAX_VALUE;
        long j12 = Long.MAX_VALUE;
        int i11 = 1;
        int trackIndex = -1;
        int i12 = 0;
        while (true) {
            C1447Ic[] c1447IcArr = this.A0G;
            String[] strArr = A0R;
            if (strArr[3].length() != strArr[7].length()) {
                throw new RuntimeException();
            }
            A0R[6] = "Fcko3uaud46cO6nUcug7HhLZFNYBY";
            if (i12 < c1447IcArr.length) {
                C1447Ic c1447Ic = this.A0G[i12];
                int i13 = c1447Ic.A00;
                if (i13 != c1447Ic.A04.A01) {
                    long j13 = c1447Ic.A04.A06[i13];
                    long minAccumulatedBytes = ((long[][]) AbstractC10974a.A0f(this.A0H))[i12][i13];
                    long j14 = j13 - j10;
                    int i14 = (j14 < 0 || j14 >= 262144) ? 1 : 0;
                    if ((i14 == 0 && preferredTrackIndex != 0) || (i14 == preferredTrackIndex && j14 < j11)) {
                        preferredTrackIndex = i14;
                        j11 = j14;
                        i10 = i12;
                        if (A0R[6].length() != 29) {
                            String[] strArr2 = A0R;
                            strArr2[5] = "nNk7RawiIyahd9Y";
                            strArr2[0] = "017pL";
                            sampleOffset = minAccumulatedBytes;
                        } else {
                            A0R[1] = "1bC0in6G1ApWSL3PegJBmoVzHl6EE3tw";
                            sampleOffset = minAccumulatedBytes;
                        }
                    }
                    if (minAccumulatedBytes < j12) {
                        j12 = minAccumulatedBytes;
                        i11 = i14;
                        trackIndex = i12;
                    }
                }
                i12++;
            } else if (j12 == Long.MAX_VALUE || i11 == 0) {
                return i10;
            } else {
                int i15 = (sampleOffset > (10485760 + j12) ? 1 : (sampleOffset == (10485760 + j12) ? 0 : -1));
                if (A0R[1].charAt(1) == 'b') {
                    A0R[1] = "AbIM1W3wiFJMRqsWOI3P0CqvLybO2M00";
                    if (i15 < 0) {
                        return i10;
                    }
                } else if (i15 < 0) {
                    return i10;
                }
                return trackIndex;
            }
        }
    }

    public static int A02(C4J c4j) {
        c4j.A0f(8);
        int majorBrand = A00(c4j.A0C());
        if (majorBrand != 0) {
            return majorBrand;
        }
        c4j.A0g(4);
        while (c4j.A07() > 0) {
            int majorBrand2 = A00(c4j.A0C());
            if (majorBrand2 != 0) {
                return majorBrand2;
            }
        }
        return 0;
    }

    private int A04(InterfaceC2585lN interfaceC2585lN, C1413Gt c1413Gt) throws IOException {
        int A07 = this.A0N.A07(interfaceC2585lN, c1413Gt, this.A0P);
        if (A07 == 1) {
            int result = (c1413Gt.A00 > 0L ? 1 : (c1413Gt.A00 == 0L ? 0 : -1));
            if (result == 0) {
                A0A();
            }
        }
        return A07;
    }

    public static int A05(C1460Ip c1460Ip, long j10) {
        int A00 = c1460Ip.A00(j10);
        if (A00 == -1) {
            return c1460Ip.A01(j10);
        }
        return A00;
    }

    public static long A06(C1460Ip c1460Ip, long j10, long j11) {
        int A05 = A05(c1460Ip, j10);
        if (A05 == -1) {
            return j11;
        }
        return Math.min(c1460Ip.A06[A05], j11);
    }

    private final C1415Gv A07(long j10, int i10) {
        long j11;
        long j12;
        int mainTrackIndex;
        if (this.A0G.length == 0) {
            return new C1415Gv(C1417Gx.A04);
        }
        long j13 = -9223372036854775807L;
        long j14 = -1;
        int i11 = i10 != -1 ? i10 : this.A03;
        if (i11 != -1) {
            C1460Ip c1460Ip = this.A0G[i11].A04;
            int A05 = A05(c1460Ip, j10);
            if (A05 == -1) {
                return new C1415Gv(C1417Gx.A04);
            }
            j12 = c1460Ip.A07[A05];
            j11 = c1460Ip.A06[A05];
            int i12 = (j12 > j10 ? 1 : (j12 == j10 ? 0 : -1));
            if (A0R[6].length() != 29) {
                throw new RuntimeException();
            }
            A0R[1] = "zbT5rN6sguJCvWwII8HLCHwSkH7sQNQT";
            if (i12 < 0 && A05 < c1460Ip.A01 - 1 && (mainTrackIndex = c1460Ip.A01(j10)) != -1 && mainTrackIndex != A05) {
                j13 = c1460Ip.A07[mainTrackIndex];
                j14 = c1460Ip.A06[mainTrackIndex];
            }
        } else {
            j11 = Long.MAX_VALUE;
            if (A0R[4].length() != 11) {
                j12 = j10;
            } else {
                A0R[2] = "SenK5aC";
                j12 = j10;
            }
        }
        if (i10 == -1) {
            for (int i13 = 0; i13 < this.A0G.length; i13++) {
                if (i13 != this.A03) {
                    C1460Ip sampleTable = this.A0G[i13].A04;
                    j11 = A06(sampleTable, j12, j11);
                    if (j13 != -9223372036854775807L) {
                        j14 = A06(sampleTable, j13, j14);
                    }
                }
            }
        }
        C1417Gx c1417Gx = new C1417Gx(j12, j11);
        if (j13 == -9223372036854775807L) {
            return new C1415Gv(c1417Gx);
        }
        return new C1415Gv(c1417Gx, new C1417Gx(j13, j14));
    }

    public static /* synthetic */ C1457Im A08(C1457Im c1457Im) {
        return c1457Im;
    }

    private void A0A() {
        this.A04 = 0;
        this.A00 = 0;
    }

    private void A0B() {
        if (this.A02 == 2 && (this.A0I & 2) != 0) {
            this.A0E.AJh(0, 4).A6W(new C2D().A0v(this.A0F == null ? null : new Metadata(this.A0F)).A14());
            this.A0E.A6G();
            this.A0E.AIN(new C2580lI(-9223372036854775807L));
        }
    }

    private void A0D(long j10) throws C10532i {
        while (!this.A0O.isEmpty() && this.A0O.peek().A00 == j10) {
            C2557kj pop = this.A0O.pop();
            if (((II) pop).A00 == 1836019574) {
                A0G(pop);
                this.A0O.clear();
                this.A04 = 2;
            } else if (!this.A0O.isEmpty()) {
                C2557kj containerAtom = this.A0O.peek();
                containerAtom.A08(pop);
            }
        }
        if (this.A04 != 2) {
            A0A();
        }
    }

    private void A0E(long j10) {
        if (this.A01 == 1836086884) {
            this.A0F = new MotionPhotoMetadata(0L, j10, -9223372036854775807L, j10 + this.A00, this.A09 - this.A00);
        }
    }

    private void A0F(InterfaceC2585lN interfaceC2585lN) throws IOException {
        this.A0M.A0d(8);
        interfaceC2585lN.AG9(this.A0M.A0l(), 0, 8);
        IO.A0Q(this.A0M);
        interfaceC2585lN.AJJ(this.A0M.A09());
        interfaceC2585lN.AI1();
    }

    /* JADX WARN: Incorrect condition in loop: B:58:0x0138 */
    @com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization(type = {"FEATURE_LOGIC"}, value = "Adding average bitrate calculation logic")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void A0G(com.facebook.ads.redexgen.X.C2557kj r36) throws com.facebook.ads.redexgen.X.C10532i {
        /*
            Method dump skipped, instructions count: 462
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C2546kY.A0G(com.facebook.ads.redexgen.X.kj):void");
    }

    private void A0H(C1447Ic c1447Ic, long j10) {
        C1460Ip c1460Ip = c1447Ic.A04;
        int sampleIndex = c1460Ip.A00(j10);
        if (sampleIndex == -1) {
            sampleIndex = c1460Ip.A01(j10);
        }
        c1447Ic.A00 = sampleIndex;
        if (A0R[2].length() == 19) {
            throw new RuntimeException();
        }
        A0R[2] = "DxqZc2lJMNLNZhW19Xb8kO";
    }

    public static boolean A0I(int i10) {
        return i10 == 1836019574 || i10 == 1953653099 || i10 == 1835297121 || i10 == 1835626086 || i10 == 1937007212 || i10 == 1701082227 || i10 == 1835365473;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x006d, code lost:
        if (r4 != 1937007471) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0072, code lost:
        if (r4 == 1668232756) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0077, code lost:
        if (r4 == 1953196132) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x007c, code lost:
        if (r4 == 1718909296) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0081, code lost:
        if (r4 == 1969517665) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0086, code lost:
        if (r4 == 1801812339) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x008b, code lost:
        if (r4 != 1768715124) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x008f, code lost:
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0091, code lost:
        if (r4 != 1937007471) goto L32;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean A0J(int r4) {
        /*
            r0 = 1835296868(0x6d646864, float:4.418049E27)
            if (r4 == r0) goto L8d
            r0 = 1836476516(0x6d766864, float:4.7662196E27)
            if (r4 == r0) goto L8d
            r3 = 1751411826(0x68646c72, float:4.3148E24)
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.C2546kY.A0R
            r0 = 4
            r0 = r1[r0]
            int r1 = r0.length()
            r0 = 11
            if (r1 == r0) goto L20
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L20:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C2546kY.A0R
            java.lang.String r1 = "UHuXZ9PGVGxrhu"
            r0 = 3
            r2[r0] = r1
            java.lang.String r1 = "Sv1JTBT1egKeuo"
            r0 = 7
            r2[r0] = r1
            if (r4 == r3) goto L8d
            r0 = 1937011556(0x73747364, float:1.9367383E31)
            if (r4 == r0) goto L8d
            r0 = 1937011827(0x73747473, float:1.9367711E31)
            if (r4 == r0) goto L8d
            r0 = 1937011571(0x73747373, float:1.9367401E31)
            if (r4 == r0) goto L8d
            r0 = 1668576371(0x63747473, float:4.5093966E21)
            if (r4 == r0) goto L8d
            r0 = 1701606260(0x656c7374, float:6.9788014E22)
            if (r4 == r0) goto L8d
            r0 = 1937011555(0x73747363, float:1.9367382E31)
            if (r4 == r0) goto L8d
            r0 = 1937011578(0x7374737a, float:1.936741E31)
            if (r4 == r0) goto L8d
            r0 = 1937013298(0x73747a32, float:1.9369489E31)
            if (r4 == r0) goto L8d
            r3 = 1937007471(0x7374636f, float:1.9362445E31)
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.C2546kY.A0R
            r0 = 2
            r0 = r1[r0]
            int r1 = r0.length()
            r0 = 19
            if (r1 == r0) goto L91
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C2546kY.A0R
            java.lang.String r1 = "0EWWhWMRQ7MgS85x4CKboIorprSqD"
            r0 = 6
            r2[r0] = r1
            if (r4 == r3) goto L8d
        L6f:
            r0 = 1668232756(0x636f3634, float:4.4126776E21)
            if (r4 == r0) goto L8d
            r0 = 1953196132(0x746b6864, float:7.46037E31)
            if (r4 == r0) goto L8d
            r0 = 1718909296(0x66747970, float:2.8862439E23)
            if (r4 == r0) goto L8d
            r0 = 1969517665(0x75647461, float:2.8960062E32)
            if (r4 == r0) goto L8d
            r0 = 1801812339(0x6b657973, float:2.7741754E26)
            if (r4 == r0) goto L8d
            r0 = 1768715124(0x696c7374, float:1.7865732E25)
            if (r4 != r0) goto L8f
        L8d:
            r0 = 1
        L8e:
            return r0
        L8f:
            r0 = 0
            goto L8e
        L91:
            if (r4 == r3) goto L8d
            goto L6f
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C2546kY.A0J(int):boolean");
    }

    private boolean A0K(InterfaceC2585lN interfaceC2585lN) throws IOException {
        C2557kj containerAtom;
        if (this.A00 == 0) {
            if (!interfaceC2585lN.AGh(this.A0J.A0l(), 0, 8, true)) {
                A0B();
                return false;
            }
            this.A00 = 8;
            this.A0J.A0f(0);
            this.A09 = this.A0J.A0Q();
            this.A01 = this.A0J.A0C();
        }
        if (this.A09 == 1) {
            if (A0R[2].length() == 19) {
                throw new RuntimeException();
            }
            A0R[2] = "uEfPCG8cZZkUCN4sq";
            interfaceC2585lN.readFully(this.A0J.A0l(), 8, 8);
            int headerBytesRemaining = this.A00;
            this.A00 = headerBytesRemaining + 8;
            this.A09 = this.A0J.A0R();
        } else if (this.A09 == 0) {
            long A8G = interfaceC2585lN.A8G();
            if (A8G == -1 && (containerAtom = this.A0O.peek()) != null) {
                A8G = containerAtom.A00;
            }
            if (A8G != -1) {
                this.A09 = (A8G - interfaceC2585lN.A8f()) + this.A00;
            }
        }
        if (this.A09 >= this.A00) {
            if (A0I(this.A01)) {
                long A8f = (interfaceC2585lN.A8f() + this.A09) - this.A00;
                if (this.A09 != this.A00 && this.A01 == 1835365473) {
                    A0F(interfaceC2585lN);
                }
                this.A0O.push(new C2557kj(this.A01, A8f));
                if (this.A09 == this.A00) {
                    A0D(A8f);
                } else {
                    A0A();
                }
            } else if (A0J(this.A01)) {
                C3M.A08(this.A00 == 8);
                C3M.A08(this.A09 <= SieveCacheKt.NodeLinkMask);
                C4J c4j = new C4J((int) this.A09);
                C4J atomData = this.A0J;
                System.arraycopy(atomData.A0l(), 0, c4j.A0l(), 0, 8);
                this.A0D = c4j;
                this.A04 = 1;
            } else {
                A0E(interfaceC2585lN.A8f() - this.A00);
                this.A0D = null;
                this.A04 = 1;
            }
            return true;
        }
        throw C10532i.A00(A09(0, 48, 61));
    }

    private boolean A0L(InterfaceC2585lN interfaceC2585lN, C1413Gt c1413Gt) throws IOException {
        long j10 = this.A09 - this.A00;
        long atomEndPosition = interfaceC2585lN.A8f() + j10;
        boolean z10 = false;
        C4J c4j = this.A0D;
        if (c4j != null) {
            interfaceC2585lN.readFully(c4j.A0l(), this.A00, (int) j10);
            if (this.A01 == 1718909296) {
                this.A02 = A02(c4j);
            } else if (!this.A0O.isEmpty()) {
                this.A0O.peek().A09(new C2556ki(this.A01, c4j));
            }
        } else if (j10 < 262144) {
            interfaceC2585lN.AJJ((int) j10);
        } else {
            long atomPayloadSize = interfaceC2585lN.A8f();
            c1413Gt.A00 = atomPayloadSize + j10;
            z10 = true;
        }
        A0D(atomEndPosition);
        return z10 && this.A04 != 2;
    }

    public static /* synthetic */ GX[] A0M() {
        return new GX[]{new C2546kY()};
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x006f A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long[][] A0N(com.facebook.ads.redexgen.X.C1447Ic[] r16) {
        /*
            Method dump skipped, instructions count: 214
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C2546kY.A0N(com.facebook.ads.redexgen.X.Ic[]):long[][]");
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1416Gw
    public final long A7l() {
        return this.A0B;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1416Gw
    public final C1415Gv A8t(long j10) {
        return A07(j10, -1);
    }

    @Override // com.facebook.ads.redexgen.X.GX
    public final void AA4(GY gy) {
        this.A0E = gy;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1416Gw
    public final boolean AAa() {
        return true;
    }

    @Override // com.facebook.ads.redexgen.X.GX
    public final int AGb(InterfaceC2585lN interfaceC2585lN, C1413Gt c1413Gt) throws IOException {
        while (true) {
            switch (this.A04) {
                case 0:
                    if (A0K(interfaceC2585lN)) {
                        break;
                    } else {
                        return -1;
                    }
                case 1:
                    if (!A0L(interfaceC2585lN, c1413Gt)) {
                        break;
                    } else {
                        return 1;
                    }
                case 2:
                    return A03(interfaceC2585lN, c1413Gt);
                case 3:
                    return A04(interfaceC2585lN, c1413Gt);
                default:
                    throw new IllegalStateException();
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.GX
    public final void AGr() {
    }

    @Override // com.facebook.ads.redexgen.X.GX
    public final void AIM(long j10, long j11) {
        C1447Ic[] c1447IcArr;
        this.A0O.clear();
        this.A00 = 0;
        this.A08 = -1;
        this.A05 = 0;
        this.A06 = 0;
        this.A07 = 0;
        if (j10 == 0) {
            int i10 = this.A04;
            String[] strArr = A0R;
            if (strArr[3].length() != strArr[7].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0R;
            strArr2[3] = "BBO5nGzNDCjhdG";
            strArr2[7] = "Qq9RZt6cBQ724Z";
            if (i10 != 3) {
                A0A();
                return;
            }
            this.A0N.A08();
            this.A0P.clear();
            return;
        }
        for (C1447Ic c1447Ic : this.A0G) {
            A0H(c1447Ic, j11);
            if (c1447Ic.A02 != null) {
                c1447Ic.A02.A02();
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.GX
    public final boolean AJL(InterfaceC2585lN interfaceC2585lN) throws IOException {
        return AbstractC1455Ik.A02(interfaceC2585lN, (this.A0I & 2) != 0);
    }
}
