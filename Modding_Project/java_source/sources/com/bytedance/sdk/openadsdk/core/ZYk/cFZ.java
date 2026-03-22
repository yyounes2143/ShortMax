package com.bytedance.sdk.openadsdk.core.ZYk;

import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import com.bytedance.sdk.openadsdk.core.ZYk.tB;
import com.bytedance.sdk.openadsdk.utils.eZI;
/* loaded from: classes3.dex */
public abstract class cFZ extends tB {
    private final com.bytedance.sdk.openadsdk.core.dLZ.oJ ZYk;
    private final String oJ;
    private tB tB;

    public cFZ(String str, com.bytedance.sdk.openadsdk.core.dLZ.oJ oJVar) {
        this(str, oJVar, null);
    }

    public void oJ(tB tBVar) {
        this.tB = tBVar;
    }

    @Override // com.bytedance.sdk.openadsdk.core.ZYk.tB, android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        return super.onTouch(view, motionEvent);
    }

    public cFZ(String str, com.bytedance.sdk.openadsdk.core.dLZ.oJ oJVar, tB tBVar) {
        this.oJ = str;
        this.ZYk = oJVar;
        this.tB = tBVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.core.ZYk.tB
    public void oJ(View view, float f10, float f11, float f12, float f13, SparseArray<tB.oJ> sparseArray, boolean z10) {
        com.bytedance.sdk.openadsdk.core.dLZ.oJ oJVar = this.ZYk;
        if (oJVar != null) {
            oJVar.Pfn(this.oJ);
        }
        if (view != null) {
            if (view.getId() == eZI.tB) {
                view.setTag(570425345, "VAST_TITLE");
            } else if (view.getId() == eZI.cFZ) {
                view.setTag(570425345, "VAST_DESCRIPTION");
            } else {
                view.setTag(570425345, this.oJ);
            }
        }
        tB tBVar = this.tB;
        if (tBVar != null) {
            tBVar.Xe = this.Xe;
            tBVar.f13115tb = this.f13115tb;
            tBVar.HL = this.HL;
            int i10 = this.HL;
            tBVar.IUZ = i10;
            tBVar.Ln = i10;
            tBVar.oJ(view, f10, f11, f12, f13, sparseArray, z10);
        }
    }
}
