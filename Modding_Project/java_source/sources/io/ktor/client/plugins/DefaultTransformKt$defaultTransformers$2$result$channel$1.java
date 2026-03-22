package io.ktor.client.plugins;

import io.ktor.client.statement.HttpResponseKt;
import io.ktor.utils.io.ByteReadChannel;
import io.ktor.utils.io.ByteReadChannelJVMKt;
import io.ktor.utils.io.o;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DefaultTransform.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "io.ktor.client.plugins.DefaultTransformKt$defaultTransformers$2$result$channel$1", f = "DefaultTransform.kt", l = {100}, m = "invokeSuspend")
/* loaded from: classes8.dex */
final class DefaultTransformKt$defaultTransformers$2$result$channel$1 extends SuspendLambda implements Function2<o, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f58921h;

    /* renamed from: i  reason: collision with root package name */
    private /* synthetic */ Object f58922i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ Object f58923j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ tr.c f58924k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DefaultTransformKt$defaultTransformers$2$result$channel$1(Object obj, tr.c cVar, rs.c<? super DefaultTransformKt$defaultTransformers$2$result$channel$1> cVar2) {
        super(2, cVar2);
        this.f58923j = obj;
        this.f58924k = cVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final rs.c<Unit> create(@Nullable Object obj, @NotNull rs.c<?> cVar) {
        DefaultTransformKt$defaultTransformers$2$result$channel$1 defaultTransformKt$defaultTransformers$2$result$channel$1 = new DefaultTransformKt$defaultTransformers$2$result$channel$1(this.f58923j, this.f58924k, cVar);
        defaultTransformKt$defaultTransformers$2$result$channel$1.f58922i = obj;
        return defaultTransformKt$defaultTransformers$2$result$channel$1;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: i */
    public final Object invoke(@NotNull o oVar, @Nullable rs.c<? super Unit> cVar) {
        return ((DefaultTransformKt$defaultTransformers$2$result$channel$1) create(oVar, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f58921h;
        try {
            if (i10 != 0) {
                try {
                    if (i10 == 1) {
                        f.b(obj);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } catch (Throwable th2) {
                    HttpResponseKt.d(this.f58924k);
                    throw th2;
                }
            } else {
                f.b(obj);
                io.ktor.utils.io.e mo4948getChannel = ((o) this.f58922i).mo4948getChannel();
                this.f58921h = 1;
                if (ByteReadChannelJVMKt.b((ByteReadChannel) this.f58923j, mo4948getChannel, Long.MAX_VALUE, this) == f10) {
                    return f10;
                }
            }
            HttpResponseKt.d(this.f58924k);
            return Unit.f60915a;
        } catch (CancellationException e10) {
            i.d(this.f58924k, e10);
            throw e10;
        } catch (Throwable th3) {
            i.c(this.f58924k, "Receive failed", th3);
            throw th3;
        }
    }
}
