package com.bytedance.adsdk.ugeno.oJ;

import android.content.Context;
import android.graphics.Canvas;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class ba {
    private List<oJ> ZYk;
    private com.bytedance.adsdk.ugeno.ZYk.tB ex;
    private List<tB> oJ;
    private Context tB;

    public ba(Context context, com.bytedance.adsdk.ugeno.ZYk.tB tBVar, List<tB> list) {
        this.ex = tBVar;
        this.tB = context;
        this.oJ = list;
        ex();
    }

    private void ex() {
        this.ZYk = new ArrayList();
        List<tB> list = this.oJ;
        if (list != null && !list.isEmpty()) {
            for (int i10 = 0; i10 < this.oJ.size(); i10++) {
                tB tBVar = this.oJ.get(i10);
                if (tBVar != null) {
                    this.ZYk.add(new oJ(this.tB, this.ex, tBVar));
                }
            }
        }
    }

    public void ZYk() {
        List<oJ> list = this.ZYk;
        if (list == null || list.isEmpty()) {
            return;
        }
        for (oJ oJVar : this.ZYk) {
            if (oJVar != null) {
                oJVar.oJ();
            }
        }
    }

    public void oJ() {
        List<oJ> list = this.ZYk;
        if (list == null || list.isEmpty()) {
            return;
        }
        for (oJ oJVar : this.ZYk) {
            if (oJVar != null) {
                oJVar.ex();
            }
        }
    }

    public void tB() {
        List<oJ> list = this.ZYk;
        if (list != null && !list.isEmpty()) {
            for (oJ oJVar : this.ZYk) {
                if (oJVar != null) {
                    oJVar.tB();
                }
            }
        }
    }

    public void ZYk(Canvas canvas) {
        List<oJ> list = this.ZYk;
        if (list == null || list.isEmpty()) {
            return;
        }
        for (oJ oJVar : this.ZYk) {
            if (oJVar != null) {
                oJVar.ZYk(canvas);
            }
        }
    }

    public void oJ(Canvas canvas) {
        List<oJ> list = this.ZYk;
        if (list == null || list.isEmpty()) {
            return;
        }
        for (oJ oJVar : this.ZYk) {
            if (oJVar != null) {
                oJVar.oJ(canvas);
            }
        }
    }

    public void oJ(int i10, int i11) {
        List<oJ> list = this.ZYk;
        if (list == null || list.isEmpty()) {
            return;
        }
        for (oJ oJVar : this.ZYk) {
            if (oJVar != null) {
                oJVar.oJ(i10, i11);
            }
        }
    }

    public oJ oJ(String str) {
        List<oJ> list = this.ZYk;
        if (list != null && !list.isEmpty()) {
            for (oJ oJVar : this.ZYk) {
                if (oJVar != null && TextUtils.equals(oJVar.Pfn(), str)) {
                    return oJVar;
                }
            }
        }
        return null;
    }
}
