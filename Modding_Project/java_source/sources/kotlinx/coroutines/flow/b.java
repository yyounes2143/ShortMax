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
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Builders.kt */
@Metadata
/* loaded from: classes8.dex */
public class b<T> extends ChannelFlow<T> {
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final Function2<jt.h<? super T>, rs.c<? super Unit>, Object> f61696d;

    public /* synthetic */ b(Function2 function2, CoroutineContext coroutineContext, int i10, BufferOverflow bufferOverflow, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(function2, (i11 & 2) != 0 ? EmptyCoroutineContext.f61040a : coroutineContext, (i11 & 4) != 0 ? -2 : i10, (i11 & 8) != 0 ? BufferOverflow.SUSPEND : bufferOverflow);
    }

    static /* synthetic */ <T> Object n(b<T> bVar, jt.h<? super T> hVar, rs.c<? super Unit> cVar) {
        Object invoke = ((b) bVar).f61696d.invoke(hVar, cVar);
        if (invoke == kotlin.coroutines.intrinsics.a.f()) {
            return invoke;
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    @Nullable
    public Object f(@NotNull jt.h<? super T> hVar, @NotNull rs.c<? super Unit> cVar) {
        return n(this, hVar, cVar);
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    @NotNull
    protected ChannelFlow<T> i(@NotNull CoroutineContext coroutineContext, int i10, @NotNull BufferOverflow bufferOverflow) {
        return new b(this.f61696d, coroutineContext, i10, bufferOverflow);
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    @NotNull
    public String toString() {
        return "block[" + this.f61696d + "] -> " + super.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public b(@NotNull Function2<? super jt.h<? super T>, ? super rs.c<? super Unit>, ? extends Object> function2, @NotNull CoroutineContext coroutineContext, int i10, @NotNull BufferOverflow bufferOverflow) {
        super(coroutineContext, i10, bufferOverflow);
        this.f61696d = function2;
    }
}
