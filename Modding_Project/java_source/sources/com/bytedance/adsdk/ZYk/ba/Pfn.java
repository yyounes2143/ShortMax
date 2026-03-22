package com.bytedance.adsdk.ZYk.ba;

import android.graphics.Path;
import android.graphics.PointF;
import com.bytedance.adsdk.ZYk.tB.ZYk.WcQ;
/* loaded from: classes3.dex */
public class Pfn {
    private static final PointF oJ = new PointF();

    private static int ZYk(int i10, int i11) {
        int i12 = i10 / i11;
        return (((i10 ^ i11) >= 0) || i10 % i11 == 0) ? i12 : i12 - 1;
    }

    public static float oJ(float f10, float f11, float f12) {
        return f10 + (f12 * (f11 - f10));
    }

    public static boolean tB(float f10, float f11, float f12) {
        if (f10 >= f11 && f10 <= f12) {
            return true;
        }
        return false;
    }

    public static int oJ(int i10, int i11, float f10) {
        return (int) (i10 + (f10 * (i11 - i10)));
    }

    public static float ZYk(float f10, float f11, float f12) {
        return Math.max(f11, Math.min(f12, f10));
    }

    public static PointF oJ(PointF pointF, PointF pointF2) {
        return new PointF(pointF.x + pointF2.x, pointF.y + pointF2.y);
    }

    public static void oJ(WcQ wcQ, Path path) {
        path.reset();
        PointF oJ2 = wcQ.oJ();
        path.moveTo(oJ2.x, oJ2.y);
        oJ.set(oJ2.x, oJ2.y);
        for (int i10 = 0; i10 < wcQ.tB().size(); i10++) {
            com.bytedance.adsdk.ZYk.tB.oJ oJVar = wcQ.tB().get(i10);
            PointF oJ3 = oJVar.oJ();
            PointF ZYk = oJVar.ZYk();
            PointF tB = oJVar.tB();
            PointF pointF = oJ;
            if (oJ3.equals(pointF) && ZYk.equals(tB)) {
                path.lineTo(tB.x, tB.y);
            } else {
                path.cubicTo(oJ3.x, oJ3.y, ZYk.x, ZYk.y, tB.x, tB.y);
            }
            pointF.set(tB.x, tB.y);
        }
        if (wcQ.ZYk()) {
            path.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int oJ(float f10, float f11) {
        return oJ((int) f10, (int) f11);
    }

    private static int oJ(int i10, int i11) {
        return i10 - (i11 * ZYk(i10, i11));
    }

    public static int oJ(int i10, int i11, int i12) {
        return Math.max(i11, Math.min(i12, i10));
    }
}
