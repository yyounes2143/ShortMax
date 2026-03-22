package com.facebook.ads.redexgen.X;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import java.lang.ref.WeakReference;
import java.util.Arrays;
/* loaded from: assets/audience_network.dex */
public final class Y9 extends FrameLayout {
    public static byte[] A0C;
    public static String[] A0D = {"EYRP1PEEhxzmFZofVXiCCrEXWQs6qPAa", "IPRTBS", "NsAYUXCCkxBbK0XyUhCt1xHChz5fZfMK", "fEJJ0", "6651Qynk9CVpAvzNTMvYSQKVDYa6iazW", "nD7S5n7VHEDKGeK1PzI1a27Vk58dSaaa", "vFV0GS7SjmRPmH7mLZ5yrXn6gSrRknN8", "LPfldR2r"};
    public static final int A0E;
    public boolean A00;
    public final C2403iB A01;
    public final C2111dL A02;
    public final US A03;
    public final C1752Ua A04;
    public final XH A05;
    public final Mn A06;
    public final Y3 A07;
    public final AbstractC2183eW A08;
    public final C2184eX A09;
    public final String A0A;
    public final WeakReference<Y8> A0B;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 20 out of bounds for length 19
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:135)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:118)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:567)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:39)
     */
    public Y9(C2111dL c2111dL, US us2, SF sf2, WeakReference<Y8> weakReference, int i10, int i11, int i12, int i13, C2403iB c2403iB, String str) {
        super(c2111dL);
        this.A05 = new XH();
        this.A02 = c2111dL;
        this.A03 = us2;
        this.A01 = c2403iB;
        this.A0B = weakReference;
        this.A0A = str;
        AbstractC2392hy A0C2 = this.A01.A0C();
        if (A0C2 == null) {
            throw new IllegalStateException(A09(0, 32, 86));
        }
        XP.A0K(this, -1);
        this.A04 = new C1752Ua(this.A01.A7G(), this.A03);
        this.A08 = A06();
        this.A09 = A07(i10, i13, i11, i12);
        LinearLayout linearLayout = new LinearLayout(c2111dL);
        linearLayout.setOrientation(1);
        addView(linearLayout, new FrameLayout.LayoutParams(-1, -1));
        this.A07 = A04(sf2);
        if (this.A07 != null) {
            linearLayout.addView(this.A07, new LinearLayout.LayoutParams(-1, 0, 1.0f));
        }
        this.A06 = A02(A0C2);
        linearLayout.addView(this.A06, new LinearLayout.LayoutParams(-1, -2));
    }

    public static String A09(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A0C, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            byte b10 = (byte) ((copyOfRange[i13] - i12) - 99);
            if (A0D[6].charAt(17) == 'I') {
                throw new RuntimeException();
            }
            A0D[6] = "HyV3wef6DGt1nbLL1fRSvAmBe6VeBas4";
            copyOfRange[i13] = b10;
        }
        return new String(copyOfRange);
    }

    public static void A0F() {
        A0C = new byte[]{-6, 29, -39, 29, 26, 45, 26, -39, 27, 46, 39, 29, 37, 30, -39, 34, 44, -39, 28, 26, 39, 39, 40, 45, -39, 27, 30, -39, 39, 46, 37, 37, 52, 64, 62, -1, 55, 50, 52, 54, 51, 64, 64, 60, -1, 50, 53, 68, -1, 51, 50, 63, 63, 54, 67, -1, 52, 61, 58, 52, 60, 54, 53};
    }

    static {
        A0F();
        A0E = (int) (AbstractC1812Wl.A02 * 40.0f);
    }

    private Mn A02(AbstractC2392hy abstractC2392hy) {
        C1572My A00;
        C1563Mp A20 = abstractC2392hy.A20();
        OA oa2 = new OA() { // from class: com.facebook.ads.redexgen.X.61
            public static byte[] A01;
            public static String[] A02 = {"69whQSJFXzC5tMS1mvBQof2SK7ErE5ZD", "1jHEgafKgZ1qGtZeFln5jYEaZuoTSi1L", "X7dL0uEA8hI8yFDxVjmpGWGPGaRf3imC", "xkNxR1N5ht6u5HrBYV6Jaj9BRbbqvvjX", "FzWiIV8jsRMCATg74qRy8XJg", "NPgeBhkCK5cdUCtVbQG3V7Bzbyz9qF6p", "wkBgnizDM2wMuU", "fQJYdDBiu8hI0YoMzyDMv7ESaoH1tCRU"};

            public static String A00(int i10, int i11, int i12) {
                byte[] copyOfRange = Arrays.copyOfRange(A01, i10, i10 + i11);
                int i13 = 0;
                while (true) {
                    int length = copyOfRange.length;
                    String[] strArr = A02;
                    if (strArr[5].charAt(30) == strArr[3].charAt(30)) {
                        throw new RuntimeException();
                    }
                    String[] strArr2 = A02;
                    strArr2[5] = "zFlqgUHcpRBmVFunDUsFQIo1zDN3Ly6W";
                    strArr2[3] = "vgtBZdmtnd3XTM9GsG6r3isUaM0HNLHl";
                    if (i13 >= length) {
                        return new String(copyOfRange);
                    }
                    copyOfRange[i13] = (byte) ((copyOfRange[i13] - i12) - 4);
                    i13++;
                }
            }

            public static void A01() {
                A01 = new byte[]{-102};
            }

            static {
                A01();
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC1840Xn
            public final void A4b(String str) {
                String str2;
                C2111dL c2111dL;
                StringBuilder append = new StringBuilder().append(str).append(A00(0, 1, 92));
                str2 = Y9.this.A0A;
                Intent intent = new Intent(append.append(str2).toString());
                c2111dL = Y9.this.A02;
                OO.A00(c2111dL).A07(intent);
            }
        };
        if (getOrientation() == 1) {
            A00 = abstractC2392hy.A1z().A01();
        } else {
            C1560Ml A1z = abstractC2392hy.A1z();
            String[] strArr = A0D;
            if (strArr[1].length() == strArr[3].length()) {
                throw new RuntimeException();
            }
            A0D[7] = "bY8FFe1Y";
            A00 = A1z.A00();
        }
        Mn mn2 = new Mn(this.A02, A0E, A00, A20.A0J().A06(), A09(32, 31, 110), this.A03, oa2, this.A09, this.A05, abstractC2392hy.A21());
        mn2.setInfo(A20.A0I(), A20.A0J(), this.A01.A7G(), abstractC2392hy.A23().A01(), null, null);
        if (U7.A1M(this.A02)) {
            mn2.A0g();
        }
        return mn2;
    }

    private Y3 A04(SF sf2) {
        Y6 y62 = new Y6(this);
        String A0b = this.A01.A0b();
        if (A0H(sf2, this.A01) && A0b != null) {
            C1548Lz c1548Lz = new C1548Lz(this.A02, this.A03, sf2, this.A04, y62);
            String A7G = this.A01.A7G();
            String videoUrl = this.A01.A0E() != null ? this.A01.A0E().getUrl() : null;
            C1548Lz videoView = c1548Lz.A0F(A7G, A0b, videoUrl, this.A01.A0O(), this.A01.A0N());
            if (U7.A1Q(this.A02)) {
                setViewAsCTA(videoView);
            }
            return videoView;
        }
        C1767Up A0E2 = this.A01.A0E();
        if (A0E2 != null) {
            MZ A0F = new MZ(this.A02, y62).A0F(A0E2.getUrl());
            if (U7.A1O(this.A02)) {
                setViewAsCTA(A0F);
            }
            return A0F;
        }
        return null;
    }

    private C1547Ly A06() {
        return new C1547Ly(this);
    }

    private C2184eX A07(int i10, int i11, int i12, int i13) {
        C2184eX c2184eX = new C2184eX(this, i10, i11, true, new WeakReference(this.A08), this.A02);
        c2184eX.A0W(i12);
        c2184eX.A0X(i13);
        return c2184eX;
    }

    private void A0C() {
        String A0J = this.A01.A0J();
        if (!TextUtils.isEmpty(A0J)) {
            WN wn2 = new WN();
            C2111dL c2111dL = this.A02;
            Uri A00 = WQ.A00(A0J);
            String adChoicesLinkUrl = this.A01.A7G();
            WN.A0O(wn2, c2111dL, A00, adChoicesLinkUrl);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0D() {
        this.A04.A04(UZ.A0A, null);
        if (!O3.A00(this.A02.A02()).A0O(this.A02, false)) {
            A0C();
            return;
        }
        AbstractC1856Yd A01 = AbstractC1857Ye.A01(this.A02, this.A03, this.A01.A7G(), this);
        if (A01 == null) {
            A0C();
            return;
        }
        XP.A0R(this);
        addView(A01, new FrameLayout.LayoutParams(-1, -1));
        A01.A0M();
    }

    private void A0E() {
        if (getVisibility() == 0 && this.A00 && hasWindowFocus()) {
            this.A09.A0U();
        } else {
            this.A09.A0V();
        }
    }

    public static boolean A0H(SF sf2, C2403iB c2403iB) {
        String A0b = c2403iB.A0b();
        if (TextUtils.isEmpty(A0b)) {
            return false;
        }
        String videoUrl = sf2.A0T(A0b);
        return !TextUtils.isEmpty(videoUrl);
    }

    public final void A0I() {
        if (this.A07 != null) {
            this.A07.A0A();
        }
        if (this.A09 != null) {
            this.A09.A0V();
        }
        XP.A0H(this);
    }

    public final void A0J() {
        if (this.A07 != null) {
            Y3 y32 = this.A07;
            if (A0D[2].charAt(13) == 'c') {
                throw new RuntimeException();
            }
            String[] strArr = A0D;
            strArr[0] = "hgkEcT5pEsAUKYMkvVnojxGMD5WCOUSh";
            strArr[5] = "qBRuzdoZQfMYUt1SZmDdshQz8Ndd8EXP";
            y32.A0B();
        }
    }

    private int getOrientation() {
        Activity activity = this.A02.A0E();
        if (activity != null) {
            return activity.getResources().getConfiguration().orientation;
        }
        return 1;
    }

    public C2184eX getViewabilityChecker() {
        return this.A09;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.A00 = true;
        A0E();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.A00 = false;
        A0E();
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        this.A05.A06(this.A02, motionEvent, this, this);
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public final void onVisibilityChanged(View view, int i10) {
        super.onVisibilityChanged(view, i10);
        A0E();
    }

    @Override // android.view.View
    public final void onWindowFocusChanged(boolean z10) {
        super.onWindowFocusChanged(z10);
        A0E();
    }

    private void setViewAsCTA(View view) {
        view.setOnClickListener(new Y7(this));
    }
}
