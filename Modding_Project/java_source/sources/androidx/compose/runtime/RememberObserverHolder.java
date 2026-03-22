package androidx.compose.runtime;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Composer.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class RememberObserverHolder {
    public static final int $stable = 8;
    @Nullable
    private Anchor after;
    @NotNull
    private RememberObserver wrapped;

    public RememberObserverHolder(@NotNull RememberObserver rememberObserver, @Nullable Anchor anchor) {
        this.wrapped = rememberObserver;
        this.after = anchor;
    }

    @Nullable
    public final Anchor getAfter() {
        return this.after;
    }

    @NotNull
    public final RememberObserver getWrapped() {
        return this.wrapped;
    }

    public final void setAfter(@Nullable Anchor anchor) {
        this.after = anchor;
    }

    public final void setWrapped(@NotNull RememberObserver rememberObserver) {
        this.wrapped = rememberObserver;
    }
}
