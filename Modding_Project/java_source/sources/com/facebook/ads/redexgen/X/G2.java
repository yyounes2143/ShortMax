package com.facebook.ads.redexgen.X;

import android.content.Intent;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import java.lang.ref.WeakReference;
/* loaded from: assets/audience_network.dex */
public abstract class G2 extends FrameLayout implements InterfaceC1841Xo {
    public boolean A00;
    public boolean A01;
    public final AbstractC2392hy A02;
    public final SF A03;
    public final C2111dL A04;
    public final US A05;
    public final C1752Ua A06;
    public final XH A07;
    public final AbstractC1839Xm A08;
    public final InterfaceC1840Xn A09;
    public final YY A0A;
    public final C2184eX A0B;
    public final XC A0C;
    public final AbstractC2183eW A0D;
    public static final int A0F = (int) (AbstractC1812Wl.A02 * 48.0f);
    public static final int A0G = (int) (AbstractC1812Wl.A02 * 64.0f);
    public static final RelativeLayout.LayoutParams A0E = new RelativeLayout.LayoutParams(-1, -1);

    public abstract AbstractC1839Xm A0b();

    public abstract void A0e();

    public abstract void A0f();

    public abstract void A0h(R0 r02);

    public abstract boolean A0i();

    public abstract boolean A0j();

    public G2(C2111dL c2111dL, YY yy, US us2, AbstractC2392hy abstractC2392hy, SF sf2, InterfaceC1840Xn interfaceC1840Xn) {
        super(c2111dL);
        this.A01 = false;
        this.A0D = new G7(this);
        this.A07 = new XH();
        this.A00 = false;
        this.A04 = c2111dL;
        this.A0A = yy;
        this.A05 = us2;
        this.A02 = abstractC2392hy;
        this.A03 = sf2;
        this.A09 = interfaceC1840Xn;
        this.A06 = new C1752Ua(this.A02.A25(), this.A05);
        this.A0B = new C2184eX(this, 1, new WeakReference(this.A0D), this.A04);
        this.A0B.A0W(this.A02.A0i());
        this.A0B.A0X(this.A02.A0j());
        this.A08 = A0Z();
        this.A0C = new XC(this);
        this.A0C.A05(XB.A02);
        if (!A0j() && Build.VERSION.SDK_INT >= 35) {
            setFitsSystemWindows(true);
        }
    }

    private AbstractC1839Xm A0Z() {
        AbstractC1839Xm A0b = A0b();
        A0b.setFullscreen(true);
        int A04 = this.A02.A20().A0H().A04();
        A0b.setPageDetails(this.A02.A23(), this.A02.A25(), A04, this.A02.A24());
        A0b.A0A(this.A02.A1z().A01(), KE.A05(this.A02));
        if (this.A02.A20().A0H().A02() == 0) {
            this.A01 = true;
            A0b.setToolbarActionMode(8);
        } else if (A04 < 0 && this.A02.A20().A0S()) {
            A0b.setToolbarActionMode(4);
        }
        if (this.A02.A20().A0H().A02() >= 0) {
            A0b.setProgressSpinnerInvisible(true);
        }
        A0b.setToolbarListener(new G3(this));
        return A0b;
    }

    private void A0a() {
        if (this.A02.A20().A0W()) {
            C2062cX A0F2 = new C2060cV(this.A04, this.A02.A20().A0I(), this.A02.A23()).A0A(this.A02.A1z().A01()).A0F();
            AbstractC1754Uc.A04(A0F2, this.A06, UZ.A0U);
            addView(A0F2, A0E);
            A0F2.A04(new G5(this));
            return;
        }
        A0f();
    }

    public final void A0c() {
        if (!this.A00) {
            this.A0B.A0U();
            this.A00 = true;
        }
    }

    public final void A0d() {
        if (this.A08.getToolbarActionMode() == 8) {
            this.A08.setToolbarActionMode(2);
        }
        this.A02.A2B(false);
        this.A02.A20().A0M(-1);
    }

    public final void A0g(int i10, AbstractRunnableC1796Vt abstractRunnableC1796Vt, C1312Cw c1312Cw) {
        new C1806Wd(i10, new G6(this, i10, c1312Cw, abstractRunnableC1796Vt)).A07();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1841Xo
    public final void AAl(Intent intent, Bundle bundle, R0 r02) {
        this.A09.A3x(this, A0E);
        A0h(r02);
        A0a();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1841Xo
    public final void AIB(Bundle bundle) {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1841Xo
    public String getCurrentClientToken() {
        return this.A02.A25();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1841Xo
    public final boolean onActivityResult(int i10, int i11, Intent intent) {
        return false;
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (!A0j() && Build.VERSION.SDK_INT >= 35) {
            setFitsSystemWindows(true);
        }
    }

    public void onDestroy() {
        this.A0C.A03();
        if (!TextUtils.isEmpty(this.A02.A25())) {
            this.A05.AAt(this.A02.A25(), new C1894Zp().A03(this.A0B).A02(this.A07).A05());
        }
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        this.A07.A06(this.A04, motionEvent, this, this);
        return super.onInterceptTouchEvent(motionEvent);
    }

    public void setListener(InterfaceC1840Xn interfaceC1840Xn) {
    }

    public void setUpFullscreenMode(boolean z10) {
        XB xb2;
        if (z10) {
            xb2 = XB.A03;
        } else {
            xb2 = XB.A02;
        }
        this.A0C.A05(xb2);
    }
}
