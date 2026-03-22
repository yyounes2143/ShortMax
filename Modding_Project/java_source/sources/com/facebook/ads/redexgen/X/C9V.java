package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.util.SparseArray;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.TextureView;
import com.facebook.ads.androidx.media3.common.Timeline;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.CopyOnWriteArraySet;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
/* renamed from: com.facebook.ads.redexgen.X.9V  reason: invalid class name */
/* loaded from: assets/audience_network.dex */
public final class C9V extends AbstractC2801ox implements InterfaceC2710nQ {
    public static byte[] A0N;
    public static String[] A0O = {"ryR4HSm2zR8tip5OkgYwdb0JWy9e3v2W", "Fm5MoQAoRuRRmRXPK4I4CJ8bYaju2JW1", "syIAGKVT8Ewa7Rni6nktnCNdH4Ja85Gc", "ScHbfbbxkU", "HZJXjhizoNO31MnMnm7FxQnRU8I8lePN", "YCsl9os6nHqs6yB8LR1hlQvfR5oCt3rk", "Ml6mHBX1GsWDWNWH2EtCrt2HpilhtHKz", "59SI8zfcXXU2xe69nRlPKARsr0343GFe"};
    public float A00;
    public int A01;
    public int A02;
    public Surface A03;
    public SurfaceHolder A04;
    public TextureView A05;
    public C2802oy A06;
    public C2796or A07;
    public C2796or A08;
    public C11295g A09;
    public C11295g A0A;
    public CL A0B;
    public boolean A0C;
    public final Handler A0D;
    public final C9X A0E;
    public final SurfaceHolder$CallbackC2702nI A0F;
    public final InterfaceC2699nF A0G;
    public final CopyOnWriteArraySet<C8D> A0H;
    public final CopyOnWriteArraySet<InterfaceC10632s> A0I;
    public final CopyOnWriteArraySet<B3> A0J;
    public final CopyOnWriteArraySet<InterfaceC1382Fo> A0K;
    public final CopyOnWriteArraySet<InterfaceC2701nH> A0L;
    public final InterfaceC2706nM[] A0M;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 22 out of bounds for length 20
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:135)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:118)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:567)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:39)
     */
    public C9V(Context context, C7H c7h, EK ek2, C6S c6s, EU eu2, C9U c9u, InterfaceC2441ip<C3T, InterfaceC2699nF> interfaceC2441ip, C3T c3t) {
        this.A0F = new SurfaceHolder$CallbackC2702nI(this);
        this.A0L = new CopyOnWriteArraySet<>();
        this.A0J = new CopyOnWriteArraySet<>();
        this.A0K = new CopyOnWriteArraySet<>();
        this.A0H = new CopyOnWriteArraySet<>();
        Looper myLooper = Looper.myLooper() != null ? Looper.myLooper() : Looper.getMainLooper();
        this.A0D = new Handler(myLooper);
        this.A0M = c7h.A5Q(this.A0D, this.A0F, this.A0F, this.A0F, this.A0F, c9u);
        this.A00 = 1.0f;
        this.A01 = 0;
        this.A06 = C2802oy.A07;
        this.A02 = 1;
        this.A0E = A06(this.A0M, ek2, c6s, eu2, c3t);
        this.A0G = interfaceC2441ip.A43(c3t);
        this.A0G.AIv(this.A0E, myLooper);
        this.A0I = new CopyOnWriteArraySet<>();
    }

    public static String A07(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A0N, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] - i12) - 61);
        }
        return new String(copyOfRange);
    }

    public static void A0E() {
        A0N = new byte[]{-41, -19, -15, -12, -16, -23, -55, -4, -13, -44, -16, -27, -3, -23, -10, 12, 46, 43, 31, 26, 28, 30, 13, 30, 49, 45, 46, 43, 30, 5, 34, 44, 45, 30, 39, 30, 43, -39, 26, 37, 43, 30, 26, 29, 50, -39, 46, 39, 44, 30, 45, -39, 40, 43, -39, 43, 30, 41, 37, 26, 28, 30, 29, -25};
    }

    static {
        A0E();
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.ip != com.google.common.base.Function<com.facebook.ads.androidx.media3.common.util.Clock, com.facebook.ads.androidx.media3.exoplayer.analytics.AnalyticsCollector> */
    public C9V(Context context, C7H c7h, EK ek2, C6S c6s, EU eu2, C9U c9u, InterfaceC2441ip<C3T, InterfaceC2699nF> interfaceC2441ip) {
        this(context, c7h, ek2, c6s, eu2, c9u, interfaceC2441ip, C3T.A00);
    }

    @Deprecated
    public C9V(C7H c7h, EK ek2, C6S c6s, EU eu2, C9U c9u) {
        this(null, c7h, ek2, c6s, eu2, c9u, new InterfaceC2441ip() { // from class: com.facebook.ads.redexgen.X.nP
            @Override // com.facebook.ads.redexgen.X.InterfaceC2441ip
            public final Object A43(Object obj) {
                final C3T c3t = (C3T) obj;
                return new InterfaceC2699nF(c3t) { // from class: com.facebook.ads.redexgen.X.9O
                    public static String[] A09 = {"4o0rkz4sfHeK33SO99B05QXsoRhyQzGZ", "K0gAeF3eD9ckm8sSKGrLnlGwgDvg6cGZ", "7dDhReETm", "uWDgAo3QhNS2SDAVWxvGGUxEzkeXCi8E", "iTLUe92lN", "exEbYNMUNVYj7aZkfWzuIWQ7Xih8easj", "xOp2qsvLijFTZdD02NXuZsLwHYitQrqs", "G4m8GVqXoTOlF678hGe6mWsbCNLG0"};
                    public InterfaceC10702z A00;
                    public InterfaceC10923v A01;
                    public AnonymousClass41<C7W> A02;
                    public boolean A03;
                    public final C3T A07;
                    public final C2767oN A05 = new C2767oN();
                    public final C2765oL A06 = new C2765oL();
                    public final C7Y A08 = new C7Y(this.A05);
                    public final SparseArray<C7U> A04 = new SparseArray<>();

                    /* JADX WARN: Failed to parse debug info
                    java.lang.ArrayIndexOutOfBoundsException
                     */
                    /* JADX WARN: Type inference failed for: r3v5, types: [com.facebook.ads.redexgen.X.7U] */
                    @RequiresNonNull({"player"})
                    private final C7U A03(Timeline timeline, int i10, C2643mL c2643mL) {
                        C2643mL c2643mL2 = c2643mL;
                        if (timeline.A0N()) {
                            c2643mL2 = null;
                        }
                        long A6B = this.A07.A6B();
                        boolean z10 = true;
                        boolean z11 = timeline.equals(this.A00.A7Y()) && i10 == this.A00.A7T();
                        if (c2643mL2 != null && c2643mL2.A00()) {
                            if ((z11 && this.A00.A7Q() == c2643mL2.A00 && this.A00.A7R() == c2643mL2.A01) ? false : false) {
                                r9 = this.A00.A7W();
                            }
                        } else if (z11) {
                            r9 = this.A00.A7L();
                            String[] strArr = A09;
                            if (strArr[3].length() != strArr[1].length()) {
                                throw new RuntimeException();
                            }
                            A09[6] = "ZwCTxmE9kC93SnFyqUzyIs0NB6ZXsqqf";
                        } else {
                            r9 = timeline.A0N() ? 0L : timeline.A0K(i10, this.A06).A04();
                            String[] strArr2 = A09;
                            if (strArr2[3].length() == strArr2[1].length()) {
                                A09[6] = "IrjjFtfbEX9d6APA3g1gQ2wngpNkMZh7";
                            }
                        }
                        return new Object(A6B, timeline, i10, c2643mL2, r9, this.A00.A7Y(), this.A00.A7T(), this.A08.A06(), this.A00.A7W(), this.A00.A9B()) { // from class: com.facebook.ads.redexgen.X.7U
                            public final int A00;
                            public final int A01;
                            public final long A02;
                            public final long A03;
                            public final long A04;
                            public final long A05;
                            public final Timeline A06;
                            public final Timeline A07;
                            public final C2643mL A08;
                            public final C2643mL A09;

                            {
                                this.A04 = A6B;
                                this.A07 = timeline;
                                this.A01 = i10;
                                this.A09 = c2643mL2;
                                this.A03 = r6;
                                this.A06 = r8;
                                this.A00 = r9;
                                this.A08 = r10;
                                this.A02 = r11;
                                this.A05 = r13;
                            }

                            public final boolean equals(Object obj2) {
                                if (this == obj2) {
                                    return true;
                                }
                                if (obj2 == null || getClass() != obj2.getClass()) {
                                    return false;
                                }
                                C7U c7u = (C7U) obj2;
                                if (this.A04 == c7u.A04 && this.A01 == c7u.A01 && this.A03 == c7u.A03 && this.A00 == c7u.A00 && this.A02 == c7u.A02 && this.A05 == c7u.A05 && BX.A01(this.A07, c7u.A07) && BX.A01(this.A09, c7u.A09) && BX.A01(this.A06, c7u.A06) && BX.A01(this.A08, c7u.A08)) {
                                    return true;
                                }
                                return false;
                            }

                            public final int hashCode() {
                                return BX.A00(Long.valueOf(this.A04), this.A07, Integer.valueOf(this.A01), this.A09, Long.valueOf(this.A03), this.A06, Integer.valueOf(this.A00), this.A08, Long.valueOf(this.A02), Long.valueOf(this.A05));
                            }
                        };
                    }

                    {
                        this.A07 = (C3T) C3M.A01(c3t);
                        this.A02 = new AnonymousClass41<>(AbstractC10974a.A0d(), c3t, new InterfaceC10963z() { // from class: com.facebook.ads.redexgen.X.nB
                        });
                    }

                    private final C7U A00() {
                        return A04(this.A08.A06());
                    }

                    private C7U A01(int i10, C2643mL c2643mL) {
                        C3M.A01(this.A00);
                        boolean z10 = true;
                        if (c2643mL != null) {
                            if (this.A08.A05(c2643mL) == null) {
                                z10 = false;
                            }
                            if (z10) {
                                return A04(c2643mL);
                            }
                            return A03(Timeline.A02, i10, c2643mL);
                        }
                        Timeline A7Y = this.A00.A7Y();
                        if (i10 >= A7Y.A07()) {
                            z10 = false;
                        }
                        if (!z10) {
                            A7Y = Timeline.A02;
                        }
                        return A03(A7Y, i10, null);
                    }

                    private C7U A02(C2782od c2782od) {
                        if (c2782od instanceof C9Y) {
                            C9Y c9y = (C9Y) c2782od;
                            if (c9y.A05 != null) {
                                return A04(new C2643mL(c9y.A05));
                            }
                        }
                        return A00();
                    }

                    private C7U A04(C2643mL c2643mL) {
                        Timeline A05;
                        C3M.A01(this.A00);
                        if (c2643mL == null) {
                            A05 = null;
                        } else {
                            A05 = this.A08.A05(c2643mL);
                        }
                        if (c2643mL == null || A05 == null) {
                            int windowIndex = this.A00.A7T();
                            Timeline knownTimeline = this.A00.A7Y();
                            if (!(windowIndex < knownTimeline.A07())) {
                                knownTimeline = Timeline.A02;
                            }
                            return A03(knownTimeline, windowIndex, null);
                        }
                        return A03(A05, A05.A0J(c2643mL.A04, this.A05).A00, c2643mL);
                    }

                    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.3y != com.facebook.ads.androidx.media3.common.util.ListenerSet$Event<com.facebook.ads.androidx.media3.exoplayer.analytics.AnalyticsListener> */
                    private final void A05(C7U c7u, int i10, InterfaceC10953y<C7W> interfaceC10953y) {
                        this.A04.put(i10, c7u);
                        this.A02.A0A(i10, interfaceC10953y);
                    }

                    @Override // com.facebook.ads.redexgen.X.InterfaceC2699nF
                    public final void AC5() {
                        if (!this.A03) {
                            final C7U A00 = A00();
                            this.A03 = true;
                            A05(A00, -1, new InterfaceC10953y() { // from class: com.facebook.ads.redexgen.X.n9
                            });
                        }
                    }

                    @Override // com.facebook.ads.redexgen.X.InterfaceC10632s
                    public final void ACv(final C2745o0 c2745o0) {
                        final C7U A00 = A00();
                        A05(A00, 27, new InterfaceC10953y() { // from class: com.facebook.ads.redexgen.X.n7
                        });
                    }

                    @Override // com.facebook.ads.redexgen.X.InterfaceC10632s
                    public final void ACw(final List<C2747o2> list) {
                        final C7U A00 = A00();
                        A05(A00, 27, new InterfaceC10953y() { // from class: com.facebook.ads.redexgen.X.mz
                        });
                    }

                    @Override // com.facebook.ads.redexgen.X.CX
                    public final void AD6(int i10, C2643mL c2643mL, final CG cg2) {
                        final C7U A01 = A01(i10, c2643mL);
                        A05(A01, 1004, new InterfaceC10953y() { // from class: com.facebook.ads.redexgen.X.nC
                        });
                    }

                    @Override // com.facebook.ads.redexgen.X.CX
                    public final void ADw(int i10, C2643mL c2643mL, final CE ce2, final CG cg2) {
                        final C7U A01 = A01(i10, c2643mL);
                        A05(A01, 1002, new InterfaceC10953y() { // from class: com.facebook.ads.redexgen.X.n8
                        });
                    }

                    @Override // com.facebook.ads.redexgen.X.CX
                    public final void ADy(@MetaExoPlayerCustomization(type = {"NEW_METHOD_ARGS"}) int i10, @MetaExoPlayerCustomization(type = {"NEW_METHOD_ARGS"}) C2643mL c2643mL, final CE ce2, final CG cg2, Object obj2, Object obj3) {
                        final C7U A01 = A01(i10, c2643mL);
                        A05(A01, 1001, new InterfaceC10953y() { // from class: com.facebook.ads.redexgen.X.n1
                        });
                    }

                    @Override // com.facebook.ads.redexgen.X.CX
                    public final void AE1(int i10, C2643mL c2643mL, final CE ce2, final CG cg2, final IOException iOException, final boolean z10) {
                        final C7U A01 = A01(i10, c2643mL);
                        A05(A01, 1003, new InterfaceC10953y() { // from class: com.facebook.ads.redexgen.X.nD
                        });
                    }

                    @Override // com.facebook.ads.redexgen.X.InterfaceC10632s
                    public final void AEb(final C2780ob c2780ob) {
                        final C7U A00 = A00();
                        A05(A00, 12, new InterfaceC10953y() { // from class: com.facebook.ads.redexgen.X.n6
                        });
                    }

                    @Override // com.facebook.ads.redexgen.X.InterfaceC10632s
                    public final void AEd(final C2782od c2782od) {
                        final C7U A02 = A02(c2782od);
                        A05(A02, 10, new InterfaceC10953y() { // from class: com.facebook.ads.redexgen.X.nA
                        });
                    }

                    @Override // com.facebook.ads.redexgen.X.InterfaceC10632s
                    public final void AEf(final boolean z10, final int i10) {
                        final C7U A00 = A00();
                        A05(A00, -1, new InterfaceC10953y() { // from class: com.facebook.ads.redexgen.X.n5
                        });
                    }

                    @Override // com.facebook.ads.redexgen.X.InterfaceC10632s
                    public final void AFB() {
                        final C7U A00 = A00();
                        A05(A00, -1, new InterfaceC10953y() { // from class: com.facebook.ads.redexgen.X.n0
                        });
                    }

                    @Override // com.facebook.ads.redexgen.X.InterfaceC10632s
                    public final void AFQ(Timeline timeline, final int i10) {
                        this.A08.A07((InterfaceC10702z) C3M.A01(this.A00));
                        final C7U A00 = A00();
                        A05(A00, 0, new InterfaceC10953y() { // from class: com.facebook.ads.redexgen.X.n3
                        });
                    }

                    @Override // com.facebook.ads.redexgen.X.InterfaceC10632s
                    public final void AFU(final C2751o6 c2751o6) {
                        final C7U A00 = A00();
                        A05(A00, 2, new InterfaceC10953y() { // from class: com.facebook.ads.redexgen.X.n2
                        });
                    }

                    @Override // com.facebook.ads.redexgen.X.InterfaceC2699nF
                    public final void AIv(final InterfaceC10702z interfaceC10702z, Looper looper) {
                        boolean z10;
                        AbstractC1252Am abstractC1252Am;
                        if (this.A00 != null) {
                            abstractC1252Am = this.A08.A03;
                            if (!abstractC1252Am.isEmpty()) {
                                z10 = false;
                                C3M.A08(z10);
                                this.A00 = (InterfaceC10702z) C3M.A01(interfaceC10702z);
                                this.A01 = this.A07.A5H(looper, null);
                                this.A02 = this.A02.A07(looper, new InterfaceC10963z() { // from class: com.facebook.ads.redexgen.X.n4
                                });
                            }
                        }
                        z10 = true;
                        C3M.A08(z10);
                        this.A00 = (InterfaceC10702z) C3M.A01(interfaceC10702z);
                        this.A01 = this.A07.A5H(looper, null);
                        this.A02 = this.A02.A07(looper, new InterfaceC10963z() { // from class: com.facebook.ads.redexgen.X.n4
                        });
                    }
                };
            }
        });
    }

    private final C9X A06(InterfaceC2706nM[] interfaceC2706nMArr, EK ek2, C6S c6s, EU eu2, C3T c3t) {
        return new C9X(interfaceC2706nMArr, ek2, c6s, eu2, c3t);
    }

    private void A0D() {
        if (this.A05 != null) {
            if (this.A05.getSurfaceTextureListener() != this.A0F) {
                Log.w(A07(0, 15, 71), A07(15, 49, 124));
            } else {
                this.A05.setSurfaceTextureListener(null);
            }
            this.A05 = null;
        }
        if (this.A04 != null) {
            this.A04.removeCallback(this.A0F);
            String[] strArr = A0O;
            if (strArr[6].length() == strArr[3].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0O;
            strArr2[6] = "1mt3T64XRkFMJTK0AHNCLCnfNjMbTppi";
            strArr2[3] = "rnp4JtgfYQ";
            this.A04 = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0F(Surface surface, boolean z10) {
        InterfaceC2706nM[] interfaceC2706nMArr;
        ArrayList<AnonymousClass71> arrayList = new ArrayList();
        for (InterfaceC2706nM interfaceC2706nM : this.A0M) {
            if (interfaceC2706nM.A9F() == 2) {
                arrayList.add(this.A0E.A0L(interfaceC2706nM).A07(1).A08(surface).A06());
            }
        }
        if (this.A03 != null && this.A03 != surface) {
            try {
                for (AnonymousClass71 anonymousClass71 : arrayList) {
                    anonymousClass71.A0C();
                }
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            }
            if (this.A0C) {
                this.A03.release();
            }
        }
        this.A03 = surface;
        this.A0C = z10;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2801ox
    public final void A0H(int i10, long j10) {
        this.A0G.AC5();
        this.A0E.A0H(i10, j10);
    }

    public final int A0I() {
        return this.A01;
    }

    public final C2796or A0J() {
        return this.A07;
    }

    public final C2796or A0K() {
        return this.A08;
    }

    public final void A0L() {
        this.A0E.A0M();
        A0D();
        if (this.A03 != null) {
            if (this.A0C) {
                this.A03.release();
            }
            this.A03 = null;
        }
        if (this.A0B != null) {
            this.A0B.AHi(this.A0G);
            this.A0B = null;
        }
    }

    public final void A0M(float f10) {
        InterfaceC2706nM[] interfaceC2706nMArr;
        float A00 = AbstractC10974a.A00(f10, 0.0f, 1.0f);
        if (this.A00 == A00) {
            return;
        }
        this.A00 = A00;
        for (InterfaceC2706nM interfaceC2706nM : this.A0M) {
            if (interfaceC2706nM.A9F() == 1) {
                this.A0E.A0L(interfaceC2706nM).A07(2).A08(Float.valueOf(A00)).A06();
            }
        }
    }

    public final void A0N(Surface surface) {
        A0D();
        A0F(surface, false);
    }

    public final void A0O(InterfaceC10632s interfaceC10632s) {
        this.A0E.A0O(interfaceC10632s);
        this.A0I.add(interfaceC10632s);
    }

    public final void A0P(InterfaceC2701nH interfaceC2701nH) {
        this.A0L.add(interfaceC2701nH);
    }

    public final void A0Q(CL cl2) {
        A0R(cl2, true, true);
    }

    public final void A0R(CL cl2, boolean z10, boolean z11) {
        if (this.A0B != null) {
            this.A0B.AHi(this.A0G);
        }
        this.A0B = cl2;
        cl2.A3r(this.A0D, this.A0G);
        this.A0E.A0P(cl2, z10, z11);
    }

    public final void A0S(boolean z10) {
        this.A0E.A0Q(z10);
    }

    public final boolean A0T() {
        return this.A0E.A0R();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC10702z
    public final long A6z() {
        return this.A0E.A6z();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC10702z
    public final long A7L() {
        return this.A0E.A7L();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC10702z
    public final int A7Q() {
        return this.A0E.A7Q();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC10702z
    public final int A7R() {
        return this.A0E.A7R();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC10702z
    public final int A7T() {
        return this.A0E.A7T();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC10702z
    public final int A7U() {
        return this.A0E.A7U();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC10702z
    public final long A7W() {
        return this.A0E.A7W();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC10702z
    public final Timeline A7Y() {
        return this.A0E.A7Y();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC10702z
    public final int A7Z() {
        return this.A0E.A7Z();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC10702z
    public final long A7k() {
        return this.A0E.A7k();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC10702z
    public final long A9B() {
        return this.A0E.A9B();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC10702z
    public final boolean AAU() {
        return this.A0E.AAU();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC10702z
    public final void AJV(boolean z10) {
        this.A0E.AJV(z10);
        if (this.A0B != null) {
            this.A0B.AHi(this.A0G);
            this.A0B = null;
            if (z10) {
                this.A0B = null;
            }
        }
    }
}
