package com.applovin.impl.sdk.utils;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Point;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.os.StrictMode;
import android.webkit.URLUtil;
import android.widget.ImageView;
import com.applovin.impl.o0;
import com.applovin.impl.sdk.k;
import com.applovin.impl.sdk.o;
import com.applovin.sdk.AppLovinSdkUtils;
import java.io.InputStream;
import java.net.URL;
/* loaded from: classes2.dex */
public class ImageViewUtils {
    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(String str, final k kVar, final ImageView imageView, Uri uri) {
        try {
            InputStream openStream = new URL(str).openStream();
            final Bitmap decodeStream = BitmapFactory.decodeStream(openStream);
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.utils.e
                @Override // java.lang.Runnable
                public final void run() {
                    ImageViewUtils.a(k.this, decodeStream, imageView);
                }
            });
            if (openStream != null) {
                openStream.close();
            }
        } catch (Throwable th2) {
            kVar.O();
            if (o.a()) {
                o O = kVar.O();
                O.a("ImageViewUtils", "Failed to fetch image: " + uri, th2);
            }
            kVar.O().a("ImageViewUtils", th2);
            kVar.E().a("ImageViewUtils", "setImageUri", th2);
        }
    }

    public static void setAndDownscaleBitmap(final ImageView imageView, final Uri uri) {
        if (uri != null && imageView != null) {
            k kVar = k.D0;
            if (kVar == null) {
                o.h("ImageViewUtils", "SDK has not been initialized");
            } else {
                kVar.r0().c().execute(new Runnable() { // from class: com.applovin.impl.sdk.utils.c
                    @Override // java.lang.Runnable
                    public final void run() {
                        ImageViewUtils.a(uri, imageView);
                    }
                });
            }
        }
    }

    public static void setAndDownscaleImageUri(final ImageView imageView, final Uri uri) {
        if (uri != null && imageView != null) {
            if (imageView.getHeight() > 0 && imageView.getWidth() > 0) {
                setAndDownscaleBitmap(imageView, uri);
            } else {
                imageView.post(new Runnable() { // from class: com.applovin.impl.sdk.utils.f
                    @Override // java.lang.Runnable
                    public final void run() {
                        ImageViewUtils.setAndDownscaleBitmap(imageView, uri);
                    }
                });
            }
        }
    }

    public static void setImageUri(final ImageView imageView, final Uri uri, final k kVar) {
        if (imageView != null && uri != null) {
            final String uri2 = uri.toString();
            if (!URLUtil.isFileUrl(uri2) && !URLUtil.isContentUrl(uri2)) {
                if (kVar == null) {
                    return;
                }
                kVar.O();
                if (o.a()) {
                    o O = kVar.O();
                    O.a("ImageViewUtils", "Fetching image: " + uri);
                }
                kVar.r0().c().execute(new Runnable() { // from class: com.applovin.impl.sdk.utils.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        ImageViewUtils.a(uri2, kVar, imageView, uri);
                    }
                });
                return;
            }
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.utils.b
                @Override // java.lang.Runnable
                public final void run() {
                    ImageViewUtils.b(imageView, uri);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(ImageView imageView, Uri uri) {
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        imageView.setImageURI(uri);
        StrictMode.setThreadPolicy(allowThreadDiskReads);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(k kVar, Bitmap bitmap, ImageView imageView) {
        kVar.O();
        if (o.a()) {
            kVar.O().a("ImageViewUtils", "Image fetched");
        }
        imageView.setImageDrawable(new BitmapDrawable(k.o().getResources(), bitmap));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(Uri uri, final ImageView imageView) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        int i10 = 1;
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(uri.getPath(), options);
        int height = imageView.getHeight();
        int width = imageView.getWidth();
        if (height <= 0 || width <= 0) {
            Point b10 = o0.b(imageView.getContext());
            height = Math.min(b10.x, b10.y);
            width = height;
        }
        int i11 = options.outHeight;
        int i12 = options.outWidth;
        if (i11 > height || i12 > width) {
            while (true) {
                int i13 = i10 * 2;
                if (i11 / i13 < height && i12 / i13 < width) {
                    break;
                }
                i10 = i13;
            }
        }
        options.inSampleSize = i10;
        options.inJustDecodeBounds = false;
        k.D0.O();
        if (o.a()) {
            o O = k.D0.O();
            O.a("ImageViewUtils", "Loading image: " + uri.getLastPathSegment() + "...");
        }
        final Bitmap decodeFile = BitmapFactory.decodeFile(uri.getPath(), options);
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.utils.d
            @Override // java.lang.Runnable
            public final void run() {
                imageView.setImageBitmap(decodeFile);
            }
        });
    }
}
