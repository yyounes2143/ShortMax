package com.bytedance.sdk.component.adexpress.dynamic.tB;

import android.content.Context;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.adexpress.ba.Id;
/* loaded from: classes3.dex */
public class si<E extends Id> implements cFZ<E> {
    protected int Pfn;
    protected Context ZYk;
    protected com.bytedance.sdk.component.adexpress.dynamic.ex.cFZ ex;
    protected Id oJ;
    protected com.bytedance.sdk.component.adexpress.dynamic.dynamicview.Pfn tB;

    public si(Context context, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.Pfn pfn, com.bytedance.sdk.component.adexpress.dynamic.ex.cFZ cfz, int i10) {
        this.Pfn = i10;
        this.ZYk = context;
        this.tB = pfn;
        this.ex = cfz;
        ex();
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.tB.cFZ
    /* renamed from: Pfn */
    public E tB() {
        return (E) this.oJ;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.tB.cFZ
    public void ZYk() {
        this.oJ.ZYk();
    }

    protected void ex() {
        this.oJ = new Id(this.ZYk, this.ex.Rl());
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, (int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(this.ZYk, 200.0f));
        layoutParams.gravity = 81;
        layoutParams.bottomMargin = (int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(this.ZYk, 100 - this.Pfn);
        this.oJ.setLayoutParams(layoutParams);
        try {
            this.oJ.setGuideText(this.ex.oTd());
        } catch (Throwable unused) {
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.tB.cFZ
    public void oJ() {
        this.oJ.oJ();
    }

    public si(Context context, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.Pfn pfn, com.bytedance.sdk.component.adexpress.dynamic.ex.cFZ cfz) {
        this(context, pfn, cfz, 0);
    }
}
