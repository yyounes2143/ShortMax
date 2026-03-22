package com.bytedance.sdk.openadsdk.utils;

import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import com.bytedance.sdk.openadsdk.Ry.oJ.oJ;
import java.util.Objects;
/* loaded from: classes3.dex */
public class si {

    /* loaded from: classes3.dex */
    public interface oJ {
        void oJ();

        void oJ(com.bytedance.sdk.openadsdk.Ry.oJ.ZYk zYk);
    }

    public static void oJ(com.bytedance.sdk.openadsdk.Ry.oJ oJVar, int i10, int i11, oJ oJVar2, String str) {
        oJ(oJVar, i10, i11, oJVar2, str, 0);
    }

    public static void oJ(com.bytedance.sdk.openadsdk.Ry.oJ oJVar, int i10, int i11, final oJ oJVar2, String str, int i12) {
        Objects.toString(oJVar);
        com.bytedance.sdk.openadsdk.Ry.ZYk.ZYk().ex().oJ(oJVar, new oJ.InterfaceC0187oJ() { // from class: com.bytedance.sdk.openadsdk.utils.si.1
            @Override // com.bytedance.sdk.openadsdk.Ry.oJ.oJ.InterfaceC0187oJ
            public void oJ(String str2, com.bytedance.sdk.openadsdk.Ry.oJ.ZYk zYk) {
                oJ oJVar3;
                if (zYk.Pfn() && (oJVar3 = oJ.this) != null) {
                    oJVar3.oJ(zYk);
                    return;
                }
                oJ oJVar4 = oJ.this;
                if (oJVar4 != null) {
                    oJVar4.oJ();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.Ry.oJ.oJ.InterfaceC0187oJ
            public void oJ(int i13, String str2, Throwable th2) {
                oJ oJVar3 = oJ.this;
                if (oJVar3 != null) {
                    oJVar3.oJ();
                }
            }
        }, i10, i11, ImageView.ScaleType.CENTER_INSIDE, str, i12, null);
    }

    public static Drawable oJ(byte[] bArr, int i10) {
        if (bArr != null && bArr.length > 0) {
            try {
                return new BitmapDrawable(BitmapFactory.decodeByteArray(bArr, 0, bArr.length));
            } catch (Throwable unused) {
                return new ColorDrawable(0);
            }
        }
        return new ColorDrawable(0);
    }
}
