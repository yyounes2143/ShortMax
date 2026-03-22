package kotlinx.coroutines.channels;

import gt.y1;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: BufferedChannel.kt */
@Metadata
/* loaded from: classes8.dex */
final class i {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final y1 f61388a;

    public i(@NotNull y1 y1Var) {
        this.f61388a = y1Var;
    }

    @NotNull
    public String toString() {
        return "WaiterEB(" + this.f61388a + ')';
    }
}
