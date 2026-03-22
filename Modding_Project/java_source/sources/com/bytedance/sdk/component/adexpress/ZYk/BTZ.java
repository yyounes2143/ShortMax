package com.bytedance.sdk.component.adexpress.ZYk;

import androidx.annotation.NonNull;
import com.bytedance.sdk.component.adexpress.ZYk.kkU;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes3.dex */
public class BTZ implements kkU.oJ {
    @NonNull
    private List<kkU> ZYk;
    private AtomicBoolean ex = new AtomicBoolean(false);
    awB oJ;
    private jFA tB;

    public BTZ(List<kkU> list, jFA jfa) {
        this.ZYk = list;
        this.tB = jfa;
    }

    @Override // com.bytedance.sdk.component.adexpress.ZYk.kkU.oJ
    public boolean ZYk(kkU kku) {
        int indexOf = this.ZYk.indexOf(kku);
        return indexOf < this.ZYk.size() - 1 && indexOf >= 0;
    }

    @Override // com.bytedance.sdk.component.adexpress.ZYk.kkU.oJ
    public void oJ() {
        this.tB.ex();
        Iterator<kkU> it = this.ZYk.iterator();
        while (it.hasNext() && !it.next().oJ(this)) {
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.ZYk.kkU.oJ
    public boolean tB() {
        return this.ex.get();
    }

    @Override // com.bytedance.sdk.component.adexpress.ZYk.kkU.oJ
    public awB ZYk() {
        return this.oJ;
    }

    @Override // com.bytedance.sdk.component.adexpress.ZYk.kkU.oJ
    public void oJ(kkU kku) {
        int indexOf = this.ZYk.indexOf(kku);
        if (indexOf < 0) {
            return;
        }
        do {
            indexOf++;
            if (indexOf >= this.ZYk.size()) {
                return;
            }
        } while (!this.ZYk.get(indexOf).oJ(this));
    }

    @Override // com.bytedance.sdk.component.adexpress.ZYk.kkU.oJ
    public void oJ(awB awb) {
        this.oJ = awb;
    }

    @Override // com.bytedance.sdk.component.adexpress.ZYk.kkU.oJ
    public void oJ(boolean z10) {
        this.ex.getAndSet(z10);
    }
}
