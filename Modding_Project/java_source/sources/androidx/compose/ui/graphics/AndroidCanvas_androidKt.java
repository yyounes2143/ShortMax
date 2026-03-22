package androidx.compose.ui.graphics;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: AndroidCanvas.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class AndroidCanvas_androidKt {
    @NotNull
    private static final android.graphics.Canvas EmptyCanvas = new android.graphics.Canvas();

    @NotNull
    public static final Canvas ActualCanvas(@NotNull ImageBitmap image) {
        Intrinsics.checkNotNullParameter(image, "image");
        AndroidCanvas androidCanvas = new AndroidCanvas();
        androidCanvas.setInternalCanvas(new android.graphics.Canvas(AndroidImageBitmap_androidKt.asAndroidBitmap(image)));
        return androidCanvas;
    }

    @NotNull
    public static final Canvas Canvas(@NotNull android.graphics.Canvas c10) {
        Intrinsics.checkNotNullParameter(c10, "c");
        AndroidCanvas androidCanvas = new AndroidCanvas();
        androidCanvas.setInternalCanvas(c10);
        return androidCanvas;
    }

    @NotNull
    public static final android.graphics.Canvas getNativeCanvas(@NotNull Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "<this>");
        return ((AndroidCanvas) canvas).getInternalCanvas();
    }
}
