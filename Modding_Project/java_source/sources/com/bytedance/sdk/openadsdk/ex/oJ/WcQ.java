package com.bytedance.sdk.openadsdk.ex.oJ;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3.dex */
public class WcQ {
    public static WcQ oJ = new WcQ();
    private oJ ZYk;
    private volatile boolean ex;
    private final Map<String, oJ> tB = new HashMap();

    /* loaded from: classes3.dex */
    public static class oJ {
        private final int ZYk;
        private final int oJ;

        public oJ(int i10, int i11) {
            this.oJ = (i10 < 0 || i10 > 5) ? 3 : 3;
            this.ZYk = i11 < 10 ? 30 : i11;
        }

        public int ZYk() {
            return this.ZYk;
        }

        public int oJ() {
            return this.oJ;
        }
    }

    private int ZYk() {
        oJ oJVar = this.ZYk;
        if (oJVar != null) {
            return oJVar.oJ();
        }
        return 3;
    }

    private int tB() {
        oJ oJVar = this.ZYk;
        if (oJVar != null) {
            return oJVar.ZYk();
        }
        return 30;
    }

    public void oJ(oJ oJVar) {
        this.ZYk = oJVar;
    }

    public void oJ(String str, oJ oJVar) {
        if (TextUtils.isEmpty(str) || oJVar == null) {
            return;
        }
        this.tB.put(str, oJVar);
    }

    public int ZYk(String str) {
        oJ oJVar = this.tB.get(str);
        if (oJVar == null) {
            return tB();
        }
        return oJVar.ZYk();
    }

    public int oJ(String str) {
        if (oJ()) {
            oJ oJVar = this.tB.get(str);
            if (oJVar == null) {
                return ZYk();
            }
            return oJVar.oJ();
        }
        return 4;
    }

    public boolean oJ() {
        return this.ex;
    }

    public void oJ(boolean z10) {
        this.ex = z10;
    }
}
