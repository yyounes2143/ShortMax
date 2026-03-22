package com.bytedance.sdk.component.Pfn.ex.ZYk;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import com.bytedance.sdk.component.Pfn.RZ;
import com.bytedance.sdk.component.Pfn.ex.tB.ZYk.oJ;
import com.bytedance.sdk.component.utils.dLZ;
/* loaded from: classes3.dex */
public class ex<T> implements ba {
    private void ZYk(final com.bytedance.sdk.component.Pfn.ex.tB.tB tBVar, final byte[] bArr, final com.bytedance.sdk.component.Pfn.ex.tB.oJ oJVar) {
        try {
            new com.bytedance.sdk.component.Pfn.ex.tB.ZYk.oJ().oJ(bArr, tBVar.si(), new oJ.InterfaceC0158oJ() { // from class: com.bytedance.sdk.component.Pfn.ex.ZYk.ex.2
                @Override // com.bytedance.sdk.component.Pfn.ex.tB.ZYk.oJ.InterfaceC0158oJ
                public void oJ(Drawable drawable) {
                    oJVar.oJ(new com.bytedance.sdk.component.Pfn.ex.tB.ex().oJ(tBVar, drawable, null, true));
                }

                @Override // com.bytedance.sdk.component.Pfn.ex.tB.ZYk.oJ.InterfaceC0158oJ
                public void oJ() {
                    oJVar.oJ(1002, "decode gif fail", new Exception("decode gif fail"));
                }

                @Override // com.bytedance.sdk.component.Pfn.ex.tB.ZYk.oJ.InterfaceC0158oJ
                public void oJ(byte[] bArr2) {
                    if (com.bytedance.sdk.component.utils.ba.oJ(bArr)) {
                        ex.this.oJ(tBVar, bArr, true, oJVar);
                    } else {
                        oJVar.oJ(1001, "result type is gif but data not image", new Exception("gif not image format"));
                    }
                }
            });
        } catch (Throwable th2) {
            oJVar.oJ(2000, "decode gif error", th2);
        }
    }

    @Override // com.bytedance.sdk.component.Pfn.ex.ZYk.ba
    public boolean oJ(com.bytedance.sdk.component.Pfn.ex.tB.tB tBVar, RZ rz, com.bytedance.sdk.component.Pfn.ex.tB.oJ oJVar) {
        byte[] WcQ = tBVar.WcQ();
        if (WcQ == null) {
            oJVar.oJ(2000, "imageData is empty", new Exception("imageData is empty"));
            return false;
        }
        int BTZ = tBVar.BTZ();
        tBVar.oJ(WcQ.length);
        boolean z10 = true;
        if (BTZ == 2) {
            if (com.bytedance.sdk.component.utils.ba.ZYk(WcQ) || dLZ.oJ(WcQ, 0)) {
                z10 = false;
            }
            if (com.bytedance.sdk.component.utils.ba.oJ(WcQ)) {
                oJ(tBVar, WcQ, z10, oJVar);
            } else {
                oJVar.oJ(1001, "result type is bit but data not image", new Exception("not image format"));
            }
        } else if (BTZ != 3) {
            if (com.bytedance.sdk.component.utils.ba.ZYk(WcQ)) {
                ZYk(tBVar, WcQ, oJVar);
            } else if (dLZ.oJ(WcQ, 0)) {
                oJ(tBVar, WcQ, oJVar);
            } else if (com.bytedance.sdk.component.utils.ba.oJ(WcQ)) {
                oJ(tBVar, WcQ, true, oJVar);
            } else {
                oJVar.oJ(1001, "is not supprot image type", new Exception("not supprot image type"));
            }
        } else {
            oJVar.oJ(new com.bytedance.sdk.component.Pfn.ex.tB.ex().oJ(tBVar, WcQ, null, com.bytedance.sdk.component.utils.ba.ZYk(WcQ)));
        }
        return false;
    }

    private void oJ(final com.bytedance.sdk.component.Pfn.ex.tB.tB tBVar, final byte[] bArr, final com.bytedance.sdk.component.Pfn.ex.tB.oJ oJVar) {
        try {
            new com.bytedance.sdk.component.Pfn.ex.tB.ZYk.oJ().oJ(bArr, new oJ.InterfaceC0158oJ() { // from class: com.bytedance.sdk.component.Pfn.ex.ZYk.ex.1
                @Override // com.bytedance.sdk.component.Pfn.ex.tB.ZYk.oJ.InterfaceC0158oJ
                public void oJ(Drawable drawable) {
                    oJVar.oJ(new com.bytedance.sdk.component.Pfn.ex.tB.ex().oJ(tBVar, drawable, null, false));
                }

                @Override // com.bytedance.sdk.component.Pfn.ex.tB.ZYk.oJ.InterfaceC0158oJ
                public void oJ() {
                    oJVar.oJ(1002, "decode webp animate fail", new Exception("decode webp animate fail"));
                }

                @Override // com.bytedance.sdk.component.Pfn.ex.tB.ZYk.oJ.InterfaceC0158oJ
                public void oJ(byte[] bArr2) {
                    if (com.bytedance.sdk.component.utils.ba.oJ(bArr)) {
                        ex.this.oJ(tBVar, bArr, true, oJVar);
                    } else {
                        oJVar.oJ(1001, "result type is webp animated but data not image", new Exception("webp animated not image format"));
                    }
                }
            });
        } catch (Throwable th2) {
            oJVar.oJ(2000, "decode webp animation error", th2);
        }
    }

    @Override // com.bytedance.sdk.component.Pfn.ex.ZYk.ba
    public String oJ() {
        return "decode";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ(com.bytedance.sdk.component.Pfn.ex.tB.tB tBVar, byte[] bArr, boolean z10, com.bytedance.sdk.component.Pfn.ex.tB.oJ oJVar) {
        try {
            com.bytedance.sdk.component.Pfn.ex.tB.ba si2 = tBVar.si();
            Bitmap oJ = si2.oJ(tBVar).oJ(bArr);
            if (oJ != null) {
                tBVar.kkU();
                tBVar.oJ();
                oJ.getWidth();
                oJ.getHeight();
                oJ.getByteCount();
                oJVar.oJ(new com.bytedance.sdk.component.Pfn.ex.tB.ex().oJ(tBVar, oJ, null, false));
                if (z10) {
                    oJ(tBVar.Ry(), si2, tBVar.kkU(), oJ);
                    return;
                }
                return;
            }
            tBVar.kkU();
            tBVar.oJ();
            oJVar.oJ(1002, "decode failed bitmap null", new Exception("decode failed bitmap null"));
        } catch (Throwable th2) {
            tBVar.kkU();
            tBVar.oJ();
            oJVar.oJ(1002, "decode failed:" + th2.getMessage(), th2);
        }
    }

    private void oJ(com.bytedance.sdk.component.Pfn.ZYk zYk, com.bytedance.sdk.component.Pfn.ex.tB.ba baVar, String str, Bitmap bitmap) {
        if (zYk == null || baVar == null || !zYk.Pfn()) {
            return;
        }
        baVar.oJ(zYk).oJ(str, bitmap);
    }
}
