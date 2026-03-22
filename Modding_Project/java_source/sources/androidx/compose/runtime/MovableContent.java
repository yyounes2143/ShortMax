package androidx.compose.runtime;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.Metadata;
import kotlin.Unit;
import org.jetbrains.annotations.NotNull;
/* compiled from: Composer.kt */
@StabilityInferred(parameters = 2)
@InternalComposeApi
@Metadata
/* loaded from: classes.dex */
public final class MovableContent<P> {
    public static final int $stable = 0;
    @NotNull
    private final at.n<P, Composer, Integer, Unit> content;

    /* JADX WARN: Multi-variable type inference failed */
    public MovableContent(@NotNull at.n<? super P, ? super Composer, ? super Integer, Unit> nVar) {
        this.content = nVar;
    }

    @NotNull
    public final at.n<P, Composer, Integer, Unit> getContent() {
        return this.content;
    }
}
