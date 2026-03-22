package io.ktor.utils.io.jvm.javaio;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Blocking.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "io.ktor.utils.io.jvm.javaio.BlockingAdapter$block$1", f = "Blocking.kt", l = {186}, m = "invokeSuspend")
/* loaded from: classes8.dex */
public final class BlockingAdapter$block$1 extends SuspendLambda implements Function1<rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f59589h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ BlockingAdapter f59590i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BlockingAdapter$block$1(BlockingAdapter blockingAdapter, rs.c<? super BlockingAdapter$block$1> cVar) {
        super(1, cVar);
        this.f59590i = blockingAdapter;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final rs.c<Unit> create(@NotNull rs.c<?> cVar) {
        return new BlockingAdapter$block$1(this.f59590i, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f59589h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            BlockingAdapter blockingAdapter = this.f59590i;
            this.f59589h = 1;
            if (blockingAdapter.h(this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }

    @Override // kotlin.jvm.functions.Function1
    @Nullable
    public final Object invoke(@Nullable rs.c<? super Unit> cVar) {
        return ((BlockingAdapter$block$1) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
