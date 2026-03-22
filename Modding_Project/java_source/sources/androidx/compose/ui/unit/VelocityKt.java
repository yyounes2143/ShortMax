package androidx.compose.ui.unit;

import androidx.compose.runtime.Stable;
import kotlin.Metadata;
/* compiled from: Velocity.kt */
@Metadata
/* loaded from: classes.dex */
public final class VelocityKt {
    @Stable
    public static final long Velocity(float f10, float f11) {
        return Velocity.m4268constructorimpl((Float.floatToIntBits(f11) & 4294967295L) | (Float.floatToIntBits(f10) << 32));
    }
}
