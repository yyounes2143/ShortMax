package com.bytedance.adsdk.ugeno.jFA.tB;

import android.content.Context;
import android.text.TextUtils;
import android.widget.ImageView;
import androidx.core.view.ViewCompat;
import com.bytedance.adsdk.ugeno.jFA.ex.tB;
/* loaded from: classes3.dex */
public abstract class oJ extends tB {
    private int hwh;

    public oJ(Context context) {
        super(context);
        this.hwh = ViewCompat.MEASURED_STATE_MASK;
    }

    private String PiB(String str) {
        String dLZ = dLZ(str);
        if (TextUtils.isEmpty(dLZ)) {
            return "";
        }
        return "local://".concat(String.valueOf(dLZ));
    }

    @Override // com.bytedance.adsdk.ugeno.jFA.ex.tB, com.bytedance.adsdk.ugeno.ZYk.tB
    public void ZYk() {
        ((tB) this).oJ = PiB(((tB) this).oJ);
        super.ZYk();
        ((com.bytedance.adsdk.ugeno.jFA.ex.oJ) this.Pfn).setColorFilter(this.hwh);
        ((com.bytedance.adsdk.ugeno.jFA.ex.oJ) this.Pfn).setScaleType(ImageView.ScaleType.FIT_CENTER);
    }

    public abstract String dLZ(String str);

    @Override // com.bytedance.adsdk.ugeno.jFA.ex.tB, com.bytedance.adsdk.ugeno.ZYk.tB
    public void oJ(String str, String str2) {
        super.oJ(str, str2);
        str.hashCode();
        if (str.equals("textColor")) {
            this.hwh = com.bytedance.adsdk.ugeno.cFZ.oJ.oJ(str2);
        }
    }

    @Override // com.bytedance.adsdk.ugeno.jFA.ex.tB
    protected String tB() {
        return "drawable";
    }
}
