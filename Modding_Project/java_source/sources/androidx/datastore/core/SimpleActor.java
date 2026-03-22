package androidx.datastore.core;

import gt.g0;
import jt.d;
import jt.g;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.channels.ClosedSendChannelException;
import kotlinx.coroutines.channels.a;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: SimpleActor.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSimpleActor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SimpleActor.kt\nandroidx/datastore/core/SimpleActor\n+ 2 Channel.kt\nkotlinx/coroutines/channels/ChannelKt\n*L\n1#1,127:1\n548#2,5:128\n*S KotlinDebug\n*F\n+ 1 SimpleActor.kt\nandroidx/datastore/core/SimpleActor\n*L\n104#1:128,5\n*E\n"})
/* loaded from: classes2.dex */
public final class SimpleActor<T> {
    @NotNull
    private final Function2<T, c<? super Unit>, Object> consumeMessage;
    @NotNull
    private final d<T> messageQueue;
    @NotNull
    private final AtomicInt remainingMessages;
    @NotNull
    private final g0 scope;

    /* JADX WARN: Multi-variable type inference failed */
    public SimpleActor(@NotNull g0 scope, @NotNull final Function1<? super Throwable, Unit> onComplete, @NotNull final Function2<? super T, ? super Throwable, Unit> onUndeliveredElement, @NotNull Function2<? super T, ? super c<? super Unit>, ? extends Object> consumeMessage) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(onComplete, "onComplete");
        Intrinsics.checkNotNullParameter(onUndeliveredElement, "onUndeliveredElement");
        Intrinsics.checkNotNullParameter(consumeMessage, "consumeMessage");
        this.scope = scope;
        this.consumeMessage = consumeMessage;
        this.messageQueue = g.b(Integer.MAX_VALUE, null, null, 6, null);
        this.remainingMessages = new AtomicInt(0);
        r rVar = (r) scope.getCoroutineContext().get(r.G8);
        if (rVar != null) {
            rVar.invokeOnCompletion(new Function1<Throwable, Unit>() { // from class: androidx.datastore.core.SimpleActor.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Throwable th2) {
                    invoke2(th2);
                    return Unit.f60915a;
                }

                /* JADX WARN: Multi-variable type inference failed */
                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(@Nullable Throwable th2) {
                    Unit unit;
                    onComplete.invoke(th2);
                    ((SimpleActor) this).messageQueue.a(th2);
                    do {
                        Object f10 = kotlinx.coroutines.channels.a.f(((SimpleActor) this).messageQueue.l());
                        if (f10 != null) {
                            onUndeliveredElement.invoke(f10, th2);
                            unit = Unit.f60915a;
                            continue;
                        } else {
                            unit = null;
                            continue;
                        }
                    } while (unit != null);
                }
            });
        }
    }

    public final void offer(T t10) {
        Object h10 = this.messageQueue.h(t10);
        if (h10 instanceof a.C0855a) {
            Throwable e10 = kotlinx.coroutines.channels.a.e(h10);
            if (e10 == null) {
                throw new ClosedSendChannelException("Channel was closed normally");
            }
        } else if (kotlinx.coroutines.channels.a.i(h10)) {
            if (this.remainingMessages.getAndIncrement() == 0) {
                gt.g.d(this.scope, null, null, new SimpleActor$offer$2(this, null), 3, null);
            }
        } else {
            throw new IllegalStateException("Check failed.");
        }
    }
}
