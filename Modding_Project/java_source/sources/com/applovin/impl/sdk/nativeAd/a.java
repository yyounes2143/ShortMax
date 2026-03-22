package com.applovin.impl.sdk.nativeAd;

import android.graphics.BitmapFactory;
import android.net.Uri;
import android.text.TextUtils;
import com.applovin.impl.e2;
import com.applovin.impl.g5;
import com.applovin.impl.sdk.k;
import com.applovin.impl.sdk.o;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Collections;
import java.util.UUID;
/* loaded from: classes2.dex */
public class a extends g5 {

    /* renamed from: g  reason: collision with root package name */
    private final AppLovinNativeAdImpl f9822g;

    /* renamed from: h  reason: collision with root package name */
    private final InterfaceC0120a f9823h;

    /* renamed from: i  reason: collision with root package name */
    private final String f9824i;

    /* renamed from: com.applovin.impl.sdk.nativeAd.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public interface InterfaceC0120a {
        void a(AppLovinNativeAdImpl appLovinNativeAdImpl);
    }

    public a(AppLovinNativeAdImpl appLovinNativeAdImpl, k kVar, InterfaceC0120a interfaceC0120a) {
        super("TaskCacheNativeAd", kVar);
        this.f9824i = UUID.randomUUID().toString();
        this.f9822g = appLovinNativeAdImpl;
        this.f9823h = interfaceC0120a;
    }

    private float a(Uri uri) {
        FileInputStream fileInputStream;
        int i10;
        int i11;
        File file = new File(uri.getPath());
        if (!file.exists()) {
            return -1.0f;
        }
        try {
            fileInputStream = new FileInputStream(file);
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeStream(fileInputStream, null, options);
            i10 = options.outWidth;
            i11 = options.outHeight;
        } catch (IOException e10) {
            if (o.a()) {
                this.f7962c.a(this.f7961b, "Failed to calculate aspect ratio", e10);
            }
        }
        if (i10 > 0 && i11 > 0) {
            float f10 = i10 / i11;
            fileInputStream.close();
            return f10;
        }
        fileInputStream.close();
        return -1.0f;
    }

    private Uri b(Uri uri) {
        if (uri == null) {
            return null;
        }
        if (o.a()) {
            o oVar = this.f7962c;
            String str = this.f7961b;
            oVar.a(str, "Attempting to cache resource: " + uri);
        }
        String a10 = this.f7960a.H().a(a(), uri.toString(), this.f9822g.getCachePrefix(), Collections.emptyList(), false, false, 1, this.f9824i, e2.a(this.f9822g));
        if (TextUtils.isEmpty(a10)) {
            if (o.a()) {
                o oVar2 = this.f7962c;
                String str2 = this.f7961b;
                oVar2.b(str2, "Unable to cache resource for uri: " + uri);
            }
            return null;
        }
        File a11 = this.f7960a.H().a(a10, a());
        if (a11 == null) {
            if (o.a()) {
                o oVar3 = this.f7962c;
                String str3 = this.f7961b;
                oVar3.b(str3, "Unable to retrieve File from cached image filename = " + a10);
            }
            return null;
        }
        Uri fromFile = Uri.fromFile(a11);
        if (fromFile == null) {
            if (o.a()) {
                this.f7962c.b(this.f7961b, "Unable to extract Uri from image file");
            }
            return null;
        }
        return fromFile;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (o.a()) {
            o oVar = this.f7962c;
            String str = this.f7961b;
            oVar.a(str, "Begin caching ad #" + this.f9822g.getAdIdNumber() + "...");
        }
        Uri b10 = b(this.f9822g.getIconUri());
        if (b10 != null) {
            this.f9822g.setIconUri(b10);
        }
        Uri b11 = b(this.f9822g.getMainImageUri());
        if (b11 != null) {
            this.f9822g.setMainImageUri(b11);
            float a10 = a(b11);
            if (a10 > 0.0f) {
                this.f9822g.setMainImageAspectRatio(a10);
            }
        }
        Uri b12 = b(this.f9822g.getPrivacyIconUri());
        if (b12 != null) {
            this.f9822g.setPrivacyIconUri(b12);
        }
        if (o.a()) {
            o oVar2 = this.f7962c;
            String str2 = this.f7961b;
            oVar2.a(str2, "Finished caching ad #" + this.f9822g.getAdIdNumber());
        }
        this.f9823h.a(this.f9822g);
    }
}
