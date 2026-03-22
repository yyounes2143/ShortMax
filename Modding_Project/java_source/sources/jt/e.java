package jt;

import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.JobCancellationException;
import kotlinx.coroutines.JobSupport;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ChannelCoroutine.kt */
@Metadata
@SourceDebugExtension({"SMAP\nChannelCoroutine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChannelCoroutine.kt\nkotlinx/coroutines/channels/ChannelCoroutine\n+ 2 JobSupport.kt\nkotlinx/coroutines/JobSupport\n*L\n1#1,39:1\n732#2,3:40\n732#2,3:43\n732#2,3:46\n*S KotlinDebug\n*F\n+ 1 ChannelCoroutine.kt\nkotlinx/coroutines/channels/ChannelCoroutine\n*L\n17#1:40,3\n23#1:43,3\n30#1:46,3\n*E\n"})
/* loaded from: classes8.dex */
public class e<E> extends kotlinx.coroutines.a<Unit> implements d<E> {
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final d<E> f60554d;

    public e(@NotNull CoroutineContext coroutineContext, @NotNull d<E> dVar, boolean z10, boolean z11) {
        super(coroutineContext, z10, z11);
        this.f60554d = dVar;
    }

    @Override // kotlinx.coroutines.JobSupport
    public void M(@NotNull Throwable th2) {
        CancellationException J0 = JobSupport.J0(this, th2, null, 1, null);
        this.f60554d.cancel(J0);
        K(J0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NotNull
    public final d<E> U0() {
        return this.f60554d;
    }

    @Override // kotlinx.coroutines.channels.h
    public boolean a(@Nullable Throwable th2) {
        return this.f60554d.a(th2);
    }

    @Override // kotlinx.coroutines.channels.h
    public void c(@NotNull Function1<? super Throwable, Unit> function1) {
        this.f60554d.c(function1);
    }

    @Override // kotlinx.coroutines.JobSupport, kotlinx.coroutines.r
    public final void cancel(@Nullable CancellationException cancellationException) {
        if (isCancelled()) {
            return;
        }
        if (cancellationException == null) {
            cancellationException = new JobCancellationException(Q(), null, this);
        }
        M(cancellationException);
    }

    @Override // kotlinx.coroutines.channels.h
    @NotNull
    public Object h(E e10) {
        return this.f60554d.h(e10);
    }

    @Override // jt.i
    @NotNull
    public f<E> iterator() {
        return this.f60554d.iterator();
    }

    @Override // jt.i
    @NotNull
    public pt.d<kotlinx.coroutines.channels.a<E>> j() {
        return this.f60554d.j();
    }

    @Override // jt.i
    @NotNull
    public Object l() {
        return this.f60554d.l();
    }

    @Override // jt.i
    @Nullable
    public Object n(@NotNull rs.c<? super kotlinx.coroutines.channels.a<? extends E>> cVar) {
        Object n10 = this.f60554d.n(cVar);
        kotlin.coroutines.intrinsics.a.f();
        return n10;
    }

    @Override // kotlinx.coroutines.channels.h
    public boolean o() {
        return this.f60554d.o();
    }

    @Override // kotlinx.coroutines.channels.h
    @Nullable
    public Object p(E e10, @NotNull rs.c<? super Unit> cVar) {
        return this.f60554d.p(e10, cVar);
    }

    @Override // jt.i
    @Nullable
    public Object w(@NotNull rs.c<? super E> cVar) {
        return this.f60554d.w(cVar);
    }

    @Override // kotlinx.coroutines.JobSupport, kotlinx.coroutines.r
    @ms.c
    public /* synthetic */ void cancel() {
        M(new JobCancellationException(Q(), null, this));
    }

    @Override // kotlinx.coroutines.JobSupport, kotlinx.coroutines.r
    @ms.c
    public final /* synthetic */ boolean cancel(Throwable th2) {
        M(new JobCancellationException(Q(), null, this));
        return true;
    }
}
