package com.bytedance.adsdk.ugeno.oJ.ZYk;

import android.animation.Keyframe;
import android.animation.PropertyValuesHolder;
import android.animation.TypeEvaluator;
import android.content.Context;
import com.bytedance.adsdk.ugeno.oJ.Pfn;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
/* loaded from: classes3.dex */
public abstract class oJ {
    protected String ZYk;
    protected com.bytedance.adsdk.ugeno.ZYk.tB cFZ;
    protected Pfn ex;
    protected Context oJ;
    protected Map<Float, String> tB;

    /* renamed from: ba  reason: collision with root package name */
    protected List<PropertyValuesHolder> f11698ba = new ArrayList();
    protected List<Keyframe> Pfn = new ArrayList();

    public oJ(Context context, com.bytedance.adsdk.ugeno.ZYk.tB tBVar, String str, Map<Float, String> map) {
        this.oJ = context;
        this.ZYk = str;
        this.tB = map;
        this.ex = Pfn.oJ(this.ZYk);
        this.cFZ = tBVar;
    }

    public List<PropertyValuesHolder> Pfn() {
        String ZYk = this.ex.ZYk();
        ex();
        PropertyValuesHolder ofKeyframe = PropertyValuesHolder.ofKeyframe(ZYk, (Keyframe[]) this.Pfn.toArray(new Keyframe[0]));
        TypeEvaluator ba2 = ba();
        if (ba2 != null) {
            ofKeyframe.setEvaluator(ba2);
        }
        this.f11698ba.add(ofKeyframe);
        return this.f11698ba;
    }

    public abstract void ZYk();

    public abstract TypeEvaluator ba();

    public void ex() {
        Map<Float, String> map = this.tB;
        if (map != null && map.size() > 0) {
            if (!oJ()) {
                ZYk();
            }
            for (Map.Entry<Float, String> entry : this.tB.entrySet()) {
                if (entry != null) {
                    oJ(entry.getKey().floatValue() / 100.0f, entry.getValue());
                }
            }
            tB();
        }
    }

    public abstract void oJ(float f10, String str);

    public boolean oJ() {
        Map<Float, String> map = this.tB;
        if (map == null || map.size() <= 0) {
            return false;
        }
        return this.tB.containsKey(Float.valueOf(0.0f));
    }

    public void tB() {
        Map<Float, String> map = this.tB;
        if (map != null && map.size() > 0) {
            Map<Float, String> map2 = this.tB;
            if (map2 instanceof TreeMap) {
                Float f10 = (Float) ((TreeMap) map2).lastKey();
                if (f10.floatValue() != 100.0f) {
                    oJ(100.0f, this.tB.get(f10));
                }
            }
        }
    }
}
