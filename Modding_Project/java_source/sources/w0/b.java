package w0;

import android.app.Application;
import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.Base64;
import android.view.View;
import androidx.annotation.Nullable;
import com.airbnb.lottie.m0;
import d1.f;
import d1.p;
import java.io.IOException;
import java.util.Map;
/* compiled from: ImageAssetManager.java */
/* loaded from: classes2.dex */
public class b {

    /* renamed from: d  reason: collision with root package name */
    private static final Object f69601d = new Object();
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final Context f69602a;

    /* renamed from: b  reason: collision with root package name */
    private final String f69603b;

    /* renamed from: c  reason: collision with root package name */
    private final Map<String, m0> f69604c;

    public b(Drawable.Callback callback, String str, com.airbnb.lottie.b bVar, Map<String, m0> map) {
        if (!TextUtils.isEmpty(str) && str.charAt(str.length() - 1) != '/') {
            this.f69603b = str + '/';
        } else {
            this.f69603b = str;
        }
        this.f69604c = map;
        d(bVar);
        if (!(callback instanceof View)) {
            this.f69602a = null;
        } else {
            this.f69602a = ((View) callback).getContext().getApplicationContext();
        }
    }

    private Bitmap c(String str, @Nullable Bitmap bitmap) {
        synchronized (f69601d) {
            this.f69604c.get(str).g(bitmap);
        }
        return bitmap;
    }

    @Nullable
    public Bitmap a(String str) {
        m0 m0Var = this.f69604c.get(str);
        if (m0Var == null) {
            return null;
        }
        Bitmap b10 = m0Var.b();
        if (b10 != null) {
            return b10;
        }
        Context context = this.f69602a;
        if (context == null) {
            return null;
        }
        String c10 = m0Var.c();
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inScaled = true;
        options.inDensity = 160;
        if (c10.startsWith("data:") && c10.indexOf("base64,") > 0) {
            try {
                byte[] decode = Base64.decode(c10.substring(c10.indexOf(44) + 1), 0);
                try {
                    Bitmap decodeByteArray = BitmapFactory.decodeByteArray(decode, 0, decode.length, options);
                    if (decodeByteArray == null) {
                        f.c("Decoded image `" + str + "` is null.");
                        return null;
                    }
                    return c(str, p.m(decodeByteArray, m0Var.f(), m0Var.d()));
                } catch (IllegalArgumentException e10) {
                    f.d("Unable to decode image `" + str + "`.", e10);
                    return null;
                }
            } catch (IllegalArgumentException e11) {
                f.d("data URL did not have correct base64 format.", e11);
                return null;
            }
        }
        try {
            if (!TextUtils.isEmpty(this.f69603b)) {
                AssetManager assets = context.getAssets();
                try {
                    Bitmap decodeStream = BitmapFactory.decodeStream(assets.open(this.f69603b + c10), null, options);
                    if (decodeStream == null) {
                        f.c("Decoded image `" + str + "` is null.");
                        return null;
                    }
                    return c(str, p.m(decodeStream, m0Var.f(), m0Var.d()));
                } catch (IllegalArgumentException e12) {
                    f.d("Unable to decode image `" + str + "`.", e12);
                    return null;
                }
            }
            throw new IllegalStateException("You must set an images folder before loading an image. Set it with LottieComposition#setImagesFolder or LottieDrawable#setImagesFolder");
        } catch (IOException e13) {
            f.d("Unable to open asset.", e13);
            return null;
        }
    }

    public boolean b(Context context) {
        if (context == null) {
            if (this.f69602a != null) {
                return false;
            }
            return true;
        }
        if (this.f69602a instanceof Application) {
            context = context.getApplicationContext();
        }
        if (context != this.f69602a) {
            return false;
        }
        return true;
    }

    public void d(@Nullable com.airbnb.lottie.b bVar) {
    }
}
