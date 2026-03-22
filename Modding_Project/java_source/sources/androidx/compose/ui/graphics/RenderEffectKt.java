package androidx.compose.ui.graphics;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.geometry.OffsetKt;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: RenderEffect.kt */
@Metadata
/* loaded from: classes.dex */
public final class RenderEffectKt {
    @Stable
    @NotNull
    /* renamed from: BlurEffect-3YTHUZs  reason: not valid java name */
    public static final BlurEffect m2110BlurEffect3YTHUZs(float f10, float f11, int i10) {
        return new BlurEffect(null, f10, f11, i10, null);
    }

    /* renamed from: BlurEffect-3YTHUZs$default  reason: not valid java name */
    public static /* synthetic */ BlurEffect m2111BlurEffect3YTHUZs$default(float f10, float f11, int i10, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            i10 = TileMode.Companion.m2166getClamp3opZhB0();
        }
        return m2110BlurEffect3YTHUZs(f10, f11, i10);
    }

    @Stable
    @NotNull
    public static final OffsetEffect OffsetEffect(float f10, float f11) {
        return new OffsetEffect(null, OffsetKt.Offset(f10, f11), null);
    }
}
