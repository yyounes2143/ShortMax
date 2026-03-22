package com.bytedance.adsdk.ZYk.ZYk;

import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.Base64;
import android.view.View;
import com.bytedance.adsdk.ZYk.ba.ba;
import com.bytedance.adsdk.ZYk.ex;
import com.bytedance.adsdk.ZYk.kkU;
import java.io.IOException;
import java.util.Map;
/* loaded from: classes3.dex */
public class ZYk {
    private static final Object oJ = new Object();
    private final Map<String, kkU> Pfn;
    private final Context ZYk;
    private ex ex;
    private final String tB;

    public ZYk(Drawable.Callback callback, String str, ex exVar, Map<String, kkU> map) {
        if (!TextUtils.isEmpty(str) && str.charAt(str.length() - 1) != '/') {
            this.tB = str + '/';
        } else {
            this.tB = str;
        }
        this.Pfn = map;
        oJ(exVar);
        if (!(callback instanceof View)) {
            this.ZYk = null;
        } else {
            this.ZYk = ((View) callback).getContext().getApplicationContext();
        }
    }

    private Bitmap ZYk(String str, Bitmap bitmap) {
        synchronized (oJ) {
            this.Pfn.get(str).oJ(bitmap);
        }
        return bitmap;
    }

    public void oJ(ex exVar) {
        this.ex = exVar;
    }

    public Bitmap oJ(String str, Bitmap bitmap) {
        if (bitmap == null) {
            kkU kku = this.Pfn.get(str);
            Bitmap dLZ = kku.dLZ();
            kku.oJ(null);
            return dLZ;
        }
        Bitmap dLZ2 = this.Pfn.get(str).dLZ();
        ZYk(str, bitmap);
        return dLZ2;
    }

    public Bitmap oJ(String str) {
        kkU kku = this.Pfn.get(str);
        if (kku == null) {
            return null;
        }
        Bitmap dLZ = kku.dLZ();
        if (dLZ != null) {
            return dLZ;
        }
        ex exVar = this.ex;
        if (exVar != null) {
            return exVar.oJ(kku);
        }
        Context context = this.ZYk;
        if (context == null) {
            return null;
        }
        String jFA = kku.jFA();
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inScaled = true;
        options.inDensity = 160;
        if (jFA.startsWith("data:") && jFA.indexOf("base64,") > 0) {
            try {
                byte[] decode = Base64.decode(jFA.substring(jFA.indexOf(44) + 1), 0);
                return ZYk(str, BitmapFactory.decodeByteArray(decode, 0, decode.length, options));
            } catch (IllegalArgumentException unused) {
                return null;
            }
        }
        try {
            if (!TextUtils.isEmpty(this.tB)) {
                AssetManager assets = context.getAssets();
                try {
                    Bitmap decodeStream = BitmapFactory.decodeStream(assets.open(this.tB + jFA), null, options);
                    if (decodeStream == null) {
                        return null;
                    }
                    return ZYk(str, ba.oJ(decodeStream, kku.oJ(), kku.ZYk()));
                } catch (IllegalArgumentException unused2) {
                    return null;
                }
            }
            throw new IllegalStateException("You must set an images folder before loading an image. Set it with LottieComposition#setImagesFolder or LottieDrawable#setImagesFolder");
        } catch (IOException unused3) {
            return null;
        }
    }

    public boolean oJ(Context context) {
        return (context == null && this.ZYk == null) || this.ZYk.equals(context);
    }
}
