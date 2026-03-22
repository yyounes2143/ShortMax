package com.bytedance.adsdk.ugeno.ex;

import android.content.Context;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class oJ implements so {
    @Override // com.bytedance.adsdk.ugeno.ex.so
    public List<cFZ> oJ() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new cFZ("slide") { // from class: com.bytedance.adsdk.ugeno.ex.oJ.1
            @Override // com.bytedance.adsdk.ugeno.ex.cFZ
            public com.bytedance.adsdk.ugeno.ex.ex.tB oJ(Context context) {
                return new com.bytedance.adsdk.ugeno.ex.ex.Pfn(context);
            }
        });
        arrayList.add(new cFZ("tap") { // from class: com.bytedance.adsdk.ugeno.ex.oJ.2
            @Override // com.bytedance.adsdk.ugeno.ex.cFZ
            public com.bytedance.adsdk.ugeno.ex.ex.tB oJ(Context context) {
                return new com.bytedance.adsdk.ugeno.ex.ex.jFA(context);
            }
        });
        arrayList.add(new cFZ("timer") { // from class: com.bytedance.adsdk.ugeno.ex.oJ.3
            @Override // com.bytedance.adsdk.ugeno.ex.cFZ
            public com.bytedance.adsdk.ugeno.ex.ex.tB oJ(Context context) {
                return new com.bytedance.adsdk.ugeno.ex.ex.kkU(context);
            }
        });
        arrayList.add(new cFZ("touchStart") { // from class: com.bytedance.adsdk.ugeno.ex.oJ.4
            @Override // com.bytedance.adsdk.ugeno.ex.cFZ
            public com.bytedance.adsdk.ugeno.ex.ex.tB oJ(Context context) {
                return new com.bytedance.adsdk.ugeno.ex.ex.BTZ(context);
            }
        });
        arrayList.add(new cFZ("touchEnd") { // from class: com.bytedance.adsdk.ugeno.ex.oJ.5
            @Override // com.bytedance.adsdk.ugeno.ex.cFZ
            public com.bytedance.adsdk.ugeno.ex.ex.tB oJ(Context context) {
                return new com.bytedance.adsdk.ugeno.ex.ex.dLZ(context);
            }
        });
        arrayList.add(new cFZ("animateState") { // from class: com.bytedance.adsdk.ugeno.ex.oJ.6
            @Override // com.bytedance.adsdk.ugeno.ex.cFZ
            public com.bytedance.adsdk.ugeno.ex.ex.tB oJ(Context context) {
                return new com.bytedance.adsdk.ugeno.ex.ex.ZYk(context);
            }
        });
        return arrayList;
    }
}
