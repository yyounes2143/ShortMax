package com.inmobi.media;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.View;
import com.inmobi.commons.core.configs.AdConfig;
import com.ss.ttvideoengine.ITTVideoEngineEventSource;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class Qc extends V1 {

    /* renamed from: b  reason: collision with root package name */
    public final WeakReference f24047b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Qc(View adView, AdConfig.AdQualityConfig adQualityConfig) {
        super(adQualityConfig);
        Intrinsics.checkNotNullParameter(adView, "adView");
        Intrinsics.checkNotNullParameter(adQualityConfig, "adQualityConfig");
        this.f24047b = new WeakReference(adView);
    }

    @Override // com.inmobi.media.InterfaceC3105p0
    public final Object a() {
        long currentTimeMillis = System.currentTimeMillis();
        View adView = (View) this.f24047b.get();
        if (adView != null) {
            Intrinsics.checkNotNullParameter(adView, "adView");
            Bitmap createBitmap = Bitmap.createBitmap(adView.getMeasuredWidth(), adView.getMeasuredHeight(), Bitmap.Config.ARGB_8888);
            Intrinsics.checkNotNullExpressionValue(createBitmap, "createBitmap(...)");
            Canvas canvas = new Canvas(createBitmap);
            Drawable background = adView.getBackground();
            if (background != null) {
                background.draw(canvas);
            } else {
                canvas.drawColor(-1);
            }
            adView.draw(canvas);
            if (createBitmap != null) {
                String message = "success - time taken - " + (System.currentTimeMillis() - currentTimeMillis);
                Intrinsics.checkNotNullParameter("ScreenShotProcess", ITTVideoEngineEventSource.KEY_TAG);
                Intrinsics.checkNotNullParameter(message, "message");
                Log.i("ScreenShotProcess", message);
                return a(createBitmap);
            }
        } else {
            Intrinsics.checkNotNullParameter("ScreenShotProcess", ITTVideoEngineEventSource.KEY_TAG);
            Intrinsics.checkNotNullParameter("view reference lost. aborting...", "message");
            Log.i("ScreenShotProcess", "view reference lost. aborting...");
            String message2 = "fail - time taken - " + (System.currentTimeMillis() - currentTimeMillis);
            Intrinsics.checkNotNullParameter("ScreenShotProcess", ITTVideoEngineEventSource.KEY_TAG);
            Intrinsics.checkNotNullParameter(message2, "message");
            Log.i("ScreenShotProcess", message2);
        }
        return null;
    }
}
