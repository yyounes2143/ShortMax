package ai.turbolink.sdk.request.assistance;

import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.DelayKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SDKVerify.kt */
@Metadata
@d(c = "ai.turbolink.sdk.request.assistance.SDKVerify$launchCheck$1", f = "SDKVerify.kt", l = {26}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class SDKVerify$launchCheck$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SDKVerify$launchCheck$1(c<? super SDKVerify$launchCheck$1> cVar) {
        super(2, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new SDKVerify$launchCheck$1(cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
        return ((SDKVerify$launchCheck$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object f10 = a.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            this.label = 1;
            if (DelayKt.b(3000L, this) == f10) {
                return f10;
            }
        }
        SDKVerify.INSTANCE.check();
        return Unit.f60915a;
    }
}
