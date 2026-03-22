package com.inmobi.media;

import android.graphics.Bitmap;
import android.util.Log;
import com.inmobi.commons.core.configs.AdConfig;
import com.ss.ttvideoengine.ITTVideoEngineEventSource;
import java.io.ByteArrayOutputStream;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public abstract class V1 implements InterfaceC3105p0 {

    /* renamed from: a  reason: collision with root package name */
    public final AdConfig.AdQualityConfig f24296a;

    public V1(AdConfig.AdQualityConfig adQualityConfig) {
        Intrinsics.checkNotNullParameter(adQualityConfig, "adQualityConfig");
        this.f24296a = adQualityConfig;
    }

    public final Bitmap a(Bitmap bitmap) {
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        double resizedPercentage = (this.f24296a.getResizedPercentage() / 100.0d) * bitmap.getWidth();
        double resizedPercentage2 = (this.f24296a.getResizedPercentage() / 100.0d) * bitmap.getHeight();
        Bitmap createScaledBitmap = Bitmap.createScaledBitmap(bitmap, (int) resizedPercentage, (int) resizedPercentage2, true);
        Intrinsics.checkNotNullExpressionValue(createScaledBitmap, "createScaledBitmap(...)");
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmap.compress(Bitmap.CompressFormat.JPEG, 100, byteArrayOutputStream);
        int length = byteArrayOutputStream.toByteArray().length;
        if (length <= this.f24296a.getMaxImageSize()) {
            return createScaledBitmap;
        }
        StringBuilder sb2 = new StringBuilder("resize - original - ");
        sb2.append(resizedPercentage);
        String str = "  - ";
        sb2.append("  - ");
        sb2.append(resizedPercentage2);
        sb2.append(" - size - ");
        sb2.append(length);
        String message = sb2.toString();
        Intrinsics.checkNotNullParameter("BaseScreenShotProcess", ITTVideoEngineEventSource.KEY_TAG);
        Intrinsics.checkNotNullParameter(message, "message");
        Log.i("BaseScreenShotProcess", message);
        while (length > this.f24296a.getMaxImageSize()) {
            String str2 = str;
            ByteArrayOutputStream byteArrayOutputStream2 = byteArrayOutputStream;
            double sqrt = Math.sqrt(this.f24296a.getMaxImageSize() / length);
            resizedPercentage *= sqrt;
            resizedPercentage2 *= sqrt;
            if (Math.floor(resizedPercentage) <= 0.0d && Math.floor(resizedPercentage2) <= 0.0d) {
                return createScaledBitmap;
            }
            createScaledBitmap = Bitmap.createScaledBitmap(createScaledBitmap, (int) Math.floor(resizedPercentage), (int) Math.floor(resizedPercentage2), true);
            Intrinsics.checkNotNullExpressionValue(createScaledBitmap, "createScaledBitmap(...)");
            byteArrayOutputStream2.reset();
            createScaledBitmap.compress(Bitmap.CompressFormat.JPEG, 100, byteArrayOutputStream2);
            length = byteArrayOutputStream2.toByteArray().length;
            str = str2;
            byteArrayOutputStream = byteArrayOutputStream2;
        }
        String message2 = "resize - " + resizedPercentage + str + resizedPercentage2 + " - " + byteArrayOutputStream.size();
        Intrinsics.checkNotNullParameter("BaseScreenShotProcess", ITTVideoEngineEventSource.KEY_TAG);
        Intrinsics.checkNotNullParameter(message2, "message");
        Log.i("BaseScreenShotProcess", message2);
        return createScaledBitmap;
    }
}
