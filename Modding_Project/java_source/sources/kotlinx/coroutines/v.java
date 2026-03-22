package kotlinx.coroutines;

import gt.l1;
import gt.s0;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.sequences.Sequence;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: NonCancellable.kt */
@Metadata
/* loaded from: classes8.dex */
public final class v extends kotlin.coroutines.a implements r {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final v f61916a = new v();

    private v() {
        super(r.G8);
    }

    @Override // kotlinx.coroutines.r
    @ms.c
    @NotNull
    public gt.n attachChild(@NotNull gt.o oVar) {
        return l1.f52546a;
    }

    @Override // kotlinx.coroutines.r
    @ms.c
    public void cancel(@Nullable CancellationException cancellationException) {
    }

    @Override // kotlinx.coroutines.r
    @ms.c
    @NotNull
    public CancellationException getCancellationException() {
        throw new IllegalStateException("This job is always active");
    }

    @Override // kotlinx.coroutines.r
    @NotNull
    public Sequence<r> getChildren() {
        return kotlin.sequences.j.g();
    }

    @Override // kotlinx.coroutines.r
    @NotNull
    public pt.b getOnJoin() {
        throw new UnsupportedOperationException("This job is always active");
    }

    @Override // kotlinx.coroutines.r
    @Nullable
    public r getParent() {
        return null;
    }

    @Override // kotlinx.coroutines.r
    @ms.c
    @NotNull
    public s0 invokeOnCompletion(@NotNull Function1<? super Throwable, Unit> function1) {
        return l1.f52546a;
    }

    @Override // kotlinx.coroutines.r
    public boolean isActive() {
        return true;
    }

    @Override // kotlinx.coroutines.r
    public boolean isCancelled() {
        return false;
    }

    @Override // kotlinx.coroutines.r
    public boolean isCompleted() {
        return false;
    }

    @Override // kotlinx.coroutines.r
    @ms.c
    @Nullable
    public Object join(@NotNull rs.c<? super Unit> cVar) {
        throw new UnsupportedOperationException("This job is always active");
    }

    @Override // kotlinx.coroutines.r
    @ms.c
    @NotNull
    public r plus(@NotNull r rVar) {
        return r.a.h(this, rVar);
    }

    @Override // kotlinx.coroutines.r
    @ms.c
    public boolean start() {
        return false;
    }

    @NotNull
    public String toString() {
        return "NonCancellable";
    }

    @Override // kotlinx.coroutines.r
    @ms.c
    public /* synthetic */ boolean cancel(Throwable th2) {
        return false;
    }

    @Override // kotlinx.coroutines.r
    @ms.c
    @NotNull
    public s0 invokeOnCompletion(boolean z10, boolean z11, @NotNull Function1<? super Throwable, Unit> function1) {
        return l1.f52546a;
    }

    @Override // kotlinx.coroutines.r
    @ms.c
    public /* synthetic */ void cancel() {
        cancel((CancellationException) null);
    }
}
