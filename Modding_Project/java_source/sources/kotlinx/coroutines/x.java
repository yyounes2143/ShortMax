package kotlinx.coroutines;

import gt.g1;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: JobSupport.kt */
@Metadata
/* loaded from: classes8.dex */
public final class x extends g1 {
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final rs.c<Unit> f61918e;

    /* JADX WARN: Multi-variable type inference failed */
    public x(@NotNull rs.c<? super Unit> cVar) {
        this.f61918e = cVar;
    }

    @Override // gt.g1
    public boolean u() {
        return false;
    }

    @Override // gt.g1
    public void v(@Nullable Throwable th2) {
        rs.c<Unit> cVar = this.f61918e;
        Result.a aVar = Result.f60901b;
        cVar.resumeWith(Result.d(Unit.f60915a));
    }
}
