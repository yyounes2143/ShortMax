package com.bytedance.sdk.component.Pfn.ex.tB.ZYk;

import android.content.Context;
import android.graphics.ImageDecoder;
import android.graphics.drawable.Drawable;
import android.os.Build;
import com.bytedance.sdk.component.Pfn.ex.tB.ba;
import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.component.utils.cFZ;
import java.io.File;
import java.io.FileOutputStream;
import java.nio.ByteBuffer;
/* loaded from: classes3.dex */
public class oJ {

    /* renamed from: com.bytedance.sdk.component.Pfn.ex.tB.ZYk.oJ$oJ  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public interface InterfaceC0158oJ {
        void oJ();

        void oJ(Drawable drawable);

        void oJ(byte[] bArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ZYk(byte[] bArr, ba baVar, InterfaceC0158oJ interfaceC0158oJ) {
        String str;
        ImageDecoder.Source createSource;
        Drawable decodeDrawable;
        FileOutputStream fileOutputStream = null;
        try {
            boolean cFZ = baVar.cFZ();
            Context oJ = baVar.oJ();
            if (cFZ) {
                str = "P_GIF_MUTIL_CACHE/";
            } else {
                str = "/P_GIF_CACHE/";
            }
            File oJ2 = cFZ.oJ(oJ, cFZ, str, "P_U_GIF_FILE");
            FileOutputStream fileOutputStream2 = new FileOutputStream(oJ2);
            try {
                fileOutputStream2.write(bArr, 0, bArr.length);
                if (Build.VERSION.SDK_INT >= 28) {
                    createSource = ImageDecoder.createSource(oJ2);
                    decodeDrawable = ImageDecoder.decodeDrawable(createSource);
                    if (interfaceC0158oJ != null) {
                        interfaceC0158oJ.oJ(decodeDrawable);
                    }
                    try {
                        fileOutputStream2.close();
                        return;
                    } catch (Throwable unused) {
                        return;
                    }
                }
                if (interfaceC0158oJ != null) {
                    interfaceC0158oJ.oJ(bArr);
                }
                try {
                    fileOutputStream2.close();
                } catch (Throwable unused2) {
                }
            } catch (Throwable th2) {
                th = th2;
                fileOutputStream = fileOutputStream2;
                try {
                    QSm.oJ("PAGGifDefaultDecoder", "Gif  getSourceByFile fail : ", th);
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (Throwable unused3) {
                        }
                    }
                    if (interfaceC0158oJ != null) {
                        interfaceC0158oJ.oJ();
                    }
                } catch (Throwable th3) {
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (Throwable unused4) {
                        }
                    }
                    throw th3;
                }
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }

    public void oJ(byte[] bArr, ba baVar, InterfaceC0158oJ interfaceC0158oJ) {
        if (Build.VERSION.SDK_INT <= 30) {
            oJ(bArr, interfaceC0158oJ, baVar);
        } else {
            oJ(bArr, interfaceC0158oJ);
        }
    }

    public void oJ(byte[] bArr, InterfaceC0158oJ interfaceC0158oJ) {
        ImageDecoder.Source createSource;
        Drawable decodeDrawable;
        ByteBuffer wrap = ByteBuffer.wrap(bArr);
        if (Build.VERSION.SDK_INT < 28) {
            if (interfaceC0158oJ != null) {
                interfaceC0158oJ.oJ(bArr);
                return;
            }
            return;
        }
        createSource = ImageDecoder.createSource(wrap);
        try {
            decodeDrawable = ImageDecoder.decodeDrawable(createSource);
            if (interfaceC0158oJ != null) {
                interfaceC0158oJ.oJ(decodeDrawable);
            }
        } catch (Throwable th2) {
            QSm.tB("PAGGifDefaultDecoder", th2.getMessage());
            if (interfaceC0158oJ != null) {
                interfaceC0158oJ.oJ();
            }
        }
    }

    private void oJ(final byte[] bArr, final InterfaceC0158oJ interfaceC0158oJ, final ba baVar) {
        try {
            baVar.so().submit(new Runnable() { // from class: com.bytedance.sdk.component.Pfn.ex.tB.ZYk.oJ.1
                @Override // java.lang.Runnable
                public void run() {
                    oJ.this.ZYk(bArr, baVar, interfaceC0158oJ);
                }
            });
        } catch (Throwable th2) {
            QSm.tB("PAGGifDefaultDecoder", th2.getMessage());
            if (interfaceC0158oJ != null) {
                interfaceC0158oJ.oJ();
            }
        }
    }
}
