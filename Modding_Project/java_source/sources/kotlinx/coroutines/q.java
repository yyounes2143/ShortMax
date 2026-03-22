package kotlinx.coroutines;

import gt.g1;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: JobSupport.kt */
@Metadata
/* loaded from: classes8.dex */
public final class q extends g1 {
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final Function1<Throwable, Unit> f61832e;

    /* JADX WARN: Multi-variable type inference failed */
    public q(@NotNull Function1<? super Throwable, Unit> function1) {
        this.f61832e = function1;
    }

    @Override // gt.g1
    public boolean u() {
        return false;
    }

    @Override // gt.g1
    public void v(@Nullable Throwable th2) {
        this.f61832e.invoke(th2);
    }
}
