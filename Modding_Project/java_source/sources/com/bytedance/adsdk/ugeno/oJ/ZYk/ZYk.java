package com.bytedance.adsdk.ugeno.oJ.ZYk;

import android.animation.FloatEvaluator;
import android.animation.Keyframe;
import android.animation.TypeEvaluator;
import android.content.Context;
import com.bytedance.adsdk.ugeno.cFZ.so;
import com.bytedance.adsdk.ugeno.oJ.Pfn;
import java.util.TreeMap;
/* loaded from: classes3.dex */
public class ZYk extends oJ {

    /* renamed from: com.bytedance.adsdk.ugeno.oJ.ZYk.ZYk$1  reason: invalid class name */
    /* loaded from: classes3.dex */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] oJ;

        static {
            int[] iArr = new int[Pfn.values().length];
            oJ = iArr;
            try {
                iArr[Pfn.TRANSLATE_X.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                oJ[Pfn.TRANSLATE_Y.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                oJ[Pfn.SCALE_X.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                oJ[Pfn.SCALE_Y.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                oJ[Pfn.ROTATE_X.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                oJ[Pfn.ROTATE_Y.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                oJ[Pfn.ROTATE_Z.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                oJ[Pfn.ALPHA.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                oJ[Pfn.BORDER_RADIUS.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    public ZYk(Context context, com.bytedance.adsdk.ugeno.ZYk.tB tBVar, String str, TreeMap<Float, String> treeMap) {
        super(context, tBVar, str, treeMap);
    }

    @Override // com.bytedance.adsdk.ugeno.oJ.ZYk.oJ
    public void ZYk() {
        float awB;
        switch (AnonymousClass1.oJ[this.ex.ordinal()]) {
            case 1:
                awB = this.cFZ.awB();
                break;
            case 2:
                awB = this.cFZ.eZI();
                break;
            case 3:
                awB = this.cFZ.si();
                break;
            case 4:
                awB = this.cFZ.Ry();
                break;
            case 5:
                awB = this.cFZ.RZ();
                if (this.cFZ.dLZ() != null) {
                    this.cFZ.dLZ().setCameraDistance(10000.0f);
                    break;
                }
                break;
            case 6:
                awB = this.cFZ.QSm();
                if (this.cFZ.dLZ() != null) {
                    this.cFZ.dLZ().setCameraDistance(10000.0f);
                    break;
                }
                break;
            case 7:
                awB = this.cFZ.oq();
                break;
            case 8:
                awB = this.cFZ.Id();
                break;
            case 9:
                awB = this.cFZ.cY();
                break;
            default:
                awB = 0.0f;
                break;
        }
        this.Pfn.add(Keyframe.ofFloat(0.0f, awB));
    }

    @Override // com.bytedance.adsdk.ugeno.oJ.ZYk.oJ
    public TypeEvaluator ba() {
        return new FloatEvaluator();
    }

    @Override // com.bytedance.adsdk.ugeno.oJ.ZYk.oJ
    public void oJ(float f10, String str) {
        float oJ;
        if (!this.ZYk.startsWith(Pfn.TRANSLATE.oJ()) && this.ex != Pfn.BORDER_RADIUS) {
            oJ = com.bytedance.adsdk.ugeno.cFZ.tB.oJ(str, 0.0f);
        } else {
            oJ = so.oJ(this.oJ, com.bytedance.adsdk.ugeno.cFZ.tB.oJ(str, 0.0f));
        }
        this.Pfn.add(Keyframe.ofFloat(f10, oJ));
    }
}
