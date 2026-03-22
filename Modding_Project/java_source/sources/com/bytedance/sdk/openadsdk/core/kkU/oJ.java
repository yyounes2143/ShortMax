package com.bytedance.sdk.openadsdk.core.kkU;

import ai.turbolink.sdk.campaign.b;
import ai.turbolink.sdk.campaign.c;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.ImageDecoder;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextUtils;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import com.bytedance.adsdk.ugeno.oJ;
import com.bytedance.sdk.component.Pfn.dLZ;
import com.bytedance.sdk.component.Pfn.eZI;
import com.bytedance.sdk.component.Pfn.kkU;
import com.bytedance.sdk.component.so.so;
import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.component.utils.cFZ;
import com.bytedance.sdk.openadsdk.core.si;
import com.bytedance.sdk.openadsdk.utils.ofl;
import com.ss.texturerender.TextureRenderKeys;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.nio.ByteBuffer;
import java.util.Map;
/* loaded from: classes3.dex */
public class oJ implements com.bytedance.adsdk.ugeno.oJ {

    /* loaded from: classes3.dex */
    private static class ZYk implements eZI {
        private final oJ ZYk;
        private final int ex;
        private final WeakReference<ImageView> oJ;
        private final int tB;

        public ZYk(ImageView imageView, oJ oJVar, int i10, int i11) {
            this.oJ = new WeakReference<>(imageView);
            this.ZYk = oJVar;
            this.tB = i10;
            this.ex = i11;
        }

        @Override // com.bytedance.sdk.component.Pfn.eZI
        public void oJ(int i10, String str, Throwable th2) {
        }

        @Override // com.bytedance.sdk.component.Pfn.eZI
        public void oJ(dLZ dlz) {
            try {
                final ImageView imageView = this.oJ.get();
                if (imageView == null) {
                    return;
                }
                final Object ZYk = dlz.ZYk();
                if (ZYk instanceof Drawable) {
                    ofl.oJ((Runnable) new so("load_draw_img") { // from class: com.bytedance.sdk.openadsdk.core.kkU.oJ.ZYk.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (Build.VERSION.SDK_INT >= 28 && b.a(ZYk)) {
                                c.a(ZYk).start();
                            }
                            imageView.setImageDrawable((Drawable) ZYk);
                        }
                    });
                } else if (ZYk instanceof byte[]) {
                    if (dlz.Pfn()) {
                        if (Build.VERSION.SDK_INT > 30) {
                            this.ZYk.oJ(imageView, (byte[]) ZYk, this.tB, this.ex);
                        } else {
                            this.ZYk.oJ((byte[]) ZYk, imageView);
                        }
                    } else if (this.ZYk.oJ((byte[]) ZYk)) {
                        this.ZYk.oJ(imageView, (byte[]) ZYk, this.tB, this.ex);
                    } else {
                        final Bitmap oJ = new com.bytedance.sdk.component.Pfn.ex.tB.ZYk.ZYk(this.tB, this.ex, imageView.getScaleType(), Bitmap.Config.RGB_565, this.tB, this.ex).oJ((byte[]) ZYk);
                        if (oJ != null) {
                            ofl.oJ((Runnable) new so("load_static_img") { // from class: com.bytedance.sdk.openadsdk.core.kkU.oJ.ZYk.2
                                @Override // java.lang.Runnable
                                public void run() {
                                    imageView.setImageBitmap(oJ);
                                }
                            });
                        }
                    }
                } else if (ZYk instanceof Bitmap) {
                    ofl.oJ((Runnable) new so("ug_load_bitmap") { // from class: com.bytedance.sdk.openadsdk.core.kkU.oJ.ZYk.3
                        @Override // java.lang.Runnable
                        public void run() {
                            imageView.setImageBitmap((Bitmap) ZYk);
                        }
                    });
                }
            } catch (Throwable th2) {
                QSm.tB("ImageLoaderProvider", th2.getMessage());
            }
        }
    }

    /* renamed from: com.bytedance.sdk.openadsdk.core.kkU.oJ$oJ  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public interface InterfaceC0221oJ {
        void oJ(Drawable drawable);
    }

    private void ZYk(final ImageView imageView, byte[] bArr, int i10, int i11) {
        final Bitmap oJ = new com.bytedance.sdk.component.Pfn.ex.tB.ZYk.ZYk(i10, i11, imageView.getScaleType(), Bitmap.Config.ARGB_4444, i10, i11).oJ(bArr);
        if (oJ != null) {
            ofl.oJ((Runnable) new so("loadStaticImage") { // from class: com.bytedance.sdk.openadsdk.core.kkU.oJ.2
                @Override // java.lang.Runnable
                public void run() {
                    imageView.setImageBitmap(oJ);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Drawable ZYk(byte[] bArr) {
        FileOutputStream fileOutputStream;
        ImageDecoder.Source createSource;
        Drawable decodeDrawable;
        try {
            boolean tB = com.bytedance.sdk.openadsdk.multipro.ZYk.tB();
            File oJ = cFZ.oJ(si.oJ(), tB, tB ? "UGEN_GIF_AD_CACHE/" : "/UGEN_GIF_CACHE/", "TT_UGEN_GIF_FILE");
            fileOutputStream = new FileOutputStream(oJ);
            try {
                fileOutputStream.write(bArr, 0, bArr.length);
                if (Build.VERSION.SDK_INT >= 28) {
                    createSource = ImageDecoder.createSource(oJ);
                    decodeDrawable = ImageDecoder.decodeDrawable(createSource);
                    try {
                        fileOutputStream.close();
                    } catch (Throwable unused) {
                    }
                    return decodeDrawable;
                }
                BitmapDrawable bitmapDrawable = new BitmapDrawable(si.oJ().getResources(), BitmapFactory.decodeByteArray(bArr, 0, bArr.length));
                try {
                    fileOutputStream.close();
                } catch (Throwable unused2) {
                }
                return bitmapDrawable;
            } catch (Throwable th2) {
                th = th2;
                try {
                    QSm.oJ("ImageLoaderProvider", "GifView  getSourceByFile fail : ", th);
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (Throwable unused3) {
                        }
                    }
                    return null;
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
            fileOutputStream = null;
        }
    }

    @Override // com.bytedance.adsdk.ugeno.oJ
    public void oJ(com.bytedance.adsdk.ugeno.core.dLZ dlz, String str, ImageView imageView, int i10, int i11, oJ.InterfaceC0148oJ interfaceC0148oJ) {
        String oJ = tB.oJ(str);
        kkU tB = com.bytedance.sdk.openadsdk.jFA.ex.oJ(oJ).tB(1);
        oJ(dlz, tB, oJ);
        tB.oJ(new ZYk(imageView, this, i10, i11), 4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ(final ImageView imageView, byte[] bArr, int i10, int i11) {
        ImageDecoder.Source createSource;
        final Drawable decodeDrawable;
        ByteBuffer wrap = ByteBuffer.wrap(bArr);
        if (Build.VERSION.SDK_INT >= 28) {
            createSource = ImageDecoder.createSource(wrap);
            try {
                decodeDrawable = ImageDecoder.decodeDrawable(createSource);
                if (decodeDrawable != null) {
                    ofl.oJ((Runnable) new so("loadAnimatedDrawable") { // from class: com.bytedance.sdk.openadsdk.core.kkU.oJ.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (b.a(decodeDrawable)) {
                                c.a(decodeDrawable).start();
                            }
                            imageView.setImageDrawable(decodeDrawable);
                        }
                    });
                    return;
                }
                return;
            } catch (IOException e10) {
                QSm.tB("ImageLoaderProvider", e10.getMessage());
                return;
            }
        }
        ZYk(imageView, bArr, i10, i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ(byte[] bArr, final ImageView imageView) {
        try {
            oJ(bArr, new InterfaceC0221oJ() { // from class: com.bytedance.sdk.openadsdk.core.kkU.oJ.3
                @Override // com.bytedance.sdk.openadsdk.core.kkU.oJ.InterfaceC0221oJ
                public void oJ(final Drawable drawable) {
                    ofl.oJ(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.kkU.oJ.3.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (Build.VERSION.SDK_INT >= 28 && b.a(drawable)) {
                                c.a(drawable).start();
                            }
                            imageView.setImageDrawable(drawable);
                        }
                    });
                }
            });
        } catch (Exception e10) {
            QSm.tB("ImageLoaderProvider", e10.getMessage());
        }
    }

    private void oJ(final byte[] bArr, final InterfaceC0221oJ interfaceC0221oJ) {
        ofl.ZYk(new so("pag_animation_drawable") { // from class: com.bytedance.sdk.openadsdk.core.kkU.oJ.4
            @Override // java.lang.Runnable
            public void run() {
                Drawable ZYk2 = oJ.this.ZYk(bArr);
                InterfaceC0221oJ interfaceC0221oJ2 = interfaceC0221oJ;
                if (interfaceC0221oJ2 != null) {
                    interfaceC0221oJ2.oJ(ZYk2);
                }
            }
        });
    }

    public void ZYk(com.bytedance.adsdk.ugeno.core.dLZ dlz, String str, final oJ.InterfaceC0148oJ interfaceC0148oJ) {
        kkU tB = com.bytedance.sdk.openadsdk.jFA.ex.oJ(str).tB(2);
        oJ(dlz, tB, str);
        tB.oJ(new eZI() { // from class: com.bytedance.sdk.openadsdk.core.kkU.oJ.5
            @Override // com.bytedance.sdk.component.Pfn.eZI
            public void oJ(dLZ dlz2) {
                if (dlz2 == null) {
                    interfaceC0148oJ.oJ(null);
                } else if (interfaceC0148oJ != null) {
                    Object ZYk2 = dlz2.ZYk();
                    if (ZYk2 instanceof Bitmap) {
                        interfaceC0148oJ.oJ((Bitmap) ZYk2);
                        return;
                    }
                    if (dlz2.ZYk() instanceof byte[]) {
                        try {
                            interfaceC0148oJ.oJ(BitmapFactory.decodeByteArray((byte[]) dlz2.ZYk(), 0, ((byte[]) dlz2.ZYk()).length));
                            return;
                        } catch (Throwable unused) {
                        }
                    }
                    interfaceC0148oJ.oJ(null);
                }
            }

            @Override // com.bytedance.sdk.component.Pfn.eZI
            public void oJ(int i10, String str2, Throwable th2) {
                oJ.InterfaceC0148oJ interfaceC0148oJ2 = interfaceC0148oJ;
                if (interfaceC0148oJ2 != null) {
                    interfaceC0148oJ2.oJ(null);
                }
            }
        }, 4);
    }

    public boolean oJ(byte[] bArr) {
        return com.bytedance.sdk.component.utils.dLZ.oJ(bArr, 0);
    }

    @Override // com.bytedance.adsdk.ugeno.oJ
    public void oJ(com.bytedance.adsdk.ugeno.core.dLZ dlz, String str, oJ.InterfaceC0148oJ interfaceC0148oJ) {
        ZYk(dlz, tB.oJ(str), interfaceC0148oJ);
    }

    private void oJ(com.bytedance.adsdk.ugeno.core.dLZ dlz, @NonNull kkU kku, String str) {
        Map<String, Object> ZYk2;
        if (dlz == null || (ZYk2 = dlz.ZYk()) == null) {
            return;
        }
        Object obj = ZYk2.get("image_info");
        if (obj instanceof Map) {
            kku.oJ((String) ((Map) obj).get(str));
        }
        String str2 = (String) ZYk2.get(TextureRenderKeys.KEY_IS_BMF_VQSCORE_CACHE_DIR);
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        kku.ZYk(str2);
    }
}
