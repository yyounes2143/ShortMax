package io.ktor.utils.io;

import gt.s0;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.Sequence;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Coroutines.kt */
@Metadata
/* loaded from: classes8.dex */
public final class g implements l, n, r {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final r f59511a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final b f59512b;

    public g(@NotNull r delegate, @NotNull b channel) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        Intrinsics.checkNotNullParameter(channel, "channel");
        this.f59511a = delegate;
        this.f59512b = channel;
    }

    @Override // io.ktor.utils.io.l
    @NotNull
    /* renamed from: a */
    public b mo4947getChannel() {
        return this.f59512b;
    }

    @Override // kotlinx.coroutines.r
    @NotNull
    public gt.n attachChild(@NotNull gt.o child) {
        Intrinsics.checkNotNullParameter(child, "child");
        return this.f59511a.attachChild(child);
    }

    @Override // kotlinx.coroutines.r
    @ms.c
    public /* synthetic */ void cancel() {
        this.f59511a.cancel();
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    public <R> R fold(R r10, @NotNull Function2<? super R, ? super CoroutineContext.Element, ? extends R> operation) {
        Intrinsics.checkNotNullParameter(operation, "operation");
        return (R) this.f59511a.fold(r10, operation);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    @Nullable
    public <E extends CoroutineContext.Element> E get(@NotNull CoroutineContext.b<E> key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return (E) this.f59511a.get(key);
    }

    @Override // kotlinx.coroutines.r
    @NotNull
    public CancellationException getCancellationException() {
        return this.f59511a.getCancellationException();
    }

    @Override // kotlinx.coroutines.r
    @NotNull
    public Sequence<r> getChildren() {
        return this.f59511a.getChildren();
    }

    @Override // kotlin.coroutines.CoroutineContext.Element
    @NotNull
    public CoroutineContext.b<?> getKey() {
        return this.f59511a.getKey();
    }

    @Override // kotlinx.coroutines.r
    @NotNull
    public pt.b getOnJoin() {
        return this.f59511a.getOnJoin();
    }

    @Override // kotlinx.coroutines.r
    @Nullable
    public r getParent() {
        return this.f59511a.getParent();
    }

    @Override // kotlinx.coroutines.r
    @NotNull
    public s0 invokeOnCompletion(@NotNull Function1<? super Throwable, Unit> handler) {
        Intrinsics.checkNotNullParameter(handler, "handler");
        return this.f59511a.invokeOnCompletion(handler);
    }

    @Override // kotlinx.coroutines.r
    public boolean isActive() {
        return this.f59511a.isActive();
    }

    @Override // kotlinx.coroutines.r
    public boolean isCancelled() {
        return this.f59511a.isCancelled();
    }

    @Override // kotlinx.coroutines.r
    public boolean isCompleted() {
        return this.f59511a.isCompleted();
    }

    @Override // kotlinx.coroutines.r
    @Nullable
    public Object join(@NotNull rs.c<? super Unit> cVar) {
        return this.f59511a.join(cVar);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    @NotNull
    public CoroutineContext minusKey(@NotNull CoroutineContext.b<?> key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return this.f59511a.minusKey(key);
    }

    @Override // kotlin.coroutines.CoroutineContext
    @NotNull
    public CoroutineContext plus(@NotNull CoroutineContext context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return this.f59511a.plus(context);
    }

    @Override // kotlinx.coroutines.r
    public boolean start() {
        return this.f59511a.start();
    }

    @NotNull
    public String toString() {
        return "ChannelJob[" + this.f59511a + ']';
    }

    @Override // kotlinx.coroutines.r
    public void cancel(@Nullable CancellationException cancellationException) {
        this.f59511a.cancel(cancellationException);
    }

    @Override // kotlinx.coroutines.r
    @NotNull
    public s0 invokeOnCompletion(boolean z10, boolean z11, @NotNull Function1<? super Throwable, Unit> handler) {
        Intrinsics.checkNotNullParameter(handler, "handler");
        return this.f59511a.invokeOnCompletion(z10, z11, handler);
    }

    @Override // kotlinx.coroutines.r
    @ms.c
    @NotNull
    public r plus(@NotNull r other) {
        Intrinsics.checkNotNullParameter(other, "other");
        return this.f59511a.plus(other);
    }

    @Override // kotlinx.coroutines.r
    @ms.c
    public /* synthetic */ boolean cancel(Throwable th2) {
        return this.f59511a.cancel(th2);
    }
}
