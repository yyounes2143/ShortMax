package androidx.compose.ui.graphics;

import android.graphics.Bitmap;
import android.os.Build;
import androidx.compose.ui.graphics.colorspace.ColorSpace;
import androidx.compose.ui.graphics.colorspace.ColorSpaces;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: AndroidImageBitmap.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class AndroidImageBitmap implements ImageBitmap {
    @NotNull
    private final Bitmap bitmap;

    public AndroidImageBitmap(@NotNull Bitmap bitmap) {
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        this.bitmap = bitmap;
    }

    @NotNull
    public final Bitmap getBitmap$ui_graphics_release() {
        return this.bitmap;
    }

    @Override // androidx.compose.ui.graphics.ImageBitmap
    @NotNull
    public ColorSpace getColorSpace() {
        if (Build.VERSION.SDK_INT >= 26) {
            Api26Bitmap api26Bitmap = Api26Bitmap.INSTANCE;
            return Api26Bitmap.composeColorSpace$ui_graphics_release(this.bitmap);
        }
        return ColorSpaces.INSTANCE.getSrgb();
    }

    @Override // androidx.compose.ui.graphics.ImageBitmap
    /* renamed from: getConfig-_sVssgQ  reason: not valid java name */
    public int mo1714getConfig_sVssgQ() {
        Bitmap.Config config = this.bitmap.getConfig();
        Intrinsics.checkNotNullExpressionValue(config, "bitmap.config");
        return AndroidImageBitmap_androidKt.toImageConfig(config);
    }

    @Override // androidx.compose.ui.graphics.ImageBitmap
    public boolean getHasAlpha() {
        return this.bitmap.hasAlpha();
    }

    @Override // androidx.compose.ui.graphics.ImageBitmap
    public int getHeight() {
        return this.bitmap.getHeight();
    }

    @Override // androidx.compose.ui.graphics.ImageBitmap
    public int getWidth() {
        return this.bitmap.getWidth();
    }

    @Override // androidx.compose.ui.graphics.ImageBitmap
    public void prepareToDraw() {
        this.bitmap.prepareToDraw();
    }

    @Override // androidx.compose.ui.graphics.ImageBitmap
    public void readPixels(@NotNull int[] buffer, int i10, int i11, int i12, int i13, int i14, int i15) {
        Bitmap.Config config;
        Intrinsics.checkNotNullParameter(buffer, "buffer");
        Bitmap asAndroidBitmap = AndroidImageBitmap_androidKt.asAndroidBitmap(this);
        boolean z10 = false;
        if (Build.VERSION.SDK_INT >= 26) {
            Bitmap.Config config2 = asAndroidBitmap.getConfig();
            config = Bitmap.Config.HARDWARE;
            if (config2 == config) {
                asAndroidBitmap = asAndroidBitmap.copy(Bitmap.Config.ARGB_8888, false);
                z10 = true;
            }
        }
        boolean z11 = z10;
        asAndroidBitmap.getPixels(buffer, i14, i15, i10, i11, i12, i13);
        if (z11) {
            asAndroidBitmap.recycle();
        }
    }
}
