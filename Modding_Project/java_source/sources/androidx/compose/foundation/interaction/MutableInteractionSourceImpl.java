package androidx.compose.foundation.interaction;

import androidx.compose.runtime.Stable;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.channels.BufferOverflow;
import kt.d;
import kt.g;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: InteractionSource.kt */
@Stable
@Metadata
/* loaded from: classes.dex */
final class MutableInteractionSourceImpl implements MutableInteractionSource {
    @NotNull
    private final d<Interaction> interactions = g.b(0, 16, BufferOverflow.DROP_OLDEST, 1, null);

    @Override // androidx.compose.foundation.interaction.MutableInteractionSource
    @Nullable
    public Object emit(@NotNull Interaction interaction, @NotNull c<? super Unit> cVar) {
        Object emit = getInteractions().emit(interaction, cVar);
        if (emit == a.f()) {
            return emit;
        }
        return Unit.f60915a;
    }

    @Override // androidx.compose.foundation.interaction.MutableInteractionSource
    public boolean tryEmit(@NotNull Interaction interaction) {
        Intrinsics.checkNotNullParameter(interaction, "interaction");
        return getInteractions().g(interaction);
    }

    @Override // androidx.compose.foundation.interaction.InteractionSource
    @NotNull
    public d<Interaction> getInteractions() {
        return this.interactions;
    }
}
