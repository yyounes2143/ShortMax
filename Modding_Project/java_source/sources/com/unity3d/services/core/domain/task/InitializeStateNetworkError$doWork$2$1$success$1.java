package com.unity3d.services.core.domain.task;

import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.e;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: InitializeStateNetworkError.kt */
@Metadata
@d(c = "com.unity3d.services.core.domain.task.InitializeStateNetworkError$doWork$2$1$success$1", f = "InitializeStateNetworkError.kt", l = {82}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nInitializeStateNetworkError.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InitializeStateNetworkError.kt\ncom/unity3d/services/core/domain/task/InitializeStateNetworkError$doWork$2$1$success$1\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,81:1\n314#2,11:82\n*S KotlinDebug\n*F\n+ 1 InitializeStateNetworkError.kt\ncom/unity3d/services/core/domain/task/InitializeStateNetworkError$doWork$2$1$success$1\n*L\n40#1:82,11\n*E\n"})
/* loaded from: classes7.dex */
final class InitializeStateNetworkError$doWork$2$1$success$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
    Object L$0;
    int label;
    final /* synthetic */ InitializeStateNetworkError this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InitializeStateNetworkError$doWork$2$1$success$1(InitializeStateNetworkError initializeStateNetworkError, c<? super InitializeStateNetworkError$doWork$2$1$success$1> cVar) {
        super(2, cVar);
        this.this$0 = initializeStateNetworkError;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new InitializeStateNetworkError$doWork$2$1$success$1(this.this$0, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
        return ((InitializeStateNetworkError$doWork$2$1$success$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object f10 = a.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                InitializeStateNetworkError initializeStateNetworkError = (InitializeStateNetworkError) this.L$0;
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            InitializeStateNetworkError initializeStateNetworkError2 = this.this$0;
            this.L$0 = initializeStateNetworkError2;
            this.label = 1;
            e eVar = new e(a.c(this), 1);
            eVar.H();
            initializeStateNetworkError2.startListening(eVar);
            Object B = eVar.B();
            if (B == a.f()) {
                kotlin.coroutines.jvm.internal.f.c(this);
            }
            if (B == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
