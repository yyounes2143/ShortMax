package com.bytedance.adsdk.ZYk.tB;

import android.annotation.SuppressLint;
import android.graphics.PointF;
/* loaded from: classes3.dex */
public class oJ {
    private final PointF ZYk;
    private final PointF oJ;
    private final PointF tB;

    public oJ() {
        this.oJ = new PointF();
        this.ZYk = new PointF();
        this.tB = new PointF();
    }

    public void ZYk(float f10, float f11) {
        this.ZYk.set(f10, f11);
    }

    public void oJ(float f10, float f11) {
        this.oJ.set(f10, f11);
    }

    public void tB(float f10, float f11) {
        this.tB.set(f10, f11);
    }

    @SuppressLint({"DefaultLocale"})
    public String toString() {
        return String.format("v=%.2f,%.2f cp1=%.2f,%.2f cp2=%.2f,%.2f", Float.valueOf(this.tB.x), Float.valueOf(this.tB.y), Float.valueOf(this.oJ.x), Float.valueOf(this.oJ.y), Float.valueOf(this.ZYk.x), Float.valueOf(this.ZYk.y));
    }

    public PointF ZYk() {
        return this.ZYk;
    }

    public PointF oJ() {
        return this.oJ;
    }

    public PointF tB() {
        return this.tB;
    }

    public oJ(PointF pointF, PointF pointF2, PointF pointF3) {
        this.oJ = pointF;
        this.ZYk = pointF2;
        this.tB = pointF3;
    }
}
