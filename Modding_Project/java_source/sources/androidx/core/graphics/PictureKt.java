package androidx.core.graphics;

import android.graphics.Canvas;
import android.graphics.Picture;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.InlineMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: Picture.kt */
@Metadata
/* loaded from: classes.dex */
public final class PictureKt {
    @NotNull
    public static final Picture record(@NotNull Picture picture, int i10, int i11, @NotNull Function1<? super Canvas, Unit> function1) {
        Canvas beginRecording = picture.beginRecording(i10, i11);
        try {
            function1.invoke(beginRecording);
            return picture;
        } finally {
            InlineMarker.finallyStart(1);
            picture.endRecording();
            InlineMarker.finallyEnd(1);
        }
    }
}
