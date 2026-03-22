package com.bytedance.adsdk.ZYk.ZYk;

import android.content.res.AssetManager;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.bytedance.adsdk.ZYk.tB;
import com.bytedance.adsdk.ZYk.tB.cFZ;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3.dex */
public class oJ {
    private tB Pfn;
    private final AssetManager ex;
    private final cFZ<String> oJ = new cFZ<>();
    private final Map<cFZ<String>, Typeface> ZYk = new HashMap();
    private final Map<String, Typeface> tB = new HashMap();

    /* renamed from: ba  reason: collision with root package name */
    private String f11492ba = ".ttf";

    public oJ(Drawable.Callback callback, tB tBVar) {
        this.Pfn = tBVar;
        if (!(callback instanceof View)) {
            this.ex = null;
        } else {
            this.ex = ((View) callback).getContext().getAssets();
        }
    }

    private Typeface ZYk(com.bytedance.adsdk.ZYk.tB.tB tBVar) {
        Typeface typeface;
        String oJ = tBVar.oJ();
        Typeface typeface2 = this.tB.get(oJ);
        if (typeface2 != null) {
            return typeface2;
        }
        String tB = tBVar.tB();
        String ZYk = tBVar.ZYk();
        tB tBVar2 = this.Pfn;
        if (tBVar2 != null) {
            typeface = tBVar2.oJ(oJ, tB, ZYk);
            if (typeface == null) {
                typeface = this.Pfn.oJ(oJ);
            }
        } else {
            typeface = null;
        }
        tB tBVar3 = this.Pfn;
        if (tBVar3 != null && typeface == null) {
            String ZYk2 = tBVar3.ZYk(oJ, tB, ZYk);
            if (ZYk2 == null) {
                ZYk2 = this.Pfn.ZYk(oJ);
            }
            if (ZYk2 != null) {
                try {
                    typeface = Typeface.createFromAsset(this.ex, ZYk2);
                } catch (Throwable unused) {
                    typeface = Typeface.DEFAULT;
                }
            }
        }
        if (tBVar.ex() != null) {
            return tBVar.ex();
        }
        if (typeface == null) {
            try {
                typeface = Typeface.createFromAsset(this.ex, "fonts/" + oJ + this.f11492ba);
            } catch (Throwable unused2) {
                typeface = Typeface.DEFAULT;
            }
        }
        this.tB.put(oJ, typeface);
        return typeface;
    }

    public void oJ(tB tBVar) {
        this.Pfn = tBVar;
    }

    public void oJ(String str) {
        this.f11492ba = str;
    }

    public Typeface oJ(com.bytedance.adsdk.ZYk.tB.tB tBVar) {
        this.oJ.oJ(tBVar.oJ(), tBVar.tB());
        Typeface typeface = this.ZYk.get(this.oJ);
        if (typeface != null) {
            return typeface;
        }
        Typeface oJ = oJ(ZYk(tBVar), tBVar.tB());
        this.ZYk.put(this.oJ, oJ);
        return oJ;
    }

    private Typeface oJ(Typeface typeface, String str) {
        boolean contains = str.contains("Italic");
        boolean contains2 = str.contains("Bold");
        int i10 = (contains && contains2) ? 3 : contains ? 2 : contains2 ? 1 : 0;
        return typeface.getStyle() == i10 ? typeface : Typeface.create(typeface, i10);
    }
}
