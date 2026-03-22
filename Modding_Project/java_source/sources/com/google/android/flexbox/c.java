package com.google.android.flexbox;

import android.graphics.drawable.Drawable;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.core.view.MarginLayoutParamsCompat;
import androidx.core.widget.CompoundButtonCompat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FlexboxHelper.java */
/* loaded from: classes4.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private final com.google.android.flexbox.a f19584a;

    /* renamed from: b  reason: collision with root package name */
    private boolean[] f19585b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    int[] f19586c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    long[] f19587d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private long[] f19588e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlexboxHelper.java */
    /* loaded from: classes4.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        List<com.google.android.flexbox.b> f19589a;

        /* renamed from: b  reason: collision with root package name */
        int f19590b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public void a() {
            this.f19589a = null;
            this.f19590b = 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: FlexboxHelper.java */
    /* renamed from: com.google.android.flexbox.c$c  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static class C0293c implements Comparable<C0293c> {

        /* renamed from: a  reason: collision with root package name */
        int f19591a;

        /* renamed from: b  reason: collision with root package name */
        int f19592b;

        private C0293c() {
        }

        @Override // java.lang.Comparable
        /* renamed from: a */
        public int compareTo(@NonNull C0293c c0293c) {
            int i10 = this.f19592b;
            int i11 = c0293c.f19592b;
            if (i10 != i11) {
                return i10 - i11;
            }
            return this.f19591a - c0293c.f19591a;
        }

        @NonNull
        public String toString() {
            return "Order{order=" + this.f19592b + ", index=" + this.f19591a + '}';
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(com.google.android.flexbox.a aVar) {
        this.f19584a = aVar;
    }

    private int A(int i10, FlexItem flexItem, int i11) {
        com.google.android.flexbox.a aVar = this.f19584a;
        int g10 = aVar.g(i10, aVar.getPaddingLeft() + this.f19584a.getPaddingRight() + flexItem.s0() + flexItem.G0() + i11, flexItem.getWidth());
        int size = View.MeasureSpec.getSize(g10);
        if (size > flexItem.l0()) {
            return View.MeasureSpec.makeMeasureSpec(flexItem.l0(), View.MeasureSpec.getMode(g10));
        }
        if (size < flexItem.s()) {
            return View.MeasureSpec.makeMeasureSpec(flexItem.s(), View.MeasureSpec.getMode(g10));
        }
        return g10;
    }

    private int B(FlexItem flexItem, boolean z10) {
        if (z10) {
            return flexItem.v();
        }
        return flexItem.G0();
    }

    private int C(FlexItem flexItem, boolean z10) {
        if (z10) {
            return flexItem.G0();
        }
        return flexItem.v();
    }

    private int D(FlexItem flexItem, boolean z10) {
        if (z10) {
            return flexItem.t();
        }
        return flexItem.s0();
    }

    private int E(FlexItem flexItem, boolean z10) {
        if (z10) {
            return flexItem.s0();
        }
        return flexItem.t();
    }

    private int F(FlexItem flexItem, boolean z10) {
        if (z10) {
            return flexItem.getHeight();
        }
        return flexItem.getWidth();
    }

    private int G(FlexItem flexItem, boolean z10) {
        if (z10) {
            return flexItem.getWidth();
        }
        return flexItem.getHeight();
    }

    private int H(boolean z10) {
        if (z10) {
            return this.f19584a.getPaddingBottom();
        }
        return this.f19584a.getPaddingEnd();
    }

    private int I(boolean z10) {
        if (z10) {
            return this.f19584a.getPaddingEnd();
        }
        return this.f19584a.getPaddingBottom();
    }

    private int J(boolean z10) {
        if (z10) {
            return this.f19584a.getPaddingTop();
        }
        return this.f19584a.getPaddingStart();
    }

    private int K(boolean z10) {
        if (z10) {
            return this.f19584a.getPaddingStart();
        }
        return this.f19584a.getPaddingTop();
    }

    private int L(View view, boolean z10) {
        if (z10) {
            return view.getMeasuredHeight();
        }
        return view.getMeasuredWidth();
    }

    private int M(View view, boolean z10) {
        if (z10) {
            return view.getMeasuredWidth();
        }
        return view.getMeasuredHeight();
    }

    private boolean N(int i10, int i11, com.google.android.flexbox.b bVar) {
        if (i10 == i11 - 1 && bVar.c() != 0) {
            return true;
        }
        return false;
    }

    private boolean P(View view, int i10, int i11, int i12, int i13, FlexItem flexItem, int i14, int i15, int i16) {
        if (this.f19584a.getFlexWrap() == 0) {
            return false;
        }
        if (flexItem.a0()) {
            return true;
        }
        if (i10 == 0) {
            return false;
        }
        int maxLine = this.f19584a.getMaxLine();
        if (maxLine != -1 && maxLine <= i16 + 1) {
            return false;
        }
        int f10 = this.f19584a.f(view, i14, i15);
        if (f10 > 0) {
            i13 += f10;
        }
        if (i11 >= i12 + i13) {
            return false;
        }
        return true;
    }

    private void T(int i10, int i11, com.google.android.flexbox.b bVar, int i12, int i13, boolean z10) {
        int i14;
        int i15;
        int i16;
        int i17 = bVar.f19570e;
        float f10 = bVar.f19576k;
        float f11 = 0.0f;
        if (f10 > 0.0f && i12 <= i17) {
            float f12 = (i17 - i12) / f10;
            bVar.f19570e = i13 + bVar.f19571f;
            if (!z10) {
                bVar.f19572g = Integer.MIN_VALUE;
            }
            int i18 = 0;
            boolean z11 = false;
            int i19 = 0;
            float f13 = 0.0f;
            while (i18 < bVar.f19573h) {
                int i20 = bVar.f19580o + i18;
                View e10 = this.f19584a.e(i20);
                if (e10 == null || e10.getVisibility() == 8) {
                    i14 = i17;
                    i15 = i18;
                } else {
                    FlexItem flexItem = (FlexItem) e10.getLayoutParams();
                    int flexDirection = this.f19584a.getFlexDirection();
                    if (flexDirection == 0 || flexDirection == 1) {
                        i14 = i17;
                        int i21 = i18;
                        int measuredWidth = e10.getMeasuredWidth();
                        long[] jArr = this.f19588e;
                        if (jArr != null) {
                            measuredWidth = y(jArr[i20]);
                        }
                        int measuredHeight = e10.getMeasuredHeight();
                        long[] jArr2 = this.f19588e;
                        if (jArr2 != null) {
                            measuredHeight = x(jArr2[i20]);
                        }
                        if (!this.f19585b[i20] && flexItem.P() > 0.0f) {
                            float P = measuredWidth - (flexItem.P() * f12);
                            i15 = i21;
                            if (i15 == bVar.f19573h - 1) {
                                P += f13;
                                f13 = 0.0f;
                            }
                            int round = Math.round(P);
                            if (round < flexItem.s()) {
                                round = flexItem.s();
                                this.f19585b[i20] = true;
                                bVar.f19576k -= flexItem.P();
                                z11 = true;
                            } else {
                                f13 += P - round;
                                double d10 = f13;
                                if (d10 > 1.0d) {
                                    round++;
                                    f13 -= 1.0f;
                                } else if (d10 < -1.0d) {
                                    round--;
                                    f13 += 1.0f;
                                }
                            }
                            int z12 = z(i11, flexItem, bVar.f19578m);
                            int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(round, 1073741824);
                            e10.measure(makeMeasureSpec, z12);
                            int measuredWidth2 = e10.getMeasuredWidth();
                            int measuredHeight2 = e10.getMeasuredHeight();
                            Z(i20, makeMeasureSpec, z12, e10);
                            this.f19584a.i(i20, e10);
                            measuredWidth = measuredWidth2;
                            measuredHeight = measuredHeight2;
                        } else {
                            i15 = i21;
                        }
                        int max = Math.max(i19, measuredHeight + flexItem.t() + flexItem.v() + this.f19584a.d(e10));
                        bVar.f19570e += measuredWidth + flexItem.s0() + flexItem.G0();
                        i16 = max;
                    } else {
                        int measuredHeight3 = e10.getMeasuredHeight();
                        long[] jArr3 = this.f19588e;
                        if (jArr3 != null) {
                            measuredHeight3 = x(jArr3[i20]);
                        }
                        int measuredWidth3 = e10.getMeasuredWidth();
                        long[] jArr4 = this.f19588e;
                        if (jArr4 != null) {
                            measuredWidth3 = y(jArr4[i20]);
                        }
                        if (!this.f19585b[i20] && flexItem.P() > f11) {
                            float P2 = measuredHeight3 - (flexItem.P() * f12);
                            if (i18 == bVar.f19573h - 1) {
                                P2 += f13;
                                f13 = f11;
                            }
                            int round2 = Math.round(P2);
                            if (round2 < flexItem.H0()) {
                                round2 = flexItem.H0();
                                this.f19585b[i20] = true;
                                bVar.f19576k -= flexItem.P();
                                i14 = i17;
                                i15 = i18;
                                z11 = true;
                            } else {
                                f13 += P2 - round2;
                                i14 = i17;
                                i15 = i18;
                                double d11 = f13;
                                if (d11 > 1.0d) {
                                    round2++;
                                    f13 -= 1.0f;
                                } else if (d11 < -1.0d) {
                                    round2--;
                                    f13 += 1.0f;
                                }
                            }
                            int A = A(i10, flexItem, bVar.f19578m);
                            int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(round2, 1073741824);
                            e10.measure(A, makeMeasureSpec2);
                            measuredWidth3 = e10.getMeasuredWidth();
                            int measuredHeight4 = e10.getMeasuredHeight();
                            Z(i20, A, makeMeasureSpec2, e10);
                            this.f19584a.i(i20, e10);
                            measuredHeight3 = measuredHeight4;
                        } else {
                            i14 = i17;
                            i15 = i18;
                        }
                        i16 = Math.max(i19, measuredWidth3 + flexItem.s0() + flexItem.G0() + this.f19584a.d(e10));
                        bVar.f19570e += measuredHeight3 + flexItem.t() + flexItem.v();
                    }
                    bVar.f19572g = Math.max(bVar.f19572g, i16);
                    i19 = i16;
                }
                i18 = i15 + 1;
                i17 = i14;
                f11 = 0.0f;
            }
            int i22 = i17;
            if (z11 && i22 != bVar.f19570e) {
                T(i10, i11, bVar, i12, i13, true);
            }
        }
    }

    private int[] U(int i10, List<C0293c> list, SparseIntArray sparseIntArray) {
        Collections.sort(list);
        sparseIntArray.clear();
        int[] iArr = new int[i10];
        int i11 = 0;
        for (C0293c c0293c : list) {
            int i12 = c0293c.f19591a;
            iArr[i11] = i12;
            sparseIntArray.append(i12, c0293c.f19592b);
            i11++;
        }
        return iArr;
    }

    private void V(View view, int i10, int i11) {
        int measuredHeight;
        FlexItem flexItem = (FlexItem) view.getLayoutParams();
        int min = Math.min(Math.max(((i10 - flexItem.s0()) - flexItem.G0()) - this.f19584a.d(view), flexItem.s()), flexItem.l0());
        long[] jArr = this.f19588e;
        if (jArr != null) {
            measuredHeight = x(jArr[i11]);
        } else {
            measuredHeight = view.getMeasuredHeight();
        }
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(min, 1073741824);
        view.measure(makeMeasureSpec2, makeMeasureSpec);
        Z(i11, makeMeasureSpec2, makeMeasureSpec, view);
        this.f19584a.i(i11, view);
    }

    private void W(View view, int i10, int i11) {
        int measuredWidth;
        FlexItem flexItem = (FlexItem) view.getLayoutParams();
        int min = Math.min(Math.max(((i10 - flexItem.t()) - flexItem.v()) - this.f19584a.d(view), flexItem.H0()), flexItem.I0());
        long[] jArr = this.f19588e;
        if (jArr != null) {
            measuredWidth = y(jArr[i11]);
        } else {
            measuredWidth = view.getMeasuredWidth();
        }
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(min, 1073741824);
        view.measure(makeMeasureSpec, makeMeasureSpec2);
        Z(i11, makeMeasureSpec, makeMeasureSpec2, view);
        this.f19584a.i(i11, view);
    }

    private void Z(int i10, int i11, int i12, View view) {
        long[] jArr = this.f19587d;
        if (jArr != null) {
            jArr[i10] = S(i11, i12);
        }
        long[] jArr2 = this.f19588e;
        if (jArr2 != null) {
            jArr2[i10] = S(view.getMeasuredWidth(), view.getMeasuredHeight());
        }
    }

    private void a(List<com.google.android.flexbox.b> list, com.google.android.flexbox.b bVar, int i10, int i11) {
        bVar.f19578m = i11;
        this.f19584a.h(bVar);
        bVar.f19581p = i10;
        list.add(bVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:20:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void i(android.view.View r7, int r8) {
        /*
            r6 = this;
            android.view.ViewGroup$LayoutParams r0 = r7.getLayoutParams()
            com.google.android.flexbox.FlexItem r0 = (com.google.android.flexbox.FlexItem) r0
            int r1 = r7.getMeasuredWidth()
            int r2 = r7.getMeasuredHeight()
            int r3 = r0.s()
            r4 = 1
            if (r1 >= r3) goto L1b
            int r1 = r0.s()
        L19:
            r3 = r4
            goto L27
        L1b:
            int r3 = r0.l0()
            if (r1 <= r3) goto L26
            int r1 = r0.l0()
            goto L19
        L26:
            r3 = 0
        L27:
            int r5 = r0.H0()
            if (r2 >= r5) goto L32
            int r2 = r0.H0()
            goto L3e
        L32:
            int r5 = r0.I0()
            if (r2 <= r5) goto L3d
            int r2 = r0.I0()
            goto L3e
        L3d:
            r4 = r3
        L3e:
            if (r4 == 0) goto L55
            r0 = 1073741824(0x40000000, float:2.0)
            int r1 = android.view.View.MeasureSpec.makeMeasureSpec(r1, r0)
            int r0 = android.view.View.MeasureSpec.makeMeasureSpec(r2, r0)
            r7.measure(r1, r0)
            r6.Z(r8, r1, r0, r7)
            com.google.android.flexbox.a r0 = r6.f19584a
            r0.i(r8, r7)
        L55:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.flexbox.c.i(android.view.View, int):void");
    }

    private List<com.google.android.flexbox.b> k(List<com.google.android.flexbox.b> list, int i10, int i11) {
        ArrayList arrayList = new ArrayList();
        com.google.android.flexbox.b bVar = new com.google.android.flexbox.b();
        bVar.f19572g = (i10 - i11) / 2;
        int size = list.size();
        for (int i12 = 0; i12 < size; i12++) {
            if (i12 == 0) {
                arrayList.add(bVar);
            }
            arrayList.add(list.get(i12));
            if (i12 == list.size() - 1) {
                arrayList.add(bVar);
            }
        }
        return arrayList;
    }

    @NonNull
    private List<C0293c> l(int i10) {
        ArrayList arrayList = new ArrayList(i10);
        for (int i11 = 0; i11 < i10; i11++) {
            C0293c c0293c = new C0293c();
            c0293c.f19592b = ((FlexItem) this.f19584a.b(i11).getLayoutParams()).getOrder();
            c0293c.f19591a = i11;
            arrayList.add(c0293c);
        }
        return arrayList;
    }

    private void r(int i10) {
        boolean[] zArr = this.f19585b;
        if (zArr == null) {
            this.f19585b = new boolean[Math.max(i10, 10)];
        } else if (zArr.length < i10) {
            this.f19585b = new boolean[Math.max(zArr.length * 2, i10)];
        } else {
            Arrays.fill(zArr, false);
        }
    }

    private void v(CompoundButton compoundButton) {
        int minimumWidth;
        FlexItem flexItem = (FlexItem) compoundButton.getLayoutParams();
        int s10 = flexItem.s();
        int H0 = flexItem.H0();
        Drawable buttonDrawable = CompoundButtonCompat.getButtonDrawable(compoundButton);
        int i10 = 0;
        if (buttonDrawable == null) {
            minimumWidth = 0;
        } else {
            minimumWidth = buttonDrawable.getMinimumWidth();
        }
        if (buttonDrawable != null) {
            i10 = buttonDrawable.getMinimumHeight();
        }
        if (s10 == -1) {
            s10 = minimumWidth;
        }
        flexItem.setMinWidth(s10);
        if (H0 == -1) {
            H0 = i10;
        }
        flexItem.W(H0);
    }

    private void w(int i10, int i11, com.google.android.flexbox.b bVar, int i12, int i13, boolean z10) {
        int i14;
        int i15;
        int i16;
        double d10;
        int i17;
        double d11;
        float f10 = bVar.f19575j;
        float f11 = 0.0f;
        if (f10 > 0.0f && i12 >= (i14 = bVar.f19570e)) {
            float f12 = (i12 - i14) / f10;
            bVar.f19570e = i13 + bVar.f19571f;
            if (!z10) {
                bVar.f19572g = Integer.MIN_VALUE;
            }
            int i18 = 0;
            boolean z11 = false;
            int i19 = 0;
            float f13 = 0.0f;
            while (i18 < bVar.f19573h) {
                int i20 = bVar.f19580o + i18;
                View e10 = this.f19584a.e(i20);
                if (e10 == null || e10.getVisibility() == 8) {
                    i15 = i14;
                } else {
                    FlexItem flexItem = (FlexItem) e10.getLayoutParams();
                    int flexDirection = this.f19584a.getFlexDirection();
                    if (flexDirection == 0 || flexDirection == 1) {
                        int i21 = i14;
                        int measuredWidth = e10.getMeasuredWidth();
                        long[] jArr = this.f19588e;
                        if (jArr != null) {
                            measuredWidth = y(jArr[i20]);
                        }
                        int measuredHeight = e10.getMeasuredHeight();
                        long[] jArr2 = this.f19588e;
                        i15 = i21;
                        if (jArr2 != null) {
                            measuredHeight = x(jArr2[i20]);
                        }
                        if (!this.f19585b[i20] && flexItem.Y() > 0.0f) {
                            float Y = measuredWidth + (flexItem.Y() * f12);
                            if (i18 == bVar.f19573h - 1) {
                                Y += f13;
                                f13 = 0.0f;
                            }
                            int round = Math.round(Y);
                            if (round > flexItem.l0()) {
                                round = flexItem.l0();
                                this.f19585b[i20] = true;
                                bVar.f19575j -= flexItem.Y();
                                z11 = true;
                            } else {
                                f13 += Y - round;
                                double d12 = f13;
                                if (d12 > 1.0d) {
                                    round++;
                                    d10 = d12 - 1.0d;
                                } else if (d12 < -1.0d) {
                                    round--;
                                    d10 = d12 + 1.0d;
                                }
                                f13 = (float) d10;
                            }
                            int z12 = z(i11, flexItem, bVar.f19578m);
                            int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(round, 1073741824);
                            e10.measure(makeMeasureSpec, z12);
                            int measuredWidth2 = e10.getMeasuredWidth();
                            int measuredHeight2 = e10.getMeasuredHeight();
                            Z(i20, makeMeasureSpec, z12, e10);
                            this.f19584a.i(i20, e10);
                            measuredWidth = measuredWidth2;
                            measuredHeight = measuredHeight2;
                        }
                        int max = Math.max(i19, measuredHeight + flexItem.t() + flexItem.v() + this.f19584a.d(e10));
                        bVar.f19570e += measuredWidth + flexItem.s0() + flexItem.G0();
                        i16 = max;
                    } else {
                        int measuredHeight3 = e10.getMeasuredHeight();
                        long[] jArr3 = this.f19588e;
                        if (jArr3 != null) {
                            measuredHeight3 = x(jArr3[i20]);
                        }
                        int measuredWidth3 = e10.getMeasuredWidth();
                        long[] jArr4 = this.f19588e;
                        if (jArr4 != null) {
                            measuredWidth3 = y(jArr4[i20]);
                        }
                        if (!this.f19585b[i20] && flexItem.Y() > f11) {
                            float Y2 = measuredHeight3 + (flexItem.Y() * f12);
                            if (i18 == bVar.f19573h - 1) {
                                Y2 += f13;
                                f13 = f11;
                            }
                            int round2 = Math.round(Y2);
                            if (round2 > flexItem.I0()) {
                                round2 = flexItem.I0();
                                this.f19585b[i20] = true;
                                bVar.f19575j -= flexItem.Y();
                                i17 = i14;
                                z11 = true;
                            } else {
                                f13 += Y2 - round2;
                                i17 = i14;
                                double d13 = f13;
                                if (d13 > 1.0d) {
                                    round2++;
                                    d11 = d13 - 1.0d;
                                } else if (d13 < -1.0d) {
                                    round2--;
                                    d11 = d13 + 1.0d;
                                }
                                f13 = (float) d11;
                            }
                            int A = A(i10, flexItem, bVar.f19578m);
                            int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(round2, 1073741824);
                            e10.measure(A, makeMeasureSpec2);
                            measuredWidth3 = e10.getMeasuredWidth();
                            int measuredHeight4 = e10.getMeasuredHeight();
                            Z(i20, A, makeMeasureSpec2, e10);
                            this.f19584a.i(i20, e10);
                            measuredHeight3 = measuredHeight4;
                        } else {
                            i17 = i14;
                        }
                        i16 = Math.max(i19, measuredWidth3 + flexItem.s0() + flexItem.G0() + this.f19584a.d(e10));
                        bVar.f19570e += measuredHeight3 + flexItem.t() + flexItem.v();
                        i15 = i17;
                    }
                    bVar.f19572g = Math.max(bVar.f19572g, i16);
                    i19 = i16;
                }
                i18++;
                i14 = i15;
                f11 = 0.0f;
            }
            int i22 = i14;
            if (z11 && i22 != bVar.f19570e) {
                w(i10, i11, bVar, i12, i13, true);
            }
        }
    }

    private int z(int i10, FlexItem flexItem, int i11) {
        com.google.android.flexbox.a aVar = this.f19584a;
        int c10 = aVar.c(i10, aVar.getPaddingTop() + this.f19584a.getPaddingBottom() + flexItem.t() + flexItem.v() + i11, flexItem.getHeight());
        int size = View.MeasureSpec.getSize(c10);
        if (size > flexItem.I0()) {
            return View.MeasureSpec.makeMeasureSpec(flexItem.I0(), View.MeasureSpec.getMode(c10));
        }
        if (size < flexItem.H0()) {
            return View.MeasureSpec.makeMeasureSpec(flexItem.H0(), View.MeasureSpec.getMode(c10));
        }
        return c10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean O(SparseIntArray sparseIntArray) {
        int flexItemCount = this.f19584a.getFlexItemCount();
        if (sparseIntArray.size() != flexItemCount) {
            return true;
        }
        for (int i10 = 0; i10 < flexItemCount; i10++) {
            View b10 = this.f19584a.b(i10);
            if (b10 != null && ((FlexItem) b10.getLayoutParams()).getOrder() != sparseIntArray.get(i10)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void Q(View view, com.google.android.flexbox.b bVar, int i10, int i11, int i12, int i13) {
        FlexItem flexItem = (FlexItem) view.getLayoutParams();
        int alignItems = this.f19584a.getAlignItems();
        if (flexItem.F() != -1) {
            alignItems = flexItem.F();
        }
        int i14 = bVar.f19572g;
        if (alignItems != 0) {
            if (alignItems != 1) {
                if (alignItems != 2) {
                    if (alignItems != 3) {
                        if (alignItems != 4) {
                            return;
                        }
                    } else if (this.f19584a.getFlexWrap() != 2) {
                        int max = Math.max(bVar.f19577l - view.getBaseline(), flexItem.t());
                        view.layout(i10, i11 + max, i12, i13 + max);
                        return;
                    } else {
                        int max2 = Math.max((bVar.f19577l - view.getMeasuredHeight()) + view.getBaseline(), flexItem.v());
                        view.layout(i10, i11 - max2, i12, i13 - max2);
                        return;
                    }
                } else {
                    int measuredHeight = (((i14 - view.getMeasuredHeight()) + flexItem.t()) - flexItem.v()) / 2;
                    if (this.f19584a.getFlexWrap() != 2) {
                        int i15 = i11 + measuredHeight;
                        view.layout(i10, i15, i12, view.getMeasuredHeight() + i15);
                        return;
                    }
                    int i16 = i11 - measuredHeight;
                    view.layout(i10, i16, i12, view.getMeasuredHeight() + i16);
                    return;
                }
            } else if (this.f19584a.getFlexWrap() != 2) {
                int i17 = i11 + i14;
                view.layout(i10, (i17 - view.getMeasuredHeight()) - flexItem.v(), i12, i17 - flexItem.v());
                return;
            } else {
                view.layout(i10, (i11 - i14) + view.getMeasuredHeight() + flexItem.t(), i12, (i13 - i14) + view.getMeasuredHeight() + flexItem.t());
                return;
            }
        }
        if (this.f19584a.getFlexWrap() != 2) {
            view.layout(i10, i11 + flexItem.t(), i12, i13 + flexItem.t());
        } else {
            view.layout(i10, i11 - flexItem.v(), i12, i13 - flexItem.v());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void R(View view, com.google.android.flexbox.b bVar, boolean z10, int i10, int i11, int i12, int i13) {
        FlexItem flexItem = (FlexItem) view.getLayoutParams();
        int alignItems = this.f19584a.getAlignItems();
        if (flexItem.F() != -1) {
            alignItems = flexItem.F();
        }
        int i14 = bVar.f19572g;
        if (alignItems != 0) {
            if (alignItems != 1) {
                if (alignItems != 2) {
                    if (alignItems != 3 && alignItems != 4) {
                        return;
                    }
                } else {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
                    int measuredWidth = (((i14 - view.getMeasuredWidth()) + MarginLayoutParamsCompat.getMarginStart(marginLayoutParams)) - MarginLayoutParamsCompat.getMarginEnd(marginLayoutParams)) / 2;
                    if (!z10) {
                        view.layout(i10 + measuredWidth, i11, i12 + measuredWidth, i13);
                        return;
                    } else {
                        view.layout(i10 - measuredWidth, i11, i12 - measuredWidth, i13);
                        return;
                    }
                }
            } else if (!z10) {
                view.layout(((i10 + i14) - view.getMeasuredWidth()) - flexItem.G0(), i11, ((i12 + i14) - view.getMeasuredWidth()) - flexItem.G0(), i13);
                return;
            } else {
                view.layout((i10 - i14) + view.getMeasuredWidth() + flexItem.s0(), i11, (i12 - i14) + view.getMeasuredWidth() + flexItem.s0(), i13);
                return;
            }
        }
        if (!z10) {
            view.layout(i10 + flexItem.s0(), i11, i12 + flexItem.s0(), i13);
        } else {
            view.layout(i10 - flexItem.G0(), i11, i12 - flexItem.G0(), i13);
        }
    }

    @VisibleForTesting
    long S(int i10, int i11) {
        return (i10 & 4294967295L) | (i11 << 32);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void X() {
        Y(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void Y(int i10) {
        int i11;
        View e10;
        if (i10 >= this.f19584a.getFlexItemCount()) {
            return;
        }
        int flexDirection = this.f19584a.getFlexDirection();
        if (this.f19584a.getAlignItems() == 4) {
            int[] iArr = this.f19586c;
            if (iArr != null) {
                i11 = iArr[i10];
            } else {
                i11 = 0;
            }
            List<com.google.android.flexbox.b> flexLinesInternal = this.f19584a.getFlexLinesInternal();
            int size = flexLinesInternal.size();
            while (i11 < size) {
                com.google.android.flexbox.b bVar = flexLinesInternal.get(i11);
                int i12 = bVar.f19573h;
                for (int i13 = 0; i13 < i12; i13++) {
                    int i14 = bVar.f19580o + i13;
                    if (i13 < this.f19584a.getFlexItemCount() && (e10 = this.f19584a.e(i14)) != null && e10.getVisibility() != 8) {
                        FlexItem flexItem = (FlexItem) e10.getLayoutParams();
                        if (flexItem.F() == -1 || flexItem.F() == 4) {
                            if (flexDirection != 0 && flexDirection != 1) {
                                if (flexDirection != 2 && flexDirection != 3) {
                                    throw new IllegalArgumentException("Invalid flex direction: " + flexDirection);
                                }
                                V(e10, bVar.f19572g, i14);
                            } else {
                                W(e10, bVar.f19572g, i14);
                            }
                        }
                    }
                }
                i11++;
            }
            return;
        }
        for (com.google.android.flexbox.b bVar2 : this.f19584a.getFlexLinesInternal()) {
            for (Integer num : bVar2.f19579n) {
                View e11 = this.f19584a.e(num.intValue());
                if (flexDirection != 0 && flexDirection != 1) {
                    if (flexDirection != 2 && flexDirection != 3) {
                        throw new IllegalArgumentException("Invalid flex direction: " + flexDirection);
                    }
                    V(e11, bVar2.f19572g, num.intValue());
                } else {
                    W(e11, bVar2.f19572g, num.intValue());
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public void b(b bVar, int i10, int i11, int i12, int i13, int i14, @Nullable List<com.google.android.flexbox.b> list) {
        ArrayList arrayList;
        int i15;
        int i16;
        b bVar2;
        int i17;
        int i18;
        int i19;
        List<com.google.android.flexbox.b> list2;
        int i20;
        int i21;
        View view;
        int i22;
        int i23;
        int i24;
        int i25;
        int i26;
        int i27;
        int i28;
        int i29;
        int i30;
        int i31;
        int i32;
        int i33 = i10;
        int i34 = i11;
        int i35 = i14;
        boolean j10 = this.f19584a.j();
        int mode = View.MeasureSpec.getMode(i10);
        int size = View.MeasureSpec.getSize(i10);
        if (list == null) {
            arrayList = new ArrayList();
        } else {
            arrayList = list;
        }
        bVar.f19589a = arrayList;
        if (i35 == -1) {
            i15 = 1;
        } else {
            i15 = 0;
        }
        int K = K(j10);
        int I = I(j10);
        int J = J(j10);
        int H = H(j10);
        com.google.android.flexbox.b bVar3 = new com.google.android.flexbox.b();
        int i36 = i13;
        bVar3.f19580o = i36;
        int i37 = I + K;
        bVar3.f19570e = i37;
        int flexItemCount = this.f19584a.getFlexItemCount();
        int i38 = i15;
        int i39 = Integer.MIN_VALUE;
        int i40 = 0;
        int i41 = 0;
        int i42 = 0;
        while (true) {
            if (i36 < flexItemCount) {
                View e10 = this.f19584a.e(i36);
                if (e10 == null) {
                    if (N(i36, flexItemCount, bVar3)) {
                        a(arrayList, bVar3, i36, i40);
                    }
                } else if (e10.getVisibility() == 8) {
                    bVar3.f19574i++;
                    bVar3.f19573h++;
                    if (N(i36, flexItemCount, bVar3)) {
                        a(arrayList, bVar3, i36, i40);
                    }
                } else {
                    if (e10 instanceof CompoundButton) {
                        v((CompoundButton) e10);
                    }
                    FlexItem flexItem = (FlexItem) e10.getLayoutParams();
                    int i43 = flexItemCount;
                    if (flexItem.F() == 4) {
                        bVar3.f19579n.add(Integer.valueOf(i36));
                    }
                    int G = G(flexItem, j10);
                    if (flexItem.Z() != -1.0f && mode == 1073741824) {
                        G = Math.round(size * flexItem.Z());
                    }
                    if (j10) {
                        int g10 = this.f19584a.g(i33, i37 + E(flexItem, true) + C(flexItem, true), G);
                        i17 = size;
                        i18 = mode;
                        int c10 = this.f19584a.c(i34, J + H + D(flexItem, true) + B(flexItem, true) + i40, F(flexItem, true));
                        e10.measure(g10, c10);
                        Z(i36, g10, c10, e10);
                        i19 = g10;
                    } else {
                        i17 = size;
                        i18 = mode;
                        int g11 = this.f19584a.g(i34, J + H + D(flexItem, false) + B(flexItem, false) + i40, F(flexItem, false));
                        int c11 = this.f19584a.c(i33, E(flexItem, false) + i37 + C(flexItem, false), G);
                        e10.measure(g11, c11);
                        Z(i36, g11, c11, e10);
                        i19 = c11;
                    }
                    this.f19584a.i(i36, e10);
                    i(e10, i36);
                    i41 = View.combineMeasuredStates(i41, e10.getMeasuredState());
                    int i44 = i40;
                    int i45 = i37;
                    com.google.android.flexbox.b bVar4 = bVar3;
                    int i46 = i36;
                    list2 = arrayList;
                    int i47 = i19;
                    if (P(e10, i18, i17, bVar3.f19570e, C(flexItem, j10) + M(e10, j10) + E(flexItem, j10), flexItem, i46, i42, arrayList.size())) {
                        if (bVar4.c() > 0) {
                            if (i46 > 0) {
                                i32 = i46 - 1;
                            } else {
                                i32 = 0;
                            }
                            a(list2, bVar4, i32, i44);
                            i40 = bVar4.f19572g + i44;
                        } else {
                            i40 = i44;
                        }
                        if (j10) {
                            if (flexItem.getHeight() == -1) {
                                com.google.android.flexbox.a aVar = this.f19584a;
                                i20 = i11;
                                i22 = -1;
                                view = e10;
                                view.measure(i47, aVar.c(i20, aVar.getPaddingTop() + this.f19584a.getPaddingBottom() + flexItem.t() + flexItem.v() + i40, flexItem.getHeight()));
                                i21 = i46;
                                i(view, i21);
                            } else {
                                i20 = i11;
                                i21 = i46;
                                view = e10;
                                i22 = -1;
                            }
                        } else {
                            i20 = i11;
                            i21 = i46;
                            view = e10;
                            i22 = -1;
                            if (flexItem.getWidth() == -1) {
                                com.google.android.flexbox.a aVar2 = this.f19584a;
                                view.measure(aVar2.g(i20, aVar2.getPaddingLeft() + this.f19584a.getPaddingRight() + flexItem.s0() + flexItem.G0() + i40, flexItem.getWidth()), i47);
                                i(view, i21);
                            }
                        }
                        bVar3 = new com.google.android.flexbox.b();
                        i24 = 1;
                        bVar3.f19573h = 1;
                        i23 = i45;
                        bVar3.f19570e = i23;
                        bVar3.f19580o = i21;
                        i26 = Integer.MIN_VALUE;
                        i25 = 0;
                    } else {
                        i20 = i11;
                        i21 = i46;
                        view = e10;
                        i22 = -1;
                        bVar3 = bVar4;
                        i23 = i45;
                        i24 = 1;
                        bVar3.f19573h++;
                        i25 = i42 + 1;
                        i40 = i44;
                        i26 = i39;
                    }
                    boolean z10 = bVar3.f19582q;
                    if (flexItem.Y() != 0.0f) {
                        i27 = i24;
                    } else {
                        i27 = 0;
                    }
                    bVar3.f19582q = (z10 ? 1 : 0) | i27;
                    boolean z11 = bVar3.f19583r;
                    if (flexItem.P() != 0.0f) {
                        i28 = i24;
                    } else {
                        i28 = 0;
                    }
                    bVar3.f19583r = (z11 ? 1 : 0) | i28;
                    int[] iArr = this.f19586c;
                    if (iArr != null) {
                        iArr[i21] = list2.size();
                    }
                    bVar3.f19570e += M(view, j10) + E(flexItem, j10) + C(flexItem, j10);
                    bVar3.f19575j += flexItem.Y();
                    bVar3.f19576k += flexItem.P();
                    this.f19584a.a(view, i21, i25, bVar3);
                    int max = Math.max(i26, L(view, j10) + D(flexItem, j10) + B(flexItem, j10) + this.f19584a.d(view));
                    bVar3.f19572g = Math.max(bVar3.f19572g, max);
                    if (j10) {
                        if (this.f19584a.getFlexWrap() != 2) {
                            bVar3.f19577l = Math.max(bVar3.f19577l, view.getBaseline() + flexItem.t());
                        } else {
                            bVar3.f19577l = Math.max(bVar3.f19577l, (view.getMeasuredHeight() - view.getBaseline()) + flexItem.v());
                        }
                    }
                    i29 = i43;
                    if (N(i21, i29, bVar3)) {
                        a(list2, bVar3, i21, i40);
                        i40 += bVar3.f19572g;
                    }
                    i30 = i14;
                    if (i30 != i22 && list2.size() > 0 && list2.get(list2.size() - i24).f19581p >= i30 && i21 >= i30 && i38 == 0) {
                        i40 = -bVar3.a();
                        i31 = i12;
                        i38 = i24;
                    } else {
                        i31 = i12;
                    }
                    if (i40 > i31 && i38 != 0) {
                        bVar2 = bVar;
                        i16 = i41;
                        break;
                    }
                    i42 = i25;
                    i39 = max;
                    i33 = i10;
                    i36 = i21 + 1;
                    flexItemCount = i29;
                    i34 = i20;
                    i37 = i23;
                    arrayList = list2;
                    size = i17;
                    mode = i18;
                    i35 = i30;
                }
                i17 = size;
                i18 = mode;
                i20 = i34;
                i30 = i35;
                i23 = i37;
                list2 = arrayList;
                i29 = flexItemCount;
                i21 = i36;
                i33 = i10;
                i36 = i21 + 1;
                flexItemCount = i29;
                i34 = i20;
                i37 = i23;
                arrayList = list2;
                size = i17;
                mode = i18;
                i35 = i30;
            } else {
                i16 = i41;
                bVar2 = bVar;
                break;
            }
        }
        bVar2.f19590b = i16;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(b bVar, int i10, int i11) {
        b(bVar, i10, i11, Integer.MAX_VALUE, 0, -1, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(b bVar, int i10, int i11, int i12, int i13, @Nullable List<com.google.android.flexbox.b> list) {
        b(bVar, i10, i11, i12, i13, -1, list);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(b bVar, int i10, int i11, int i12, int i13, List<com.google.android.flexbox.b> list) {
        b(bVar, i10, i11, i12, 0, i13, list);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f(b bVar, int i10, int i11) {
        b(bVar, i11, i10, Integer.MAX_VALUE, 0, -1, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void g(b bVar, int i10, int i11, int i12, int i13, @Nullable List<com.google.android.flexbox.b> list) {
        b(bVar, i11, i10, i12, i13, -1, list);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void h(b bVar, int i10, int i11, int i12, int i13, List<com.google.android.flexbox.b> list) {
        b(bVar, i11, i10, i12, 0, i13, list);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void j(List<com.google.android.flexbox.b> list, int i10) {
        int i11 = this.f19586c[i10];
        if (i11 == -1) {
            i11 = 0;
        }
        if (list.size() > i11) {
            list.subList(i11, list.size()).clear();
        }
        int[] iArr = this.f19586c;
        int length = iArr.length - 1;
        if (i10 > length) {
            Arrays.fill(iArr, -1);
        } else {
            Arrays.fill(iArr, i10, length, -1);
        }
        long[] jArr = this.f19587d;
        int length2 = jArr.length - 1;
        if (i10 > length2) {
            Arrays.fill(jArr, 0L);
        } else {
            Arrays.fill(jArr, i10, length2, 0L);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int[] m(SparseIntArray sparseIntArray) {
        int flexItemCount = this.f19584a.getFlexItemCount();
        return U(flexItemCount, l(flexItemCount), sparseIntArray);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int[] n(View view, int i10, ViewGroup.LayoutParams layoutParams, SparseIntArray sparseIntArray) {
        int flexItemCount = this.f19584a.getFlexItemCount();
        List<C0293c> l10 = l(flexItemCount);
        C0293c c0293c = new C0293c();
        if (view != null && (layoutParams instanceof FlexItem)) {
            c0293c.f19592b = ((FlexItem) layoutParams).getOrder();
        } else {
            c0293c.f19592b = 1;
        }
        if (i10 != -1 && i10 != flexItemCount) {
            if (i10 < this.f19584a.getFlexItemCount()) {
                c0293c.f19591a = i10;
                while (i10 < flexItemCount) {
                    l10.get(i10).f19591a++;
                    i10++;
                }
            } else {
                c0293c.f19591a = flexItemCount;
            }
        } else {
            c0293c.f19591a = flexItemCount;
        }
        l10.add(c0293c);
        return U(flexItemCount + 1, l10, sparseIntArray);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void o(int i10, int i11, int i12) {
        int i13;
        int i14;
        int flexDirection = this.f19584a.getFlexDirection();
        if (flexDirection != 0 && flexDirection != 1) {
            if (flexDirection != 2 && flexDirection != 3) {
                throw new IllegalArgumentException("Invalid flex direction: " + flexDirection);
            }
            i13 = View.MeasureSpec.getMode(i10);
            i14 = View.MeasureSpec.getSize(i10);
        } else {
            int mode = View.MeasureSpec.getMode(i11);
            int size = View.MeasureSpec.getSize(i11);
            i13 = mode;
            i14 = size;
        }
        List<com.google.android.flexbox.b> flexLinesInternal = this.f19584a.getFlexLinesInternal();
        if (i13 == 1073741824) {
            int sumOfCrossSize = this.f19584a.getSumOfCrossSize() + i12;
            int i15 = 0;
            if (flexLinesInternal.size() == 1) {
                flexLinesInternal.get(0).f19572g = i14 - i12;
            } else if (flexLinesInternal.size() >= 2) {
                int alignContent = this.f19584a.getAlignContent();
                if (alignContent != 1) {
                    if (alignContent != 2) {
                        if (alignContent != 3) {
                            if (alignContent != 4) {
                                if (alignContent == 5 && sumOfCrossSize < i14) {
                                    float size2 = (i14 - sumOfCrossSize) / flexLinesInternal.size();
                                    int size3 = flexLinesInternal.size();
                                    float f10 = 0.0f;
                                    while (i15 < size3) {
                                        com.google.android.flexbox.b bVar = flexLinesInternal.get(i15);
                                        float f11 = bVar.f19572g + size2;
                                        if (i15 == flexLinesInternal.size() - 1) {
                                            f11 += f10;
                                            f10 = 0.0f;
                                        }
                                        int round = Math.round(f11);
                                        f10 += f11 - round;
                                        if (f10 > 1.0f) {
                                            round++;
                                            f10 -= 1.0f;
                                        } else if (f10 < -1.0f) {
                                            round--;
                                            f10 += 1.0f;
                                        }
                                        bVar.f19572g = round;
                                        i15++;
                                    }
                                    return;
                                }
                                return;
                            } else if (sumOfCrossSize >= i14) {
                                this.f19584a.setFlexLines(k(flexLinesInternal, i14, sumOfCrossSize));
                                return;
                            } else {
                                int size4 = (i14 - sumOfCrossSize) / (flexLinesInternal.size() * 2);
                                ArrayList arrayList = new ArrayList();
                                com.google.android.flexbox.b bVar2 = new com.google.android.flexbox.b();
                                bVar2.f19572g = size4;
                                for (com.google.android.flexbox.b bVar3 : flexLinesInternal) {
                                    arrayList.add(bVar2);
                                    arrayList.add(bVar3);
                                    arrayList.add(bVar2);
                                }
                                this.f19584a.setFlexLines(arrayList);
                                return;
                            }
                        } else if (sumOfCrossSize < i14) {
                            float size5 = (i14 - sumOfCrossSize) / (flexLinesInternal.size() - 1);
                            ArrayList arrayList2 = new ArrayList();
                            int size6 = flexLinesInternal.size();
                            float f12 = 0.0f;
                            while (i15 < size6) {
                                arrayList2.add(flexLinesInternal.get(i15));
                                if (i15 != flexLinesInternal.size() - 1) {
                                    com.google.android.flexbox.b bVar4 = new com.google.android.flexbox.b();
                                    if (i15 == flexLinesInternal.size() - 2) {
                                        bVar4.f19572g = Math.round(f12 + size5);
                                        f12 = 0.0f;
                                    } else {
                                        bVar4.f19572g = Math.round(size5);
                                    }
                                    int i16 = bVar4.f19572g;
                                    f12 += size5 - i16;
                                    if (f12 > 1.0f) {
                                        bVar4.f19572g = i16 + 1;
                                        f12 -= 1.0f;
                                    } else if (f12 < -1.0f) {
                                        bVar4.f19572g = i16 - 1;
                                        f12 += 1.0f;
                                    }
                                    arrayList2.add(bVar4);
                                }
                                i15++;
                            }
                            this.f19584a.setFlexLines(arrayList2);
                            return;
                        } else {
                            return;
                        }
                    }
                    this.f19584a.setFlexLines(k(flexLinesInternal, i14, sumOfCrossSize));
                    return;
                }
                int i17 = i14 - sumOfCrossSize;
                com.google.android.flexbox.b bVar5 = new com.google.android.flexbox.b();
                bVar5.f19572g = i17;
                flexLinesInternal.add(0, bVar5);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void p(int i10, int i11) {
        q(i10, i11, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void q(int i10, int i11, int i12) {
        int size;
        int paddingLeft;
        int paddingRight;
        int i13;
        r(this.f19584a.getFlexItemCount());
        if (i12 >= this.f19584a.getFlexItemCount()) {
            return;
        }
        int flexDirection = this.f19584a.getFlexDirection();
        int flexDirection2 = this.f19584a.getFlexDirection();
        if (flexDirection2 != 0 && flexDirection2 != 1) {
            if (flexDirection2 != 2 && flexDirection2 != 3) {
                throw new IllegalArgumentException("Invalid flex direction: " + flexDirection);
            }
            int mode = View.MeasureSpec.getMode(i11);
            size = View.MeasureSpec.getSize(i11);
            if (mode != 1073741824) {
                size = this.f19584a.getLargestMainSize();
            }
            paddingLeft = this.f19584a.getPaddingTop();
            paddingRight = this.f19584a.getPaddingBottom();
        } else {
            int mode2 = View.MeasureSpec.getMode(i10);
            size = View.MeasureSpec.getSize(i10);
            int largestMainSize = this.f19584a.getLargestMainSize();
            if (mode2 != 1073741824) {
                size = Math.min(largestMainSize, size);
            }
            paddingLeft = this.f19584a.getPaddingLeft();
            paddingRight = this.f19584a.getPaddingRight();
        }
        int i14 = paddingLeft + paddingRight;
        int[] iArr = this.f19586c;
        if (iArr != null) {
            i13 = iArr[i12];
        } else {
            i13 = 0;
        }
        List<com.google.android.flexbox.b> flexLinesInternal = this.f19584a.getFlexLinesInternal();
        int size2 = flexLinesInternal.size();
        while (i13 < size2) {
            com.google.android.flexbox.b bVar = flexLinesInternal.get(i13);
            int i15 = bVar.f19570e;
            if (i15 < size && bVar.f19582q) {
                w(i10, i11, bVar, size, i14, false);
            } else if (i15 > size && bVar.f19583r) {
                T(i10, i11, bVar, size, i14, false);
            }
            i13++;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void s(int i10) {
        int[] iArr = this.f19586c;
        if (iArr == null) {
            this.f19586c = new int[Math.max(i10, 10)];
        } else if (iArr.length < i10) {
            this.f19586c = Arrays.copyOf(this.f19586c, Math.max(iArr.length * 2, i10));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void t(int i10) {
        long[] jArr = this.f19587d;
        if (jArr == null) {
            this.f19587d = new long[Math.max(i10, 10)];
        } else if (jArr.length < i10) {
            this.f19587d = Arrays.copyOf(this.f19587d, Math.max(jArr.length * 2, i10));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void u(int i10) {
        long[] jArr = this.f19588e;
        if (jArr == null) {
            this.f19588e = new long[Math.max(i10, 10)];
        } else if (jArr.length < i10) {
            this.f19588e = Arrays.copyOf(this.f19588e, Math.max(jArr.length * 2, i10));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int x(long j10) {
        return (int) (j10 >> 32);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int y(long j10) {
        return (int) j10;
    }
}
