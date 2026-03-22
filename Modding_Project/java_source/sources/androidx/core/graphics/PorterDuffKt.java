package androidx.core.graphics;

import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: PorterDuff.kt */
@Metadata
/* loaded from: classes.dex */
public final class PorterDuffKt {
    @NotNull
    public static final PorterDuffColorFilter toColorFilter(@NotNull PorterDuff.Mode mode, int i10) {
        return new PorterDuffColorFilter(i10, mode);
    }

    @NotNull
    public static final PorterDuffXfermode toXfermode(@NotNull PorterDuff.Mode mode) {
        return new PorterDuffXfermode(mode);
    }
}
