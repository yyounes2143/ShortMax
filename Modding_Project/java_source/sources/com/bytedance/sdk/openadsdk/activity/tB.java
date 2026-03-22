package com.bytedance.sdk.openadsdk.activity;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import com.bytedance.sdk.openadsdk.activity.ZYk;
import com.bytedance.sdk.openadsdk.core.model.Ln;
import com.bytedance.sdk.openadsdk.core.model.cY;
import java.util.List;
import java.util.Map;
/* loaded from: classes3.dex */
public abstract class tB {
    protected final cY ZYk;
    protected final ZYk ex;
    protected final Activity oJ;
    protected String tB;

    public tB(Activity activity, cY cYVar, ZYk zYk) {
        this.oJ = activity;
        this.ZYk = cYVar;
        if (cYVar != null) {
            this.tB = Ln.tb(cYVar);
        }
        this.ex = zYk;
    }

    public so BTZ() {
        return null;
    }

    public boolean Pfn() {
        return false;
    }

    public abstract com.bytedance.sdk.openadsdk.component.reward.top.tB PiB();

    public so WcQ() {
        return null;
    }

    public void ZYk() {
    }

    public abstract void ZYk(so soVar, int i10);

    public Pfn awB() {
        return null;
    }

    public boolean ba() {
        return true;
    }

    public abstract int dLZ();

    public abstract List<cY> eZI();

    public abstract int jFA();

    public void oJ() {
    }

    public abstract boolean oJ(so soVar, int i10);

    public void oJ(float f10) {
    }

    public void oJ(int i10, int i11) {
    }

    public void oJ(Activity activity) {
    }

    public void oJ(Bundle bundle) {
    }

    public void oJ(View view) {
    }

    public void oJ(View view, boolean z10) {
    }

    public void oJ(oJ oJVar, boolean z10) {
    }

    public void oJ(so soVar) {
    }

    public void oJ(so soVar, ZYk.Pfn pfn) {
    }

    public void oJ(so soVar, so soVar2, ZYk.Pfn pfn) {
    }

    public void oJ(so soVar, boolean z10) {
    }

    public void oJ(so soVar, boolean z10, boolean z11, boolean z12, int i10) {
    }

    public void oJ(Map<String, Object> map, so soVar, float f10, float f11) {
    }

    public void oJ(boolean z10) {
    }

    public void Ry() {
    }

    public void cFZ() {
    }

    public void ex() {
    }

    public void kkU() {
    }

    public void si() {
    }

    public void so() {
    }

    public void tB() {
    }
}
