package com.bytedance.adsdk.ugeno.oJ.ZYk;

import android.animation.FloatEvaluator;
import android.animation.Keyframe;
import android.animation.PropertyValuesHolder;
import android.animation.TypeEvaluator;
import android.content.Context;
import android.text.TextUtils;
import com.bytedance.adsdk.ugeno.cFZ.so;
import com.bytedance.adsdk.ugeno.oJ.Pfn;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
/* loaded from: classes3.dex */
public class ex extends oJ {

    /* renamed from: so  reason: collision with root package name */
    private List<Keyframe> f11697so;

    /* renamed from: com.bytedance.adsdk.ugeno.oJ.ZYk.ex$1  reason: invalid class name */
    /* loaded from: classes3.dex */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] oJ;

        static {
            int[] iArr = new int[Pfn.values().length];
            oJ = iArr;
            try {
                iArr[Pfn.TRANSLATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                oJ[Pfn.SCALE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public ex(Context context, com.bytedance.adsdk.ugeno.ZYk.tB tBVar, String str, Map<Float, String> map) {
        super(context, tBVar, str, map);
        this.f11697so = new ArrayList();
    }

    @Override // com.bytedance.adsdk.ugeno.oJ.ZYk.oJ
    public List<PropertyValuesHolder> Pfn() {
        String ZYk = this.ex.ZYk();
        ex();
        PropertyValuesHolder ofKeyframe = PropertyValuesHolder.ofKeyframe(ZYk + "X", (Keyframe[]) this.Pfn.toArray(new Keyframe[0]));
        this.f11698ba.add(ofKeyframe);
        PropertyValuesHolder ofKeyframe2 = PropertyValuesHolder.ofKeyframe(ZYk + "Y", (Keyframe[]) this.f11697so.toArray(new Keyframe[0]));
        this.f11698ba.add(ofKeyframe2);
        TypeEvaluator ba2 = ba();
        if (ba2 != null) {
            ofKeyframe.setEvaluator(ba2);
            ofKeyframe2.setEvaluator(ba2);
        }
        return this.f11698ba;
    }

    @Override // com.bytedance.adsdk.ugeno.oJ.ZYk.oJ
    public void ZYk() {
        Keyframe ofFloat;
        Keyframe ofFloat2;
        int i10 = AnonymousClass1.oJ[this.ex.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                ofFloat = null;
                ofFloat2 = null;
            } else {
                ofFloat = Keyframe.ofFloat(0.0f, this.cFZ.si());
                ofFloat2 = Keyframe.ofFloat(0.0f, this.cFZ.Ry());
            }
        } else {
            ofFloat = Keyframe.ofFloat(0.0f, this.cFZ.awB());
            ofFloat2 = Keyframe.ofFloat(0.0f, this.cFZ.eZI());
        }
        if (ofFloat != null) {
            this.Pfn.add(ofFloat);
        }
        if (ofFloat2 != null) {
            this.f11697so.add(ofFloat2);
        }
    }

    @Override // com.bytedance.adsdk.ugeno.oJ.ZYk.oJ
    public TypeEvaluator ba() {
        return new FloatEvaluator();
    }

    @Override // com.bytedance.adsdk.ugeno.oJ.ZYk.oJ
    public void oJ(float f10, String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONArray jSONArray = new JSONArray(str);
            if (jSONArray.length() != 2) {
                return;
            }
            float optDouble = (float) jSONArray.optDouble(0);
            float optDouble2 = (float) jSONArray.optDouble(1);
            if (this.ex == Pfn.TRANSLATE) {
                optDouble = so.oJ(this.oJ, optDouble);
                optDouble2 = so.oJ(this.oJ, optDouble2);
            }
            this.Pfn.add(Keyframe.ofFloat(f10, optDouble));
            this.f11697so.add(Keyframe.ofFloat(f10, optDouble2));
        } catch (JSONException unused) {
        }
    }
}
