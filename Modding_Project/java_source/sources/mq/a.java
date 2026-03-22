package mq;

import android.graphics.Bitmap;
import android.graphics.Rect;
import android.os.Build;
import android.os.Handler;
import android.view.PixelCopy;
import android.view.View;
import android.view.Window;
import io.bidmachine.util.ViewUtilsKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata
/* loaded from: classes8.dex */
public final class a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f62620a = new a();

    @Metadata
    /* renamed from: mq.a$a  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public static final class PixelCopy$OnPixelCopyFinishedListenerC0875a implements PixelCopy.OnPixelCopyFinishedListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ b f62621a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Bitmap f62622b;

        PixelCopy$OnPixelCopyFinishedListenerC0875a(b bVar, Bitmap bitmap) {
            this.f62621a = bVar;
            this.f62622b = bitmap;
        }

        @Override // android.view.PixelCopy.OnPixelCopyFinishedListener
        public void onPixelCopyFinished(int i10) {
            if (i10 == 0) {
                this.f62621a.a(this.f62622b);
            } else {
                this.f62621a.a();
            }
        }
    }

    private a() {
    }

    public final void a(@NotNull View view, @NotNull Handler handler, @NotNull b screenshotListener) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(handler, "handler");
        Intrinsics.checkNotNullParameter(screenshotListener, "screenshotListener");
        if (Build.VERSION.SDK_INT < 26) {
            screenshotListener.a();
            return;
        }
        Window g10 = ViewUtilsKt.g(view);
        if (g10 == null) {
            screenshotListener.a();
            return;
        }
        Rect h10 = ViewUtilsKt.h(view);
        try {
            Bitmap createBitmap = Bitmap.createBitmap(h10.width(), h10.height(), Bitmap.Config.ARGB_8888);
            Intrinsics.checkNotNullExpressionValue(createBitmap, "{\n            Bitmap.cre…nfig.ARGB_8888)\n        }");
            try {
                PixelCopy.request(g10, h10, createBitmap, new PixelCopy$OnPixelCopyFinishedListenerC0875a(screenshotListener, createBitmap), handler);
            } catch (Throwable unused) {
                screenshotListener.a();
            }
        } catch (Throwable unused2) {
            screenshotListener.a();
        }
    }
}
