package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.facebook.ads.AdSettings;
import com.facebook.ads.ExtraHints;
import com.facebook.ads.MediaView;
import com.facebook.ads.NativeAd;
import com.facebook.ads.NativeAdBase;
import com.facebook.ads.NativeAdLayout;
import com.facebook.ads.NativeAdListener;
import com.facebook.ads.NativeBannerAd;
import com.facebook.ads.internal.api.AdNativeComponentView;
import com.facebook.ads.internal.api.NativeAdBaseApi;
import com.facebook.ads.internal.api.NativeAdImageApi;
import com.facebook.ads.internal.context.Repairable;
import com.facebook.ads.internal.protocol.AdErrorType;
import com.facebook.ads.internal.protocol.AdPlacementType;
import com.ss.ttm.player.MediaPlayer;
import java.lang.ref.WeakReference;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import java.util.UUID;
import java.util.WeakHashMap;
/* renamed from: com.facebook.ads.redexgen.X.Qc  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1652Qc implements com.facebook.ads.Ad, NativeAdBaseApi, Repairable, InterfaceC1775Ux {
    public static SF A0k;
    public static byte[] A0l;
    public static String[] A0m = {"0QrYY16WpsBKaBkyPEA33iBIoR05UhVT", "YnnsFrkLVth43aFbA8XanJ7Af1ELV", "Oxqa2FUUnPLQ7GUfsty3Y0efzjvyqNtk", "SIKP4BEcnF1kam64buW5uj4ZKlEjFxDR", "vEVPI6RQ4lovzpZyrpWOxFDddvUHwWNp", "NGWOmnzpb", "djSS0JJWnZq1rlBsvyeXY9GnDKzed", "NhvbMWoFDj5W6o0bWnGe4dztWB8buZER"};
    public static final String A0n;
    public static final WeakHashMap<View, WeakReference<C1652Qc>> A0o;
    public long A00;
    public Drawable A01;
    public View.OnTouchListener A02;
    public View A03;
    public View A04;
    public View A05;
    public View A06;
    public NativeAdLayout A07;
    public EnumC1551Mc A08;
    public C2404iC A09;
    public C11716w A0A;
    public C2352hK A0B;
    public SL A0C;
    public TF A0D;
    public EnumC1763Ul A0E;
    public View$OnClickListenerC1682Rg A0F;
    public QQ A0G;
    public C1769Ur A0H;
    public EnumC1770Us A0I;
    public V6 A0J;
    public YX A0K;
    public C1891Zm A0L;
    public C2022bt A0M;
    public C2087cw A0N;
    public AbstractC2183eW A0O;
    public AbstractC2183eW A0P;
    public C2184eX A0Q;
    public C2184eX A0R;
    public String A0S;
    public String A0T;
    public WeakReference<C2271fx> A0U;
    public WeakReference<AbstractC2183eW> A0V;
    public boolean A0W;
    public boolean A0X;
    public boolean A0Y;
    public boolean A0Z;
    public C2415iN A0a;
    public final SF A0b;
    public final C2111dL A0c;
    public final InterfaceC1766Uo A0d;
    public final C1777Uz A0e;
    public final XH A0f;
    public final String A0g;
    public final String A0h;
    public final List<View> A0i;
    public volatile boolean A0j;

    public static String A0W(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A0l, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] - i12) - 112);
        }
        return new String(copyOfRange);
    }

    public static void A0e() {
        A0l = new byte[]{-32, 26, 38, 31, 30, -17, -17, 29, 32, -19, -12, 34, -15, -25, 26, -27, 25, 25, -28, 21, -22, -74, -70, -30, -78, -30, -78, -25, -29, 38, 73, 5, 83, 84, 89, 5, 81, 84, 70, 73, 74, 73, -25, 10, -6, 11, 19, 22, 18, 7, 26, 11, -58, -51, -53, 25, -51, -58, 15, 25, -58, 20, 21, 26, -58, 7, -58, 20, 7, 26, 15, 28, 11, -58, 7, 10, -33, -37, -38, 14, -3, 2, -2, 7, -4, -2, -25, -2, 13, 16, 8, 11, 4, -27, 0, 8, 11, 4, 3, -65, 19, 14, -65, 11, 14, 0, 3, -65, -20, 4, 3, 8, 0, -51, -16, 11, 19, 22, 15, 14, -54, 30, 25, -54, 25, 12, 30, 11, 19, 24, -54, 30, 15, 23, 26, 22, 11, 30, 15, -54, -13, -18, -54, 16, 28, 25, 23, -54, 12, 19, 14, -54, 26, 11, 35, 22, 25, 11, 14, -54, -47, -49, 29, -47, -23, 14, 20, 5, 18, 14, 1, 12, -64, 5, 18, 18, 15, 18, -50, -86, 30, 67, 75, 54, 65, 62, 57, -11, 72, 58, 73, -11, 68, 59, -11, 56, 65, 62, 56, 64, 54, 55, 65, 58, -11, 75, 62, 58, 76, 72, 0, 24, 23, 28, 20, 9, 28, 24, 42, -45, 25, 34, 37, -45, 28, 22, 34, 33, -45, 28, 38, -45, 28, 38, -45, 32, 28, 38, 38, 28, 33, 26, -31, 29, 53, 52, 57, 49, 38, 57, 53, 71, -16, 57, 67, -16, 61, 57, 67, 67, 57, 62, 55, -2, 51, 91, 89, 90, 6, 86, 88, 85, 92, 79, 74, 75, 6, 71, 6, 60, 79, 75, 93, 35, 54, 73, 62, 75, 58, -11, 22, 57, -11, 76, 54, 72, -11, 54, 65, 71, 58, 54, 57, 78, -11, 71, 58, 60, 62, 72, 73, 58, 71, 58, 57, -11, 76, 62, 73, 61, -11, 54, -11, 43, 62, 58, 76, 3, -11, 22, 74, 73, 68, -11, 74, 67, 71, 58, 60, 62, 72, 73, 58, 71, 62, 67, 60, -11, 54, 67, 57, -11, 69, 71, 68, 56, 58, 58, 57, 62, 67, 60, 3, -55, -36, -17, -28, -15, -32, -101, -36, -33, -101, -33, -32, -18, -17, -19, -22, -12, -32, -33, -39, -20, -1, -12, 1, -16, -85, -20, -17, -85, -9, -6, -20, -17, -85, -3, -16, -4, 0, -16, -2, -1, -16, -17, -22, -3, -7, 11, -76, -11, 0, 6, -7, -11, -8, 13, -76, 6, -7, -5, -3, 7, 8, -7, 6, -7, -8, -76, 11, -3, 8, -4, -76, -11, -76, -30, -11, 8, -3, 10, -7, -43, -8, -62, -76, -43, 9, 8, 3, -76, 9, 2, 6, -7, -5, -3, 7, 8, -7, 6, -3, 2, -5, -76, -11, 2, -8, -76, 4, 6, 3, -9, -7, -7, -8, -3, 2, -5, -62, -1, 18, 14, 32, -55, 23, 24, 29, -55, 27, 14, 16, 18, 28, 29, 14, 27, 14, 13, -55, 32, 18, 29, 17, -55, 29, 17, 18, 28, -55, -9, 10, 29, 18, 31, 14, -22, 13, 46, 49, -19, 58, 50, 49, 54, 46, -19, 65, 70, 61, 50, -19, 54, 64, -19, 59, 60, 65, -19, 64, 66, 61, 61, 60, 63, 65, 50, 49, -5, 54, 69, 62, 51, 52, 66, 67, 65, 62, 72, 81, 84, 70, 73, 38, 73, 69, 72, 58, 61, 26, 61, 1, 2, -7, 60, 58, 69, 69, 62, 61, -7, 70, 72, 75, 62, -7, 77, 65, 58, 71, -7, 72, 71, 60, 62, -27, -40, -21, -32, -19, -36};
        String[] strArr = A0m;
        if (strArr[6].length() != strArr[1].length()) {
            throw new RuntimeException();
        }
        A0m[3] = "WbNUBB1XQVUYjPuN5kyqwH0pcEyoS9gz";
    }

    /* JADX WARN: Code restructure failed: missing block: B:101:0x02c6, code lost:
        if (r6.A0S() == false) goto L102;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x02c8, code lost:
        r12.A0O = new com.facebook.ads.redexgen.X.C1718Sr(r12);
        r12.A0Q = new com.facebook.ads.redexgen.X.C2184eX(r13, 1, new java.lang.ref.WeakReference(r12.A0O), r12.A0c);
        r12.A0Q.A0Y(false);
        r12.A0Q.A0X(r6.A09());
        r12.A0Q.A0U();
        r12.A0c.A0F().ABz();
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x02fb, code lost:
        r1 = new java.util.ArrayList(r15);
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x0302, code lost:
        if (r12.A05 == null) goto L107;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x0304, code lost:
        r7 = r12.A05;
        r4 = com.facebook.ads.redexgen.X.C1652Qc.A0m;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x0317, code lost:
        if (r4[2].charAt(3) == r4[7].charAt(3)) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x0319, code lost:
        r4 = com.facebook.ads.redexgen.X.C1652Qc.A0m;
        r4[0] = "7BxfhPTBtrovnc2SNqJYjum2f5qDPcpL";
        r4[4] = "Q5pxYg7VFdMmLRDnYTITcnTwa1eIsVWj";
        r1.add(r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x0328, code lost:
        r2 = r1.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x0330, code lost:
        if (r2.hasNext() == false) goto L111;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x0332, code lost:
        A1L((android.view.View) r2.next());
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x033c, code lost:
        r0 = A10();
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x0340, code lost:
        if (r16 == false) goto L118;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x0342, code lost:
        if (r0 == null) goto L118;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x0348, code lost:
        if (r0.A1X() == false) goto L118;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x034a, code lost:
        A1L(r13);
        r1.add(r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x0350, code lost:
        r7 = A00();
        r12.A0P = new com.facebook.ads.redexgen.X.S9(r12, r14, r5, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x035d, code lost:
        if ((r14 instanceof com.facebook.ads.internal.api.AdNativeComponentView) == false) goto L153;
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x035f, code lost:
        r12.A03 = ((com.facebook.ads.internal.api.AdNativeComponentView) r14).getAdContentsView();
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x036d, code lost:
        if (com.facebook.ads.redexgen.X.U7.A1u(r12.A0c) == false) goto L127;
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x036f, code lost:
        r4 = A1C();
        r6 = A12().A0B();
        r5 = r12.A03;
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x037d, code lost:
        if (r4 != null) goto L126;
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x037f, code lost:
        r4 = A0W(0, 0, 121);
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x0387, code lost:
        r6.AK3(r5, r4, r12.A03 instanceof com.facebook.ads.redexgen.X.C2124dY, true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x038f, code lost:
        r12.A0R = new com.facebook.ads.redexgen.X.C2184eX(r12.A03, r7, A03(), true, new java.lang.ref.WeakReference(r12.A0P), r12.A0c);
        r12.A0R.A0Y(!A0r());
        r12.A0R.A0W(A01());
        r12.A0R.A0X(A02());
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x03c7, code lost:
        if ((r12.A03 instanceof com.facebook.ads.redexgen.X.C1881Zc) == false) goto L132;
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x03c9, code lost:
        r5 = (com.facebook.ads.redexgen.X.C1881Zc) r12.A03;
        r4 = com.facebook.ads.redexgen.X.C1652Qc.A0m;
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x03df, code lost:
        if (r4[0].charAt(21) == r4[4].charAt(21)) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x03e1, code lost:
        com.facebook.ads.redexgen.X.C1652Qc.A0m[3] = "9jWMkBrIWAaQq3BshIoiK9kOFApm7Mnb";
        r5.A06(r12.A0R);
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x03ed, code lost:
        r12.A09 = new com.facebook.ads.redexgen.X.C2404iC(r12.A0c, new com.facebook.ads.redexgen.X.C1660Qk(r12, null), r12.A0R, r12.A0a);
        r12.A09.A0H(r1);
        com.facebook.ads.redexgen.X.C1652Qc.A0o.put(r13, new java.lang.ref.WeakReference<>(r12));
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x0415, code lost:
        if (com.facebook.ads.redexgen.X.U7.A1B(r12.A0c) == false) goto L152;
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x0417, code lost:
        r12.A0L = new com.facebook.ads.redexgen.X.C1891Zm();
        r12.A0L.A0C(r12.A0g);
        r12.A0L.A0B(r12.A0c.getPackageName());
        r12.A0L.A0A(r12.A0R);
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x0439, code lost:
        if (r12.A0a == null) goto L139;
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x0445, code lost:
        if (r12.A0a.A0E().A03() <= 0) goto L139;
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x0447, code lost:
        r0 = r12.A0a.A0E();
        r12.A0L.A08(r0.A03(), r0.A04());
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x045a, code lost:
        r4 = r12.A0D;
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x0468, code lost:
        if (com.facebook.ads.redexgen.X.C1652Qc.A0m[3].charAt(5) == 'B') goto L150;
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x046a, code lost:
        if (r4 == null) goto L145;
     */
    /* JADX WARN: Code restructure failed: missing block: B:142:0x046c, code lost:
        r12.A0L.A09(r12.A0D.A0C());
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x0477, code lost:
        r12.A04.getOverlay().add(r12.A0L);
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x0482, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x0483, code lost:
        r2 = com.facebook.ads.redexgen.X.C1652Qc.A0m;
        r2[6] = "iJInlaPqSCsodlo1snRpIwz9DPt1A";
        r2[1] = "DYzZZFtfMBLderHMiZZFXfgJZWHC0";
     */
    /* JADX WARN: Code restructure failed: missing block: B:146:0x048f, code lost:
        if (r4 == null) goto L145;
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x0494, code lost:
        if (r12.A0A == null) goto L143;
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x049c, code lost:
        if (r12.A0A.A0J() == null) goto L143;
     */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x049e, code lost:
        r12.A0L.A09(r12.A0A.A0J().A0C());
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x04ae, code lost:
        r12.A03 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:164:?, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0222, code lost:
        if (r8 != null) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0224, code lost:
        android.util.Log.w(com.facebook.ads.redexgen.X.C1652Qc.A0n, A0W(com.ss.ttm.player.MediaPlayer.MEDIA_PLAYER_OPTION_GET_CUR_UI_FPS, 80, 101));
        unregisterView();
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0236, code lost:
        r8 = com.facebook.ads.redexgen.X.C1652Qc.A0o.containsKey(r13);
        r2 = com.facebook.ads.redexgen.X.C1652Qc.A0m;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x024c, code lost:
        if (r2[6].length() == r2[1].length()) goto L91;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0253, code lost:
        throw new java.lang.RuntimeException();
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x025b, code lost:
        if (r8 != null) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x025e, code lost:
        r2 = com.facebook.ads.redexgen.X.C1652Qc.A0m;
        r2[0] = "r1dCEV0W05obqeylsxysUOCLLtyqbDkO";
        r2[4] = "jsU6g8E1kSPqSuKqGJQzSRDrUMjHNr5E";
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x026a, code lost:
        if (r8 == false) goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0278, code lost:
        if (com.facebook.ads.redexgen.X.C1652Qc.A0o.get(r13).get() == null) goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x027a, code lost:
        android.util.Log.w(com.facebook.ads.redexgen.X.C1652Qc.A0n, A0W(406, 75, 36));
        com.facebook.ads.redexgen.X.C1652Qc.A0o.get(r13).get().unregisterView();
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x029a, code lost:
        r12.A0F = new com.facebook.ads.redexgen.X.View$OnClickListenerC1682Rg(r12, r12.A0c, null);
        r12.A04 = r13;
        r12.A06 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x02aa, code lost:
        if ((r13 instanceof android.view.ViewGroup) == false) goto L99;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x02ac, code lost:
        r12.A0K = new com.facebook.ads.redexgen.X.YX(r12.A0c, new com.facebook.ads.redexgen.X.C1725Sy(r12));
        ((android.view.ViewGroup) r13).addView(r12.A0K);
     */
    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 24 out of bounds for length 17
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
    private void A0g(android.view.View r13, android.view.View r14, java.util.List<android.view.View> r15, boolean r16) {
        /*
            Method dump skipped, instructions count: 1208
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1652Qc.A0g(android.view.View, android.view.View, java.util.List, boolean):void");
    }

    static {
        A0e();
        A0n = C1652Qc.class.getSimpleName();
        A0o = new WeakHashMap<>();
    }

    public C1652Qc(Context context, String str, InterfaceC1766Uo interfaceC1766Uo, boolean z10) {
        this.A0h = UUID.randomUUID().toString();
        this.A0J = V6.A06;
        this.A0E = EnumC1763Ul.A04;
        this.A08 = EnumC1551Mc.A03;
        this.A0U = new WeakReference<>(null);
        this.A0i = new ArrayList();
        this.A0f = new XH();
        this.A0Z = false;
        this.A0Y = false;
        this.A00 = -1L;
        if (context instanceof C2111dL) {
            this.A0c = (C2111dL) context;
        } else if (!z10) {
            this.A0c = RB.A04(context);
        } else {
            this.A0c = RB.A03(context);
        }
        this.A0c.A0O(this);
        this.A0g = str;
        this.A0d = interfaceC1766Uo;
        if (A0k != null) {
            this.A0b = A0k;
        } else {
            this.A0b = new SF(this.A0c);
        }
        this.A05 = new View(context);
        this.A0e = new C1777Uz(this.A0c, this);
    }

    public C1652Qc(C1652Qc c1652Qc) {
        this((Context) c1652Qc.A0c, (String) null, c1652Qc.A0d, true);
        this.A0D = c1652Qc.A0D;
        this.A0a = c1652Qc.A0a;
        this.A0B = c1652Qc.A0B;
        this.A0j = true;
        this.A05 = new View(this.A0c);
    }

    public C1652Qc(C2111dL c2111dL, C2415iN c2415iN, TF tf2, InterfaceC1766Uo interfaceC1766Uo) {
        this((Context) c2111dL, (String) null, interfaceC1766Uo, true);
        this.A0a = c2415iN;
        this.A0D = tf2;
        this.A0j = true;
        this.A05 = new View(c2111dL);
    }

    public C1652Qc(C2111dL c2111dL, C2415iN c2415iN, TF tf2, InterfaceC1766Uo interfaceC1766Uo, C2352hK c2352hK) {
        this(c2111dL, c2415iN, tf2, interfaceC1766Uo);
        this.A0B = c2352hK;
    }

    private int A00() {
        if (this.A0D != null) {
            return this.A0D.A04();
        }
        if (this.A0A == null || this.A0A.A0J() == null) {
            return 1;
        }
        TF A0J = this.A0A.A0J();
        String[] strArr = A0m;
        String str = strArr[6];
        String str2 = strArr[1];
        int length = str.length();
        int viewabilityThreshold = str2.length();
        if (length != viewabilityThreshold) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0m;
        strArr2[2] = "P5kYLn6xwAUrjDfDuw88TuaVt88D3vtD";
        strArr2[7] = "ZJzVQNISDO4cH7XUZ38T2d7bCdM1k8uN";
        return A0J.A04();
    }

    private int A01() {
        if (this.A0D != null) {
            return this.A0D.A07();
        }
        if (this.A0a != null) {
            return this.A0a.A0C();
        }
        if (this.A0A != null && this.A0A.A0J() != null) {
            return this.A0A.A0J().A07();
        }
        return 0;
    }

    private int A02() {
        if (this.A0D != null) {
            return this.A0D.A08();
        }
        if (this.A0a != null) {
            return this.A0a.A0D();
        }
        if (this.A0A != null && this.A0A.A0J() != null) {
            return this.A0A.A0J().A08();
        }
        return 1000;
    }

    private int A03() {
        if (this.A0D != null) {
            return this.A0D.A09();
        }
        C11716w c11716w = this.A0A;
        if (A0m[3].charAt(5) != 'B') {
            throw new RuntimeException();
        }
        A0m[5] = "Xt";
        if (c11716w == null || this.A0A.A0J() == null) {
            return 0;
        }
        return this.A0A.A0J().A09();
    }

    public static Drawable A05(C2111dL c2111dL, Bitmap bitmap, boolean z10, String str) {
        BitmapDrawable A00;
        BitmapDrawable bitmapDrawable = new BitmapDrawable(c2111dL.getResources(), bitmap);
        if (!z10 || (A00 = AbstractC2086cv.A00(c2111dL, str)) == null) {
            return bitmapDrawable;
        }
        Drawable iconViewDrawable = new LayerDrawable(new Drawable[]{bitmapDrawable, A00});
        return iconViewDrawable;
    }

    public static NativeAdBase A0A(Context context, String str, String str2) throws V2 {
        V6 A00 = VB.A00(str2);
        if (A00 != null) {
            V6 template = V6.A05;
            if (A00 == template) {
                return new NativeBannerAd(context, str);
            }
            V6 template2 = V6.A06;
            if (A00 == template2) {
                return new NativeAd(context, str);
            }
            throw new V2(AdErrorType.BID_PAYLOAD_ERROR, String.format(Locale.US, A0W(42, 34, 54), A00));
        }
        throw new V2(AdErrorType.BID_PAYLOAD_ERROR, String.format(Locale.US, A0W(114, 50, 58), str2));
    }

    private final C2415iN A0C() {
        C2415iN c2415iN = this.A0a;
        if (c2415iN != null && c2415iN.A0R()) {
            return c2415iN;
        }
        return null;
    }

    private C2403iB A0F() {
        return A0G(false);
    }

    private C2403iB A0G(boolean z10) {
        if (this.A0a != null) {
            C2415iN c2415iN = this.A0a;
            if (A0m[3].charAt(5) == 'B') {
                String[] strArr = A0m;
                strArr[0] = "rkQiEYXoMEhriwkmxTS9YqbekXjRctvV";
                strArr[4] = "aQIgqL6bCxVEsMgFZvYj1f08oAvgjHgO";
                if (c2415iN.A0R()) {
                    if (z10) {
                        C2415iN c2415iN2 = this.A0a;
                        if (A0m[3].charAt(5) == 'B') {
                            A0m[3] = "EWl26Bqfon8mX0lHHC6z05409Pwx5AXq";
                            c2415iN2.A0I();
                        }
                    }
                    return this.A0a.A0E();
                }
            }
            throw new RuntimeException();
        }
        return new C2403iB();
    }

    public static S3 A0K() {
        return new S3();
    }

    public static C1652Qc A0L(NativeAdBaseApi nativeAdBaseApi) {
        if (nativeAdBaseApi instanceof Proxy) {
            return (C1652Qc) ((C1671Qv) Proxy.getInvocationHandler(nativeAdBaseApi)).A04();
        }
        return (C1652Qc) nativeAdBaseApi;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.internal.api.NativeAdBaseApi
    /* renamed from: A0M */
    public final C1767Up getAdChoicesIcon() {
        return A0F().A0D();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.internal.api.NativeAdBaseApi
    /* renamed from: A0O */
    public final C1768Uq getAdStarRating() {
        return A0F().A0G();
    }

    private AdPlacementType A0R() {
        if (this.A0J == V6.A06) {
            return AdPlacementType.NATIVE;
        }
        return AdPlacementType.NATIVE_BANNER;
    }

    private void A0a() {
        for (View view : this.A0i) {
            view.setOnClickListener(null);
            if (A0m[3].charAt(5) != 'B') {
                throw new RuntimeException();
            }
            A0m[3] = "reBfvBMaH6BqwlxZ2WqAQZq3knZpIvyz";
            view.setOnTouchListener(null);
            view.setOnLongClickListener(null);
        }
        this.A0i.clear();
    }

    private void A0b() {
        if (!TextUtils.isEmpty(getAdChoicesLinkUrl())) {
            WN.A0O(new WN(), this.A0c, WQ.A00(getAdChoicesLinkUrl()), A1C());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0c() {
        this.A0f.A05();
        this.A0e.A05();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0d() {
        if (this.A0Q != null) {
            this.A0Q.A0V();
            this.A0c.A0F().AC0();
            this.A0Q = null;
        }
    }

    public static void A0f(Drawable drawable, ImageView imageView) {
        imageView.setScaleType(ImageView.ScaleType.FIT_XY);
        if (drawable != null) {
            imageView.setImageDrawable(drawable);
        }
        if (A0m[3].charAt(5) != 'B') {
            throw new RuntimeException();
        }
        String[] strArr = A0m;
        strArr[6] = "LXDT52DRzEPuIKBbeK5QN38hLQjcy";
        strArr[1] = "Z1aNossC2MxjaxQyIIrn4vHalGw3J";
        imageView.setBackground(null);
    }

    private void A0h(FrameLayout frameLayout, String str) {
        if (this.A0N != null) {
            frameLayout.removeView(this.A0N);
        }
        this.A0N = AbstractC2086cv.A01(RB.A03(this.A0c), str);
        if (this.A0N != null) {
            frameLayout.addView(this.A0N, new FrameLayout.LayoutParams(-1, -1));
            frameLayout.bringChildToFront(this.A0N);
        }
    }

    private void A0i(C2415iN c2415iN, boolean z10) {
        if (c2415iN == null) {
            return;
        }
        boolean equals = this.A0E.equals(EnumC1763Ul.A04);
        String A0W = A0W(596, 6, 7);
        if (equals) {
            C2403iB A0E = c2415iN.A0E();
            String clientToken = c2415iN.A7G();
            if (!TextUtils.isEmpty(clientToken)) {
                this.A0b.A0e(new C1752Ua(clientToken, this.A0c.A0A()));
            }
            C1767Up A0F = A0E.A0F();
            String[] strArr = A0m;
            if (strArr[2].charAt(3) == strArr[7].charAt(3)) {
                throw new RuntimeException();
            }
            A0m[3] = "olK6BBrMvSH2F6L4J2jXYHYWLLMocGr7";
            if (A0F != null) {
                SD sd2 = new SD(A0E.A0F().getUrl(), A0E.A0F().getHeight(), A0E.A0F().getWidth(), c2415iN.A0G(), A0W(596, 6, 7));
                sd2.A01 = this.A0C;
                this.A0b.A0W();
                this.A0b.A0c(sd2);
            }
            if (!this.A0J.equals(V6.A05)) {
                if (A0E.A0E() != null) {
                    this.A0b.A0c(new SD(A0E.A0E().getUrl(), A0E.A0E().getHeight(), A0E.A0E().getWidth(), c2415iN.A0G(), A0W(596, 6, 7)));
                }
                if (c2415iN.A0H() != null) {
                    for (C1652Qc c1652Qc : c2415iN.A0H()) {
                        if (c1652Qc.getAdCoverImage() != null) {
                            this.A0b.A0c(new SD(c1652Qc.getAdCoverImage().getUrl(), c1652Qc.getAdCoverImage().getHeight(), c1652Qc.getAdCoverImage().getWidth(), c2415iN.A0G(), A0W(596, 6, 7)));
                        }
                    }
                }
                String A0b = A0E.A0b();
                if (!TextUtils.isEmpty(A0b)) {
                    this.A0b.A0b(new SB(A0b, c2415iN.A0G(), A0W(596, 6, 7), A0E.A0A()));
                }
            }
            AbstractC2392hy A0C = A0E.A0C();
            if (A0C != null && A0C.A1Y()) {
                SB sb2 = new SB(A0C.A0s(), A0C.A17(), A0W);
                sb2.A04 = true;
                sb2.A03 = A0W(0, 5, 66);
                this.A0b.A0Y(sb2);
            }
        }
        this.A0b.A0X(new T7(this, c2415iN, z10), new S8(c2415iN.A0G(), A0W));
    }

    private void A0j(InterfaceC1553Me interfaceC1553Me) {
        if (this.A0a == null) {
            return;
        }
        this.A0a.A0K(interfaceC1553Me);
    }

    public static void A0k(NativeAdImageApi nativeAdImageApi, ImageView imageView, C2111dL c2111dL) {
        if (nativeAdImageApi != null && imageView != null) {
            new KZ(imageView, c2111dL).A05(nativeAdImageApi.getHeight(), nativeAdImageApi.getWidth()).A07(nativeAdImageApi.getUrl());
        }
    }

    private final void A0n(QQ qq2) {
        this.A0G = qq2;
    }

    private final void A0o(String str) {
        this.A0S = str;
    }

    private void A0p(List<View> list, View view) {
        if (this.A0d != null && this.A0d.AJD(view)) {
            return;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
                A0p(list, viewGroup.getChildAt(i10));
            }
            return;
        }
        list.add(view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean A0q() {
        return A19() == EnumC1772Uu.A05 || A19() == EnumC1772Uu.A03;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean A0r() {
        return A0F().A0e();
    }

    public final long A0y() {
        return this.A00;
    }

    public final C2415iN A0z() {
        return this.A0a;
    }

    public final AbstractC2392hy A10() {
        return A0F().A0C();
    }

    public final SF A11() {
        return this.A0b;
    }

    public final C2111dL A12() {
        return this.A0c;
    }

    public final View$OnClickListenerC1682Rg A13() {
        return this.A0F;
    }

    @Override // com.facebook.ads.internal.api.NativeAdBaseApi
    /* renamed from: A14 */
    public final C1767Up getAdCoverImage() {
        return A0F().A0E();
    }

    @Override // com.facebook.ads.internal.api.NativeAdBaseApi
    /* renamed from: A15 */
    public final C1767Up getAdIcon() {
        return A0F().A0F();
    }

    public final QQ A16() {
        return this.A0G;
    }

    public final C1769Ur A17() {
        return this.A0H;
    }

    public final EnumC1770Us A18() {
        return this.A0I;
    }

    public final EnumC1772Uu A19() {
        return A0F().A0H();
    }

    public final XH A1A() {
        return this.A0f;
    }

    public final C2184eX A1B() {
        return this.A0R;
    }

    public final String A1C() {
        if (this.A0a == null || !isAdLoaded()) {
            return null;
        }
        return this.A0a.A7G();
    }

    public final String A1D() {
        return this.A0T;
    }

    public final String A1E() {
        return A0G(true).A0N();
    }

    public final String A1F() {
        return A0G(true).A0O();
    }

    public final String A1G() {
        return A0F().A0a();
    }

    public final String A1H() {
        if (this.A0a == null || TextUtils.isEmpty(this.A0a.A0E().A0b())) {
            return null;
        }
        return this.A0b.A0T(this.A0a.A0E().A0b());
    }

    public final List<C1652Qc> A1I() {
        if (this.A0a == null || !isAdLoaded()) {
            return null;
        }
        return this.A0a.A0H();
    }

    public final void A1J() {
        if (!O3.A00(this.A0c.A02()).A0O(this.A0c, false)) {
            A0b();
            if (A0m[5].length() == 3) {
                throw new RuntimeException();
            }
            A0m[3] = "yREZ0BSYt8CSunaR9f1myx0zIAs3a5bO";
            return;
        }
        AbstractC1856Yd A01 = AbstractC1857Ye.A01(this.A0c, this.A0c.A0A(), A1C(), this.A07);
        if (A01 == null) {
            A0b();
            return;
        }
        ((C2254fg) this.A07.getNativeAdLayoutApi()).A03(A01);
        A01.A0M();
    }

    public final void A1K(Drawable drawable) {
        this.A01 = drawable;
        A1f(drawable != null, true);
    }

    public final void A1L(View view) {
        this.A0i.add(view);
        view.setOnClickListener(this.A0F);
        view.setOnTouchListener(this.A0F);
        if (U7.A1B(view.getContext())) {
            view.setOnLongClickListener(this.A0F);
        }
    }

    public final void A1M(View view, ImageView imageView) {
        ArrayList arrayList = new ArrayList();
        A0p(arrayList, view);
        A0g(view, imageView, arrayList, true);
    }

    public final void A1N(View view, ImageView imageView, List<View> clickableViews) {
        A0g(view, imageView, clickableViews, true);
    }

    public final void A1O(View view, AdNativeComponentView adNativeComponentView) {
        ArrayList arrayList = new ArrayList();
        A0p(arrayList, view);
        A0g(view, adNativeComponentView, arrayList, false);
    }

    public final void A1P(View view, AdNativeComponentView adNativeComponentView, List<View> clickableViews) {
        A0g(view, adNativeComponentView, clickableViews, false);
    }

    public final void A1Q(View view, AdNativeComponentView adNativeComponentView, List<View> clickableViews, boolean z10) {
        A0g(view, adNativeComponentView, clickableViews, z10);
    }

    public final void A1R(View view, AdNativeComponentView adNativeComponentView, boolean z10) {
        List<View> clickableViews = new ArrayList<>();
        A0p(clickableViews, view);
        A0g(view, adNativeComponentView, clickableViews, z10);
    }

    public final void A1S(MediaView mediaView) {
        if (mediaView != null) {
            this.A0Y = true;
        }
    }

    public final void A1T(MediaView mediaView) {
        if (mediaView != null) {
            this.A0Z = true;
        }
    }

    public final void A1U(NativeAdBase nativeAdBase, NativeAdListener nativeAdListener) {
        if (nativeAdListener == null) {
            return;
        }
        A0n(new C6I(nativeAdListener, nativeAdBase));
    }

    public final void A1V(NativeAdLayout nativeAdLayout) {
        this.A07 = nativeAdLayout;
    }

    public final void A1W(C2415iN c2415iN) {
        A0i(c2415iN, true);
        if (this.A0G != null && c2415iN.A0H() != null) {
            T9 t92 = new T9(this);
            for (C1652Qc c1652Qc : c2415iN.A0H()) {
                if (A0m[3].charAt(5) != 'B') {
                    throw new RuntimeException();
                }
                String[] strArr = A0m;
                strArr[0] = "7JUEXy8BV6wMe69mvRG8Hisl1h58kfsH";
                strArr[4] = "Ag7M0cktqfZPxcWhbEyn8XCMGlxm5ALn";
                c1652Qc.A0j(t92);
            }
        }
    }

    public final void A1X(C2271fx c2271fx) {
        this.A0U = new WeakReference<>(c2271fx);
    }

    public final void A1Y(EnumC1763Ul enumC1763Ul, String str, SL sl2) {
        if (str == null) {
            this.A0c.A0F().A3I();
        } else {
            this.A0c.A0F().A3H();
        }
        this.A00 = System.currentTimeMillis();
        boolean z10 = this.A0j;
        String[] strArr = A0m;
        if (strArr[0].charAt(21) != strArr[4].charAt(21)) {
            String[] strArr2 = A0m;
            strArr2[0] = "knecuAJjZigTf7VsFCGhTGCW7dxKplKn";
            strArr2[4] = "uRrNlLGUJL1gxvEKewtOLFu1Ztix0dl1";
            if (z10) {
                AdSettings.IntegrationErrorMode A00 = NW.A00(this.A0c);
                String A0W = A0W(566, 30, 105);
                AdSettings.IntegrationErrorMode integrationErrorMode = AdSettings.IntegrationErrorMode.INTEGRATION_ERROR_CRASH_DEBUG_MODE;
                if (!integrationErrorMode.equals(A00)) {
                    V1 v12 = new V1(AdErrorType.LOAD_AD_CALLED_MORE_THAN_ONCE, A0W(566, 30, 105));
                    A12().A0F().A3F(XG.A01(this.A00), v12.A03().getErrorCode(), v12.A04());
                    if (this.A0G != null) {
                        this.A0G.ADB(v12);
                    } else {
                        Log.e(A0W(76, 17, 41), A0W);
                    }
                    C1723Sw c1723Sw = new C1723Sw(A0W);
                    A12().A08().AAy(A0W(550, 3, 101), AbstractC1722Sv.A0c, c1723Sw);
                } else {
                    throw new C1575Nb(A0W);
                }
            }
            this.A0j = true;
            this.A0E = enumC1763Ul;
            if (enumC1763Ul.equals(EnumC1763Ul.A05)) {
                EnumC1551Mc enumC1551Mc = EnumC1551Mc.A05;
                if (A0m[3].charAt(5) == 'B') {
                    A0m[3] = "N11XMBa1eBkGGouoRChlRsXEwEtHvHDZ";
                    this.A08 = enumC1551Mc;
                }
            }
            this.A0C = sl2;
            NT nt2 = new NT(this.A0g, this.A0J, A0R(), null, 1, new C2343hB());
            nt2.A05(enumC1763Ul);
            nt2.A06(this.A0S);
            nt2.A07(this.A0T);
            this.A0A = new C11716w(this.A0c, nt2);
            this.A0A.A0S(new TA(this));
            this.A0A.A0W(str);
            return;
        }
        throw new RuntimeException();
    }

    public final void A1Z(C1769Ur c1769Ur) {
        this.A0H = c1769Ur;
    }

    public final void A1a(EnumC1770Us enumC1770Us) {
        this.A0I = enumC1770Us;
    }

    public final void A1b(V6 v62) {
        if (!A0r()) {
            if (V6.A05.equals(v62)) {
                this.A0c.A0F().A3L(AdPlacementType.NATIVE_BANNER.toString(), this.A0g);
            } else {
                this.A0c.A0F().A3L(AdPlacementType.NATIVE.toString(), this.A0g);
            }
        }
        this.A0J = v62;
    }

    public final void A1c(AbstractC2183eW abstractC2183eW) {
        this.A0V = new WeakReference<>(abstractC2183eW);
    }

    public final void A1d(boolean z10) {
        this.A0W = z10;
    }

    public final void A1e(boolean z10) {
        this.A0X = z10;
    }

    public final void A1f(boolean z10, boolean z11) {
        String A0W;
        if (z10) {
            if (this.A0E.equals(EnumC1763Ul.A05)) {
                boolean A0r = A0r();
                if (A0m[3].charAt(5) != 'B') {
                    throw new RuntimeException();
                }
                String[] strArr = A0m;
                strArr[6] = "maLBxQjysuwmJ75m3YPaJDHU5JlBu";
                strArr[1] = "hXXEi4DazsshJWFEyRiAh7tUxgC1d";
                if (!A0r && this.A0G != null) {
                    this.A0G.AEB();
                }
            }
            if (this.A0R != null) {
                this.A0R.A0U();
                this.A0e.A09();
                return;
            }
            return;
        }
        if (this.A0R != null) {
            C2415iN adapter = A0z();
            if (adapter != null) {
                A0W = adapter.A0G();
            } else if (A0m[5].length() != 3) {
                String[] strArr2 = A0m;
                strArr2[2] = "2ETmOz1YodPf8MKRGGB9YcIoy7FDTpAq";
                strArr2[7] = "k5VZ8yDbY0Zqj8FxkeEerY08JJe7M6tR";
                A0W = A0W(0, 0, 121);
            } else {
                String[] strArr3 = A0m;
                strArr3[0] = "JjUCnZOckAfeDcKZajvIf0dyi7sruRRg";
                strArr3[4] = "GlO3j5qd4HFQ8L5mPWBpkp3onxgG8Q98";
                A0W = A0W(0, 0, 121);
            }
            this.A0e.A0C(this.A0c, A0W);
            this.A0R.A0V();
        }
        if (this.A0G != null && z11) {
            V1 A01 = V1.A01(AdErrorType.BROKEN_MEDIA_ERROR, A0W(93, 21, 47));
            A12().A0F().A3F(XG.A01(this.A00), A01.A03().getErrorCode(), A01.A04());
            this.A0G.ADB(A01);
        }
    }

    public final boolean A1g() {
        return this.A07 == null;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1775Ux
    public final int A7V() {
        View view = this.A06;
        if (view instanceof AdNativeComponentView) {
            View videoView = ((AdNativeComponentView) view).getAdContentsView();
            if (videoView instanceof C2124dY) {
                return ((C2124dY) videoView).getCurrentPosition();
            }
            return -1;
        }
        return -1;
    }

    @Override // com.facebook.ads.internal.api.NativeAdBaseApi
    public final NativeAdBase.NativeAdLoadConfigBuilder buildLoadAdConfig(NativeAdBase nativeAdBase) {
        return new C1773Uv(this, nativeAdBase);
    }

    @Override // com.facebook.ads.Ad
    public final void destroy() {
        VF.A05(A0W(MediaPlayer.MEDIA_PLAYER_OPTION_CHANNELS, 7, 95), A0W(MediaPlayer.MEDIA_PLAYER_OPTION_DECODER_STALL_THRESHOLD, 19, 11), A0W(13, 8, 68));
        if (U7.A1u(this.A0c)) {
            A12().A0B().AJj(this.A03);
        }
        if (!A0r()) {
            this.A0c.A0F().A3M();
        }
        if (this.A0A != null) {
            this.A0A.A0Y(true);
            this.A0A.A0K();
            this.A0A = null;
        }
    }

    @Override // com.facebook.ads.internal.api.NativeAdBaseApi
    public final void downloadMedia() {
        if (this.A0E.equals(EnumC1763Ul.A05)) {
            this.A08 = EnumC1551Mc.A04;
        }
        this.A0E = EnumC1763Ul.A04;
        A0i(this.A0a, false);
    }

    @Override // com.facebook.ads.internal.api.NativeAdBaseApi
    public final String getAdBodyText() {
        return A0G(true).A0I();
    }

    @Override // com.facebook.ads.internal.api.NativeAdBaseApi
    public final String getAdCallToAction() {
        return A0G(true).A0W();
    }

    @Override // com.facebook.ads.internal.api.NativeAdBaseApi
    public final String getAdChoicesImageUrl() {
        if (getAdChoicesIcon() == null) {
            return null;
        }
        return getAdChoicesIcon().getUrl();
    }

    @Override // com.facebook.ads.internal.api.NativeAdBaseApi
    public final String getAdChoicesLinkUrl() {
        return A0F().A0J();
    }

    @Override // com.facebook.ads.internal.api.NativeAdBaseApi
    public final String getAdChoicesText() {
        return A0F().A0K();
    }

    @Override // com.facebook.ads.internal.api.NativeAdBaseApi
    public final String getAdHeadline() {
        return A0G(true).A0L();
    }

    @Override // com.facebook.ads.internal.api.NativeAdBaseApi
    public final String getAdLinkDescription() {
        return A0G(true).A0M();
    }

    @Override // com.facebook.ads.internal.api.NativeAdBaseApi
    public final String getAdSocialContext() {
        return A0G(true).A0Q();
    }

    @Override // com.facebook.ads.internal.api.NativeAdBaseApi
    public final String getAdTranslation() {
        return A0G(true).A0T();
    }

    @Override // com.facebook.ads.internal.api.NativeAdBaseApi
    public final String getAdUntrimmedBodyText() {
        return A0G(true).A0U();
    }

    @Override // com.facebook.ads.internal.api.NativeAdBaseApi
    public final String getAdvertiserName() {
        return A0G(true).A0V();
    }

    @Override // com.facebook.ads.internal.api.NativeAdBaseApi
    public final float getAspectRatio() {
        C1767Up nativeAdImage;
        if (this.A0a == null || (nativeAdImage = this.A0a.A0E().A0E()) == null) {
            return 0.0f;
        }
        int width = nativeAdImage.getWidth();
        int height = nativeAdImage.getHeight();
        if (height > 0) {
            float f10 = width;
            float f11 = height;
            String[] strArr = A0m;
            if (strArr[0].charAt(21) != strArr[4].charAt(21)) {
                A0m[3] = "OUTl4BjdLTzCi4kmpI6eA9pKBM08eKMp";
                return f10 / f11;
            }
            throw new RuntimeException();
        }
        return 0.0f;
    }

    @Override // com.facebook.ads.internal.api.NativeAdBaseApi
    public final String getId() {
        if (!isAdLoaded()) {
            return null;
        }
        return this.A0h;
    }

    @Override // com.facebook.ads.Ad
    public final String getPlacementId() {
        return this.A0g;
    }

    @Override // com.facebook.ads.internal.api.NativeAdBaseApi
    public final Drawable getPreloadedIconViewDrawable() {
        C1767Up A0F;
        Bitmap A0N;
        C2415iN adapter = this.A0a;
        if (adapter != null && (A0F = A0F().A0F()) != null && (A0N = this.A0b.A0N(A0F.getUrl())) != null) {
            return A05(A12(), A0N, A1g(), A1D());
        }
        return null;
    }

    @Override // com.facebook.ads.internal.api.NativeAdBaseApi
    public final String getPromotedTranslation() {
        return A0G(true).A0P();
    }

    @Override // com.facebook.ads.internal.api.NativeAdBaseApi
    public final String getSponsoredTranslation() {
        return A0G(true).A0R();
    }

    @Override // com.facebook.ads.internal.api.NativeAdBaseApi
    public final boolean hasCallToAction() {
        return this.A0a != null && this.A0a.A0Q();
    }

    @Override // com.facebook.ads.Ad
    public final boolean isAdInvalidated() {
        boolean z10 = true;
        if (this.A0A != null) {
            C11716w c11716w = this.A0A;
            String[] strArr = A0m;
            if (strArr[6].length() != strArr[1].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0m;
            strArr2[2] = "gqyuy6F7WThaJUOfAsIyr4sziGGBhw0f";
            strArr2[7] = "L6lbko7Rv34huPFym8TvMBezY1vQkdWf";
            z10 = c11716w.A0Z();
        } else if (this.A0B != null) {
            z10 = this.A0B.A0A();
        }
        this.A0c.A0F().A5X(z10);
        return z10;
    }

    @Override // com.facebook.ads.internal.api.NativeAdBaseApi
    public final boolean isAdLoaded() {
        return this.A0a != null && this.A0a.A0R();
    }

    @Override // com.facebook.ads.Ad
    public final void loadAd() {
        VF.A05(A0W(560, 6, 117), A0W(MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_300, 24, 27), A0W(5, 8, 76));
        A1Y(EnumC1763Ul.A00(NativeAdBase.MediaCacheFlag.ALL), null, new SL(false, -1, -1));
    }

    @Override // com.facebook.ads.internal.api.NativeAdBaseApi
    public final void loadAd(NativeAdBase.NativeLoadAdConfig nativeLoadAdConfig) {
        VF.A05(A0W(560, 6, 117), A0W(MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_300, 24, 27), A0W(21, 8, 17));
        ((C1773Uv) nativeLoadAdConfig).A00();
    }

    @Override // com.facebook.ads.internal.api.NativeAdBaseApi
    public final void onCtaBroadcast() {
        if (this.A05 != null) {
            this.A05.performClick();
        }
    }

    @Override // com.facebook.ads.internal.context.Repairable
    public final void repair(Throwable th2) {
        if (this.A04 != null) {
            this.A04.post(new TB(this));
        }
        String str = A0W(164, 16, 48) + X7.A03(this.A0c, th2);
        A12().A0F().A3F(XG.A01(this.A00), 2001, str);
        if (this.A0G != null) {
            this.A0G.ADB(new V1(2001, str));
        }
    }

    @Override // com.facebook.ads.Ad
    public final void setExtraHints(ExtraHints extraHints) {
        if (extraHints == null) {
            return;
        }
        A0o(extraHints.getHints());
        this.A0T = extraHints.getMediationData();
    }

    @Override // com.facebook.ads.internal.api.NativeAdBaseApi
    public final void setOnTouchListener(View.OnTouchListener onTouchListener) {
        this.A02 = onTouchListener;
    }

    @Override // com.facebook.ads.internal.api.NativeAdBaseApi
    public final void unregisterView() {
        C2087cw c2087cw = this.A0N;
        if (c2087cw != null) {
            ViewParent parent = c2087cw.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(c2087cw);
            }
            this.A0N = null;
        }
        if (this.A04 == null || this.A06 == null) {
            return;
        }
        if (!A0r()) {
            LH A0F = this.A0c.A0F();
            String[] strArr = A0m;
            if (strArr[0].charAt(21) != strArr[4].charAt(21)) {
                A0m[3] = "w9n8TBisrss8zAM8EiwpgeUnlq2PaQ6F";
                A0F.unregisterView();
            }
            throw new RuntimeException();
        }
        if (U7.A1u(this.A0c)) {
            A12().A0B().AJj(this.A03);
        }
        if (A0o.containsKey(this.A04) && A0o.get(this.A04).get() == this) {
            View view = this.A04;
            String[] strArr2 = A0m;
            if (strArr2[2].charAt(3) != strArr2[7].charAt(3)) {
                String[] strArr3 = A0m;
                strArr3[6] = "1kkuB6xtwDeF3EtU3aavEsH64nQcK";
                strArr3[1] = "rb6NM7K87kMKFcLdVL5rugEXgDuZd";
                if ((view instanceof ViewGroup) && this.A0K != null) {
                    ((ViewGroup) this.A04).removeView(this.A0K);
                    this.A0K = null;
                }
                if (this.A0a != null) {
                    this.A0a.A0J();
                }
                if (this.A0L != null && U7.A1B(this.A0c)) {
                    this.A0L.A07();
                    View view2 = this.A04;
                    String[] strArr4 = A0m;
                    if (strArr4[2].charAt(3) == strArr4[7].charAt(3)) {
                        throw new RuntimeException();
                    }
                    String[] strArr5 = A0m;
                    strArr5[0] = "4gE9LeNlQroHqEeWf1EzJsbNX9PRfDme";
                    strArr5[4] = "TBDkrxJbHtSaZ13hkNs0RNY8SzE0jpKy";
                    view2.getOverlay().remove(this.A0L);
                }
                A0o.remove(this.A04);
                A0a();
                this.A04 = null;
                this.A06 = null;
                if (this.A0R != null) {
                    this.A0R.A0V();
                    this.A0R = null;
                }
                A0d();
                this.A09 = null;
                return;
            }
            throw new RuntimeException();
        }
        throw new IllegalStateException(A0W(481, 38, 57));
    }
}
