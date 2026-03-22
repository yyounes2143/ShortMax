package com.bytedance.sdk.openadsdk.awB.oJ;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.utils.HyG;
/* loaded from: classes3.dex */
public class ZYk {
    private boolean Pfn;
    private cY ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private String f12942ba;
    private int cFZ;
    private int ex;
    private String oJ;
    private String tB;

    /* renamed from: so  reason: collision with root package name */
    private int f12943so = 0;
    private int jFA = 0;

    public boolean Pfn() {
        return this.Pfn;
    }

    public cY ZYk() {
        return this.ZYk;
    }

    public String ba() {
        return this.f12942ba;
    }

    public int cFZ() {
        return this.cFZ;
    }

    public int ex() {
        return this.ex;
    }

    public int jFA() {
        return this.jFA;
    }

    public String oJ() {
        return this.oJ;
    }

    public int so() {
        return this.f12943so;
    }

    public String tB() {
        cY cYVar;
        if (TextUtils.isEmpty(this.tB) && (cYVar = this.ZYk) != null) {
            this.tB = HyG.oJ(cYVar);
        }
        return this.tB;
    }

    public void ZYk(String str) {
        this.tB = str;
    }

    public void ex(int i10) {
        this.jFA = i10;
    }

    public void oJ(String str) {
        this.oJ = str;
    }

    public void ZYk(int i10) {
        this.cFZ = i10;
    }

    public void oJ(cY cYVar) {
        this.ZYk = cYVar;
    }

    public void oJ(int i10) {
        this.ex = i10;
    }

    public void oJ(boolean z10) {
        this.Pfn = z10;
    }

    public void tB(String str) {
        this.f12942ba = str;
    }

    public void tB(int i10) {
        this.f12943so = i10;
    }
}
