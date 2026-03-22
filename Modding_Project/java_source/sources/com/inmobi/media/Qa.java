package com.inmobi.media;

import android.graphics.Bitmap;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.PixelCopy;
import android.view.Window;
import com.inmobi.commons.core.configs.AdConfig;
import com.inmobi.media.Qa;
import com.ss.ttvideoengine.ITTVideoEngineEventSource;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
/* loaded from: classes5.dex */
public final class Qa extends V1 {

    /* renamed from: b  reason: collision with root package name */
    public final Window f24044b;

    /* renamed from: c  reason: collision with root package name */
    public final AtomicBoolean f24045c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Qa(Window window, AdConfig.AdQualityConfig config) {
        super(config);
        Intrinsics.checkNotNullParameter(window, "window");
        Intrinsics.checkNotNullParameter(config, "config");
        this.f24044b = window;
        this.f24045c = new AtomicBoolean(false);
    }

    @Override // com.inmobi.media.InterfaceC3105p0
    /* renamed from: b */
    public final Bitmap a() {
        long currentTimeMillis = System.currentTimeMillis();
        int width = this.f24044b.getDecorView().getWidth();
        int height = this.f24044b.getDecorView().getHeight();
        Bitmap createBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        Intrinsics.checkNotNullExpressionValue(createBitmap, "createBitmap(...)");
        Rect rect = new Rect(0, 0, width, height);
        final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        int layerType = this.f24044b.getDecorView().getLayerType();
        this.f24044b.getDecorView().setLayerType(0, null);
        PixelCopy.request(this.f24044b, rect, createBitmap, new PixelCopy.OnPixelCopyFinishedListener() { // from class: ub.q1
            @Override // android.view.PixelCopy.OnPixelCopyFinishedListener
            public final void onPixelCopyFinished(int i10) {
                Qa.a(Ref.BooleanRef.this, this, i10);
            }
        }, new Handler(Looper.getMainLooper()));
        while (!this.f24045c.get()) {
            Thread.sleep(500L);
        }
        String message = "success - " + booleanRef.element + " - time - " + (System.currentTimeMillis() - currentTimeMillis);
        Intrinsics.checkNotNullParameter("PixelCopyScreenShotProcess", ITTVideoEngineEventSource.KEY_TAG);
        Intrinsics.checkNotNullParameter(message, "message");
        Log.i("PixelCopyScreenShotProcess", message);
        this.f24044b.getDecorView().setLayerType(layerType, null);
        if (!booleanRef.element) {
            return null;
        }
        Intrinsics.checkNotNullParameter("PixelCopyScreenShotProcess", ITTVideoEngineEventSource.KEY_TAG);
        Intrinsics.checkNotNullParameter("success", "message");
        Log.i("PixelCopyScreenShotProcess", "success");
        return a(createBitmap);
    }

    public static final void a(Ref.BooleanRef isSuccess, Qa this$0, int i10) {
        Intrinsics.checkNotNullParameter(isSuccess, "$isSuccess");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (i10 == 0) {
            isSuccess.element = true;
        }
        String message = "capture result - success - " + isSuccess.element;
        Intrinsics.checkNotNullParameter("PixelCopyScreenShotProcess", ITTVideoEngineEventSource.KEY_TAG);
        Intrinsics.checkNotNullParameter(message, "message");
        Log.i("PixelCopyScreenShotProcess", message);
        this$0.f24045c.set(true);
    }
}
