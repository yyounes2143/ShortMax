package com.bytedance.adsdk.ugeno.Pfn;

import android.view.View;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class tB {
    int BTZ;
    int Pfn;
    int PiB;
    boolean Ry;
    int awB;

    /* renamed from: ba  reason: collision with root package name */
    int f11616ba;
    int cFZ;
    float dLZ;
    int eZI;
    int jFA;
    float kkU;

    /* renamed from: si  reason: collision with root package name */
    boolean f11617si;

    /* renamed from: so  reason: collision with root package name */
    int f11618so;
    int oJ = Integer.MAX_VALUE;
    int ZYk = Integer.MAX_VALUE;
    int tB = Integer.MIN_VALUE;
    int ex = Integer.MIN_VALUE;
    List<Integer> WcQ = new ArrayList();

    public int ZYk() {
        return this.f11618so - this.jFA;
    }

    public int oJ() {
        return this.cFZ;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void oJ(View view, int i10, int i11, int i12, int i13) {
        ZYk zYk = (ZYk) view.getLayoutParams();
        this.oJ = Math.min(this.oJ, (view.getLeft() - zYk.PiB()) - i10);
        this.ZYk = Math.min(this.ZYk, (view.getTop() - zYk.WcQ()) - i11);
        this.tB = Math.max(this.tB, view.getRight() + zYk.awB() + i12);
        this.ex = Math.max(this.ex, view.getBottom() + zYk.eZI() + i13);
    }
}
