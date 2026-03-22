package kotlinx.coroutines;

import gt.f1;
import gt.k1;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: JobSupport.kt */
@Metadata
/* loaded from: classes8.dex */
final class n implements f1 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final k1 f61828a;

    public n(@NotNull k1 k1Var) {
        this.f61828a = k1Var;
    }

    @Override // gt.f1
    @NotNull
    public k1 b() {
        return this.f61828a;
    }

    @Override // gt.f1
    public boolean isActive() {
        return false;
    }

    @NotNull
    public String toString() {
        return super.toString();
    }
}
