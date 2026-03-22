package yq;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ImageUtils.kt */
@Metadata
/* loaded from: classes8.dex */
public final class e {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final e f71124a = new e();

    private e() {
    }

    @NotNull
    public static final BitmapFactory.Options a() {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inPreferredConfig = Bitmap.Config.RGB_565;
        return options;
    }

    @Nullable
    public static final Bitmap b(@NotNull byte[] byteImage, @NotNull BitmapFactory.Options bitmapFactoryOptions) {
        Intrinsics.checkNotNullParameter(byteImage, "byteImage");
        Intrinsics.checkNotNullParameter(bitmapFactoryOptions, "bitmapFactoryOptions");
        return f.c(byteImage, bitmapFactoryOptions);
    }

    @Nullable
    public static final Bitmap c(@NotNull File file, @NotNull BitmapFactory.Options bitmapFactoryOptions) {
        Intrinsics.checkNotNullParameter(file, "file");
        Intrinsics.checkNotNullParameter(bitmapFactoryOptions, "bitmapFactoryOptions");
        return f.f(file, bitmapFactoryOptions);
    }
}
