package com.facebook.ads.redexgen.X;

import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import java.util.Arrays;
/* renamed from: com.facebook.ads.redexgen.X.Ju  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1491Ju extends AbstractC1945ae implements Wf {
    public static byte[] A03;
    public static String[] A04 = {"jViytUMb8W4ggVUJxJM4ipopCTL5", "9aLNfhHGIgyW1yw0lAvb2knTk6C61HAs", "tSRmVjXXTSnTtzrce7INiQjRTYiInlbV", "4hcdJiGUQmFME9vgh87fiTmYWHBJid0b", "Sl93MFe7LYTqHCUKgRBPFfcYUFdC2Wx2", "6CReOOSeiw7R4vGYWPFAi839J8MszZAI", "rkSedGSxOJTtoP7gEY2R8PFp4jzzUrYJ", "HZKY5YyrBfN27m9O42YnVDeAUeo6GkfS"};
    public final AbstractC2392hy A00;
    public final C1808Wh A01;
    public final InterfaceC1840Xn A02;

    public static String A00(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A03, i10, i10 + i11);
        int i13 = 0;
        while (true) {
            int length = copyOfRange.length;
            if (A04[0].length() != 28) {
                throw new RuntimeException();
            }
            String[] strArr = A04;
            strArr[1] = "P3g3yiO3ICi92ZTGqQIjITPfAPWFUEMm";
            strArr[2] = "pyBqNmisWoZkDTGCi8bHuToayw1uFlPn";
            if (i13 >= length) {
                return new String(copyOfRange);
            }
            copyOfRange[i13] = (byte) ((copyOfRange[i13] ^ i12) ^ 78);
            i13++;
        }
    }

    public static void A01() {
        A03 = new byte[]{64, 68, 72, 78, 76};
    }

    static {
        A01();
    }

    public C1491Ju(C1949ai c1949ai, boolean z10) {
        super(c1949ai, true);
        FrameLayout.LayoutParams mediaViewParams;
        this.A02 = c1949ai.A0D();
        this.A00 = c1949ai.A05();
        RelativeLayout relativeLayout = new RelativeLayout(c1949ai.A06());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(12);
        XP.A0P(relativeLayout, getAdContextWrapper());
        LinearLayout linearLayout = new LinearLayout(c1949ai.A06());
        linearLayout.setOrientation(!z10 ? 1 : 0);
        linearLayout.setGravity(80);
        XP.A0I(linearLayout);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams2.setMargins(AbstractC1945ae.A07, 0, AbstractC1945ae.A07, AbstractC1945ae.A07);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(z10 ? -2 : -1, -2);
        layoutParams3.setMargins(z10 ? AbstractC1945ae.A07 : 0, z10 ? 0 : AbstractC1945ae.A07, 0, 0);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(z10 ? 0 : -1, -2);
        layoutParams4.setMargins(0, 0, 0, 0);
        layoutParams4.weight = 1.0f;
        linearLayout.addView(getTitleDescContainer(), layoutParams4);
        this.A01 = C1808Wh.A00(c1949ai.A06(), this.A00, this);
        C1807Wg A02 = this.A01.A02(this.A00);
        c1949ai.A06().A0H().A00(A02.A01);
        if (c1949ai.A0I() && !z10) {
            C2077cm c2077cm = new C2077cm(c1949ai.A06());
            c2077cm.setPageDetails(c1949ai.A05().A23());
            int A05 = this.A06.A05().A1z().A00().A05(true);
            c2077cm.A02(A05, A05);
            XP.A0E(1007, c2077cm);
            LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-1, -2);
            layoutParams5.setMargins(0, AbstractC1945ae.A07, 0, 0);
            linearLayout.addView(c2077cm, layoutParams5);
            if (U7.A18(c1949ai.A06())) {
                c2077cm.setOnClickListener(getCtaButton());
            }
        }
        linearLayout.addView(getCtaButton(), layoutParams3);
        relativeLayout.addView(linearLayout, layoutParams2);
        getCtaButton().A0F(c1949ai.A05(), c1949ai.A0C());
        View A022 = c1949ai.A02();
        if (A022 != null && (A02.A00 || U7.A1I(getAdContextWrapper()))) {
            if (z10) {
                mediaViewParams = new FrameLayout.LayoutParams(-2, -1);
            } else {
                mediaViewParams = new FrameLayout.LayoutParams(-1, -2);
            }
            mediaViewParams.gravity = 17;
            FrameLayout frameLayout = new FrameLayout(c1949ai.A06());
            frameLayout.addView(A022, mediaViewParams);
            addView(frameLayout, new RelativeLayout.LayoutParams(-1, -1));
            getCtaButton().setCreativeAsCtaLoggingHelper(this.A01);
            if (A02.A00) {
                A022.setOnClickListener(new View.OnClickListener() { // from class: com.facebook.ads.redexgen.X.aa
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        C1491Ju.this.A1O(view);
                    }
                });
            } else {
                AbstractC1897Zs.A00(A022, U7.A1J(getAdContextWrapper()), new View$OnClickListenerC1942ab(this));
            }
        } else if (A022 != null) {
            addView(A022, new RelativeLayout.LayoutParams(-1, -1));
        }
        addView(relativeLayout, layoutParams);
        if (U7.A17(c1949ai.A06())) {
            getTitleDescContainer().setCTAClickListener(getCtaButton());
            if (c1949ai.A0C() != null) {
                c1949ai.A0C().setCTAClickListener(getCtaButton());
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1945ae
    public final void A1B() {
        super.A1B();
        this.A01.A03();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1945ae
    public final void A1G(C1563Mp c1563Mp, String str, double d10, Bundle bundle) {
        super.A1G(c1563Mp, str, d10, bundle);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1945ae
    public final boolean A1M() {
        return true;
    }

    public final /* synthetic */ void A1O(View view) {
        getCtaButton().A0E(A00(0, 5, 103));
    }
}
