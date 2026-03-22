package androidx.compose.foundation.interaction;

import androidx.compose.runtime.Stable;
import kotlin.Metadata;
import kt.b;
import org.jetbrains.annotations.NotNull;
/* compiled from: InteractionSource.kt */
@Stable
@Metadata
/* loaded from: classes.dex */
public interface InteractionSource {
    @NotNull
    b<Interaction> getInteractions();
}
