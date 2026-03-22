package com.bytedance.sdk.openadsdk.jr.ZYk;

import android.view.View;
import com.bytedance.sdk.openadsdk.core.model.Ln;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.utils.HyG;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes3.dex */
public class Pfn {
    private static final Map<Integer, ZYk> oJ = new ConcurrentHashMap();

    /* loaded from: classes3.dex */
    public static class oJ {
        public int ZYk = -1;
        public int oJ;

        public oJ(int i10) {
            this.oJ = i10;
        }
    }

    public static void ZYk(Integer num) {
        oJ.remove(num);
    }

    public static void oJ(View view, cY cYVar, oJ oJVar) {
        if (view == null || cYVar == null || cYVar.fXU()) {
            return;
        }
        boolean tB = tB(cYVar);
        if (Ln.ZYk(cYVar) && oJVar != null) {
            oJVar.oJ = -1;
        }
        oJ(oJ(view, cYVar, tB, oJVar));
    }

    private static boolean tB(cY cYVar) {
        if (cYVar == null) {
            return false;
        }
        String oJ2 = HyG.oJ(cYVar);
        if ((!"open_ad".equals(oJ2) && !"fullscreen_interstitial_ad".equals(oJ2) && !"rewarded_video".equals(oJ2)) || Ln.ZYk(cYVar) || cYVar.LS() == 5 || cYVar.LS() == 33 || !cY.Pfn(cYVar) || cYVar.ib() == null) {
            return false;
        }
        return true;
    }

    public static Integer ZYk(cY cYVar) {
        return Integer.valueOf((cYVar.iPr() + cYVar.edj()).hashCode());
    }

    private static ZYk oJ(View view, cY cYVar, boolean z10, oJ oJVar) {
        if (view == null || cYVar == null || cYVar.edj() == null) {
            return null;
        }
        Integer ZYk = ZYk(cYVar);
        Map<Integer, ZYk> map = oJ;
        if (map.containsKey(ZYk)) {
            ZYk zYk = map.get(ZYk);
            if (zYk != null) {
                zYk.oJ(view);
            }
            return zYk;
        }
        ZYk oJ2 = ZYk.oJ(z10, ZYk, view, cYVar, oJVar);
        map.put(ZYk, oJ2);
        return oJ2;
    }

    private static void oJ(ZYk zYk) {
        if (zYk == null) {
            return;
        }
        zYk.oJ();
    }

    public static void oJ(cY cYVar, int i10) {
        if (cYVar == null || cYVar.edj() == null) {
            return;
        }
        oJ(oJ.get(ZYk(cYVar)), i10);
    }

    public static void oJ(ZYk zYk, int i10) {
        if (zYk == null) {
            return;
        }
        zYk.oJ(i10);
    }

    public static void oJ(cY cYVar) {
        if (cYVar == null || cYVar.edj() == null) {
            return;
        }
        Integer ZYk = ZYk(cYVar);
        Map<Integer, ZYk> map = oJ;
        ZYk zYk = map.get(ZYk);
        if (zYk != null) {
            zYk.kkU();
        }
        ZYk(ZYk);
        if (map.size() <= 0) {
            cFZ.oJ();
        }
    }

    public static ZYk oJ(Integer num) {
        return oJ.get(num);
    }
}
