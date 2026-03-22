package com.bytedance.sdk.component.jFA;

import android.content.Context;
import android.view.View;
import android.view.ViewConfiguration;
/* loaded from: classes3.dex */
public abstract class tB implements View.OnTouchListener {
    private int ZYk = -1;
    private ViewConfiguration oJ;

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void oJ(View.OnTouchListener onTouchListener);

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean oJ(float f10, float f11, float f12, float f13, Context context) {
        if (this.oJ == null) {
            this.oJ = ViewConfiguration.get(context);
        }
        if (this.ZYk == -1) {
            this.ZYk = this.oJ.getScaledTouchSlop();
        }
        return Math.abs(f10 - f12) <= ((float) this.ZYk) && Math.abs(f11 - f13) <= ((float) this.ZYk);
    }
}
