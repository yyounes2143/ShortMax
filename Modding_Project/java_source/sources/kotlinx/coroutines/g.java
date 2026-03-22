package kotlinx.coroutines;

import gt.g1;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: JobSupport.kt */
@Metadata
/* loaded from: classes8.dex */
public final class g extends g1 implements gt.n {
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public final gt.o f61811e;

    public g(@NotNull gt.o oVar) {
        this.f61811e = oVar;
    }

    @Override // gt.n
    public boolean a(@NotNull Throwable th2) {
        return t().R(th2);
    }

    @Override // gt.n
    @NotNull
    public r getParent() {
        return t();
    }

    @Override // gt.g1
    public boolean u() {
        return true;
    }

    @Override // gt.g1
    public void v(@Nullable Throwable th2) {
        this.f61811e.q(t());
    }
}
