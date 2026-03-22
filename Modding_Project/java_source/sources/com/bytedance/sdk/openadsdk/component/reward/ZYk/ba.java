package com.bytedance.sdk.openadsdk.component.reward.ZYk;

import androidx.annotation.NonNull;
import com.bytedance.sdk.openadsdk.core.model.Ln;
import com.bytedance.sdk.openadsdk.core.model.cY;
/* loaded from: classes3.dex */
public class ba {
    @NonNull
    public static ZYk oJ(com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar) {
        cY cYVar = oJVar.ZYk;
        if (Ln.si(cYVar)) {
            return new jFA(oJVar);
        }
        if (cFZ.oJ(cYVar) && !tB.oJ(cYVar)) {
            return new cFZ(oJVar);
        }
        if (so.oJ(cYVar)) {
            return new so(oJVar);
        }
        if (jFA.oJ(cYVar)) {
            return new jFA(oJVar);
        }
        if (ex.oJ(cYVar)) {
            return new ex(oJVar);
        }
        if (tB.oJ(cYVar)) {
            return new tB(oJVar);
        }
        return new Pfn(oJVar);
    }
}
