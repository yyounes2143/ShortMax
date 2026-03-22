package androidx.compose.foundation.interaction;

import androidx.compose.runtime.Stable;
import kotlin.Metadata;
import kotlin.Unit;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: InteractionSource.kt */
@Stable
@Metadata
/* loaded from: classes.dex */
public interface MutableInteractionSource extends InteractionSource {
    @Nullable
    Object emit(@NotNull Interaction interaction, @NotNull c<? super Unit> cVar);

    boolean tryEmit(@NotNull Interaction interaction);
}
