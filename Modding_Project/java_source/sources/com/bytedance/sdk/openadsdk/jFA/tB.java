package com.bytedance.sdk.openadsdk.jFA;

import ai.turbolink.sdk.campaign.b;
import ai.turbolink.sdk.campaign.c;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.widget.ImageView;
import androidx.annotation.Nullable;
import com.bytedance.sdk.component.Pfn.dLZ;
import com.bytedance.sdk.component.Pfn.eZI;
import com.bytedance.sdk.openadsdk.core.WcQ;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.utils.ofl;
import java.lang.ref.WeakReference;
/* loaded from: classes3.dex */
public class tB implements eZI {
    private final String ZYk = "ImageLoaderToViewWrapper";
    private final WeakReference<ImageView> oJ;
    private eZI tB;

    private tB(ImageView imageView, eZI ezi) {
        this.oJ = new WeakReference<>(imageView);
        this.tB = ezi;
    }

    public static eZI oJ(cY cYVar, String str, ImageView imageView) {
        return new ZYk(cYVar, str, new tB(imageView));
    }

    public static eZI oJ(cY cYVar, String str, ImageView imageView, eZI ezi) {
        return new ZYk(cYVar, str, new tB(imageView, ezi));
    }

    private tB(ImageView imageView) {
        this.oJ = new WeakReference<>(imageView);
    }

    @Override // com.bytedance.sdk.component.Pfn.eZI
    public void oJ(dLZ dlz) {
        final ImageView imageView = this.oJ.get();
        if (imageView != null) {
            final Object ZYk = dlz.ZYk();
            if (ZYk instanceof Bitmap) {
                if (ofl.ba()) {
                    imageView.setImageBitmap((Bitmap) ZYk);
                } else {
                    WcQ.tB().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.jFA.tB.1
                        @Override // java.lang.Runnable
                        public void run() {
                            imageView.setImageBitmap((Bitmap) ZYk);
                        }
                    });
                }
                eZI ezi = this.tB;
                if (ezi != null) {
                    ezi.oJ(dlz);
                }
            } else if (ZYk instanceof Drawable) {
                if (ofl.ba()) {
                    oJ(ZYk, imageView);
                } else {
                    WcQ.tB().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.jFA.tB.2
                        @Override // java.lang.Runnable
                        public void run() {
                            tB.this.oJ(ZYk, imageView);
                        }
                    });
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ(Object obj, ImageView imageView) {
        if (Build.VERSION.SDK_INT >= 28 && b.a(obj)) {
            c.a(obj).start();
        }
        imageView.setImageDrawable((Drawable) obj);
    }

    @Override // com.bytedance.sdk.component.Pfn.eZI
    public void oJ(int i10, String str, @Nullable Throwable th2) {
        eZI ezi = this.tB;
        if (ezi != null) {
            ezi.oJ(i10, str, th2);
        }
    }
}
