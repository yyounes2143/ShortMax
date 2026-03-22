package com.bytedance.sdk.component.adexpress.dynamic.animation.oJ;

import android.view.View;
import android.view.ViewGroup;
import com.ss.texturerender.TextureRenderKeys;
/* loaded from: classes3.dex */
public class tB {
    private static volatile tB oJ;

    private tB() {
    }

    public static tB oJ() {
        if (oJ == null) {
            synchronized (tB.class) {
                try {
                    if (oJ == null) {
                        oJ = new tB();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return oJ;
    }

    public ex oJ(View view, com.bytedance.sdk.component.adexpress.dynamic.ex.oJ oJVar) {
        if (oJVar == null) {
            return null;
        }
        if (view.getParent() != null) {
            ((ViewGroup) view.getParent()).setClipChildren(false);
        }
        if (view.getParent().getParent() != null) {
            ((ViewGroup) view.getParent().getParent()).setClipChildren(false);
        }
        if (TextureRenderKeys.KEY_IS_SCALE.equals(oJVar.jFA())) {
            return new dLZ(view, oJVar);
        }
        if ("translate".equals(oJVar.jFA())) {
            return new awB(view, oJVar);
        }
        if ("ripple".equals(oJVar.jFA())) {
            return new so(view, oJVar);
        }
        if ("marquee".equals(oJVar.jFA())) {
            return new cFZ(view, oJVar);
        }
        if ("waggle".equals(oJVar.jFA())) {
            return new eZI(view, oJVar);
        }
        if ("shine".equals(oJVar.jFA())) {
            return new BTZ(view, oJVar);
        }
        if ("swing".equals(oJVar.jFA())) {
            return new WcQ(view, oJVar);
        }
        if ("fade".equals(oJVar.jFA())) {
            return new oJ(view, oJVar);
        }
        if ("rubIn".equals(oJVar.jFA())) {
            return new kkU(view, oJVar);
        }
        if ("rotate".equals(oJVar.jFA())) {
            return new jFA(view, oJVar);
        }
        if ("cutIn".equals(oJVar.jFA())) {
            return new ba(view, oJVar);
        }
        if ("stretch".equals(oJVar.jFA())) {
            return new PiB(view, oJVar);
        }
        if ("bounce".equals(oJVar.jFA())) {
            return new Pfn(view, oJVar);
        }
        return null;
    }
}
