package com.bytedance.sdk.component.adexpress.dynamic.oJ;

import android.content.Context;
import com.bytedance.sdk.component.adexpress.ZYk.PiB;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.BTZ;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicRootView;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.HL;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.IUZ;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.Id;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.Jc;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.Ln;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.LpP;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.Pfn;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.QSm;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.Ry;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.UN;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.WcQ;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.Xe;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.awB;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.ba;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.cFZ;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.cY;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.dLZ;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.eZI;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.jFA;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.jr;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.kkU;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.nke;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.oq;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.si;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.tB;
import com.bytedance.sdk.component.adexpress.dynamic.ex.so;
import com.bytedance.sdk.component.adexpress.ex;
/* loaded from: classes3.dex */
public class ZYk {
    public static Pfn oJ(Context context, DynamicRootView dynamicRootView, so soVar) {
        PiB renderRequest;
        if (context == null || dynamicRootView == null || soVar == null || soVar.kkU() == null) {
            return null;
        }
        switch (soVar.kkU().oJ()) {
            case -1:
                return new nke(context, dynamicRootView, soVar);
            case 0:
                return new Xe(context, dynamicRootView, soVar);
            case 1:
                return new dLZ(context, dynamicRootView, soVar);
            case 2:
                return new cFZ(context, dynamicRootView, soVar);
            case 3:
                return new jFA(context, dynamicRootView, soVar);
            case 4:
                return new com.bytedance.sdk.component.adexpress.dynamic.dynamicview.PiB(context, dynamicRootView, soVar);
            case 5:
                return new WcQ(context, dynamicRootView, soVar);
            case 6:
            case 9:
            case 17:
                return new ba(context, dynamicRootView, soVar);
            case 7:
                return new UN(context, dynamicRootView, soVar);
            case 8:
                return new Ry(context, dynamicRootView, soVar);
            case 10:
                return new eZI(context, dynamicRootView, soVar);
            case 11:
                return new jr(context, dynamicRootView, soVar);
            case 12:
                return new kkU(context, dynamicRootView, soVar);
            case 13:
                return new HL(context, dynamicRootView, soVar);
            case 14:
                return new IUZ(context, dynamicRootView, soVar);
            case 15:
                if (ex.ZYk()) {
                    return new Ln(context, dynamicRootView, soVar);
                }
                return new LpP(context, dynamicRootView, soVar);
            case 16:
                return new dLZ(context, dynamicRootView, soVar);
            case 18:
                return new cY(context, dynamicRootView, soVar);
            case 19:
                return new Id(context, dynamicRootView, soVar);
            case 20:
                return new QSm(context, dynamicRootView, soVar);
            case 21:
                return new oq(context, dynamicRootView, soVar);
            case 22:
                return new com.bytedance.sdk.component.adexpress.dynamic.dynamicview.so(context, dynamicRootView, soVar);
            case 23:
                return new si(context, dynamicRootView, soVar);
            case 24:
                return new com.bytedance.sdk.component.adexpress.dynamic.dynamicview.ex(context, dynamicRootView, soVar);
            case 25:
                return new BTZ(context, dynamicRootView, soVar);
            case 26:
                if ("vertical".equals(soVar.kkU().Pfn().SWT())) {
                    return new Jc(context, dynamicRootView, soVar);
                }
                return new tB(context, dynamicRootView, soVar);
            case 27:
                return new LpP(context, dynamicRootView, soVar);
            case 28:
                if (!ex.ZYk() || (renderRequest = dynamicRootView.getRenderRequest()) == null) {
                    return null;
                }
                return new awB(context, dynamicRootView, soVar, renderRequest.jr());
            default:
                return null;
        }
    }
}
