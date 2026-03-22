package androidx.compose.foundation.gestures;

import androidx.compose.runtime.Stable;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: FlingBehavior.kt */
@Stable
@Metadata
/* loaded from: classes.dex */
public interface FlingBehavior {
    @Nullable
    Object performFling(@NotNull ScrollScope scrollScope, float f10, @NotNull c<? super Float> cVar);
}
