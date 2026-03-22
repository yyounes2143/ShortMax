package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.internal.ChannelFlow;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Builders.kt */
@Metadata
/* loaded from: classes8.dex */
public final class CallbackFlowBuilder<T> extends b<T> {
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final Function2<jt.h<? super T>, rs.c<? super Unit>, Object> f61400e;

    public /* synthetic */ CallbackFlowBuilder(Function2 function2, CoroutineContext coroutineContext, int i10, BufferOverflow bufferOverflow, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(function2, (i11 & 2) != 0 ? EmptyCoroutineContext.f61040a : coroutineContext, (i11 & 4) != 0 ? -2 : i10, (i11 & 8) != 0 ? BufferOverflow.SUSPEND : bufferOverflow);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x004c  */
    @Override // kotlinx.coroutines.flow.b, kotlinx.coroutines.flow.internal.ChannelFlow
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object f(@org.jetbrains.annotations.NotNull jt.h<? super T> r5, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof kotlinx.coroutines.flow.CallbackFlowBuilder$collectTo$1
            if (r0 == 0) goto L13
            r0 = r6
            kotlinx.coroutines.flow.CallbackFlowBuilder$collectTo$1 r0 = (kotlinx.coroutines.flow.CallbackFlowBuilder$collectTo$1) r0
            int r1 = r0.f61404k
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f61404k = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.CallbackFlowBuilder$collectTo$1 r0 = new kotlinx.coroutines.flow.CallbackFlowBuilder$collectTo$1
            r0.<init>(r4, r6)
        L18:
            java.lang.Object r6 = r0.f61402i
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f61404k
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.lang.Object r5 = r0.f61401h
            jt.h r5 = (jt.h) r5
            kotlin.f.b(r6)
            goto L43
        L2d:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L35:
            kotlin.f.b(r6)
            r0.f61401h = r5
            r0.f61404k = r3
            java.lang.Object r6 = super.f(r5, r0)
            if (r6 != r1) goto L43
            return r1
        L43:
            boolean r5 = r5.o()
            if (r5 == 0) goto L4c
            kotlin.Unit r5 = kotlin.Unit.f60915a
            return r5
        L4c:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "'awaitClose { yourCallbackOrListener.cancel() }' should be used in the end of callbackFlow block.\nOtherwise, a callback/listener may leak in case of external cancellation.\nSee callbackFlow API documentation for the details."
            r5.<init>(r6)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.CallbackFlowBuilder.f(jt.h, rs.c):java.lang.Object");
    }

    @Override // kotlinx.coroutines.flow.b, kotlinx.coroutines.flow.internal.ChannelFlow
    @NotNull
    protected ChannelFlow<T> i(@NotNull CoroutineContext coroutineContext, int i10, @NotNull BufferOverflow bufferOverflow) {
        return new CallbackFlowBuilder(this.f61400e, coroutineContext, i10, bufferOverflow);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public CallbackFlowBuilder(@NotNull Function2<? super jt.h<? super T>, ? super rs.c<? super Unit>, ? extends Object> function2, @NotNull CoroutineContext coroutineContext, int i10, @NotNull BufferOverflow bufferOverflow) {
        super(function2, coroutineContext, i10, bufferOverflow);
        this.f61400e = function2;
    }
}
