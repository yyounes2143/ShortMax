package com.bytedance.sdk.openadsdk.core.so.oJ;

import android.content.Context;
import android.util.Pair;
import android.view.View;
import android.view.Window;
import androidx.annotation.NonNull;
import com.bytedance.sdk.openadsdk.utils.cdg;
/* loaded from: classes3.dex */
public class oJ {
    public static float ZYk(Context context) {
        return cdg.tB(context, cdg.PiB(context));
    }

    @NonNull
    public static Pair<Float, Float> oJ(Window window, int i10) {
        View decorView = window.getDecorView();
        float[] fArr = {decorView.getWidth() - (decorView.getPaddingLeft() * 2), decorView.getHeight() - (decorView.getPaddingTop() * 2)};
        fArr[0] = cdg.tB(window.getContext(), fArr[0]);
        float tB = cdg.tB(window.getContext(), fArr[1]);
        fArr[1] = tB;
        if (fArr[0] < 10.0f || tB < 10.0f) {
            fArr = oJ(window.getContext(), cdg.tB(window.getContext(), cdg.oJ()), i10);
        }
        float max = Math.max(fArr[0], fArr[1]);
        float min = Math.min(fArr[0], fArr[1]);
        if (i10 == 1) {
            fArr[0] = min;
            fArr[1] = max;
        } else {
            fArr[0] = max;
            fArr[1] = min;
        }
        return new Pair<>(Float.valueOf(fArr[0]), Float.valueOf(fArr[1]));
    }

    private static float[] oJ(Context context, int i10, int i11) {
        float oJ = oJ(context);
        float ZYk = ZYk(context);
        if ((i11 == 1) != (oJ > ZYk)) {
            float f10 = oJ + ZYk;
            ZYk = f10 - ZYk;
            oJ = f10 - ZYk;
        }
        if (i11 == 1) {
            oJ -= i10;
        } else {
            ZYk -= i10;
        }
        return new float[]{ZYk, oJ};
    }

    public static float oJ(Context context) {
        return cdg.tB(context, cdg.BTZ(context));
    }
}
