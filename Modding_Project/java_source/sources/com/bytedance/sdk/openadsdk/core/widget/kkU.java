package com.bytedance.sdk.openadsdk.core.widget;

import android.content.Context;
import android.os.SystemClock;
import androidx.annotation.NonNull;
import com.bytedance.sdk.openadsdk.core.model.cY;
/* loaded from: classes3.dex */
public class kkU extends cFZ {
    private long ZYk;
    private long oJ;

    public kkU(@NonNull Context context) {
        super(context);
        setVisibility(8);
        setClickable(true);
    }

    public void ZYk(cY cYVar, int i10) {
        if (isShown()) {
            return;
        }
        ZYk();
        setVisibility(0);
        this.oJ = SystemClock.elapsedRealtime();
        oJ(cYVar, i10);
    }

    public boolean ex() {
        if (this.oJ > 0 && this.ZYk > 0) {
            return true;
        }
        return false;
    }

    public long getDisplayDuration() {
        if (this.oJ == 0) {
            return 0L;
        }
        if (this.ZYk == 0) {
            this.ZYk = SystemClock.elapsedRealtime();
        }
        return this.ZYk - this.oJ;
    }

    @Override // com.bytedance.sdk.openadsdk.core.widget.cFZ
    protected boolean oJ() {
        return false;
    }

    public void tB() {
        setVisibility(8);
        if (this.oJ != 0) {
            this.ZYk = SystemClock.elapsedRealtime();
        }
    }
}
