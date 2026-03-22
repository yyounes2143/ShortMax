package ds;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: PipelinePhase.kt */
@Metadata
/* loaded from: classes8.dex */
public final class f {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f50582a;

    public f(@NotNull String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        this.f50582a = name;
    }

    @NotNull
    public final String a() {
        return this.f50582a;
    }

    @NotNull
    public String toString() {
        return "Phase('" + this.f50582a + "')";
    }
}
