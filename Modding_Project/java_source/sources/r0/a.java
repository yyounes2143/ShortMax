package r0;

import android.graphics.Bitmap;
import android.os.Build;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Bitmaps.kt */
@Metadata
/* loaded from: classes2.dex */
public final class a {
    public static final int a(@NotNull Bitmap bitmap) {
        if (!bitmap.isRecycled()) {
            try {
                return bitmap.getAllocationByteCount();
            } catch (Exception unused) {
                return b(bitmap.getConfig()) * bitmap.getWidth() * bitmap.getHeight();
            }
        }
        throw new IllegalStateException(("Cannot obtain size for recycled bitmap: " + bitmap + " [" + bitmap.getWidth() + " x " + bitmap.getHeight() + "] + " + bitmap.getConfig()).toString());
    }

    public static final int b(@Nullable Bitmap.Config config) {
        Bitmap.Config config2;
        if (config == Bitmap.Config.ALPHA_8) {
            return 1;
        }
        if (config == Bitmap.Config.RGB_565 || config == Bitmap.Config.ARGB_4444) {
            return 2;
        }
        if (Build.VERSION.SDK_INT >= 26) {
            config2 = Bitmap.Config.RGBA_F16;
            if (config == config2) {
                return 8;
            }
        }
        return 4;
    }

    @NotNull
    public static final Bitmap.Config c(@NotNull Bitmap bitmap) {
        Bitmap.Config config = bitmap.getConfig();
        if (config == null) {
            return Bitmap.Config.ARGB_8888;
        }
        return config;
    }

    public static final boolean d(@NotNull Bitmap.Config config) {
        Bitmap.Config config2;
        if (Build.VERSION.SDK_INT >= 26) {
            config2 = Bitmap.Config.HARDWARE;
            if (config == config2) {
                return true;
            }
        }
        return false;
    }

    @NotNull
    public static final Bitmap.Config e(@Nullable Bitmap.Config config) {
        if (config == null || d(config)) {
            return Bitmap.Config.ARGB_8888;
        }
        return config;
    }
}
