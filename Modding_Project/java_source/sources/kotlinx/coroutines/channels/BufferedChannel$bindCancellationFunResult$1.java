package kotlinx.coroutines.channels;

import at.n;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.FunctionReferenceImpl;
/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: Add missing generic type declarations: [E] */
/* compiled from: BufferedChannel.kt */
@Metadata
/* loaded from: classes8.dex */
public /* synthetic */ class BufferedChannel$bindCancellationFunResult$1<E> extends FunctionReferenceImpl implements n<Throwable, a<? extends E>, CoroutineContext, Unit> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public BufferedChannel$bindCancellationFunResult$1(Object obj) {
        super(3, obj, BufferedChannel.class, "onCancellationChannelResultImplDoNotCall", "onCancellationChannelResultImplDoNotCall-5_sEAP8(Ljava/lang/Throwable;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)V", 0);
    }

    public final void b(Throwable th2, Object obj, CoroutineContext coroutineContext) {
        ((BufferedChannel) this.receiver).F0(th2, obj, coroutineContext);
    }

    @Override // at.n
    public /* bridge */ /* synthetic */ Unit invoke(Throwable th2, Object obj, CoroutineContext coroutineContext) {
        b(th2, ((a) obj).k(), coroutineContext);
        return Unit.f60915a;
    }
}
