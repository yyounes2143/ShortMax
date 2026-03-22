package androidx.compose.ui.graphics;

import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: CanvasUtils.android.kt */
@RequiresApi(29)
@Metadata
/* loaded from: classes.dex */
final class CanvasZHelper {
    @NotNull
    public static final CanvasZHelper INSTANCE = new CanvasZHelper();

    private CanvasZHelper() {
    }

    @DoNotInline
    public final void enableZ(@NotNull android.graphics.Canvas canvas, boolean z10) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        if (z10) {
            canvas.enableZ();
        } else {
            canvas.disableZ();
        }
    }
}
