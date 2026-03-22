package com.bytedance.sdk.openadsdk.Ry.oJ;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextUtils;
import android.widget.ImageView;
import com.bytedance.sdk.component.Pfn.dLZ;
import com.bytedance.sdk.component.Pfn.eZI;
import com.bytedance.sdk.component.Pfn.kkU;
import com.bytedance.sdk.component.Pfn.so;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.si;
import com.bytedance.sdk.openadsdk.jFA.ex;
import com.bytedance.sdk.openadsdk.utils.cdg;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.Map;
/* loaded from: classes3.dex */
public class oJ {

    /* renamed from: com.bytedance.sdk.openadsdk.Ry.oJ.oJ$oJ  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public interface InterfaceC0187oJ {
        void oJ(int i10, String str, Throwable th2);

        void oJ(String str, ZYk zYk);
    }

    public void oJ(com.bytedance.sdk.openadsdk.Ry.oJ oJVar, final InterfaceC0187oJ interfaceC0187oJ, int i10, int i11, ImageView.ScaleType scaleType, String str, final int i12, cY cYVar) {
        kkU oJ = ex.oJ(oJVar.oJ).oJ(oJVar.ZYk).oJ(i10).ZYk(i11).Pfn(cdg.Pfn(si.oJ())).ex(cdg.tB(si.oJ())).ZYk(str).oJ(scaleType).oJ(!TextUtils.isEmpty(str));
        if (i12 > 0 && Build.VERSION.SDK_INT >= 26) {
            oJ.tB(2).oJ(new so() { // from class: com.bytedance.sdk.openadsdk.Ry.oJ.oJ.1
                @Override // com.bytedance.sdk.component.Pfn.so
                public Bitmap oJ(Bitmap bitmap) {
                    return com.bytedance.sdk.component.adexpress.ex.oJ.oJ(si.oJ(), bitmap, i12);
                }
            });
        } else {
            oJ.tB(1);
        }
        oJ.oJ(new com.bytedance.sdk.openadsdk.jFA.ZYk(cYVar, oJVar.oJ, new eZI() { // from class: com.bytedance.sdk.openadsdk.Ry.oJ.oJ.2
            @Override // com.bytedance.sdk.component.Pfn.eZI
            public void oJ(dLZ dlz) {
                oJ.this.oJ(dlz, interfaceC0187oJ);
            }

            @Override // com.bytedance.sdk.component.Pfn.eZI
            public void oJ(int i13, String str2, Throwable th2) {
                oJ.this.oJ(i13, str2, th2, interfaceC0187oJ);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void oJ(dLZ dlz, InterfaceC0187oJ interfaceC0187oJ) {
        if (interfaceC0187oJ != null) {
            Object ZYk = dlz.ZYk();
            int oJ = oJ(dlz);
            if (ZYk instanceof Drawable) {
                interfaceC0187oJ.oJ(dlz.oJ(), new ZYk((Drawable) ZYk, oJ));
            } else if (ZYk instanceof byte[]) {
                interfaceC0187oJ.oJ(dlz.oJ(), new ZYk((byte[]) ZYk, oJ));
            } else {
                if (ZYk instanceof Bitmap) {
                    interfaceC0187oJ.oJ(dlz.oJ(), new ZYk((Bitmap) ZYk, dlz.tB() instanceof Bitmap ? (Bitmap) dlz.tB() : null, oJ));
                } else {
                    interfaceC0187oJ.oJ(0, "not bitmap or gif result!", null);
                }
            }
        }
    }

    private int oJ(dLZ dlz) {
        String str;
        Map<String, String> ex = dlz.ex();
        if (ex == null || (str = ex.get(CampaignEx.JSON_KEY_IMAGE_SIZE)) == null || !(str instanceof Integer)) {
            return 0;
        }
        return ((Integer) str).intValue();
    }

    protected void oJ(int i10, String str, Throwable th2, InterfaceC0187oJ interfaceC0187oJ) {
        if (interfaceC0187oJ != null) {
            interfaceC0187oJ.oJ(i10, str, th2);
        }
    }
}
