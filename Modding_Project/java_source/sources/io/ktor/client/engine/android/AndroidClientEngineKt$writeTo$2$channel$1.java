package io.ktor.client.engine.android;

import io.ktor.utils.io.e;
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
import xr.b;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AndroidClientEngine.kt */
@Metadata
@d(c = "io.ktor.client.engine.android.AndroidClientEngineKt$writeTo$2$channel$1", f = "AndroidClientEngine.kt", l = {120}, m = "invokeSuspend")
/* loaded from: classes8.dex */
public final class AndroidClientEngineKt$writeTo$2$channel$1 extends SuspendLambda implements Function2<o, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f58859h;

    /* renamed from: i  reason: collision with root package name */
    private /* synthetic */ Object f58860i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ b f58861j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidClientEngineKt$writeTo$2$channel$1(b bVar, c<? super AndroidClientEngineKt$writeTo$2$channel$1> cVar) {
        super(2, cVar);
        this.f58861j = bVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        AndroidClientEngineKt$writeTo$2$channel$1 androidClientEngineKt$writeTo$2$channel$1 = new AndroidClientEngineKt$writeTo$2$channel$1(this.f58861j, cVar);
        androidClientEngineKt$writeTo$2$channel$1.f58860i = obj;
        return androidClientEngineKt$writeTo$2$channel$1;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: i */
    public final Object invoke(@NotNull o oVar, @Nullable c<? super Unit> cVar) {
        return ((AndroidClientEngineKt$writeTo$2$channel$1) create(oVar, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object f10 = a.f();
        int i10 = this.f58859h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            e mo4948getChannel = ((o) this.f58860i).mo4948getChannel();
            this.f58859h = 1;
            if (((b.d) this.f58861j).d(mo4948getChannel, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
