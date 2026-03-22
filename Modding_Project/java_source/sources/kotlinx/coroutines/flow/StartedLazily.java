package kotlinx.coroutines.flow;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: SharingStarted.kt */
@Metadata
/* loaded from: classes8.dex */
final class StartedLazily implements m {
    @Override // kotlinx.coroutines.flow.m
    @NotNull
    public kt.b<SharingCommand> a(@NotNull kt.i<Integer> iVar) {
        return c.F(new StartedLazily$command$1(iVar, null));
    }

    @NotNull
    public String toString() {
        return "SharingStarted.Lazily";
    }
}
