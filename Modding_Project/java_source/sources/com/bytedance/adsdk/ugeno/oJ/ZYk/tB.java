package com.bytedance.adsdk.ugeno.oJ.ZYk;

import android.animation.ArgbEvaluator;
import android.animation.IntEvaluator;
import android.animation.Keyframe;
import android.animation.TypeEvaluator;
import android.content.Context;
import com.bytedance.adsdk.ugeno.oJ.Pfn;
import java.util.TreeMap;
/* loaded from: classes3.dex */
public class tB extends oJ {
    public tB(Context context, com.bytedance.adsdk.ugeno.ZYk.tB tBVar, String str, TreeMap<Float, String> treeMap) {
        super(context, tBVar, str, treeMap);
    }

    @Override // com.bytedance.adsdk.ugeno.oJ.ZYk.oJ
    public void ZYk() {
        if (this.ex == Pfn.BACKGROUND_COLOR) {
            this.Pfn.add(Keyframe.ofInt(0.0f, this.cFZ.HyG()));
        }
    }

    @Override // com.bytedance.adsdk.ugeno.oJ.ZYk.oJ
    public TypeEvaluator ba() {
        if (this.ex == Pfn.BACKGROUND_COLOR) {
            return new ArgbEvaluator();
        }
        return new IntEvaluator();
    }

    @Override // com.bytedance.adsdk.ugeno.oJ.ZYk.oJ
    public void oJ(float f10, String str) {
        Keyframe ofInt;
        if (this.ex == Pfn.BACKGROUND_COLOR) {
            ofInt = Keyframe.ofInt(f10, com.bytedance.adsdk.ugeno.cFZ.oJ.oJ(str));
        } else {
            ofInt = Keyframe.ofInt(f10, com.bytedance.adsdk.ugeno.cFZ.tB.oJ(str, 0));
        }
        this.Pfn.add(ofInt);
    }
}
