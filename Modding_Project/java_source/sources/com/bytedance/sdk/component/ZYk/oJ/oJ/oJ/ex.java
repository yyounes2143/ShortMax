package com.bytedance.sdk.component.ZYk.oJ.oJ.oJ;

import android.text.TextUtils;
import com.bytedance.sdk.component.ZYk.oJ.BTZ;
import com.bytedance.sdk.component.ZYk.oJ.dLZ;
/* loaded from: classes3.dex */
public class ex extends dLZ {
    public oJ jFA;

    /* renamed from: so  reason: collision with root package name */
    public ba f12618so;

    public ex(dLZ.oJ oJVar) {
        super(oJVar);
        ba baVar = new ba();
        this.f12618so = baVar;
        this.jFA = new oJ(baVar.ZYk());
    }

    @Override // com.bytedance.sdk.component.ZYk.oJ.dLZ
    public com.bytedance.sdk.component.ZYk.oJ.ex oJ() {
        return this.f12618so;
    }

    @Override // com.bytedance.sdk.component.ZYk.oJ.dLZ
    public com.bytedance.sdk.component.ZYk.oJ.ZYk oJ(BTZ btz) {
        btz.oJ(this);
        if (btz.ZYk() == null || btz.ZYk().oJ() == null || TextUtils.isEmpty(btz.ZYk().oJ().toString())) {
            return null;
        }
        if (oJ.oJ != null && oJ.oJ.ZYk() && this.jFA.Pfn() && !"setting".equals(btz.ba())) {
            ZYk zYk = new ZYk(btz, this.jFA);
            this.jFA.tB().add(zYk);
            return zYk;
        }
        ZYk zYk2 = new ZYk(btz, this.f12618so);
        this.f12618so.tB().add(zYk2);
        return zYk2;
    }
}
