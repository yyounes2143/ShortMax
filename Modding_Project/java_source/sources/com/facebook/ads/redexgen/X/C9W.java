package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.util.Pair;
import com.facebook.ads.androidx.media3.common.Timeline;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import com.ss.ttm.player.MediaPlayer;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import kotlin.jvm.internal.ByteCompanionObject;
/* renamed from: com.facebook.ads.redexgen.X.9W  reason: invalid class name */
/* loaded from: assets/audience_network.dex */
public final class C9W implements Handler.Callback, InterfaceC2645mN, EJ, CK, InterfaceC11365n, InterfaceC11746z {
    public static byte[] A0x;
    public static String[] A0y = {"EvYOBb0fNCsu7OcAaOZNwoEPwn2", "8jIqnMhTOhQ3fU", "vmW", "edZR1F4oYcKYyzs7tUfX3dHGMGqqrKBY", "TI8UsWNSVk9Jh7srInWeHwVEqkc209d4", "AVB8fiMNMM9Dy8Zuh880FwllBoFt5PF1", "1mkHXRje2n0Pvvw2j", "LF2w13BN71krhrKRtprOb2x3jYcy1FYO"};
    public int A00;
    public int A01;
    public int A02;
    public int A03;
    public long A04;
    public long A06;
    public AnonymousClass67 A07;
    public C6B A08;
    public C11726x A0A;
    @MetaExoPlayerCustomization("D18870411: Adding start stall debug reason")
    public InterfaceC2706nM A0B;
    public C7I A0C;
    public CL A0D;
    public boolean A0G;
    public boolean A0H;
    public boolean A0I;
    public boolean A0K;
    public boolean A0M;
    public boolean A0N;
    public boolean A0O;
    public boolean A0P;
    public boolean A0Q;
    public boolean A0R;
    public boolean A0S;
    public boolean A0T;
    public boolean A0U;
    public boolean A0V;
    public InterfaceC2706nM[] A0W;
    public final long A0Y;
    public final long A0Z;
    public final Handler A0a;
    public final HandlerThread A0b;
    public final C2767oN A0c;
    public final C2765oL A0d;
    public final C3T A0e;
    public final InterfaceC10923v A0f;
    public final C2714nU A0g;
    public final C6A A0h;
    public final C6S A0i;
    public final C2700nG A0k;
    public final EK A0l;
    public final EL A0m;
    public final EU A0n;
    public final AnonymousClass91 A0o;
    public final ArrayList<AnonymousClass69> A0p;
    public final boolean A0q;
    public final boolean A0r;
    public final boolean A0s;
    public final boolean A0t;
    public final boolean A0u;
    public final InterfaceC2706nM[] A0v;
    public final C7D[] A0w;
    public long A05 = -9223372036854775807L;
    @MetaExoPlayerCustomization("D18870411: Adding start stall debug reason")
    public EnumC2365hX A0E = EnumC2365hX.A09;
    @MetaExoPlayerCustomization("D63737392: Added for negative testing")
    public boolean A0J = false;
    @MetaExoPlayerCustomization("D63737392: Added for negative testing")
    public C11696u A09 = null;
    @MetaExoPlayerCustomization("D63737392: Added for negative testing")
    public boolean A0L = false;
    @MetaExoPlayerCustomization("D71523094: Added for negative testing")
    public Integer A0F = null;
    public final C11516c A0j = new C11516c();
    @MetaExoPlayerCustomization
    public final int A0X = A00();

    public static String A0D(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A0x, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            byte b10 = copyOfRange[i13];
            if (A0y[1].length() == 31) {
                throw new RuntimeException();
            }
            String[] strArr = A0y;
            strArr[2] = "wOV";
            strArr[6] = "lGv9KfQpa0xBFnWlu";
            copyOfRange[i13] = (byte) ((b10 - i12) - 57);
        }
        return new String(copyOfRange);
    }

    /* JADX WARN: Code restructure failed: missing block: B:169:0x037e, code lost:
        if (r3 == 1) goto L217;
     */
    /* JADX WARN: Code restructure failed: missing block: B:170:0x0380, code lost:
        r8 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:176:0x0393, code lost:
        if (r3 == 1) goto L217;
     */
    /* JADX WARN: Code restructure failed: missing block: B:186:0x03ab, code lost:
        r24.A0R = r24.A0P;
     */
    /* JADX WARN: Code restructure failed: missing block: B:187:0x03bb, code lost:
        if (com.facebook.ads.redexgen.X.C9W.A0y[5].charAt(1) == 'q') goto L238;
     */
    /* JADX WARN: Code restructure failed: missing block: B:188:0x03bd, code lost:
        r2 = com.facebook.ads.redexgen.X.C9W.A0y;
        r2[4] = "Uyz0TdICBPSSMiRUHh3H6S4m2yqjGOAg";
        r2[3] = "3B1Lhsj2yRloVQBWBzqqqLZ9kauiXzuH";
     */
    /* JADX WARN: Code restructure failed: missing block: B:189:0x03cb, code lost:
        if (r24.A0B == null) goto L237;
     */
    /* JADX WARN: Code restructure failed: missing block: B:191:0x03d4, code lost:
        if (r24.A0B.A9F() != 1) goto L237;
     */
    /* JADX WARN: Code restructure failed: missing block: B:192:0x03d6, code lost:
        r8 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:193:0x03d7, code lost:
        A0W(2, r8);
        A0O();
     */
    /* JADX WARN: Code restructure failed: missing block: B:221:0x044b, code lost:
        throw new java.lang.RuntimeException();
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00bf, code lost:
        if (r7 == false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00c9, code lost:
        if (r24.A0A.A0C == (-1)) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00cb, code lost:
        r8 = (com.facebook.ads.redexgen.X.AbstractC10431w.A01(r24.A0A.A0C - r24.A0A.A02) > 1000 ? 1 : (com.facebook.ads.redexgen.X.AbstractC10431w.A01(r24.A0A.A0C - r24.A0A.A02) == 1000 ? 0 : -1));
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00e9, code lost:
        if (com.facebook.ads.redexgen.X.C9W.A0y[7].charAt(12) == '2') goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00eb, code lost:
        com.facebook.ads.redexgen.X.C9W.A0y[5] = "BlhxJ9uFvDlxNeph5MIqggmIWIv4QApO";
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00f2, code lost:
        if (r8 <= 0) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x01bc, code lost:
        if (r7 == false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x01dc, code lost:
        if (r24.A0H != false) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x01de, code lost:
        r8 = r9.A9h();
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x01ef, code lost:
        if (com.facebook.ads.redexgen.X.C9W.A0y[7].charAt(12) == '2') goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x01f1, code lost:
        com.facebook.ads.redexgen.X.C9W.A0y[5] = "gun24np1Fz9ULZxkMCl3omnFVmny067U";
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x01f8, code lost:
        if (r8 == false) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x01fa, code lost:
        r9.AId();
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0201, code lost:
        if (r24.A0H != false) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0210, code lost:
        throw new java.lang.RuntimeException();
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0216, code lost:
        throw new java.lang.RuntimeException();
     */
    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    /* JADX WARN: Removed duplicated region for block: B:123:0x028a  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x02c8  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x02f7  */
    /* JADX WARN: Removed duplicated region for block: B:199:0x03f7  */
    @com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization("D18870411: Adding start stall debug reason")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void A0F() throws com.facebook.ads.redexgen.X.C9Y, java.io.IOException {
        /*
            Method dump skipped, instructions count: 1100
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C9W.A0F():void");
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0223 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x01bb  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x01d1  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x020f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void A0P() throws com.facebook.ads.redexgen.X.C9Y, java.io.IOException {
        /*
            Method dump skipped, instructions count: 560
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C9W.A0P():void");
    }

    public static void A0R() {
        A0x = new byte[]{-108, -57, -66, -97, -69, -80, -56, -76, -63, -104, -68, -65, -69, -104, -67, -61, -76, -63, -67, -80, -69, -15, 36, 27, -4, 24, 13, 37, 17, 30, -11, 25, 28, 24, -11, 26, 32, 17, 30, 26, 13, 24, -26, -12, 13, 26, 16, 24, 17, 30, -87, -57, -50, -49, -46, -55, -50, -57, ByteCompanionObject.MIN_VALUE, -51, -59, -45, -45, -63, -57, -59, -45, ByteCompanionObject.MIN_VALUE, -45, -59, -50, -44, ByteCompanionObject.MIN_VALUE, -63, -58, -44, -59, -46, ByteCompanionObject.MIN_VALUE, -46, -59, -52, -59, -63, -45, -59, -114, -107, -70, -64, -79, -66, -70, -83, -72, 108, -66, -63, -70, -64, -75, -71, -79, 108, -79, -66, -66, -69, -66, 122, -54, -26, -37, -13, -36, -37, -35, -27, -102, -33, -20, -20, -23, -20, -88, -114, -86, -97, -73, -96, -97, -95, -87, -114, -83, -79, -89, -78, -89, -83, -84, -117, -79, 120, 94, 99, -94, 106, 94, -96, -77, -92, -92, -93, -80, -93, -94, -126, -77, -80, -97, -78, -89, -83, -84, -117, -79, 120, 94, 99, -94, 106, 94, -84, -93, -74, -78, -118, -83, -97, -94, -114, -83, -79, -89, -78, -89, -83, -84, -117, -79, 120, 94, 99, -94, -76, -48, -42, -45, -60, -58, -127, -58, -45, -45, -48, -45, -113, -72, -39, -44, -43, -123, -53, -58, -50, -47, -54, -55, -109, -78, -97, -91, -84, -67, -59, -56, -57, -54, -71, -54, -63, -60, -47, 120, -63, -65, -58, -57, -54, -63, -58, -65, 120, -53, -52, -54, -67, -71, -59, 120, -67, -54, -54, -57, -54, -110, 120, -108, -78, -71, -87, -82, -89, 96, -76, -81, 96, -77, -91, -82, -92, 96, -83, -91, -77, -77, -95, -89, -91, 96, -81, -82, 96, -95, 96, -92, -91, -95, -92, 96, -76, -88, -78, -91, -95, -92, 110, 5, 30, 21, 40, 32, 21, 19, 36, 21, 20, -48, 21, 34, 34, 31, 34, -48, 20, 21, 28, 25, 38, 21, 34, 25, 30, 23, -48, 29, 21, 35, 35, 17, 23, 21, -48, 31, 30, -48, 21, 40, 36, 21, 34, 30, 17, 28, -48, 36, 24, 34, 21, 17, 20, -34, -34, -23, -51, -23, -25, -33, -47, -23, -20, -27, 37, 29, 28, 33, 25, 8, 29, 42, 33, 39, 28, 1, 28, -70, -81, -68, -77, -71, -82, -102, -71, -67, -77, -66, -77, -71, -72, -97, -67, -18, -31, -20, -24, -35, -33, -31, -49, -16, -18, -31, -35, -23};
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x0276, code lost:
        A0v(false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x0279, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x027f, code lost:
        throw new java.lang.RuntimeException();
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0219, code lost:
        if (r8.A00() != false) goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x021b, code lost:
        r3 = r14.A0j.A0K(r5, java.lang.Integer.valueOf(r4), r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0229, code lost:
        if (r3.equals(r8) != false) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x022f, code lost:
        if (r3.A00() == false) goto L103;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0231, code lost:
        r1 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0233, code lost:
        r14.A0A = r14.A0A.A06(r3, A06(r3, r1), r10, A01());
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x0244, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x0245, code lost:
        r1 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x024d, code lost:
        if (r8.A00() != false) goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0250, code lost:
        r9 = r14.A0j;
        r3 = r14.A06;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x025f, code lost:
        if (com.facebook.ads.redexgen.X.C9W.A0y[1].length() == 31) goto L111;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0261, code lost:
        r6 = com.facebook.ads.redexgen.X.C9W.A0y;
        r6[4] = "30gHr5wufVP7jVH5IRZCDYCZy2V5u0Zf";
        r6[3] = "xPVmpg9j3VPOmOyowbQUJ4kDfZKAMzov";
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x0271, code lost:
        if (r9.A0Q(r5, r8, r3) != false) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x0273, code lost:
        A0x(false);
     */
    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void A0e(com.facebook.ads.redexgen.X.AnonymousClass68 r15) throws com.facebook.ads.redexgen.X.C9Y {
        /*
            Method dump skipped, instructions count: 640
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C9W.A0e(com.facebook.ads.redexgen.X.68):void");
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 22 out of bounds for length 20
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:135)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:118)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:567)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:39)
     */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:62:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void A0f(com.facebook.ads.redexgen.X.C6B r19) throws com.facebook.ads.redexgen.X.C9Y {
        /*
            Method dump skipped, instructions count: 246
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C9W.A0f(com.facebook.ads.redexgen.X.6B):void");
    }

    static {
        A0R();
    }

    public C9W(InterfaceC2706nM[] interfaceC2706nMArr, EK ek2, EL el2, C6S c6s, EU eu2, boolean z10, int i10, boolean z11, Handler handler, C3T c3t, boolean z12, boolean z13, boolean z14, boolean z15, boolean z16, boolean z17, long j10, boolean z18, int i11, boolean z19, boolean z20, boolean z21, boolean z22, boolean z23, boolean z24, C11877m c11877m) {
        this.A0v = interfaceC2706nMArr;
        this.A0l = ek2;
        this.A0m = el2;
        this.A0i = c6s;
        this.A0n = eu2;
        this.A0P = z10;
        this.A03 = i10;
        this.A0V = z11;
        this.A0a = handler;
        this.A0e = c3t;
        this.A0U = z12;
        this.A0H = z13;
        this.A0G = z14;
        this.A0M = z15;
        this.A0I = z16;
        this.A0T = z17;
        this.A0Z = j10;
        this.A0q = z18;
        this.A00 = i11;
        this.A0u = z20;
        this.A0s = z19;
        this.A0O = z21;
        this.A0Q = z22;
        this.A0K = z23;
        this.A0t = z24;
        this.A0N = j10 > 0;
        this.A0Y = c6s.A6s(c11877m);
        this.A0r = c6s.AI3(c11877m);
        this.A0C = C7I.A03;
        this.A0A = new C11726x(Timeline.A02, -9223372036854775807L, C2633mA.A06, el2);
        this.A0h = new C6A();
        this.A0w = new C7D[interfaceC2706nMArr.length];
        for (int i12 = 0; i12 < interfaceC2706nMArr.length; i12++) {
            interfaceC2706nMArr[i12].AA1(i12, c11877m);
            this.A0w[i12] = interfaceC2706nMArr[i12].A75();
        }
        this.A0g = new C2714nU(this, c3t);
        this.A0k = new C2700nG(c3t);
        this.A0o = z20 ? new AnonymousClass91(c3t) : null;
        this.A0p = new ArrayList<>();
        this.A0W = new InterfaceC2706nM[0];
        this.A0d = new C2765oL();
        this.A0c = new C2767oN();
        ek2.A02(this, eu2);
        this.A0b = new HandlerThread(A0D(21, 29, 115), -16);
        this.A0b.start();
        this.A0f = c3t.A5H(this.A0b.getLooper(), this);
    }

    @MetaExoPlayerCustomization
    private int A00() {
        int exoplayerThreadPollingIntervalMs = C2397i5.A00(EnumC2395i3.A04);
        if (exoplayerThreadPollingIntervalMs > 0) {
            return exoplayerThreadPollingIntervalMs;
        }
        return 10;
    }

    private long A01() {
        return A04(this.A0A.A0B);
    }

    private final long A02() {
        long loadingPeriodStartPositionUs;
        C6Y A0E = this.A0j.A0E();
        if (A0E == null) {
            loadingPeriodStartPositionUs = 0;
        } else {
            loadingPeriodStartPositionUs = A05(A0E);
        }
        if (A0E == null || loadingPeriodStartPositionUs == -9223372036854775807L) {
            return 0L;
        }
        return A0E.A0C(loadingPeriodStartPositionUs);
    }

    private final long A03() {
        long A0C;
        C6Y A0F = this.A0j.A0F();
        if (A0F == null) {
            A0C = 0;
        } else {
            A0C = A0F.A0C(A0F.A0D(this.A06));
        }
        return A0C + A02();
    }

    private long A04(long j10) {
        C6Y A0E = this.A0j.A0E();
        if (A0E == null) {
            return 0L;
        }
        return j10 - A0E.A0D(this.A06);
    }

    private final long A05(C6Y c6y) {
        long j10 = Long.MAX_VALUE;
        InterfaceC1307Cr[] interfaceC1307CrArr = c6y.A09;
        for (int i10 = 0; i10 < interfaceC1307CrArr.length; i10++) {
            if (interfaceC1307CrArr[i10] instanceof InterfaceC1308Cs) {
                long periodStartPositionUs = ((InterfaceC1308Cs) interfaceC1307CrArr[i10]).A81();
                j10 = Math.min(j10, periodStartPositionUs);
            }
        }
        if (j10 == Long.MAX_VALUE) {
            return -9223372036854775807L;
        }
        return j10;
    }

    private long A06(C2643mL c2643mL, long j10) throws C9Y {
        return A07(false, c2643mL, j10, this.A0j.A0F() != this.A0j.A0G());
    }

    private long A07(boolean z10, C2643mL c2643mL, long j10, boolean z11) throws C9Y {
        A0O();
        this.A0R = false;
        A0V(2);
        C6Y A0F = this.A0j.A0F();
        C6Y c6y = A0F;
        while (true) {
            if (c6y == null) {
                break;
            } else if (A18(c2643mL, j10, c6y)) {
                this.A0j.A0S(c6y);
                break;
            } else {
                c6y = this.A0j.A0B();
            }
        }
        if (A0F != c6y || z11) {
            for (InterfaceC2706nM interfaceC2706nM : this.A0W) {
                A0l(interfaceC2706nM);
            }
            this.A0W = new InterfaceC2706nM[0];
            if (A0y[1].length() == 31) {
                throw new RuntimeException();
            }
            String[] strArr = A0y;
            strArr[4] = "70t8rv27mnV5UL6KHl8v284ienTbIO4o";
            strArr[3] = "4hBvGCC7ZdKRW68bijyzpqxjpy9h3CGi";
            A0F = null;
        }
        if (c6y != null) {
            A0g(A0F);
            if (c6y.A01) {
                j10 = c6y.A07.AIO(j10, z10);
                c6y.A07.A5s(j10 - this.A0Y, this.A0r);
            }
            A0Y(j10);
            A0w(this.A0G);
        } else {
            this.A0j.A0M(true);
            A0Y(j10);
        }
        A0v(false);
        this.A0f.AIQ(2);
        return j10;
    }

    private Pair<Object, Long> A08(Timeline timeline, int i10, long j10) {
        return timeline.A0D(this.A0d, this.A0c, i10, j10);
    }

    private Pair<Object, Long> A09(C6B c6b, boolean z10) {
        Timeline timeline = this.A0A.A03;
        Timeline timeline2 = c6b.A02;
        if (timeline.A0N()) {
            return null;
        }
        if (timeline2.A0N()) {
            timeline2 = timeline;
        }
        try {
            Pair<Object, Long> periodPosition = timeline2.A0E(this.A0d, this.A0c, c6b.A00, c6b.A01);
            if (timeline == timeline2) {
                return periodPosition;
            }
            int A0A = timeline.A0A(periodPosition.first);
            if (A0A != -1) {
                return periodPosition;
            }
            if (!z10 || A0C(periodPosition.first, timeline2, timeline) == null) {
                return null;
            }
            return A08(timeline, timeline.A0H(A0A, this.A0c).A00, -9223372036854775807L);
        } catch (IndexOutOfBoundsException unused) {
            throw new C2E(timeline, c6b.A00, c6b.A01);
        }
    }

    private C2643mL A0A() {
        Timeline timeline = this.A0A.A03;
        if (timeline.A0N()) {
            return C11726x.A0E;
        }
        return new C2643mL(timeline.A0M(timeline.A0K(timeline.A0B(this.A0V), this.A0d).A00));
    }

    @MetaExoPlayerCustomization(type = {"NEW_METHOD"}, value = "D71523094: Added for negative testing")
    private final Integer A0B() {
        C11686t playbackLatencyConfig;
        if (this.A09 == null || (playbackLatencyConfig = this.A09.A02()) == null) {
            String[] strArr = A0y;
            if (strArr[2].length() != strArr[6].length()) {
                A0y[7] = "1rqbEBrQgQNr61xUccdMybR9UEwvq3L8";
                return null;
            }
        } else {
            int A00 = playbackLatencyConfig.A00();
            if (A0y[0].length() != 16) {
                String[] strArr2 = A0y;
                strArr2[2] = "KUZ";
                strArr2[6] = "wQAKuizVIm50S6vdz";
                return Integer.valueOf(A00);
            }
        }
        throw new RuntimeException();
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0020, code lost:
        return null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.Object A0C(java.lang.Object r11, com.facebook.ads.androidx.media3.common.Timeline r12, com.facebook.ads.androidx.media3.common.Timeline r13) {
        /*
            r10 = this;
            r4 = r12
            int r5 = r4.A0A(r11)
            r3 = -1
            int r2 = r4.A06()
            r1 = 0
        Lb:
            r0 = -1
            if (r1 >= r2) goto L1e
            if (r3 != r0) goto L1e
            com.facebook.ads.redexgen.X.oN r6 = r10.A0c
            com.facebook.ads.redexgen.X.oL r7 = r10.A0d
            int r8 = r10.A03
            boolean r9 = r10.A0V
            int r5 = r4.A09(r5, r6, r7, r8, r9)
            if (r5 != r0) goto L27
        L1e:
            if (r3 != r0) goto L22
            r0 = 0
        L21:
            return r0
        L22:
            java.lang.Object r0 = r13.A0M(r3)
            goto L21
        L27:
            java.lang.Object r0 = r4.A0M(r5)
            int r3 = r13.A0A(r0)
            int r1 = r1 + 1
            goto Lb
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C9W.A0C(java.lang.Object, com.facebook.ads.androidx.media3.common.Timeline, com.facebook.ads.androidx.media3.common.Timeline):java.lang.Object");
    }

    private void A0E() {
        C6Y A0E = this.A0j.A0E();
        if (A0E == null) {
            return;
        }
        A0E.A07.A4k(A0E.A0D(this.A06));
    }

    private void A0G() {
        A0V(4);
        A13(false, true, false);
    }

    private void A0H() {
        int i10;
        boolean z10;
        int i11;
        if (this.A0h.A06(this.A0A)) {
            Handler handler = this.A0a;
            i10 = this.A0h.A01;
            z10 = this.A0h.A03;
            if (z10) {
                i11 = this.A0h.A00;
            } else {
                i11 = -1;
            }
            handler.obtainMessage(0, i10, i11, this.A0A).sendToTarget();
            this.A0h.A05(this.A0A);
        }
    }

    private void A0I() throws IOException {
        C6Y A0E = this.A0j.A0E();
        C6Y readingPeriodHolder = this.A0j.A0G();
        if (A0E != null && !A0E.A02) {
            if (readingPeriodHolder != null) {
                C6Y loadingPeriodHolder = readingPeriodHolder.A0I();
                if (loadingPeriodHolder != A0E) {
                    return;
                }
            }
            for (InterfaceC2706nM interfaceC2706nM : this.A0W) {
                if (!interfaceC2706nM.A9h()) {
                    return;
                }
            }
            A0E.A07.ABt();
        }
    }

    private void A0J() throws IOException {
        this.A0j.A0L(this.A06);
        if (this.A0j.A0O()) {
            C6Z A0H = this.A0j.A0H(this.A06, this.A0A);
            if (A0H == null) {
                this.A0D.ABu();
                return;
            }
            this.A0j.A0J(this.A0w, this.A0t ? 60000000L : 0L, this.A0l, this.A0i.A6n(), this.A0D, A0H, this.A0m).AGL(this, A0H.A03);
            A0y(true);
            A0v(false);
        }
    }

    private void A0K() {
        A13(true, true, true);
        this.A0i.AEu(C11877m.A03);
        A0V(1);
        this.A0b.quit();
        synchronized (this) {
            this.A0S = true;
            notifyAll();
        }
    }

    private void A0L() throws C9Y {
        boolean z10;
        if (!this.A0j.A0N()) {
            return;
        }
        float f10 = this.A0g.A8e().A01;
        C6Y periodHolder = this.A0j.A0G();
        boolean z11 = true;
        for (C6Y A0F = this.A0j.A0F(); A0F != null && A0F.A02; A0F = A0F.A0I()) {
            EL A0L = A0F.A0L(f10, this.A0A.A03);
            if (A0L != null) {
                if (z11) {
                    C6Y A0F2 = this.A0j.A0F();
                    boolean A0S = this.A0j.A0S(A0F2);
                    boolean[] zArr = new boolean[this.A0v.length];
                    long A0G = A0F2.A0G(A0L, this.A0A.A0C, A0S, zArr);
                    if (this.A0A.A00 != 4 && A0G != this.A0A.A0C) {
                        this.A0A = this.A0A.A06(this.A0A.A05, A0G, this.A0A.A01, A01());
                        this.A0h.A04(4);
                        A0Y(A0G);
                    }
                    int i10 = 0;
                    boolean[] zArr2 = new boolean[this.A0v.length];
                    for (int i11 = 0; i11 < this.A0v.length; i11++) {
                        InterfaceC2706nM interfaceC2706nM = this.A0v[i11];
                        zArr2[i11] = interfaceC2706nM.A92() != 0;
                        InterfaceC1307Cr interfaceC1307Cr = A0F2.A09[i11];
                        if (interfaceC1307Cr != null) {
                            i10++;
                        }
                        if (zArr2[i11]) {
                            InterfaceC1307Cr A95 = interfaceC2706nM.A95();
                            if (A0y[7].charAt(12) == '2') {
                                throw new RuntimeException();
                            }
                            A0y[1] = "PyyQ9suxdi7C";
                            if (interfaceC1307Cr != A95) {
                                A0l(interfaceC2706nM);
                            } else if (zArr[i11]) {
                                interfaceC2706nM.AI2(this.A06);
                            }
                        }
                    }
                    this.A0A = this.A0A.A07(A0F2.A0J(), A0F2.A0K());
                    A14(zArr2, i10);
                    z10 = false;
                } else {
                    this.A0j.A0S(A0F);
                    if (A0F.A02) {
                        z10 = false;
                        A0F.A0F(A0L, Math.max(A0F.A00.A03, A0F.A0D(this.A06)), false);
                    } else {
                        z10 = false;
                    }
                }
                A0v(true);
                if (this.A0A.A00 != 4) {
                    A0w(z10);
                    A0Q();
                    this.A0f.AIQ(2);
                    return;
                }
                return;
            }
            if (A0F == periodHolder) {
                z11 = false;
            }
        }
    }

    private void A0M() {
        for (int size = this.A0p.size() - 1; size >= 0; size--) {
            if (!A16(this.A0p.get(size))) {
                this.A0p.get(size).A03.A0A(false);
                this.A0p.remove(size);
            }
        }
        Collections.sort(this.A0p);
    }

    private void A0N() throws C9Y {
        this.A0R = false;
        this.A0g.A05();
        this.A0k.A00();
        if (this.A0u) {
            this.A0o.A00();
        }
        for (InterfaceC2706nM interfaceC2706nM : this.A0W) {
            interfaceC2706nM.start();
        }
    }

    private void A0O() throws C9Y {
        this.A0g.A06();
        this.A0k.A01();
        if (this.A0u) {
            this.A0o.A01();
        }
        for (InterfaceC2706nM interfaceC2706nM : this.A0W) {
            A0m(interfaceC2706nM);
        }
    }

    private void A0Q() throws C9Y {
        if (!this.A0j.A0N()) {
            return;
        }
        C6Y A0F = this.A0j.A0F();
        long AGg = A0F.A07.AGg();
        if (AGg != -9223372036854775807L) {
            A0Y(AGg);
            if (AGg != this.A0A.A0C) {
                this.A0A = this.A0A.A06(this.A0A.A05, AGg, this.A0A.A01, A01());
                this.A0h.A04(4);
            }
        } else {
            C2714nU c2714nU = this.A0g;
            C6Y playingPeriodHolder = this.A0j.A0G();
            this.A06 = c2714nU.A04(A0F != playingPeriodHolder);
            long A0D = A0F.A0D(this.A06);
            A0Z(this.A0A.A0C, A0D);
            this.A0A.A0C = A0D;
        }
        C6Y playingPeriodHolder2 = this.A0j.A0E();
        this.A0A.A0B = playingPeriodHolder2.A09();
        this.A0A.A0D = A01();
        this.A0A.A0D = A0F.A0C(this.A0A.A0C);
    }

    private void A0S(byte b10) {
        C6Y A0E = this.A0j.A0E();
        if (A0E != null && this.A0U) {
            A0E.A07.AJq(b10);
        }
    }

    private void A0T(float f10) {
        InterfaceC2606lj[] interfaceC2606ljArr;
        for (C6Y A0D = this.A0j.A0D(); A0D != null && A0D.A02; A0D = A0D.A0I()) {
            for (InterfaceC2606lj interfaceC2606lj : A0D.A0K().A04) {
                if (interfaceC2606lj != null) {
                    interfaceC2606lj.AEc(f10);
                }
            }
        }
    }

    private void A0U(int i10) throws C9Y {
        this.A03 = i10;
        if (!this.A0j.A0P(this.A0A.A03, i10)) {
            if (A0y[0].length() == 16) {
                throw new RuntimeException();
            }
            A0y[5] = "F0pbcDG7mrKSFF2ySsjJdp1en5xQxzay";
            A0x(true);
        }
        A0v(false);
    }

    private void A0V(int i10) {
        if (this.A0A.A00 != i10) {
            this.A0A = this.A0A.A01(i10);
            if (i10 == 2) {
                this.A04 = System.currentTimeMillis();
            } else {
                this.A04 = -1L;
            }
        }
    }

    private void A0W(int i10, boolean z10) {
        if (this.A0A.A00 != i10) {
            C11726x A03 = this.A0A.A03(i10, z10);
            if (A0y[1].length() == 31) {
                throw new RuntimeException();
            }
            A0y[1] = "pTubBuiOOGTe";
            this.A0A = A03;
            if (i10 == 2) {
                this.A04 = System.currentTimeMillis();
            } else {
                this.A04 = -1L;
            }
        }
    }

    private void A0X(int i10, boolean playing, int i11) throws C9Y {
        C6Y A0F = this.A0j.A0F();
        InterfaceC2706nM interfaceC2706nM = this.A0v[i10];
        this.A0W[i11] = interfaceC2706nM;
        if (interfaceC2706nM.A92() == 0) {
            C6Y A0G = this.A0j.A0G();
            C6Y playingPeriodHolder = this.A0j.A0F();
            boolean z10 = A0G == playingPeriodHolder;
            C7G c7g = A0F.A0K().A03[i10];
            C2796or[] A1A = A1A(A0F.A0K().A04[i10]);
            boolean z11 = this.A0P && this.A0A.A00 == 3;
            interfaceC2706nM.A6D(c7g, A1A, A0F.A09[i10], this.A06, !playing && z11, z10, A0G.A0H(this.A0K), A0F.A0B());
            this.A0g.A09(interfaceC2706nM);
            if (z11) {
                interfaceC2706nM.start();
            }
        }
    }

    private void A0Y(long j10) throws C9Y {
        long A0E;
        InterfaceC2706nM[] interfaceC2706nMArr;
        if (this.A0j.A0N()) {
            A0E = this.A0j.A0F().A0E(j10);
        } else {
            A0E = (this.A0t ? 60000000 : 0) + j10;
        }
        this.A06 = A0E;
        this.A0g.A07(this.A06);
        for (InterfaceC2706nM interfaceC2706nM : this.A0W) {
            long j11 = this.A06;
            String[] strArr = A0y;
            if (strArr[2].length() == strArr[6].length()) {
                throw new RuntimeException();
            }
            A0y[5] = "3LWS1la82nevxXslk8B3HGv7gilut34u";
            interfaceC2706nM.AI2(j11);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x00cb, code lost:
        if (r5 >= r4) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00cd, code lost:
        r5 = r3.A00;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00dc, code lost:
        if (com.facebook.ads.redexgen.X.C9W.A0y[7].charAt(12) == '2') goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00de, code lost:
        com.facebook.ads.redexgen.X.C9W.A0y[7] = "Pqus3FB2V0wQm49ac7wvllFxwdLgqwrG";
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00e5, code lost:
        if (r5 != r4) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00eb, code lost:
        if (r3.A01 > r8) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00ed, code lost:
        r0 = r7.A01;
        r7.A01 = r0 + 1;
        r1 = r7.A01;
        r0 = r7.A0p.size();
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00fb, code lost:
        if (r1 >= r0) goto L87;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00fd, code lost:
        r1 = r7.A0p;
        r0 = r7.A01;
        r3 = r1.get(r0);
        r3 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0108, code lost:
        r3 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x010a, code lost:
        if (r5 >= r4) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0114, code lost:
        throw new java.lang.RuntimeException();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void A0Z(long r8, long r10) throws com.facebook.ads.redexgen.X.C9Y {
        /*
            Method dump skipped, instructions count: 389
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C9W.A0Z(long, long):void");
    }

    private void A0a(long j10, long j11) {
        this.A0f.AHj(2);
        this.A0f.AIR(2, j10 + j11);
    }

    private void A0b(C2780ob c2780ob) {
        this.A0g.AIt(c2780ob);
        if (this.A0o != null) {
            this.A0o.AIt(c2780ob);
        }
        if (this.A0k != null) {
            this.A0k.AIt(c2780ob);
        }
    }

    private void A0c(AnonymousClass67 anonymousClass67) throws C9Y {
        throw new NullPointerException(A0D(MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_AUDIO_QUERY, 16, 17));
    }

    private void A0d(AnonymousClass67 anonymousClass67, boolean z10) throws C9Y {
        this.A0h.A03(1);
        throw new NullPointerException(A0D(MediaPlayer.MEDIA_PLAYER_OPTION_DECODER_STALL_THRESHOLD, 13, 127));
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0070, code lost:
        if (r8.A00(r6) != false) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0076, code lost:
        if (r7.AAE() == false) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0080, code lost:
        if (r7.A95() != r10.A09[r6]) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0082, code lost:
        A0l(r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x008c, code lost:
        if (r8.A00(r6) != false) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void A0g(com.facebook.ads.redexgen.X.C6Y r10) throws com.facebook.ads.redexgen.X.C9Y {
        /*
            r9 = this;
            com.facebook.ads.redexgen.X.6c r0 = r9.A0j
            com.facebook.ads.redexgen.X.6Y r5 = r0.A0F()
            if (r5 == 0) goto La
            if (r10 != r5) goto Lb
        La:
            return
        Lb:
            r4 = 0
            com.facebook.ads.redexgen.X.nM[] r0 = r9.A0v
            int r0 = r0.length
            boolean[] r3 = new boolean[r0]
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C9W.A0y
            r0 = 4
            r1 = r2[r0]
            r0 = 3
            r2 = r2[r0]
            r0 = 1
            char r1 = r1.charAt(r0)
            char r0 = r2.charAt(r0)
            if (r1 == r0) goto La5
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C9W.A0y
            java.lang.String r1 = ""
            r0 = 0
            r2[r0] = r1
            r6 = 0
        L2c:
            com.facebook.ads.redexgen.X.nM[] r0 = r9.A0v
            int r0 = r0.length
            if (r6 >= r0) goto L91
            com.facebook.ads.redexgen.X.nM[] r0 = r9.A0v
            r7 = r0[r6]
            int r0 = r7.A92()
            if (r0 == 0) goto L8f
            r0 = 1
        L3c:
            r3[r6] = r0
            com.facebook.ads.redexgen.X.EL r0 = r5.A0K()
            boolean r0 = r0.A00(r6)
            if (r0 == 0) goto L4a
            int r4 = r4 + 1
        L4a:
            boolean r0 = r3[r6]
            if (r0 == 0) goto L85
            com.facebook.ads.redexgen.X.EL r8 = r5.A0K()
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.C9W.A0y
            r0 = 5
            r1 = r1[r0]
            r0 = 1
            char r1 = r1.charAt(r0)
            r0 = 113(0x71, float:1.58E-43)
            if (r1 == r0) goto L88
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C9W.A0y
            java.lang.String r1 = "5yNp1I7g7IY9vjHrSpd0TTAHnxoP5q4N"
            r0 = 4
            r2[r0] = r1
            java.lang.String r1 = "spEmpaFlzQc3LcHeWE04rIrq6t30lchN"
            r0 = 3
            r2[r0] = r1
            boolean r0 = r8.A00(r6)
            if (r0 == 0) goto L82
        L72:
            boolean r0 = r7.AAE()
            if (r0 == 0) goto L85
            com.facebook.ads.redexgen.X.Cr r1 = r7.A95()
            com.facebook.ads.redexgen.X.Cr[] r0 = r10.A09
            r0 = r0[r6]
            if (r1 != r0) goto L85
        L82:
            r9.A0l(r7)
        L85:
            int r6 = r6 + 1
            goto L2c
        L88:
            boolean r0 = r8.A00(r6)
            if (r0 == 0) goto L82
            goto L72
        L8f:
            r0 = 0
            goto L3c
        L91:
            com.facebook.ads.redexgen.X.6x r2 = r9.A0A
            com.facebook.ads.redexgen.X.mA r1 = r5.A0J()
            com.facebook.ads.redexgen.X.EL r0 = r5.A0K()
            com.facebook.ads.redexgen.X.6x r0 = r2.A07(r1, r0)
            r9.A0A = r0
            r9.A14(r3, r4)
            return
        La5:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C9W.A0g(com.facebook.ads.redexgen.X.6Y):void");
    }

    private void A0h(AnonymousClass71 anonymousClass71) throws C9Y {
        if (anonymousClass71.A0D()) {
            return;
        }
        try {
            anonymousClass71.A05().A9a(anonymousClass71.A01(), anonymousClass71.A09());
        } finally {
            anonymousClass71.A0A(true);
        }
    }

    private void A0i(AnonymousClass71 anonymousClass71) throws C9Y {
        if (anonymousClass71.A02() == -9223372036854775807L) {
            A0j(anonymousClass71);
        } else if (this.A0D == null || this.A02 > 0) {
            this.A0p.add(new AnonymousClass69(anonymousClass71));
        } else {
            AnonymousClass69 anonymousClass69 = new AnonymousClass69(anonymousClass71);
            if (A16(anonymousClass69)) {
                this.A0p.add(anonymousClass69);
                Collections.sort(this.A0p);
                return;
            }
            anonymousClass71.A0A(false);
        }
    }

    private void A0j(AnonymousClass71 anonymousClass71) throws C9Y {
        if (anonymousClass71.A03() == this.A0f.A8J()) {
            A0h(anonymousClass71);
            if (this.A0A.A00 == 3 || this.A0A.A00 == 2) {
                this.A0f.AIQ(2);
                return;
            }
            return;
        }
        this.A0f.ACA(15, anonymousClass71).A02();
    }

    private void A0k(final AnonymousClass71 anonymousClass71) {
        Looper A03 = anonymousClass71.A03();
        if (!A03.getThread().isAlive()) {
            Log.w(A0D(220, 3, 37), A0D(258, 40, 7));
            anonymousClass71.A0A(false);
            return;
        }
        this.A0e.A5H(A03, null).A03(new Runnable() { // from class: com.facebook.ads.redexgen.X.65
            @Override // java.lang.Runnable
            public final void run() {
                C9W.this.A1E(anonymousClass71);
            }
        });
    }

    private void A0l(InterfaceC2706nM interfaceC2706nM) throws C9Y {
        this.A0g.A08(interfaceC2706nM);
        A0m(interfaceC2706nM);
        interfaceC2706nM.A5p();
    }

    private void A0m(InterfaceC2706nM interfaceC2706nM) throws C9Y {
        if (interfaceC2706nM.A92() == 2) {
            interfaceC2706nM.stop();
        }
    }

    private void A0n(C7I c7i) {
        this.A0C = c7i;
    }

    private void A0o(InterfaceC2644mM interfaceC2644mM) {
        if (!this.A0j.A0T(interfaceC2644mM)) {
            return;
        }
        this.A0j.A0L(this.A06);
        A0w(false);
    }

    private void A0p(InterfaceC2644mM interfaceC2644mM) throws C9Y {
        byte b10;
        if (!this.A0j.A0T(interfaceC2644mM)) {
            return;
        }
        C6Y A0E = this.A0j.A0E();
        A0E.A0N(this.A0g.A8e().A01, this.A0A.A03);
        A0s(A0E.A0J(), A0E.A0K());
        if (!this.A0j.A0N()) {
            C6Y loadingPeriodHolder = this.A0j.A0B();
            A0Y(loadingPeriodHolder.A00.A03);
            A0g(null);
        }
        if (this.A0M || this.A0P) {
            b10 = 0;
        } else {
            b10 = 2;
        }
        A0S(b10);
        A10(this.A0P);
        if (A0y[7].charAt(12) == '2') {
            throw new RuntimeException();
        }
        A0y[5] = "0JHOWU68jltYXS7XBlXTYuPeT3LWkLA2";
        A0w(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.InterfaceC1310Cu
    /* renamed from: A0q */
    public final void ACs(InterfaceC2644mM interfaceC2644mM) {
        this.A0f.ACA(10, interfaceC2644mM).A02();
    }

    private void A0r(CL cl2, boolean z10, boolean z11) {
        this.A02++;
        A13(true, z10, z11);
        this.A0i.AEj(C11877m.A03);
        this.A0D = cl2;
        A0V(2);
        cl2.AGN(this, null);
        this.A0f.AIQ(2);
    }

    private void A0s(C2633mA c2633mA, EL el2) {
        this.A0i.AFV(new C6R(C11877m.A03, this.A0A.A03, this.A0A.A04, this.A0A.A0C, A01(), this.A0g.A8e().A01, this.A0P, this.A0R, -9223372036854775807L, this.A04), c2633mA, el2.A04);
    }

    @MetaExoPlayerCustomization("D18870411: Adding start stall debug reason")
    private void A0t(EnumC2365hX enumC2365hX, boolean z10) {
        if (this.A0A.A00 != 3) {
            this.A0A = this.A0A.A02(3, enumC2365hX, z10);
            this.A04 = -1L;
        }
    }

    @MetaExoPlayerCustomization(type = {"NEW_METHOD"}, value = "D63737392: Added for negative testing")
    private void A0u(String str) {
        boolean z10 = false;
        if (str == null) {
            this.A0J = false;
            this.A09 = null;
            return;
        }
        if (str != null && str.length() > 0) {
            z10 = true;
        }
        this.A0J = z10;
        this.A09 = new C11696u(str);
    }

    private void A0v(boolean z10) {
        C2643mL c2643mL;
        C6Y A0E = this.A0j.A0E();
        if (A0E == null) {
            C11726x c11726x = this.A0A;
            if (A0y[1].length() == 31) {
                throw new RuntimeException();
            }
            String[] strArr = A0y;
            strArr[2] = "b0w";
            strArr[6] = "WyMJg745VdMbfing6";
            c2643mL = c11726x.A05;
        } else {
            c2643mL = A0E.A00.A04;
        }
        C2643mL loadingMediaPeriodId = this.A0A.A04;
        boolean loadingMediaPeriodChanged = !loadingMediaPeriodId.equals(c2643mL);
        if (loadingMediaPeriodChanged) {
            this.A0A = this.A0A.A05(c2643mL);
        }
        if ((loadingMediaPeriodChanged || z10) && A0E != null && A0E.A02) {
            A0s(A0E.A0J(), A0E.A0K());
        }
    }

    @MetaExoPlayerCustomization("Customized Buffered Duration MS D23157182")
    private void A0w(boolean z10) {
        long A0C;
        C6Y A0E = this.A0j.A0E();
        long A0A = A0E.A0A();
        if (A0A == Long.MIN_VALUE) {
            A0y(false);
            return;
        }
        long A0D = A0E.A0D(this.A06);
        if (!this.A0s || A0E == this.A0j.A0F() || this.A0j.A0F() == null) {
            A0C = A0E.A0C(A0D);
            if (this.A0O) {
                for (C6Y A0F = this.A0j.A0F(); A0F != null && A0F != A0E; A0F = A0F.A0I()) {
                    long nextLoadPositionUs = this.A06;
                    A0C += A0F.A0C(A0F.A0D(nextLoadPositionUs));
                }
            }
        } else {
            A0C = A02();
        }
        Timeline timeline = this.A0A.A03;
        C2643mL c2643mL = A0E.A00.A04;
        float f10 = this.A0g.A8e().A01;
        boolean z11 = this.A0P || z10;
        boolean z12 = this.A0R;
        long nextLoadPositionUs2 = this.A04;
        boolean AJB = this.A0i.AJB(new C6R(null, timeline, c2643mL, A0D, A0C, f10, z11, z12, -9223372036854775807L, nextLoadPositionUs2));
        if (this.A0T && this.A0P && this.A0R && !AJB && this.A0A.A00 == 2) {
            Long valueOf = Long.valueOf(A0D / 1000);
            Long valueOf2 = Long.valueOf(A0C / 1000);
            Long valueOf3 = Long.valueOf(A0A / 1000);
            String[] strArr = A0y;
            if (strArr[4].charAt(1) == strArr[3].charAt(1)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0y;
            strArr2[2] = "Frr";
            strArr2[6] = "mfKzHFhLmxUYLc6Gx";
            this.A0a.obtainMessage(5, AbstractC10974a.A0n(A0D(125, 70, 5), valueOf, valueOf2, valueOf3)).sendToTarget();
            this.A0T = false;
        }
        A0y(AJB);
        if (AJB) {
            A0E.A0O(this.A06);
        }
    }

    private void A0x(boolean z10) throws C9Y {
        C2643mL c2643mL = this.A0j.A0F().A00.A04;
        long A07 = A07(false, c2643mL, this.A0A.A0C, true);
        if (A07 != this.A0A.A0C) {
            this.A0A = this.A0A.A06(c2643mL, A07, this.A0A.A01, A01());
            if (z10) {
                C6A c6a = this.A0h;
                String[] strArr = A0y;
                if (strArr[4].charAt(1) == strArr[3].charAt(1)) {
                    throw new RuntimeException();
                }
                A0y[5] = "dnthUoDEzHvBWSE2tp3YAJwgKJx1FOWZ";
                c6a.A04(4);
            }
        }
    }

    private void A0y(boolean z10) {
        if (this.A0A.A0A != z10) {
            this.A0A = this.A0A.A08(z10);
        }
    }

    private void A0z(boolean z10) throws C9Y {
        try {
            this.A0R = false;
            this.A0P = z10;
            A10(z10);
            if (!z10) {
                A0O();
                A0Q();
                A0S((byte) 2);
                if (this.A0I) {
                    A0E();
                }
            } else {
                A0S((byte) 0);
                if (this.A0A.A00 != 3) {
                    if (this.A0A.A00 == 2) {
                        this.A0f.AIQ(2);
                    }
                } else {
                    A0N();
                    this.A0f.AIQ(2);
                }
            }
        } finally {
            this.A0a.obtainMessage(3, Boolean.valueOf(z10)).sendToTarget();
        }
    }

    @MetaExoPlayerCustomization("D19875605 Prevent further error loading once pausing video")
    private void A10(boolean z10) {
        C6Y loadingPeriod = this.A0j.A0E();
        if (loadingPeriod == null) {
            return;
        }
        loadingPeriod.A07.AIs(z10);
    }

    private void A11(boolean z10) throws C9Y {
        this.A0V = z10;
        if (!this.A0j.A0R(this.A0A.A03, z10)) {
            A0x(true);
        }
        A0v(false);
    }

    private void A12(boolean z10, boolean z11) {
        A13(true, z10, z10);
        this.A0h.A03(this.A02 + (z11 ? 1 : 0));
        this.A02 = 0;
        this.A0i.AFN(C11877m.A03);
        A0V(1);
    }

    private void A13(boolean z10, boolean z11, boolean z12) {
        long j10;
        C2633mA c2633mA;
        EL el2;
        this.A0f.AHj(2);
        this.A0R = false;
        this.A0g.A06();
        this.A0k.A01();
        if (this.A0u) {
            this.A0o.A01();
        }
        this.A06 = this.A0t ? 60000000L : 0L;
        for (InterfaceC2706nM interfaceC2706nM : this.A0W) {
            try {
                A0l(interfaceC2706nM);
            } catch (C9Y | RuntimeException e10) {
                Log.e(A0D(0, 21, 22), A0D(208, 12, 44), e10);
            }
        }
        this.A0W = new InterfaceC2706nM[0];
        this.A0j.A0M(!z11);
        A0y(false);
        if (z11) {
            this.A08 = null;
        }
        if (z12) {
            Iterator<AnonymousClass69> it = this.A0p.iterator();
            while (it.hasNext()) {
                it.next().A03.A0A(false);
            }
            this.A0p.clear();
            this.A01 = 0;
        }
        C2643mL A0A = z11 ? A0A() : this.A0A.A05;
        long j11 = -9223372036854775807L;
        if (z11) {
            j10 = -9223372036854775807L;
        } else {
            C11726x c11726x = this.A0A;
            if (A0y[5].charAt(1) != 'q') {
                String[] strArr = A0y;
                strArr[4] = "7gx390g1msf1u5QKnR2KjvR4WQmRx8YK";
                strArr[3] = "VlC7tbQkEF507tv73u1W2v85d7ApXXNM";
                j10 = c11726x.A0C;
            } else {
                A0y[5] = "C79IK8sPJjEkg2u4SoGimfUAaE3F5yew";
                j10 = c11726x.A0C;
            }
        }
        if (!z11) {
            C11726x c11726x2 = this.A0A;
            if (A0y[5].charAt(1) == 'q') {
                throw new RuntimeException();
            }
            String[] strArr2 = A0y;
            strArr2[2] = "uSR";
            strArr2[6] = "FwoZ6mA9qzJ4hrvJt";
            j11 = c11726x2.A01;
        }
        Timeline timeline = z12 ? Timeline.A02 : this.A0A.A03;
        int i10 = this.A0A.A00;
        if (z12) {
            c2633mA = C2633mA.A06;
        } else {
            C11726x c11726x3 = this.A0A;
            if (A0y[7].charAt(12) == '2') {
                throw new RuntimeException();
            }
            A0y[5] = "yizxhFEcEwEbIh7DB6ScCbr86G64zHmf";
            c2633mA = c11726x3.A06;
        }
        if (z12) {
            el2 = this.A0m;
        } else {
            el2 = this.A0A.A07;
        }
        this.A0A = new C11726x(timeline, A0A, j10, j11, i10, false, c2633mA, el2, A0A, j10, 0L, j10);
        if (z10 && this.A0D != null) {
            this.A0D.AH1(this);
            this.A0D = null;
        }
    }

    /* JADX WARN: Incorrect condition in loop: B:4:0x000f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void A14(boolean[] r6, int r7) throws com.facebook.ads.redexgen.X.C9Y {
        /*
            r5 = this;
            com.facebook.ads.redexgen.X.nM[] r0 = new com.facebook.ads.redexgen.X.InterfaceC2706nM[r7]
            r5.A0W = r0
            r4 = 0
            com.facebook.ads.redexgen.X.6c r0 = r5.A0j
            com.facebook.ads.redexgen.X.6Y r3 = r0.A0F()
            r2 = 0
        Lc:
            com.facebook.ads.redexgen.X.nM[] r0 = r5.A0v
            int r0 = r0.length
            if (r2 >= r0) goto L26
            com.facebook.ads.redexgen.X.EL r0 = r3.A0K()
            boolean r0 = r0.A00(r2)
            if (r0 == 0) goto L23
            boolean r1 = r6[r2]
            int r0 = r4 + 1
            r5.A0X(r2, r1, r4)
            r4 = r0
        L23:
            int r2 = r2 + 1
            goto Lc
        L26:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C9W.A14(boolean[], int):void");
    }

    private boolean A15() {
        C6Y playingPeriodHolder = this.A0j.A0F();
        C6Y A0I = playingPeriodHolder.A0I();
        long j10 = playingPeriodHolder.A00.A00;
        return j10 == -9223372036854775807L || this.A0A.A0C < j10 || (A0I != null && (A0I.A02 || A0I.A00.A04.A00()));
    }

    private boolean A16(AnonymousClass69 anonymousClass69) {
        if (anonymousClass69.A02 == null) {
            Pair<Object, Long> A09 = A09(new C6B(anonymousClass69.A03.A04(), anonymousClass69.A03.A00(), AbstractC10431w.A00(anonymousClass69.A03.A02())), false);
            if (A09 == null) {
                return false;
            }
            int A0A = this.A0A.A03.A0A(A09.first);
            if (A0y[5].charAt(1) != 'q') {
                A0y[5] = "NfGCtpMsHKBVYsn3O7a8Zqq9gxyOlhFa";
                anonymousClass69.A01(A0A, ((Long) A09.second).longValue(), A09.first);
                return true;
            }
            throw new RuntimeException();
        }
        int A0A2 = this.A0A.A03.A0A(anonymousClass69.A02);
        if (A0A2 == -1) {
            return false;
        }
        anonymousClass69.A00 = A0A2;
        return true;
    }

    private boolean A17(InterfaceC2706nM interfaceC2706nM) {
        C6Y A0G = this.A0j.A0G();
        C6Y readingPeriodHolder = A0G.A0I();
        if (readingPeriodHolder != null) {
            C6Y readingPeriodHolder2 = A0G.A0I();
            if (readingPeriodHolder2.A02 && interfaceC2706nM.A9h()) {
                return true;
            }
        }
        return false;
    }

    private boolean A18(C2643mL c2643mL, long j10, C6Y c6y) {
        if (c2643mL.equals(c6y.A00.A04)) {
            boolean z10 = c6y.A02;
            if (A0y[1].length() != 31) {
                A0y[1] = "z9";
                if (z10) {
                    this.A0A.A03.A0J(this.A0A.A05.A04, this.A0c);
                    int A07 = this.A0c.A07(j10);
                    if (A07 != -1) {
                        long A0D = this.A0c.A0D(A07);
                        C6Z c6z = c6y.A00;
                        if (A0y[5].charAt(1) == 'q') {
                            A0y[5] = "RcBDfVPYXZ1IWswHj8kiKJAUw6BsFYM7";
                            int nextAdGroupIndex = (A0D > c6z.A01 ? 1 : (A0D == c6z.A01 ? 0 : -1));
                            if (nextAdGroupIndex == 0) {
                                return true;
                            }
                            return false;
                        }
                        String[] strArr = A0y;
                        strArr[4] = "w6QknFDGuvwfcqywG7nwGfdAAoNokq6y";
                        strArr[3] = "I5j8Ais0ITqpKL2oROmKoI7QN1W2GqI7";
                        int nextAdGroupIndex2 = (A0D > c6z.A01 ? 1 : (A0D == c6z.A01 ? 0 : -1));
                        if (nextAdGroupIndex2 == 0) {
                            return true;
                        }
                        return false;
                    }
                    return true;
                }
                return false;
            }
            throw new RuntimeException();
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x00a8  */
    @com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomizations({@com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization("Customized Buffered Duration MS D23157182"), @com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization("D18870411: Adding start stall debug reason")})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean A19(boolean r19) {
        /*
            r18 = this;
            r3 = r18
            com.facebook.ads.redexgen.X.nM[] r0 = r3.A0W
            int r0 = r0.length
            if (r0 != 0) goto Lc
            boolean r0 = r18.A15()
            return r0
        Lc:
            r9 = 0
            if (r19 != 0) goto L1c
            com.facebook.ads.redexgen.X.nM r0 = r3.A0B
            if (r0 == 0) goto L1b
            com.facebook.ads.redexgen.X.nM r0 = r3.A0B
            com.facebook.ads.redexgen.X.hX r0 = r0.A91()
            r3.A0E = r0
        L1b:
            return r9
        L1c:
            com.facebook.ads.redexgen.X.6x r0 = r3.A0A
            boolean r1 = r0.A0A
            r0 = 1
            if (r1 != 0) goto L24
            return r0
        L24:
            com.facebook.ads.redexgen.X.6c r0 = r3.A0j
            com.facebook.ads.redexgen.X.6Y r4 = r0.A0E()
            boolean r0 = r4.A0R()
            if (r0 == 0) goto Lb4
            com.facebook.ads.redexgen.X.6Z r5 = r4.A00
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.C9W.A0y
            r0 = 7
            r1 = r1[r0]
            r0 = 12
            char r1 = r1.charAt(r0)
            r0 = 50
            if (r1 == r0) goto Lb6
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C9W.A0y
            java.lang.String r1 = "JVFQROlQoWGuZTJ8G1Kf7NjovTqMHrup"
            r0 = 5
            r2[r0] = r1
            boolean r0 = r5.A05
            if (r0 == 0) goto Lb4
            r8 = 1
        L4d:
            boolean r0 = r3.A0s
            if (r0 == 0) goto L67
            com.facebook.ads.redexgen.X.6c r0 = r3.A0j
            com.facebook.ads.redexgen.X.6Y r1 = r0.A0F()
            com.facebook.ads.redexgen.X.6c r0 = r3.A0j
            com.facebook.ads.redexgen.X.6Y r0 = r0.A0E()
            if (r1 == r0) goto L67
            com.facebook.ads.redexgen.X.6c r0 = r3.A0j
            com.facebook.ads.redexgen.X.6Y r0 = r0.A0F()
            if (r0 != 0) goto Laf
        L67:
            long r0 = r3.A06
            long r0 = r4.A0D(r0)
            long r11 = r4.A0C(r0)
        L71:
            long r6 = java.lang.System.currentTimeMillis()
            int r0 = r3.A00
            if (r0 <= 0) goto Lad
            long r4 = r3.A04
            r1 = 0
            int r0 = (r4 > r1 ? 1 : (r4 == r1 ? 0 : -1))
            if (r0 <= 0) goto Lad
            long r0 = r3.A04
            long r6 = r6 - r0
            int r0 = r3.A00
            long r1 = (long) r0
            int r0 = (r6 > r1 ? 1 : (r6 == r1 ? 0 : -1))
            if (r0 >= 0) goto Lad
            r15 = 1
        L8c:
            if (r8 != 0) goto La5
            com.facebook.ads.redexgen.X.6S r10 = r3.A0i
            com.facebook.ads.redexgen.X.nU r0 = r3.A0g
            com.facebook.ads.redexgen.X.ob r0 = r0.A8e()
            float r13 = r0.A01
            boolean r14 = r3.A0R
            r16 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            boolean r0 = r10.AJE(r11, r13, r14, r15, r16)
            if (r0 == 0) goto La6
        La5:
            r9 = 1
        La6:
            if (r9 != 0) goto Lac
            com.facebook.ads.redexgen.X.hX r0 = com.facebook.ads.redexgen.X.EnumC2365hX.A04
            r3.A0E = r0
        Lac:
            return r9
        Lad:
            r15 = 0
            goto L8c
        Laf:
            long r11 = r18.A03()
            goto L71
        Lb4:
            r8 = 0
            goto L4d
        Lb6:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C9W.A19(boolean):boolean");
    }

    public static C2796or[] A1A(EE ee2) {
        int length = ee2 != null ? ee2.length() : 0;
        C2796or[] c2796orArr = new C2796or[length];
        for (int i10 = 0; i10 < length; i10++) {
            c2796orArr[i10] = ee2.A83(i10);
        }
        return c2796orArr;
    }

    public final Looper A1B() {
        return this.A0b.getLooper();
    }

    /* JADX WARN: Incorrect condition in loop: B:9:0x0010 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void A1C() {
        /*
            r2 = this;
            monitor-enter(r2)
            boolean r0 = r2.A0S     // Catch: java.lang.Throwable -> L23
            if (r0 == 0) goto L7
            monitor-exit(r2)
            return
        L7:
            com.facebook.ads.redexgen.X.3v r1 = r2.A0f     // Catch: java.lang.Throwable -> L23
            r0 = 7
            r1.AIQ(r0)     // Catch: java.lang.Throwable -> L23
            r1 = 0
        Le:
            boolean r0 = r2.A0S     // Catch: java.lang.Throwable -> L23
            if (r0 != 0) goto L18
            r2.wait()     // Catch: java.lang.InterruptedException -> L16 java.lang.Throwable -> L23
            goto Le
        L16:
            r1 = 1
            goto Le
        L18:
            if (r1 == 0) goto L21
            java.lang.Thread r0 = java.lang.Thread.currentThread()     // Catch: java.lang.Throwable -> L23
            r0.interrupt()     // Catch: java.lang.Throwable -> L23
        L21:
            monitor-exit(r2)
            return
        L23:
            r0 = move-exception
            monitor-exit(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C9W.A1C():void");
    }

    public final void A1D(Timeline timeline, int i10, long j10) {
        this.A0f.ACA(3, new C6B(timeline, i10, j10)).A02();
    }

    public final /* synthetic */ void A1E(AnonymousClass71 anonymousClass71) {
        try {
            A0h(anonymousClass71);
        } catch (C9Y e10) {
            Log.e(A0D(0, 21, 22), A0D(MediaPlayer.MEDIA_PLAYER_OPTION_LIVE_START_INDEX, 55, 119), e10);
            throw new RuntimeException(e10);
        }
    }

    public final void A1F(CL cl2, boolean z10, boolean z11) {
        this.A0f.AC9(0, z10 ? 1 : 0, z11 ? 1 : 0, cl2).A02();
    }

    public final void A1G(boolean z10) {
        this.A0f.AC8(1, z10 ? 1 : 0, 0).A02();
    }

    public final void A1H(boolean z10) {
        this.A0f.AC8(6, z10 ? 1 : 0, 0).A02();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC11365n
    public final void AEb(C2780ob c2780ob) {
        this.A0a.obtainMessage(1, c2780ob).sendToTarget();
        A0T(c2780ob.A01);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2645mN
    public final void AEk(InterfaceC2644mM interfaceC2644mM) {
        this.A0f.ACA(9, interfaceC2644mM).A02();
    }

    @Override // com.facebook.ads.redexgen.X.CK
    public final void AFI(CL cl2, Timeline timeline) {
        this.A0f.ACA(8, new AnonymousClass68(cl2, timeline)).A02();
    }

    @Override // com.facebook.ads.redexgen.X.EJ
    public final void AFT() {
        this.A0f.AIQ(11);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC11746z
    public final synchronized void AIS(AnonymousClass71 anonymousClass71) {
        if (this.A0S) {
            Log.w(A0D(0, 21, 22), A0D(50, 37, 39));
            anonymousClass71.A0A(false);
            return;
        }
        this.A0f.ACA(14, anonymousClass71).A02();
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        String A0D = A0D(0, 21, 22);
        try {
            switch (message.what) {
                case 0:
                    A0r((CL) message.obj, message.arg1 != 0, message.arg2 != 0);
                    break;
                case 1:
                    A0z(message.arg1 != 0);
                    break;
                case 2:
                    A0F();
                    break;
                case 3:
                    A0f((C6B) message.obj);
                    break;
                case 4:
                    A0b((C2780ob) message.obj);
                    break;
                case 5:
                    A0n((C7I) message.obj);
                    break;
                case 6:
                    A12(message.arg1 != 0, true);
                    break;
                case 7:
                    A0K();
                    return true;
                case 8:
                    A0e((AnonymousClass68) message.obj);
                    break;
                case 9:
                    A0p((InterfaceC2644mM) message.obj);
                    break;
                case 10:
                    A0o((InterfaceC2644mM) message.obj);
                    break;
                case 11:
                    A0L();
                    break;
                case 12:
                    A0U(message.arg1);
                    break;
                case 13:
                    A11(message.arg1 != 0);
                    break;
                case 14:
                    A0i((AnonymousClass71) message.obj);
                    break;
                case 15:
                    A0k((AnonymousClass71) message.obj);
                    break;
                case 16:
                    break;
                case 17:
                    A0d(null, false);
                    throw null;
                case 18:
                    A0c(null);
                    throw null;
                case 19:
                    A0u((String) message.obj);
                    break;
                default:
                    return false;
            }
            A0H();
        } catch (C9Y e10) {
            Log.e(A0D, A0D(110, 15, 65), e10);
            A12(false, false);
            this.A0a.obtainMessage(2, e10).sendToTarget();
            A0H();
        } catch (IOException e11) {
            Log.e(A0D, A0D(MediaPlayer.MEDIA_PLAYER_OPTION_LOOP_PERFER_VIDEO, 13, 40), e11);
            A12(false, false);
            this.A0a.obtainMessage(2, C9Y.A01(e11, 2000)).sendToTarget();
            A0H();
        } catch (RuntimeException e12) {
            Log.e(A0D, A0D(87, 23, 19), e12);
            A12(false, false);
            this.A0a.obtainMessage(2, C9Y.A02(e12)).sendToTarget();
            A0H();
        }
        return true;
    }
}
