package com.bytedance.sdk.openadsdk.utils;

import ai.turbolink.sdk.campaign.b;
import ai.turbolink.sdk.campaign.c;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.widget.ImageView;
import androidx.annotation.Nullable;
import java.lang.ref.WeakReference;
/* loaded from: classes3.dex */
public class Ln implements com.bytedance.sdk.component.Pfn.eZI {
    private final WeakReference<ImageView> oJ;

    public Ln(ImageView imageView) {
        this.oJ = new WeakReference<>(imageView);
    }

    @Override // com.bytedance.sdk.component.Pfn.eZI
    public void oJ(com.bytedance.sdk.component.Pfn.dLZ dlz) {
        ImageView imageView = this.oJ.get();
        if (imageView == null) {
            return;
        }
        try {
            Object ZYk = dlz.ZYk();
            if (ZYk instanceof Bitmap) {
                imageView.setImageBitmap((Bitmap) ZYk);
            } else if (ZYk instanceof Drawable) {
                if (Build.VERSION.SDK_INT >= 28 && b.a(ZYk)) {
                    c.a(ZYk).start();
                }
                imageView.setImageDrawable((Drawable) ZYk);
            } else {
                imageView.setVisibility(8);
            }
        } catch (Throwable unused) {
            imageView.setVisibility(8);
        }
    }

    @Override // com.bytedance.sdk.component.Pfn.eZI
    public void oJ(int i10, String str, @Nullable Throwable th2) {
        ImageView imageView = this.oJ.get();
        if (imageView == null) {
            return;
        }
        imageView.setVisibility(8);
    }
}
