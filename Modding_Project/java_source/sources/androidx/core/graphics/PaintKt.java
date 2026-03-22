package androidx.core.graphics;

import android.graphics.Paint;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Paint.kt */
@Metadata
/* loaded from: classes.dex */
public final class PaintKt {
    public static final boolean setBlendMode(@NotNull Paint paint, @Nullable BlendModeCompat blendModeCompat) {
        return PaintCompat.setBlendMode(paint, blendModeCompat);
    }
}
