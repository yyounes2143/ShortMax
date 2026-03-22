package com.bytedance.adsdk.ZYk.Pfn;

import android.graphics.PointF;
import android.util.JsonReader;
import android.util.SparseArray;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.ss.ttvideoengine.log.IVideoEventLogger;
import java.io.IOException;
import java.lang.ref.WeakReference;
/* loaded from: classes3.dex */
class QSm {
    private static SparseArray<WeakReference<Interpolator>> ZYk;
    private static final Interpolator oJ = new LinearInterpolator();

    QSm() {
    }

    /* JADX WARN: Removed duplicated region for block: B:128:0x02b2 A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static <T> com.bytedance.adsdk.ZYk.cFZ.oJ<T> ZYk(com.bytedance.adsdk.ZYk.cFZ r26, android.util.JsonReader r27, float r28, com.bytedance.adsdk.ZYk.Pfn.Jm<T> r29) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 786
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.adsdk.ZYk.Pfn.QSm.ZYk(com.bytedance.adsdk.ZYk.cFZ, android.util.JsonReader, float, com.bytedance.adsdk.ZYk.Pfn.Jm):com.bytedance.adsdk.ZYk.cFZ.oJ");
    }

    private static SparseArray<WeakReference<Interpolator>> oJ() {
        if (ZYk == null) {
            ZYk = new SparseArray<>();
        }
        return ZYk;
    }

    private static WeakReference<Interpolator> oJ(int i10) {
        WeakReference<Interpolator> weakReference;
        synchronized (QSm.class) {
            weakReference = oJ().get(i10);
        }
        return weakReference;
    }

    private static void oJ(int i10, WeakReference<Interpolator> weakReference) {
        synchronized (QSm.class) {
            ZYk.put(i10, weakReference);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> com.bytedance.adsdk.ZYk.cFZ.oJ<T> oJ(JsonReader jsonReader, com.bytedance.adsdk.ZYk.cFZ cfz, float f10, Jm<T> jm2, boolean z10, boolean z11) throws IOException {
        if (z10 && z11) {
            return ZYk(cfz, jsonReader, f10, jm2);
        }
        if (z10) {
            return oJ(cfz, jsonReader, f10, jm2);
        }
        return oJ(jsonReader, f10, jm2);
    }

    private static <T> com.bytedance.adsdk.ZYk.cFZ.oJ<T> oJ(com.bytedance.adsdk.ZYk.cFZ cfz, JsonReader jsonReader, float f10, Jm<T> jm2) throws IOException {
        Interpolator oJ2;
        jsonReader.beginObject();
        PointF pointF = null;
        T t10 = null;
        T t11 = null;
        PointF pointF2 = null;
        PointF pointF3 = null;
        float f11 = 0.0f;
        boolean z10 = false;
        PointF pointF4 = null;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            char c10 = 65535;
            switch (nextName.hashCode()) {
                case 101:
                    if (nextName.equals("e")) {
                        c10 = 0;
                        break;
                    }
                    break;
                case 104:
                    if (nextName.equals("h")) {
                        c10 = 1;
                        break;
                    }
                    break;
                case 105:
                    if (nextName.equals("i")) {
                        c10 = 2;
                        break;
                    }
                    break;
                case 111:
                    if (nextName.equals("o")) {
                        c10 = 3;
                        break;
                    }
                    break;
                case 115:
                    if (nextName.equals("s")) {
                        c10 = 4;
                        break;
                    }
                    break;
                case 116:
                    if (nextName.equals(IVideoEventLogger.LOG_CALLBACK_TIME)) {
                        c10 = 5;
                        break;
                    }
                    break;
                case 3701:
                    if (nextName.equals("ti")) {
                        c10 = 6;
                        break;
                    }
                    break;
                case 3707:
                    if (nextName.equals(TypedValues.TransitionType.S_TO)) {
                        c10 = 7;
                        break;
                    }
                    break;
            }
            switch (c10) {
                case 0:
                    t10 = jm2.ZYk(jsonReader, f10);
                    break;
                case 1:
                    if (jsonReader.nextInt() != 1) {
                        z10 = false;
                        break;
                    } else {
                        z10 = true;
                        break;
                    }
                case 2:
                    pointF4 = RZ.ZYk(jsonReader, 1.0f);
                    break;
                case 3:
                    pointF = RZ.ZYk(jsonReader, 1.0f);
                    break;
                case 4:
                    t11 = jm2.ZYk(jsonReader, f10);
                    break;
                case 5:
                    f11 = (float) jsonReader.nextDouble();
                    break;
                case 6:
                    pointF3 = RZ.ZYk(jsonReader, f10);
                    break;
                case 7:
                    pointF2 = RZ.ZYk(jsonReader, f10);
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        if (z10) {
            t10 = t11;
        } else if (pointF != null && pointF4 != null) {
            oJ2 = oJ(pointF, pointF4);
            com.bytedance.adsdk.ZYk.cFZ.oJ<T> oJVar = new com.bytedance.adsdk.ZYk.cFZ.oJ<>(cfz, t11, t10, oJ2, f11, null);
            oJVar.f11508so = pointF2;
            oJVar.jFA = pointF3;
            return oJVar;
        }
        oJ2 = oJ;
        com.bytedance.adsdk.ZYk.cFZ.oJ<T> oJVar2 = new com.bytedance.adsdk.ZYk.cFZ.oJ<>(cfz, t11, t10, oJ2, f11, null);
        oJVar2.f11508so = pointF2;
        oJVar2.jFA = pointF3;
        return oJVar2;
    }

    private static Interpolator oJ(PointF pointF, PointF pointF2) {
        Interpolator linearInterpolator;
        pointF.x = com.bytedance.adsdk.ZYk.ba.Pfn.ZYk(pointF.x, -1.0f, 1.0f);
        pointF.y = com.bytedance.adsdk.ZYk.ba.Pfn.ZYk(pointF.y, -100.0f, 100.0f);
        pointF2.x = com.bytedance.adsdk.ZYk.ba.Pfn.ZYk(pointF2.x, -1.0f, 1.0f);
        float ZYk2 = com.bytedance.adsdk.ZYk.ba.Pfn.ZYk(pointF2.y, -100.0f, 100.0f);
        pointF2.y = ZYk2;
        int oJ2 = com.bytedance.adsdk.ZYk.ba.ba.oJ(pointF.x, pointF.y, pointF2.x, ZYk2);
        WeakReference<Interpolator> oJ3 = com.bytedance.adsdk.ZYk.Pfn.oJ() ? null : oJ(oJ2);
        Interpolator interpolator = oJ3 != null ? oJ3.get() : null;
        if (oJ3 == null || interpolator == null) {
            try {
                linearInterpolator = com.bytedance.adsdk.ZYk.si.oJ(pointF.x, pointF.y, pointF2.x, pointF2.y);
            } catch (IllegalArgumentException e10) {
                if ("The Path cannot loop back on itself.".equals(e10.getMessage())) {
                    linearInterpolator = com.bytedance.adsdk.ZYk.si.oJ(Math.min(pointF.x, 1.0f), pointF.y, Math.max(pointF2.x, 0.0f), pointF2.y);
                } else {
                    linearInterpolator = new LinearInterpolator();
                }
            }
            interpolator = linearInterpolator;
            if (!com.bytedance.adsdk.ZYk.Pfn.oJ()) {
                try {
                    oJ(oJ2, new WeakReference(interpolator));
                } catch (ArrayIndexOutOfBoundsException unused) {
                }
            }
        }
        return interpolator;
    }

    private static <T> com.bytedance.adsdk.ZYk.cFZ.oJ<T> oJ(JsonReader jsonReader, float f10, Jm<T> jm2) throws IOException {
        return new com.bytedance.adsdk.ZYk.cFZ.oJ<>(jm2.ZYk(jsonReader, f10));
    }
}
