package com.bytedance.sdk.openadsdk.core.model;

import android.text.TextUtils;
/* loaded from: classes3.dex */
public class Ry {
    private boolean Pfn;
    private int ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private String f13203ba;
    private double ex;
    private String oJ;
    private int tB;

    public boolean Pfn() {
        if (!TextUtils.isEmpty(this.oJ) && this.ZYk > 0 && this.tB > 0) {
            return true;
        }
        return false;
    }

    public int ZYk() {
        return this.ZYk;
    }

    public boolean ba() {
        return this.Pfn;
    }

    public String cFZ() {
        return this.f13203ba;
    }

    public double ex() {
        return this.ex;
    }

    public String oJ() {
        return this.oJ;
    }

    public int tB() {
        return this.tB;
    }

    public void ZYk(int i10) {
        this.tB = i10;
    }

    public void oJ(String str) {
        this.oJ = str;
    }

    public void ZYk(String str) {
        this.f13203ba = str;
    }

    public void oJ(int i10) {
        this.ZYk = i10;
    }

    public void oJ(boolean z10) {
        this.Pfn = z10;
    }
}
