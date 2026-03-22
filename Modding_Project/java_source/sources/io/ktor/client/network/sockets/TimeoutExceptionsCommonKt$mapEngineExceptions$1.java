package io.ktor.client.network.sockets;

import io.ktor.utils.io.ByteReadChannel;
import io.ktor.utils.io.ByteReadChannelKt;
import io.ktor.utils.io.b;
import io.ktor.utils.io.o;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TimeoutExceptionsCommon.kt */
@Metadata
@d(c = "io.ktor.client.network.sockets.TimeoutExceptionsCommonKt$mapEngineExceptions$1", f = "TimeoutExceptionsCommon.kt", l = {39}, m = "invokeSuspend")
/* loaded from: classes8.dex */
public final class TimeoutExceptionsCommonKt$mapEngineExceptions$1 extends SuspendLambda implements Function2<o, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f58875h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ ByteReadChannel f58876i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ b f58877j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TimeoutExceptionsCommonKt$mapEngineExceptions$1(ByteReadChannel byteReadChannel, b bVar, c<? super TimeoutExceptionsCommonKt$mapEngineExceptions$1> cVar) {
        super(2, cVar);
        this.f58876i = byteReadChannel;
        this.f58877j = bVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new TimeoutExceptionsCommonKt$mapEngineExceptions$1(this.f58876i, this.f58877j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: i */
    public final Object invoke(@NotNull o oVar, @Nullable c<? super Unit> cVar) {
        return ((TimeoutExceptionsCommonKt$mapEngineExceptions$1) create(oVar, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object f10 = a.f();
        int i10 = this.f58875h;
        try {
            if (i10 != 0) {
                if (i10 == 1) {
                    f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                f.b(obj);
                ByteReadChannel byteReadChannel = this.f58876i;
                b bVar = this.f58877j;
                this.f58875h = 1;
                if (ByteReadChannelKt.c(byteReadChannel, bVar, 0L, this, 2, null) == f10) {
                    return f10;
                }
            }
        } catch (Throwable th2) {
            this.f58876i.cancel(th2);
        }
        return Unit.f60915a;
    }
}
