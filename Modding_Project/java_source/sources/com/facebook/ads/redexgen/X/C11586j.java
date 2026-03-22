package com.facebook.ads.redexgen.X;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewPropertyAnimator;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.facebook.ads.redexgen.X.6j  reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C11586j extends AbstractC2274g0 {
    public static TimeInterpolator A0B;
    public static String[] A0C = {"5", "w4FteHoxEZNBcBknXysU1QdwgOlgu", "XTfmSewcFvVIPqcU8HiF2JwhBroc2", "gTOT0dcLAsFp3JXaujmr6eSvv", "MioH3rC6822UBFONR3LUPujrkCbYq", "9Rk7JcSITmrZ17kamSQ7i6v9RKdnt", "plmSW6Ql", "PR6dCqey"};
    public ArrayList<AbstractC1656Qg> A0A = new ArrayList<>();
    public ArrayList<AbstractC1656Qg> A07 = new ArrayList<>();
    public ArrayList<C1646Pw> A09 = new ArrayList<>();
    public ArrayList<C1645Pv> A08 = new ArrayList<>();
    public ArrayList<ArrayList<AbstractC1656Qg>> A01 = new ArrayList<>();
    public ArrayList<ArrayList<C1646Pw>> A05 = new ArrayList<>();
    public ArrayList<ArrayList<C1645Pv>> A03 = new ArrayList<>();
    public ArrayList<AbstractC1656Qg> A00 = new ArrayList<>();
    public ArrayList<AbstractC1656Qg> A04 = new ArrayList<>();
    public ArrayList<AbstractC1656Qg> A06 = new ArrayList<>();
    public ArrayList<AbstractC1656Qg> A02 = new ArrayList<>();

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    @Override // com.facebook.ads.redexgen.X.QK
    public final void A0H() {
        int size;
        for (int size2 = this.A09.size() - 1; size2 >= 0; size2--) {
            C1646Pw c1646Pw = this.A09.get(size2);
            View view = c1646Pw.A04.A0H;
            view.setTranslationY(0.0f);
            view.setTranslationX(0.0f);
            A0U(c1646Pw.A04);
            this.A09.remove(size2);
        }
        for (int size3 = this.A0A.size() - 1; size3 >= 0; size3--) {
            A0V(this.A0A.get(size3));
            this.A0A.remove(size3);
        }
        for (int size4 = this.A07.size() - 1; size4 >= 0; size4--) {
            AbstractC1656Qg abstractC1656Qg = this.A07.get(size4);
            abstractC1656Qg.A0H.setAlpha(1.0f);
            A0T(abstractC1656Qg);
            this.A07.remove(size4);
        }
        for (int size5 = this.A08.size() - 1; size5 >= 0; size5--) {
            ArrayList<C1645Pv> arrayList = this.A08;
            String[] strArr = A0C;
            if (strArr[0].length() == strArr[3].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0C;
            strArr2[4] = "IUveBZzBDFrSzC13ImzzVKkvQDdr2";
            strArr2[5] = "sCoWws78k8eiD0jPt8s7ggXNZv987";
            A00(arrayList.get(size5));
        }
        this.A08.clear();
        if (A0M()) {
            for (int size6 = this.A05.size() - 1; size6 >= 0; size6--) {
                ArrayList<C1646Pw> arrayList2 = this.A05.get(size6);
                for (int size7 = arrayList2.size() - 1; size7 >= 0; size7--) {
                    C1646Pw c1646Pw2 = arrayList2.get(size7);
                    View view2 = c1646Pw2.A04.A0H;
                    view2.setTranslationY(0.0f);
                    view2.setTranslationX(0.0f);
                    A0U(c1646Pw2.A04);
                    arrayList2.remove(size7);
                    if (arrayList2.isEmpty()) {
                        this.A05.remove(arrayList2);
                    }
                }
            }
            for (int size8 = this.A01.size() - 1; size8 >= 0; size8--) {
                ArrayList<AbstractC1656Qg> arrayList3 = this.A01.get(size8);
                for (int size9 = arrayList3.size() - 1; size9 >= 0; size9--) {
                    AbstractC1656Qg abstractC1656Qg2 = arrayList3.get(size9);
                    abstractC1656Qg2.A0H.setAlpha(1.0f);
                    A0T(abstractC1656Qg2);
                    arrayList3.remove(size9);
                    if (arrayList3.isEmpty()) {
                        ArrayList<ArrayList<AbstractC1656Qg>> arrayList4 = this.A01;
                        String[] strArr3 = A0C;
                        if (strArr3[0].length() != strArr3[3].length()) {
                            String[] strArr4 = A0C;
                            strArr4[7] = "VBPMrKBD";
                            strArr4[6] = "WZFlfD4M";
                            arrayList4.remove(arrayList3);
                        } else {
                            arrayList4.remove(arrayList3);
                        }
                    }
                }
            }
            ArrayList<ArrayList<C1645Pv>> arrayList5 = this.A03;
            String[] strArr5 = A0C;
            if (strArr5[7].length() != strArr5[6].length()) {
                size = arrayList5.size() - 1;
            } else {
                String[] strArr6 = A0C;
                strArr6[2] = "1rfkrkAxI3SWkdgenr27gUX73o6p1";
                strArr6[1] = "SSeA7srmTqf1oxxrlzMYS1BTDHSjo";
                size = arrayList5.size() - 1;
            }
            while (size >= 0) {
                ArrayList<C1645Pv> arrayList6 = this.A03.get(size);
                for (int size10 = arrayList6.size() - 1; size10 >= 0; size10--) {
                    A00(arrayList6.get(size10));
                    if (arrayList6.isEmpty()) {
                        this.A03.remove(arrayList6);
                    }
                }
                size--;
            }
            A03(this.A06);
            A03(this.A04);
            A03(this.A00);
            A03(this.A02);
            A0G();
        }
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    @Override // com.facebook.ads.redexgen.X.AbstractC2274g0
    public final boolean A0Z(AbstractC1656Qg abstractC1656Qg, int i10, int i11, int i12, int i13) {
        View view = abstractC1656Qg.A0H;
        int translationX = i10 + ((int) abstractC1656Qg.A0H.getTranslationX());
        int translationY = i11 + ((int) abstractC1656Qg.A0H.getTranslationY());
        A02(abstractC1656Qg);
        int i14 = i12 - translationX;
        int i15 = i13 - translationY;
        if (i14 == 0 && i15 == 0) {
            A0U(abstractC1656Qg);
            return false;
        }
        if (i14 != 0) {
            view.setTranslationX(-i14);
        }
        if (i15 != 0) {
            view.setTranslationY(-i15);
        }
        this.A09.add(new C1646Pw(abstractC1656Qg, translationX, translationY, i12, i13));
        return true;
    }

    private void A00(C1645Pv c1645Pv) {
        if (c1645Pv.A05 != null) {
            A05(c1645Pv, c1645Pv.A05);
        }
        if (c1645Pv.A04 != null) {
            A05(c1645Pv, c1645Pv.A04);
        }
    }

    private void A01(AbstractC1656Qg abstractC1656Qg) {
        View view = abstractC1656Qg.A0H;
        ViewPropertyAnimator animate = view.animate();
        this.A06.add(abstractC1656Qg);
        ViewPropertyAnimator animation = animate.setDuration(A0D());
        animation.alpha(0.0f).setListener(new C1640Pq(this, abstractC1656Qg, animate, view)).start();
    }

    private void A02(AbstractC1656Qg abstractC1656Qg) {
        if (A0B == null) {
            A0B = new ValueAnimator().getInterpolator();
        }
        abstractC1656Qg.A0H.animate().setInterpolator(A0B);
        A0L(abstractC1656Qg);
    }

    private final void A03(List<AbstractC1656Qg> list) {
        for (int size = list.size() - 1; size >= 0; size--) {
            list.get(size).A0H.animate().cancel();
        }
    }

    private void A04(List<C1645Pv> list, AbstractC1656Qg abstractC1656Qg) {
        for (int size = list.size() - 1; size >= 0; size--) {
            C1645Pv changeInfo = list.get(size);
            if (A05(changeInfo, abstractC1656Qg) && changeInfo.A05 == null && changeInfo.A04 == null) {
                list.remove(changeInfo);
            }
        }
    }

    private boolean A05(C1645Pv c1645Pv, AbstractC1656Qg abstractC1656Qg) {
        boolean z10 = false;
        if (c1645Pv.A04 == abstractC1656Qg) {
            c1645Pv.A04 = null;
        } else {
            AbstractC1656Qg abstractC1656Qg2 = c1645Pv.A05;
            String[] strArr = A0C;
            if (strArr[2].length() != strArr[1].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0C;
            strArr2[0] = "F";
            strArr2[3] = "q2hYYatvKRTsdUwOPBYP5pb4s";
            if (abstractC1656Qg2 == abstractC1656Qg) {
                c1645Pv.A05 = null;
                z10 = true;
            } else {
                return false;
            }
        }
        abstractC1656Qg.A0H.setAlpha(1.0f);
        abstractC1656Qg.A0H.setTranslationX(0.0f);
        abstractC1656Qg.A0H.setTranslationY(0.0f);
        A0W(abstractC1656Qg, z10);
        return true;
    }

    /* JADX WARN: Incorrect condition in loop: B:10:0x0033 */
    @Override // com.facebook.ads.redexgen.X.QK
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void A0I() {
        /*
            Method dump skipped, instructions count: 248
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C11586j.A0I():void");
    }

    @Override // com.facebook.ads.redexgen.X.QK
    public final void A0L(AbstractC1656Qg abstractC1656Qg) {
        View view = abstractC1656Qg.A0H;
        view.animate().cancel();
        for (int i10 = this.A09.size() - 1; i10 >= 0; i10--) {
            if (this.A09.get(i10).A04 == abstractC1656Qg) {
                view.setTranslationY(0.0f);
                view.setTranslationX(0.0f);
                A0U(abstractC1656Qg);
                this.A09.remove(i10);
            }
        }
        A04(this.A08, abstractC1656Qg);
        if (this.A0A.remove(abstractC1656Qg)) {
            view.setAlpha(1.0f);
            A0V(abstractC1656Qg);
        }
        if (this.A07.remove(abstractC1656Qg)) {
            view.setAlpha(1.0f);
            String[] strArr = A0C;
            if (strArr[2].length() != strArr[1].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0C;
            strArr2[4] = "yxRUaByjpu2evyevZXzo5CX3I8dRP";
            strArr2[5] = "IuT2zeZcrCaCkdpAEhiSgQgKuQzMH";
            A0T(abstractC1656Qg);
        }
        for (int i11 = this.A03.size() - 1; i11 >= 0; i11--) {
            ArrayList<C1645Pv> arrayList = this.A03.get(i11);
            A04(arrayList, abstractC1656Qg);
            if (arrayList.isEmpty()) {
                this.A03.remove(i11);
            }
        }
        for (int size = this.A05.size() - 1; size >= 0; size--) {
            ArrayList<C1646Pw> arrayList2 = this.A05.get(size);
            int i12 = arrayList2.size() - 1;
            while (true) {
                if (i12 < 0) {
                    break;
                } else if (arrayList2.get(i12).A04 == abstractC1656Qg) {
                    view.setTranslationY(0.0f);
                    view.setTranslationX(0.0f);
                    A0U(abstractC1656Qg);
                    arrayList2.remove(i12);
                    if (arrayList2.isEmpty()) {
                        this.A05.remove(size);
                    }
                } else {
                    i12--;
                }
            }
        }
        for (int size2 = this.A01.size() - 1; size2 >= 0; size2--) {
            ArrayList<AbstractC1656Qg> arrayList3 = this.A01.get(size2);
            if (arrayList3.remove(abstractC1656Qg)) {
                view.setAlpha(1.0f);
                A0T(abstractC1656Qg);
                if (arrayList3.isEmpty()) {
                    this.A01.remove(size2);
                }
            }
        }
        this.A06.remove(abstractC1656Qg);
        this.A00.remove(abstractC1656Qg);
        this.A02.remove(abstractC1656Qg);
        this.A04.remove(abstractC1656Qg);
        A0b();
    }

    @Override // com.facebook.ads.redexgen.X.QK
    public final boolean A0M() {
        return (this.A07.isEmpty() && this.A08.isEmpty() && this.A09.isEmpty() && this.A0A.isEmpty() && this.A04.isEmpty() && this.A06.isEmpty() && this.A00.isEmpty() && this.A02.isEmpty() && this.A05.isEmpty() && this.A01.isEmpty() && this.A03.isEmpty()) ? false : true;
    }

    @Override // com.facebook.ads.redexgen.X.QK
    public final boolean A0S(AbstractC1656Qg abstractC1656Qg, List<Object> payloads) {
        return !payloads.isEmpty() || super.A0S(abstractC1656Qg, payloads);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2274g0
    public final boolean A0X(AbstractC1656Qg abstractC1656Qg) {
        A02(abstractC1656Qg);
        abstractC1656Qg.A0H.setAlpha(0.0f);
        this.A07.add(abstractC1656Qg);
        return true;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2274g0
    public final boolean A0Y(AbstractC1656Qg abstractC1656Qg) {
        A02(abstractC1656Qg);
        this.A0A.add(abstractC1656Qg);
        return true;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2274g0
    public final boolean A0a(AbstractC1656Qg abstractC1656Qg, AbstractC1656Qg abstractC1656Qg2, int i10, int i11, int i12, int i13) {
        if (abstractC1656Qg == abstractC1656Qg2) {
            return A0Z(abstractC1656Qg, i10, i11, i12, i13);
        }
        float translationX = abstractC1656Qg.A0H.getTranslationX();
        float translationY = abstractC1656Qg.A0H.getTranslationY();
        float prevTranslationY = abstractC1656Qg.A0H.getAlpha();
        A02(abstractC1656Qg);
        float prevTranslationX = i12 - i10;
        int deltaY = (int) (prevTranslationX - translationX);
        float prevTranslationX2 = i13 - i11;
        int deltaX = (int) (prevTranslationX2 - translationY);
        abstractC1656Qg.A0H.setTranslationX(translationX);
        abstractC1656Qg.A0H.setTranslationY(translationY);
        abstractC1656Qg.A0H.setAlpha(prevTranslationY);
        if (abstractC1656Qg2 != null) {
            A02(abstractC1656Qg2);
            float prevTranslationX3 = -deltaY;
            abstractC1656Qg2.A0H.setTranslationX(prevTranslationX3);
            float prevTranslationX4 = -deltaX;
            abstractC1656Qg2.A0H.setTranslationY(prevTranslationX4);
            abstractC1656Qg2.A0H.setAlpha(0.0f);
        }
        this.A08.add(new C1645Pv(abstractC1656Qg, abstractC1656Qg2, i10, i11, i12, i13));
        return true;
    }

    public final void A0b() {
        if (!A0M()) {
            A0G();
        }
    }

    public final void A0c(C1645Pv c1645Pv) {
        View view;
        AbstractC1656Qg holder = c1645Pv.A05;
        if (holder == null) {
            view = null;
        } else {
            view = holder.A0H;
        }
        AbstractC1656Qg holder2 = c1645Pv.A04;
        View view2 = holder2 != null ? holder2.A0H : null;
        if (view != null) {
            ViewPropertyAnimator oldViewAnim = view.animate().setDuration(A0B());
            this.A02.add(c1645Pv.A05);
            oldViewAnim.translationX(c1645Pv.A02 - c1645Pv.A00);
            oldViewAnim.translationY(c1645Pv.A03 - c1645Pv.A01);
            oldViewAnim.alpha(0.0f).setListener(new C1643Pt(this, c1645Pv, oldViewAnim, view)).start();
        }
        if (view2 != null) {
            ViewPropertyAnimator animate = view2.animate();
            this.A02.add(c1645Pv.A04);
            animate.translationX(0.0f).translationY(0.0f).setDuration(A0B()).alpha(1.0f).setListener(new C1644Pu(this, c1645Pv, animate, view2)).start();
        }
    }

    public final void A0d(AbstractC1656Qg abstractC1656Qg) {
        View view = abstractC1656Qg.A0H;
        ViewPropertyAnimator animate = view.animate();
        this.A00.add(abstractC1656Qg);
        ViewPropertyAnimator animation = animate.alpha(1.0f).setDuration(A0A());
        animation.setListener(new C1641Pr(this, abstractC1656Qg, view, animate)).start();
    }

    public final void A0e(AbstractC1656Qg abstractC1656Qg, int i10, int i11, int i12, int i13) {
        View view = abstractC1656Qg.A0H;
        int i14 = i12 - i10;
        int i15 = i13 - i11;
        if (i14 != 0) {
            view.animate().translationX(0.0f);
        }
        if (i15 != 0) {
            view.animate().translationY(0.0f);
        }
        ViewPropertyAnimator animate = view.animate();
        this.A04.add(abstractC1656Qg);
        animate.setDuration(A0C()).setListener(new C1642Ps(this, abstractC1656Qg, i14, view, i15, animate)).start();
    }
}
