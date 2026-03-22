package com.facebook.ads.redexgen.X;

import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import androidx.core.view.ViewCompat;
import com.facebook.ads.RewardData;
import com.mbridge.msdk.mbbid.out.BidResponsed;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* renamed from: com.facebook.ads.redexgen.X.aI  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1923aI extends FrameLayout {
    public static String[] A08 = {"Q8PK8a4jCXFMgXydViX", "2t", "0mtDJDWqZSrfiocTEOLDLA", "JwyFxt7bdt7eCUIm0ln", "fPboxvDBMmOISakSS", "MBnzPw5d2FxZEvBrnzM1TlMBrMh4WSuO", "jLpHRmCuYtO7UfmYbZzhe3ed5a74x24O", "3APcS373YHqcuLzV9G"};
    public AbstractC1839Xm A00;
    public YA A01;
    public final AbstractC2392hy A02;
    public final C2111dL A03;
    public final InterfaceC1840Xn A04;
    public final InterfaceC1922aH A05;
    public final E1 A06;
    public final List<View> A07;

    public C1923aI(C1949ai c1949ai, AbstractC2392hy abstractC2392hy, E1 e12, C1312Cw c1312Cw, AbstractC1900Zv abstractC1900Zv, InterfaceC1840Xn interfaceC1840Xn, InterfaceC1922aH interfaceC1922aH) {
        this(c1949ai, abstractC2392hy, e12, interfaceC1840Xn, interfaceC1922aH, c1312Cw, abstractC1900Zv);
    }

    public C1923aI(C1949ai c1949ai, AbstractC2392hy abstractC2392hy, E1 e12, InterfaceC1840Xn interfaceC1840Xn, InterfaceC1922aH interfaceC1922aH, View... viewArr) {
        this(c1949ai.A06(), c1949ai.A0C(), abstractC2392hy, e12, interfaceC1840Xn, interfaceC1922aH, viewArr);
    }

    public C1923aI(C2111dL c2111dL, AbstractC1839Xm abstractC1839Xm, AbstractC2392hy abstractC2392hy, E1 e12, InterfaceC1840Xn interfaceC1840Xn, InterfaceC1922aH interfaceC1922aH, View... viewArr) {
        super(c2111dL);
        this.A07 = new ArrayList();
        this.A03 = c2111dL;
        this.A00 = abstractC1839Xm;
        this.A02 = abstractC2392hy;
        for (View view : viewArr) {
            if (view != null) {
                this.A07.add(view);
            }
        }
        this.A04 = interfaceC1840Xn;
        this.A06 = e12;
        this.A05 = interfaceC1922aH;
        A04();
    }

    private void A04() {
        String A06;
        RewardData A0p = this.A02.A0p();
        if (A0p == null) {
            A06 = this.A02.A22().A05();
        } else {
            A06 = this.A02.A22().A06(A0p.getCurrency(), A0p.getQuantity());
        }
        this.A01 = new YA(this.A03, -1, ViewCompat.MEASURED_STATE_MASK, A06, null, this.A02.A22().A04(), this.A02.A22().A03(), XY.A01(XX.REWARD_ICON));
        this.A01.A02.setOnClickListener(new View$OnClickListenerC1920aF(this));
        this.A01.A01.setOnClickListener(new View$OnClickListenerC1921aG(this));
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        addView(this.A01, layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A05() {
        if (this.A06 != null) {
            this.A06.A0g(EnumC2119dT.A07);
        }
        this.A05.ACI();
        if (!this.A02.A20().A0V()) {
            this.A02.A28(this.A04);
        }
    }

    public final void A07(ViewGroup viewGroup) {
        if (this.A06 != null && !this.A06.A0r()) {
            E1 e12 = this.A06;
            String[] strArr = A08;
            if (strArr[0].length() == strArr[3].length()) {
                String[] strArr2 = A08;
                strArr2[4] = "1Ran1dt8ESvXQPCOL";
                strArr2[1] = BidResponsed.KEY_WN;
                e12.A0m(false, false, 11);
                XP.A0L(this.A06, 4);
            }
            throw new RuntimeException();
        }
        if (this.A00 != null) {
            XP.A0F(this.A00);
        }
        Iterator<View> it = this.A07.iterator();
        while (true) {
            boolean hasNext = it.hasNext();
            String[] strArr3 = A08;
            if (strArr3[5].charAt(31) != strArr3[6].charAt(31)) {
                break;
            }
            String[] strArr4 = A08;
            strArr4[0] = "6LHnkwVNW3v3BurcJpp";
            strArr4[3] = "pBsoAnuzgJgS4JAM4BB";
            if (hasNext) {
                View next = it.next();
                next.clearAnimation();
                XP.A0L(next, 4);
            } else {
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
                viewGroup.addView(this, layoutParams);
                this.A05.AE8();
                return;
            }
        }
        throw new RuntimeException();
    }
}
