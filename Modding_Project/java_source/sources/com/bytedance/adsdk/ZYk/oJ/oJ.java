package com.bytedance.adsdk.ZYk.oJ;

import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.os.Build;
import android.os.LocaleList;
import androidx.core.view.ViewCompat;
import com.bytedance.adsdk.ZYk.ba.Pfn;
/* loaded from: classes3.dex */
public class oJ extends Paint {
    public oJ() {
    }

    @Override // android.graphics.Paint
    public void setAlpha(int i10) {
        if (Build.VERSION.SDK_INT < 29) {
            setColor((Pfn.oJ(i10, 0, 255) << 24) | (getColor() & ViewCompat.MEASURED_SIZE_MASK));
            return;
        }
        super.setAlpha(Pfn.oJ(i10, 0, 255));
    }

    public oJ(int i10) {
        super(i10);
    }

    public oJ(PorterDuff.Mode mode) {
        setXfermode(new PorterDuffXfermode(mode));
    }

    public oJ(int i10, PorterDuff.Mode mode) {
        super(i10);
        setXfermode(new PorterDuffXfermode(mode));
    }

    @Override // android.graphics.Paint
    public void setTextLocales(LocaleList localeList) {
    }
}
