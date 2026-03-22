package com.bytedance.adsdk.ugeno.Pfn;

import android.graphics.drawable.Drawable;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* loaded from: classes3.dex */
class ex {
    static final /* synthetic */ boolean tB = true;
    private boolean[] Pfn;
    long[] ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private long[] f11615ba;
    private final com.bytedance.adsdk.ugeno.Pfn.oJ ex;
    int[] oJ;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class ZYk implements Comparable<ZYk> {
        int ZYk;
        int oJ;

        private ZYk() {
        }

        @Override // java.lang.Comparable
        /* renamed from: oJ */
        public int compareTo(ZYk zYk) {
            int i10 = this.ZYk;
            int i11 = zYk.ZYk;
            if (i10 != i11) {
                return i10 - i11;
            }
            return this.oJ - zYk.oJ;
        }

        public String toString() {
            return "Order{order=" + this.ZYk + ", index=" + this.oJ + '}';
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class oJ {
        int ZYk;
        List<tB> oJ;

        /* JADX INFO: Access modifiers changed from: package-private */
        public void oJ() {
            this.oJ = null;
            this.ZYk = 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ex(com.bytedance.adsdk.ugeno.Pfn.oJ oJVar) {
        this.ex = oJVar;
    }

    private int Pfn(com.bytedance.adsdk.ugeno.Pfn.ZYk zYk, boolean z10) {
        if (z10) {
            return zYk.WcQ();
        }
        return zYk.PiB();
    }

    private int ba(com.bytedance.adsdk.ugeno.Pfn.ZYk zYk, boolean z10) {
        if (z10) {
            return zYk.eZI();
        }
        return zYk.awB();
    }

    private int ex(boolean z10) {
        if (z10) {
            return this.ex.getPaddingBottom();
        }
        return this.ex.getPaddingEnd();
    }

    private int tB(boolean z10) {
        if (z10) {
            return this.ex.getPaddingTop();
        }
        return this.ex.getPaddingStart();
    }

    int ZYk(long j10) {
        return (int) (j10 >> 32);
    }

    int oJ(long j10) {
        return (int) j10;
    }

    long ZYk(int i10, int i11) {
        return (i10 & 4294967295L) | (i11 << 32);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int[] oJ(View view, int i10, ViewGroup.LayoutParams layoutParams, SparseIntArray sparseIntArray) {
        int flexItemCount = this.ex.getFlexItemCount();
        List<ZYk> ZYk2 = ZYk(flexItemCount);
        ZYk zYk = new ZYk();
        if (view != null && (layoutParams instanceof com.bytedance.adsdk.ugeno.Pfn.ZYk)) {
            zYk.ZYk = ((com.bytedance.adsdk.ugeno.Pfn.ZYk) layoutParams).tB();
        } else {
            zYk.ZYk = 1;
        }
        if (i10 != -1 && i10 != flexItemCount) {
            if (i10 < this.ex.getFlexItemCount()) {
                zYk.oJ = i10;
                while (i10 < flexItemCount) {
                    ZYk2.get(i10).oJ++;
                    i10++;
                }
            } else {
                zYk.oJ = flexItemCount;
            }
        } else {
            zYk.oJ = flexItemCount;
        }
        ZYk2.add(zYk);
        return oJ(flexItemCount + 1, ZYk2, sparseIntArray);
    }

    private List<ZYk> ZYk(int i10) {
        ArrayList arrayList = new ArrayList(i10);
        for (int i11 = 0; i11 < i10; i11++) {
            ZYk zYk = new ZYk();
            zYk.ZYk = ((com.bytedance.adsdk.ugeno.Pfn.ZYk) this.ex.oJ(i11).getLayoutParams()).tB();
            zYk.oJ = i11;
            arrayList.add(zYk);
        }
        return arrayList;
    }

    private int ex(com.bytedance.adsdk.ugeno.Pfn.ZYk zYk, boolean z10) {
        if (z10) {
            return zYk.awB();
        }
        return zYk.eZI();
    }

    private int tB(com.bytedance.adsdk.ugeno.Pfn.ZYk zYk, boolean z10) {
        if (z10) {
            return zYk.PiB();
        }
        return zYk.WcQ();
    }

    private void tB(int i10) {
        boolean[] zArr = this.Pfn;
        if (zArr == null) {
            this.Pfn = new boolean[Math.max(i10, 10)];
        } else if (zArr.length < i10) {
            this.Pfn = new boolean[Math.max(zArr.length * 2, i10)];
        } else {
            Arrays.fill(zArr, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean ZYk(SparseIntArray sparseIntArray) {
        int flexItemCount = this.ex.getFlexItemCount();
        if (sparseIntArray.size() != flexItemCount) {
            return true;
        }
        for (int i10 = 0; i10 < flexItemCount; i10++) {
            View oJ2 = this.ex.oJ(i10);
            if (oJ2 != null && ((com.bytedance.adsdk.ugeno.Pfn.ZYk) oJ2.getLayoutParams()).tB() != sparseIntArray.get(i10)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void ZYk(oJ oJVar, int i10, int i11) {
        oJ(oJVar, i11, i10, Integer.MAX_VALUE, 0, -1, (List<tB>) null);
    }

    private int ZYk(boolean z10) {
        if (z10) {
            return this.ex.getPaddingEnd();
        }
        return this.ex.getPaddingBottom();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int[] oJ(SparseIntArray sparseIntArray) {
        int flexItemCount = this.ex.getFlexItemCount();
        return oJ(flexItemCount, ZYk(flexItemCount), sparseIntArray);
    }

    private int ZYk(View view, boolean z10) {
        if (z10) {
            return view.getMeasuredHeight();
        }
        return view.getMeasuredWidth();
    }

    private int[] oJ(int i10, List<ZYk> list, SparseIntArray sparseIntArray) {
        Collections.sort(list);
        sparseIntArray.clear();
        int[] iArr = new int[i10];
        int i11 = 0;
        for (ZYk zYk : list) {
            int i12 = zYk.oJ;
            iArr[i11] = i12;
            sparseIntArray.append(i12, zYk.ZYk);
            i11++;
        }
        return iArr;
    }

    private int ZYk(com.bytedance.adsdk.ugeno.Pfn.ZYk zYk, boolean z10) {
        if (z10) {
            return zYk.ZYk();
        }
        return zYk.oJ();
    }

    private void ZYk(int i10, int i11, tB tBVar, int i12, int i13, boolean z10) {
        int i14;
        int i15;
        int i16;
        int i17 = tBVar.Pfn;
        float f10 = tBVar.dLZ;
        float f11 = 0.0f;
        if (f10 <= 0.0f || i12 > i17) {
            return;
        }
        float f12 = (i17 - i12) / f10;
        tBVar.Pfn = i13 + tBVar.f11616ba;
        if (!z10) {
            tBVar.cFZ = Integer.MIN_VALUE;
        }
        int i18 = 0;
        boolean z11 = false;
        int i19 = 0;
        float f13 = 0.0f;
        while (i18 < tBVar.f11618so) {
            int i20 = tBVar.awB + i18;
            View ZYk2 = this.ex.ZYk(i20);
            if (ZYk2 == null || ZYk2.getVisibility() == 8) {
                i14 = i17;
                i15 = i18;
            } else {
                com.bytedance.adsdk.ugeno.Pfn.ZYk zYk = (com.bytedance.adsdk.ugeno.Pfn.ZYk) ZYk2.getLayoutParams();
                int flexDirection = this.ex.getFlexDirection();
                if (flexDirection != 0 && flexDirection != 1) {
                    int measuredHeight = ZYk2.getMeasuredHeight();
                    long[] jArr = this.f11615ba;
                    if (jArr != null) {
                        measuredHeight = ZYk(jArr[i20]);
                    }
                    int measuredWidth = ZYk2.getMeasuredWidth();
                    long[] jArr2 = this.f11615ba;
                    if (jArr2 != null) {
                        measuredWidth = oJ(jArr2[i20]);
                    }
                    if (this.Pfn[i20] || zYk.Pfn() <= f11) {
                        i14 = i17;
                        i15 = i18;
                    } else {
                        float Pfn = measuredHeight - (zYk.Pfn() * f12);
                        if (i18 == tBVar.f11618so - 1) {
                            Pfn += f13;
                            f13 = f11;
                        }
                        int round = Math.round(Pfn);
                        if (round < zYk.so()) {
                            round = zYk.so();
                            this.Pfn[i20] = true;
                            tBVar.dLZ -= zYk.Pfn();
                            i14 = i17;
                            i15 = i18;
                            z11 = true;
                        } else {
                            f13 += Pfn - round;
                            i14 = i17;
                            i15 = i18;
                            double d10 = f13;
                            if (d10 > 1.0d) {
                                round++;
                                f13 -= 1.0f;
                            } else if (d10 < -1.0d) {
                                round--;
                                f13 += 1.0f;
                            }
                        }
                        int oJ2 = oJ(i10, zYk, tBVar.PiB);
                        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(round, 1073741824);
                        ZYk2.measure(oJ2, makeMeasureSpec);
                        measuredWidth = ZYk2.getMeasuredWidth();
                        int measuredHeight2 = ZYk2.getMeasuredHeight();
                        oJ(i20, oJ2, makeMeasureSpec, ZYk2);
                        measuredHeight = measuredHeight2;
                    }
                    i16 = Math.max(i19, measuredWidth + zYk.PiB() + zYk.awB() + this.ex.oJ(ZYk2));
                    tBVar.Pfn += measuredHeight + zYk.WcQ() + zYk.eZI();
                } else {
                    i14 = i17;
                    int i21 = i18;
                    int measuredWidth2 = ZYk2.getMeasuredWidth();
                    long[] jArr3 = this.f11615ba;
                    if (jArr3 != null) {
                        measuredWidth2 = oJ(jArr3[i20]);
                    }
                    int measuredHeight3 = ZYk2.getMeasuredHeight();
                    long[] jArr4 = this.f11615ba;
                    if (jArr4 != null) {
                        measuredHeight3 = ZYk(jArr4[i20]);
                    }
                    if (this.Pfn[i20] || zYk.Pfn() <= 0.0f) {
                        i15 = i21;
                    } else {
                        float Pfn2 = measuredWidth2 - (zYk.Pfn() * f12);
                        i15 = i21;
                        if (i15 == tBVar.f11618so - 1) {
                            Pfn2 += f13;
                            f13 = 0.0f;
                        }
                        int round2 = Math.round(Pfn2);
                        if (round2 < zYk.cFZ()) {
                            round2 = zYk.cFZ();
                            this.Pfn[i20] = true;
                            tBVar.dLZ -= zYk.Pfn();
                            z11 = true;
                        } else {
                            f13 += Pfn2 - round2;
                            double d11 = f13;
                            if (d11 > 1.0d) {
                                round2++;
                                f13 -= 1.0f;
                            } else if (d11 < -1.0d) {
                                round2--;
                                f13 += 1.0f;
                            }
                        }
                        int ZYk3 = ZYk(i11, zYk, tBVar.PiB);
                        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(round2, 1073741824);
                        ZYk2.measure(makeMeasureSpec2, ZYk3);
                        int measuredWidth3 = ZYk2.getMeasuredWidth();
                        int measuredHeight4 = ZYk2.getMeasuredHeight();
                        oJ(i20, makeMeasureSpec2, ZYk3, ZYk2);
                        measuredWidth2 = measuredWidth3;
                        measuredHeight3 = measuredHeight4;
                    }
                    int max = Math.max(i19, measuredHeight3 + zYk.WcQ() + zYk.eZI() + this.ex.oJ(ZYk2));
                    tBVar.Pfn += measuredWidth2 + zYk.PiB() + zYk.awB();
                    i16 = max;
                }
                tBVar.cFZ = Math.max(tBVar.cFZ, i16);
                i19 = i16;
            }
            i18 = i15 + 1;
            i17 = i14;
            f11 = 0.0f;
        }
        int i22 = i17;
        if (!z11 || i22 == tBVar.Pfn) {
            return;
        }
        ZYk(i10, i11, tBVar, i12, i13, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void oJ(oJ oJVar, int i10, int i11) {
        oJ(oJVar, i10, i11, Integer.MAX_VALUE, 0, -1, (List<tB>) null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    void oJ(oJ oJVar, int i10, int i11, int i12, int i13, int i14, List<tB> list) {
        int i15;
        oJ oJVar2;
        int i16;
        int i17;
        int i18;
        List<tB> list2;
        int i19;
        int i20;
        View view;
        int i21;
        int i22;
        int i23;
        int i24;
        int i25;
        int i26;
        int i27;
        int i28;
        int i29 = i10;
        int i30 = i11;
        int i31 = i14;
        boolean oJ2 = this.ex.oJ();
        int mode = View.MeasureSpec.getMode(i10);
        int size = View.MeasureSpec.getSize(i10);
        ArrayList arrayList = list == null ? new ArrayList() : list;
        oJVar.oJ = arrayList;
        int i32 = i31 == -1 ? 1 : 0;
        int oJ3 = oJ(oJ2);
        int ZYk2 = ZYk(oJ2);
        int tB2 = tB(oJ2);
        int ex = ex(oJ2);
        tB tBVar = new tB();
        int i33 = i13;
        tBVar.awB = i33;
        int i34 = ZYk2 + oJ3;
        tBVar.Pfn = i34;
        int flexItemCount = this.ex.getFlexItemCount();
        int i35 = i32;
        int i36 = Integer.MIN_VALUE;
        int i37 = 0;
        int i38 = 0;
        int i39 = 0;
        while (true) {
            if (i33 >= flexItemCount) {
                i15 = i38;
                oJVar2 = oJVar;
                break;
            }
            View ZYk3 = this.ex.ZYk(i33);
            if (ZYk3 == null) {
                if (oJ(i33, flexItemCount, tBVar)) {
                    oJ(arrayList, tBVar, i33, i37);
                }
            } else if (ZYk3.getVisibility() == 8) {
                tBVar.jFA++;
                tBVar.f11618so++;
                if (oJ(i33, flexItemCount, tBVar)) {
                    oJ(arrayList, tBVar, i33, i37);
                }
            } else {
                if (ZYk3 instanceof CompoundButton) {
                    oJ((CompoundButton) ZYk3);
                }
                com.bytedance.adsdk.ugeno.Pfn.ZYk zYk = (com.bytedance.adsdk.ugeno.Pfn.ZYk) ZYk3.getLayoutParams();
                int i40 = flexItemCount;
                if (zYk.ba() == 4) {
                    tBVar.WcQ.add(Integer.valueOf(i33));
                }
                int oJ4 = oJ(zYk, oJ2);
                if (zYk.BTZ() != -1.0f && mode == 1073741824) {
                    oJ4 = Math.round(size * zYk.BTZ());
                }
                if (oJ2) {
                    int oJ5 = this.ex.oJ(i29, i34 + tB(zYk, true) + ex(zYk, true), oJ4);
                    i16 = size;
                    i17 = mode;
                    int ZYk4 = this.ex.ZYk(i30, tB2 + ex + Pfn(zYk, true) + ba(zYk, true) + i37, ZYk(zYk, true));
                    ZYk3.measure(oJ5, ZYk4);
                    oJ(i33, oJ5, ZYk4, ZYk3);
                    i18 = oJ5;
                } else {
                    i16 = size;
                    i17 = mode;
                    int oJ6 = this.ex.oJ(i30, tB2 + ex + Pfn(zYk, false) + ba(zYk, false) + i37, ZYk(zYk, false));
                    int ZYk5 = this.ex.ZYk(i29, tB(zYk, false) + i34 + ex(zYk, false), oJ4);
                    ZYk3.measure(oJ6, ZYk5);
                    oJ(i33, oJ6, ZYk5, ZYk3);
                    i18 = ZYk5;
                }
                oJ(ZYk3, i33);
                i38 = View.combineMeasuredStates(i38, ZYk3.getMeasuredState());
                int i41 = i37;
                int i42 = i34;
                tB tBVar2 = tBVar;
                int i43 = i33;
                list2 = arrayList;
                int i44 = i18;
                if (oJ(ZYk3, i17, i16, tBVar.Pfn, ex(zYk, oJ2) + oJ(ZYk3, oJ2) + tB(zYk, oJ2), zYk, i43, i39, arrayList.size())) {
                    if (tBVar2.ZYk() > 0) {
                        oJ(list2, tBVar2, i43 > 0 ? i43 - 1 : 0, i41);
                        i37 = tBVar2.cFZ + i41;
                    } else {
                        i37 = i41;
                    }
                    if (oJ2) {
                        if (zYk.ZYk() == -1) {
                            com.bytedance.adsdk.ugeno.Pfn.oJ oJVar3 = this.ex;
                            i19 = i11;
                            i21 = -1;
                            view = ZYk3;
                            view.measure(i44, oJVar3.ZYk(i19, oJVar3.getPaddingTop() + this.ex.getPaddingBottom() + zYk.WcQ() + zYk.eZI() + i37, zYk.ZYk()));
                            i20 = i43;
                            oJ(view, i20);
                        } else {
                            i19 = i11;
                            i20 = i43;
                            view = ZYk3;
                            i21 = -1;
                        }
                    } else {
                        i19 = i11;
                        i20 = i43;
                        view = ZYk3;
                        i21 = -1;
                        if (zYk.oJ() == -1) {
                            com.bytedance.adsdk.ugeno.Pfn.oJ oJVar4 = this.ex;
                            view.measure(oJVar4.oJ(i19, oJVar4.getPaddingLeft() + this.ex.getPaddingRight() + zYk.PiB() + zYk.awB() + i37, zYk.oJ()), i44);
                            oJ(view, i20);
                        }
                    }
                    tBVar = new tB();
                    i23 = 1;
                    tBVar.f11618so = 1;
                    i22 = i42;
                    tBVar.Pfn = i22;
                    tBVar.awB = i20;
                    i25 = Integer.MIN_VALUE;
                    i24 = 0;
                } else {
                    i19 = i11;
                    i20 = i43;
                    view = ZYk3;
                    i21 = -1;
                    tBVar = tBVar2;
                    i22 = i42;
                    i23 = 1;
                    tBVar.f11618so++;
                    i24 = i39 + 1;
                    i37 = i41;
                    i25 = i36;
                }
                tBVar.f11617si = (tBVar.f11617si ? 1 : 0) | (zYk.ex() != 0.0f ? i23 : 0);
                tBVar.Ry = (tBVar.Ry ? 1 : 0) | (zYk.Pfn() != 0.0f ? i23 : 0);
                int[] iArr = this.oJ;
                if (iArr != null) {
                    iArr[i20] = list2.size();
                }
                tBVar.Pfn += oJ(view, oJ2) + tB(zYk, oJ2) + ex(zYk, oJ2);
                tBVar.kkU += zYk.ex();
                tBVar.dLZ += zYk.Pfn();
                this.ex.oJ(view, i20, i24, tBVar);
                int max = Math.max(i25, ZYk(view, oJ2) + Pfn(zYk, oJ2) + ba(zYk, oJ2) + this.ex.oJ(view));
                tBVar.cFZ = Math.max(tBVar.cFZ, max);
                if (oJ2) {
                    if (this.ex.getFlexWrap() != 2) {
                        tBVar.BTZ = Math.max(tBVar.BTZ, view.getBaseline() + zYk.WcQ());
                    } else {
                        tBVar.BTZ = Math.max(tBVar.BTZ, (view.getMeasuredHeight() - view.getBaseline()) + zYk.eZI());
                    }
                }
                i26 = i40;
                if (oJ(i20, i26, tBVar)) {
                    oJ(list2, tBVar, i20, i37);
                    i37 += tBVar.cFZ;
                }
                i27 = i14;
                if (i27 == i21 || list2.size() <= 0 || list2.get(list2.size() - i23).eZI < i27 || i20 < i27 || i35 != 0) {
                    i28 = i12;
                } else {
                    i37 = -tBVar.oJ();
                    i28 = i12;
                    i35 = i23;
                }
                if (i37 > i28 && i35 != 0) {
                    oJVar2 = oJVar;
                    i15 = i38;
                    break;
                }
                i39 = i24;
                i36 = max;
                i29 = i10;
                i33 = i20 + 1;
                flexItemCount = i26;
                i30 = i19;
                i34 = i22;
                arrayList = list2;
                size = i16;
                mode = i17;
                i31 = i27;
            }
            i16 = size;
            i17 = mode;
            i19 = i30;
            i27 = i31;
            i22 = i34;
            list2 = arrayList;
            i26 = flexItemCount;
            i20 = i33;
            i29 = i10;
            i33 = i20 + 1;
            flexItemCount = i26;
            i30 = i19;
            i34 = i22;
            arrayList = list2;
            size = i16;
            mode = i17;
            i31 = i27;
        }
        oJVar2.ZYk = i15;
    }

    private int ZYk(int i10, com.bytedance.adsdk.ugeno.Pfn.ZYk zYk, int i11) {
        com.bytedance.adsdk.ugeno.Pfn.oJ oJVar = this.ex;
        int ZYk2 = oJVar.ZYk(i10, oJVar.getPaddingTop() + this.ex.getPaddingBottom() + zYk.WcQ() + zYk.eZI() + i11, zYk.ZYk());
        int size = View.MeasureSpec.getSize(ZYk2);
        if (size > zYk.kkU()) {
            return View.MeasureSpec.makeMeasureSpec(zYk.kkU(), View.MeasureSpec.getMode(ZYk2));
        }
        return size < zYk.so() ? View.MeasureSpec.makeMeasureSpec(zYk.so(), View.MeasureSpec.getMode(ZYk2)) : ZYk2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void ZYk(int i10, int i11, int i12) {
        int i13;
        int i14;
        int flexDirection = this.ex.getFlexDirection();
        if (flexDirection == 0 || flexDirection == 1) {
            int mode = View.MeasureSpec.getMode(i11);
            int size = View.MeasureSpec.getSize(i11);
            i13 = mode;
            i14 = size;
        } else if (flexDirection != 2 && flexDirection != 3) {
            throw new IllegalArgumentException("Invalid flex direction: ".concat(String.valueOf(flexDirection)));
        } else {
            i13 = View.MeasureSpec.getMode(i10);
            i14 = View.MeasureSpec.getSize(i10);
        }
        List<tB> flexLinesInternal = this.ex.getFlexLinesInternal();
        if (i13 == 1073741824) {
            int sumOfCrossSize = this.ex.getSumOfCrossSize() + i12;
            int i15 = 0;
            if (flexLinesInternal.size() == 1) {
                flexLinesInternal.get(0).cFZ = i14 - i12;
            } else if (flexLinesInternal.size() >= 2) {
                int alignContent = this.ex.getAlignContent();
                if (alignContent == 1) {
                    int i16 = i14 - sumOfCrossSize;
                    tB tBVar = new tB();
                    tBVar.cFZ = i16;
                    flexLinesInternal.add(0, tBVar);
                } else if (alignContent == 2) {
                    this.ex.setFlexLines(oJ(flexLinesInternal, i14, sumOfCrossSize));
                } else if (alignContent == 3) {
                    if (sumOfCrossSize < i14) {
                        float size2 = (i14 - sumOfCrossSize) / (flexLinesInternal.size() - 1);
                        ArrayList arrayList = new ArrayList();
                        int size3 = flexLinesInternal.size();
                        float f10 = 0.0f;
                        while (i15 < size3) {
                            arrayList.add(flexLinesInternal.get(i15));
                            if (i15 != flexLinesInternal.size() - 1) {
                                tB tBVar2 = new tB();
                                if (i15 == flexLinesInternal.size() - 2) {
                                    tBVar2.cFZ = Math.round(f10 + size2);
                                    f10 = 0.0f;
                                } else {
                                    tBVar2.cFZ = Math.round(size2);
                                }
                                int i17 = tBVar2.cFZ;
                                f10 += size2 - i17;
                                if (f10 > 1.0f) {
                                    tBVar2.cFZ = i17 + 1;
                                    f10 -= 1.0f;
                                } else if (f10 < -1.0f) {
                                    tBVar2.cFZ = i17 - 1;
                                    f10 += 1.0f;
                                }
                                arrayList.add(tBVar2);
                            }
                            i15++;
                        }
                        this.ex.setFlexLines(arrayList);
                    }
                } else if (alignContent == 4) {
                    if (sumOfCrossSize >= i14) {
                        this.ex.setFlexLines(oJ(flexLinesInternal, i14, sumOfCrossSize));
                        return;
                    }
                    int size4 = (i14 - sumOfCrossSize) / (flexLinesInternal.size() * 2);
                    ArrayList arrayList2 = new ArrayList();
                    tB tBVar3 = new tB();
                    tBVar3.cFZ = size4;
                    for (tB tBVar4 : flexLinesInternal) {
                        arrayList2.add(tBVar3);
                        arrayList2.add(tBVar4);
                        arrayList2.add(tBVar3);
                    }
                    this.ex.setFlexLines(arrayList2);
                } else if (alignContent == 5 && sumOfCrossSize < i14) {
                    float size5 = (i14 - sumOfCrossSize) / flexLinesInternal.size();
                    int size6 = flexLinesInternal.size();
                    float f11 = 0.0f;
                    while (i15 < size6) {
                        tB tBVar5 = flexLinesInternal.get(i15);
                        float f12 = tBVar5.cFZ + size5;
                        if (i15 == flexLinesInternal.size() - 1) {
                            f12 += f11;
                            f11 = 0.0f;
                        }
                        int round = Math.round(f12);
                        f11 += f12 - round;
                        if (f11 > 1.0f) {
                            round++;
                            f11 -= 1.0f;
                        } else if (f11 < -1.0f) {
                            round--;
                            f11 += 1.0f;
                        }
                        tBVar5.cFZ = round;
                        i15++;
                    }
                }
            }
        }
    }

    private void oJ(CompoundButton compoundButton) {
        com.bytedance.adsdk.ugeno.Pfn.ZYk zYk = (com.bytedance.adsdk.ugeno.Pfn.ZYk) compoundButton.getLayoutParams();
        int cFZ = zYk.cFZ();
        int so2 = zYk.so();
        Drawable oJ2 = com.bytedance.adsdk.ugeno.cFZ.Pfn.oJ(compoundButton);
        int minimumWidth = oJ2 == null ? 0 : oJ2.getMinimumWidth();
        int minimumHeight = oJ2 != null ? oJ2.getMinimumHeight() : 0;
        if (cFZ == -1) {
            cFZ = minimumWidth;
        }
        zYk.oJ(cFZ);
        if (so2 == -1) {
            so2 = minimumHeight;
        }
        zYk.ZYk(so2);
    }

    private int oJ(boolean z10) {
        if (z10) {
            return this.ex.getPaddingStart();
        }
        return this.ex.getPaddingTop();
    }

    private int oJ(View view, boolean z10) {
        if (z10) {
            return view.getMeasuredWidth();
        }
        return view.getMeasuredHeight();
    }

    private void ZYk(View view, int i10, int i11) {
        int measuredHeight;
        com.bytedance.adsdk.ugeno.Pfn.ZYk zYk = (com.bytedance.adsdk.ugeno.Pfn.ZYk) view.getLayoutParams();
        int min = Math.min(Math.max(((i10 - zYk.PiB()) - zYk.awB()) - this.ex.oJ(view), zYk.cFZ()), zYk.jFA());
        long[] jArr = this.f11615ba;
        if (jArr != null) {
            measuredHeight = ZYk(jArr[i11]);
        } else {
            measuredHeight = view.getMeasuredHeight();
        }
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(min, 1073741824);
        view.measure(makeMeasureSpec2, makeMeasureSpec);
        oJ(i11, makeMeasureSpec2, makeMeasureSpec, view);
    }

    private int oJ(com.bytedance.adsdk.ugeno.Pfn.ZYk zYk, boolean z10) {
        if (z10) {
            return zYk.oJ();
        }
        return zYk.ZYk();
    }

    private boolean oJ(View view, int i10, int i11, int i12, int i13, com.bytedance.adsdk.ugeno.Pfn.ZYk zYk, int i14, int i15, int i16) {
        if (this.ex.getFlexWrap() == 0) {
            return false;
        }
        if (zYk.dLZ()) {
            return true;
        }
        if (i10 == 0) {
            return false;
        }
        int maxLine = this.ex.getMaxLine();
        if (maxLine == -1 || maxLine > i16 + 1) {
            int oJ2 = this.ex.oJ(view, i14, i15);
            if (oJ2 > 0) {
                i13 += oJ2;
            }
            return i11 < i12 + i13;
        }
        return false;
    }

    private boolean oJ(int i10, int i11, tB tBVar) {
        return i10 == i11 - 1 && tBVar.ZYk() != 0;
    }

    private void oJ(List<tB> list, tB tBVar, int i10, int i11) {
        tBVar.PiB = i11;
        this.ex.oJ(tBVar);
        tBVar.eZI = i10;
        list.add(tBVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:20:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void oJ(android.view.View r7, int r8) {
        /*
            r6 = this;
            android.view.ViewGroup$LayoutParams r0 = r7.getLayoutParams()
            com.bytedance.adsdk.ugeno.Pfn.ZYk r0 = (com.bytedance.adsdk.ugeno.Pfn.ZYk) r0
            int r1 = r7.getMeasuredWidth()
            int r2 = r7.getMeasuredHeight()
            int r3 = r0.cFZ()
            r4 = 1
            if (r1 >= r3) goto L1b
            int r1 = r0.cFZ()
        L19:
            r3 = r4
            goto L27
        L1b:
            int r3 = r0.jFA()
            if (r1 <= r3) goto L26
            int r1 = r0.jFA()
            goto L19
        L26:
            r3 = 0
        L27:
            int r5 = r0.so()
            if (r2 >= r5) goto L32
            int r2 = r0.so()
            goto L3e
        L32:
            int r5 = r0.kkU()
            if (r2 <= r5) goto L3d
            int r2 = r0.kkU()
            goto L3e
        L3d:
            r4 = r3
        L3e:
            if (r4 == 0) goto L50
            r0 = 1073741824(0x40000000, float:2.0)
            int r1 = android.view.View.MeasureSpec.makeMeasureSpec(r1, r0)
            int r0 = android.view.View.MeasureSpec.makeMeasureSpec(r2, r0)
            r7.measure(r1, r0)
            r6.oJ(r8, r1, r0, r7)
        L50:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.adsdk.ugeno.Pfn.ex.oJ(android.view.View, int):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void oJ(int i10, int i11) {
        oJ(i10, i11, 0);
    }

    void oJ(int i10, int i11, int i12) {
        int size;
        int paddingLeft;
        int paddingRight;
        tB(this.ex.getFlexItemCount());
        if (i12 >= this.ex.getFlexItemCount()) {
            return;
        }
        int flexDirection = this.ex.getFlexDirection();
        int flexDirection2 = this.ex.getFlexDirection();
        if (flexDirection2 == 0 || flexDirection2 == 1) {
            int mode = View.MeasureSpec.getMode(i10);
            size = View.MeasureSpec.getSize(i10);
            int largestMainSize = this.ex.getLargestMainSize();
            if (mode != 1073741824) {
                size = Math.min(largestMainSize, size);
            }
            paddingLeft = this.ex.getPaddingLeft();
            paddingRight = this.ex.getPaddingRight();
        } else if (flexDirection2 != 2 && flexDirection2 != 3) {
            throw new IllegalArgumentException("Invalid flex direction: ".concat(String.valueOf(flexDirection)));
        } else {
            int mode2 = View.MeasureSpec.getMode(i11);
            size = View.MeasureSpec.getSize(i11);
            if (mode2 != 1073741824) {
                size = this.ex.getLargestMainSize();
            }
            paddingLeft = this.ex.getPaddingTop();
            paddingRight = this.ex.getPaddingBottom();
        }
        int i13 = paddingLeft + paddingRight;
        int[] iArr = this.oJ;
        List<tB> flexLinesInternal = this.ex.getFlexLinesInternal();
        int size2 = flexLinesInternal.size();
        for (int i14 = iArr != null ? iArr[i12] : 0; i14 < size2; i14++) {
            tB tBVar = flexLinesInternal.get(i14);
            int i15 = tBVar.Pfn;
            if (i15 < size && tBVar.f11617si) {
                oJ(i10, i11, tBVar, size, i13, false);
            } else if (i15 > size && tBVar.Ry) {
                ZYk(i10, i11, tBVar, size, i13, false);
            }
        }
    }

    private void oJ(int i10, int i11, tB tBVar, int i12, int i13, boolean z10) {
        int i14;
        int i15;
        int i16;
        double d10;
        int i17;
        double d11;
        float f10 = tBVar.kkU;
        float f11 = 0.0f;
        if (f10 <= 0.0f || i12 < (i14 = tBVar.Pfn)) {
            return;
        }
        float f12 = (i12 - i14) / f10;
        tBVar.Pfn = i13 + tBVar.f11616ba;
        if (!z10) {
            tBVar.cFZ = Integer.MIN_VALUE;
        }
        int i18 = 0;
        boolean z11 = false;
        int i19 = 0;
        float f13 = 0.0f;
        while (i18 < tBVar.f11618so) {
            int i20 = tBVar.awB + i18;
            View ZYk2 = this.ex.ZYk(i20);
            if (ZYk2 == null || ZYk2.getVisibility() == 8) {
                i15 = i14;
            } else {
                com.bytedance.adsdk.ugeno.Pfn.ZYk zYk = (com.bytedance.adsdk.ugeno.Pfn.ZYk) ZYk2.getLayoutParams();
                int flexDirection = this.ex.getFlexDirection();
                if (flexDirection != 0 && flexDirection != 1) {
                    int measuredHeight = ZYk2.getMeasuredHeight();
                    long[] jArr = this.f11615ba;
                    if (jArr != null) {
                        measuredHeight = ZYk(jArr[i20]);
                    }
                    int measuredWidth = ZYk2.getMeasuredWidth();
                    long[] jArr2 = this.f11615ba;
                    if (jArr2 != null) {
                        measuredWidth = oJ(jArr2[i20]);
                    }
                    if (this.Pfn[i20] || zYk.ex() <= f11) {
                        i17 = i14;
                    } else {
                        float ex = measuredHeight + (zYk.ex() * f12);
                        if (i18 == tBVar.f11618so - 1) {
                            ex += f13;
                            f13 = f11;
                        }
                        int round = Math.round(ex);
                        if (round > zYk.kkU()) {
                            round = zYk.kkU();
                            this.Pfn[i20] = true;
                            tBVar.kkU -= zYk.ex();
                            i17 = i14;
                            z11 = true;
                        } else {
                            f13 += ex - round;
                            i17 = i14;
                            double d12 = f13;
                            if (d12 > 1.0d) {
                                round++;
                                d11 = d12 - 1.0d;
                            } else if (d12 < -1.0d) {
                                round--;
                                d11 = d12 + 1.0d;
                            }
                            f13 = (float) d11;
                        }
                        int oJ2 = oJ(i10, zYk, tBVar.PiB);
                        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(round, 1073741824);
                        ZYk2.measure(oJ2, makeMeasureSpec);
                        measuredWidth = ZYk2.getMeasuredWidth();
                        int measuredHeight2 = ZYk2.getMeasuredHeight();
                        oJ(i20, oJ2, makeMeasureSpec, ZYk2);
                        measuredHeight = measuredHeight2;
                    }
                    i16 = Math.max(i19, measuredWidth + zYk.PiB() + zYk.awB() + this.ex.oJ(ZYk2));
                    tBVar.Pfn += measuredHeight + zYk.WcQ() + zYk.eZI();
                    i15 = i17;
                } else {
                    int i21 = i14;
                    int measuredWidth2 = ZYk2.getMeasuredWidth();
                    long[] jArr3 = this.f11615ba;
                    if (jArr3 != null) {
                        measuredWidth2 = oJ(jArr3[i20]);
                    }
                    int measuredHeight3 = ZYk2.getMeasuredHeight();
                    long[] jArr4 = this.f11615ba;
                    i15 = i21;
                    if (jArr4 != null) {
                        measuredHeight3 = ZYk(jArr4[i20]);
                    }
                    if (!this.Pfn[i20] && zYk.ex() > 0.0f) {
                        float ex2 = measuredWidth2 + (zYk.ex() * f12);
                        if (i18 == tBVar.f11618so - 1) {
                            ex2 += f13;
                            f13 = 0.0f;
                        }
                        int round2 = Math.round(ex2);
                        if (round2 > zYk.jFA()) {
                            round2 = zYk.jFA();
                            this.Pfn[i20] = true;
                            tBVar.kkU -= zYk.ex();
                            z11 = true;
                        } else {
                            f13 += ex2 - round2;
                            double d13 = f13;
                            if (d13 > 1.0d) {
                                round2++;
                                d10 = d13 - 1.0d;
                            } else if (d13 < -1.0d) {
                                round2--;
                                d10 = d13 + 1.0d;
                            }
                            f13 = (float) d10;
                        }
                        int ZYk3 = ZYk(i11, zYk, tBVar.PiB);
                        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(round2, 1073741824);
                        ZYk2.measure(makeMeasureSpec2, ZYk3);
                        int measuredWidth3 = ZYk2.getMeasuredWidth();
                        int measuredHeight4 = ZYk2.getMeasuredHeight();
                        oJ(i20, makeMeasureSpec2, ZYk3, ZYk2);
                        measuredWidth2 = measuredWidth3;
                        measuredHeight3 = measuredHeight4;
                    }
                    int max = Math.max(i19, measuredHeight3 + zYk.WcQ() + zYk.eZI() + this.ex.oJ(ZYk2));
                    tBVar.Pfn += measuredWidth2 + zYk.PiB() + zYk.awB();
                    i16 = max;
                }
                tBVar.cFZ = Math.max(tBVar.cFZ, i16);
                i19 = i16;
            }
            i18++;
            i14 = i15;
            f11 = 0.0f;
        }
        int i22 = i14;
        if (!z11 || i22 == tBVar.Pfn) {
            return;
        }
        oJ(i10, i11, tBVar, i12, i13, true);
    }

    private int oJ(int i10, com.bytedance.adsdk.ugeno.Pfn.ZYk zYk, int i11) {
        com.bytedance.adsdk.ugeno.Pfn.oJ oJVar = this.ex;
        int oJ2 = oJVar.oJ(i10, oJVar.getPaddingLeft() + this.ex.getPaddingRight() + zYk.PiB() + zYk.awB() + i11, zYk.oJ());
        int size = View.MeasureSpec.getSize(oJ2);
        if (size > zYk.jFA()) {
            return View.MeasureSpec.makeMeasureSpec(zYk.jFA(), View.MeasureSpec.getMode(oJ2));
        }
        return size < zYk.cFZ() ? View.MeasureSpec.makeMeasureSpec(zYk.cFZ(), View.MeasureSpec.getMode(oJ2)) : oJ2;
    }

    private List<tB> oJ(List<tB> list, int i10, int i11) {
        ArrayList arrayList = new ArrayList();
        tB tBVar = new tB();
        tBVar.cFZ = (i10 - i11) / 2;
        int size = list.size();
        for (int i12 = 0; i12 < size; i12++) {
            if (i12 == 0) {
                arrayList.add(tBVar);
            }
            arrayList.add(list.get(i12));
            if (i12 == list.size() - 1) {
                arrayList.add(tBVar);
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void oJ() {
        oJ(0);
    }

    void oJ(int i10) {
        View ZYk2;
        if (i10 >= this.ex.getFlexItemCount()) {
            return;
        }
        int flexDirection = this.ex.getFlexDirection();
        if (this.ex.getAlignItems() == 4) {
            int[] iArr = this.oJ;
            List<tB> flexLinesInternal = this.ex.getFlexLinesInternal();
            int size = flexLinesInternal.size();
            for (int i11 = iArr != null ? iArr[i10] : 0; i11 < size; i11++) {
                tB tBVar = flexLinesInternal.get(i11);
                int i12 = tBVar.f11618so;
                for (int i13 = 0; i13 < i12; i13++) {
                    int i14 = tBVar.awB + i13;
                    if (i13 < this.ex.getFlexItemCount() && (ZYk2 = this.ex.ZYk(i14)) != null && ZYk2.getVisibility() != 8) {
                        com.bytedance.adsdk.ugeno.Pfn.ZYk zYk = (com.bytedance.adsdk.ugeno.Pfn.ZYk) ZYk2.getLayoutParams();
                        if (zYk.ba() == -1 || zYk.ba() == 4) {
                            if (flexDirection == 0 || flexDirection == 1) {
                                oJ(ZYk2, tBVar.cFZ, i14);
                            } else if (flexDirection != 2 && flexDirection != 3) {
                                throw new IllegalArgumentException("Invalid flex direction: ".concat(String.valueOf(flexDirection)));
                            } else {
                                ZYk(ZYk2, tBVar.cFZ, i14);
                            }
                        }
                    }
                }
            }
            return;
        }
        for (tB tBVar2 : this.ex.getFlexLinesInternal()) {
            for (Integer num : tBVar2.WcQ) {
                View ZYk3 = this.ex.ZYk(num.intValue());
                if (flexDirection == 0 || flexDirection == 1) {
                    oJ(ZYk3, tBVar2.cFZ, num.intValue());
                } else if (flexDirection != 2 && flexDirection != 3) {
                    throw new IllegalArgumentException("Invalid flex direction: ".concat(String.valueOf(flexDirection)));
                } else {
                    ZYk(ZYk3, tBVar2.cFZ, num.intValue());
                }
            }
        }
    }

    private void oJ(View view, int i10, int i11) {
        int measuredWidth;
        com.bytedance.adsdk.ugeno.Pfn.ZYk zYk = (com.bytedance.adsdk.ugeno.Pfn.ZYk) view.getLayoutParams();
        int min = Math.min(Math.max(((i10 - zYk.WcQ()) - zYk.eZI()) - this.ex.oJ(view), zYk.so()), zYk.kkU());
        long[] jArr = this.f11615ba;
        if (jArr != null) {
            measuredWidth = oJ(jArr[i11]);
        } else {
            measuredWidth = view.getMeasuredWidth();
        }
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(min, 1073741824);
        view.measure(makeMeasureSpec, makeMeasureSpec2);
        oJ(i11, makeMeasureSpec, makeMeasureSpec2, view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void oJ(View view, tB tBVar, int i10, int i11, int i12, int i13) {
        com.bytedance.adsdk.ugeno.Pfn.ZYk zYk = (com.bytedance.adsdk.ugeno.Pfn.ZYk) view.getLayoutParams();
        int alignItems = this.ex.getAlignItems();
        if (zYk.ba() != -1) {
            alignItems = zYk.ba();
        }
        int i14 = tBVar.cFZ;
        if (alignItems != 0) {
            if (alignItems == 1) {
                if (this.ex.getFlexWrap() != 2) {
                    int i15 = i11 + i14;
                    view.layout(i10, (i15 - view.getMeasuredHeight()) - zYk.eZI(), i12, i15 - zYk.eZI());
                    return;
                }
                view.layout(i10, (i11 - i14) + view.getMeasuredHeight() + zYk.WcQ(), i12, (i13 - i14) + view.getMeasuredHeight() + zYk.WcQ());
                return;
            } else if (alignItems == 2) {
                int measuredHeight = (((i14 - view.getMeasuredHeight()) + zYk.WcQ()) - zYk.eZI()) / 2;
                if (this.ex.getFlexWrap() != 2) {
                    int i16 = i11 + measuredHeight;
                    view.layout(i10, i16, i12, view.getMeasuredHeight() + i16);
                    return;
                }
                int i17 = i11 - measuredHeight;
                view.layout(i10, i17, i12, view.getMeasuredHeight() + i17);
                return;
            } else if (alignItems == 3) {
                if (this.ex.getFlexWrap() != 2) {
                    int max = Math.max(tBVar.BTZ - view.getBaseline(), zYk.WcQ());
                    view.layout(i10, i11 + max, i12, i13 + max);
                    return;
                }
                int max2 = Math.max((tBVar.BTZ - view.getMeasuredHeight()) + view.getBaseline(), zYk.eZI());
                view.layout(i10, i11 - max2, i12, i13 - max2);
                return;
            } else if (alignItems != 4) {
                return;
            }
        }
        if (this.ex.getFlexWrap() != 2) {
            view.layout(i10, i11 + zYk.WcQ(), i12, i13 + zYk.WcQ());
        } else {
            view.layout(i10, i11 - zYk.eZI(), i12, i13 - zYk.eZI());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void oJ(View view, tB tBVar, boolean z10, int i10, int i11, int i12, int i13) {
        com.bytedance.adsdk.ugeno.Pfn.ZYk zYk = (com.bytedance.adsdk.ugeno.Pfn.ZYk) view.getLayoutParams();
        int alignItems = this.ex.getAlignItems();
        if (zYk.ba() != -1) {
            alignItems = zYk.ba();
        }
        int i14 = tBVar.cFZ;
        if (alignItems != 0) {
            if (alignItems == 1) {
                if (!z10) {
                    view.layout(((i10 + i14) - view.getMeasuredWidth()) - zYk.awB(), i11, ((i12 + i14) - view.getMeasuredWidth()) - zYk.awB(), i13);
                    return;
                } else {
                    view.layout((i10 - i14) + view.getMeasuredWidth() + zYk.PiB(), i11, (i12 - i14) + view.getMeasuredWidth() + zYk.PiB(), i13);
                    return;
                }
            } else if (alignItems == 2) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
                int measuredWidth = (((i14 - view.getMeasuredWidth()) + com.bytedance.adsdk.ugeno.cFZ.ba.oJ(marginLayoutParams)) - com.bytedance.adsdk.ugeno.cFZ.ba.ZYk(marginLayoutParams)) / 2;
                if (!z10) {
                    view.layout(i10 + measuredWidth, i11, i12 + measuredWidth, i13);
                    return;
                } else {
                    view.layout(i10 - measuredWidth, i11, i12 - measuredWidth, i13);
                    return;
                }
            } else if (alignItems != 3 && alignItems != 4) {
                return;
            }
        }
        if (!z10) {
            view.layout(i10 + zYk.PiB(), i11, i12 + zYk.PiB(), i13);
        } else {
            view.layout(i10 - zYk.awB(), i11, i12 - zYk.awB(), i13);
        }
    }

    private void oJ(int i10, int i11, int i12, View view) {
        long[] jArr = this.ZYk;
        if (jArr != null) {
            jArr[i10] = ZYk(i11, i12);
        }
        long[] jArr2 = this.f11615ba;
        if (jArr2 != null) {
            jArr2[i10] = ZYk(view.getMeasuredWidth(), view.getMeasuredHeight());
        }
    }
}
