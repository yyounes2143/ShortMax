package com.unity3d.services.core.domain.task;

import com.unity3d.services.core.configuration.IModuleConfiguration;
import com.unity3d.services.core.domain.task.InitializeStateError;
import com.unity3d.services.core.log.DeviceLog;
import gt.g0;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: InitializeStateError.kt */
@Metadata
@d(c = "com.unity3d.services.core.domain.task.InitializeStateError$doWork$2", f = "InitializeStateError.kt", l = {}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nInitializeStateError.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InitializeStateError.kt\ncom/unity3d/services/core/domain/task/InitializeStateError$doWork$2\n+ 2 CoroutineExtensions.kt\ncom/unity3d/services/core/extensions/CoroutineExtensionsKt\n+ 3 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,48:1\n24#2:49\n14#2,2:50\n16#2,10:53\n26#2:64\n26#3:52\n1#4:63\n*S KotlinDebug\n*F\n+ 1 InitializeStateError.kt\ncom/unity3d/services/core/domain/task/InitializeStateError$doWork$2\n*L\n28#1:49\n28#1:50,2\n28#1:53,10\n28#1:64\n31#1:52\n28#1:63\n*E\n"})
/* loaded from: classes7.dex */
public final class InitializeStateError$doWork$2 extends SuspendLambda implements Function2<g0, c<? super Result<? extends Unit>>, Object> {
    final /* synthetic */ InitializeStateError.Params $params;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InitializeStateError$doWork$2(InitializeStateError.Params params, c<? super InitializeStateError$doWork$2> cVar) {
        super(2, cVar);
        this.$params = params;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new InitializeStateError$doWork$2(this.$params, cVar);
    }

    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object invoke2(@NotNull g0 g0Var, @Nullable c<? super Result<Unit>> cVar) {
        return ((InitializeStateError$doWork$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object d10;
        a.f();
        if (this.label == 0) {
            f.b(obj);
            InitializeStateError.Params params = this.$params;
            try {
                Result.a aVar = Result.f60901b;
                DeviceLog.error("Unity Ads init: halting init in " + params.getErrorState().getMetricName() + ": " + params.getException().getMessage());
                Class[] moduleConfigurationList = params.getConfig().getModuleConfigurationList();
                if (moduleConfigurationList == null) {
                    moduleConfigurationList = new Class[0];
                }
                for (Class cls : moduleConfigurationList) {
                    IModuleConfiguration moduleConfiguration = params.getConfig().getModuleConfiguration(cls);
                    if (moduleConfiguration != null) {
                        kotlin.coroutines.jvm.internal.a.a(moduleConfiguration.initErrorState(params.getConfig(), params.getErrorState(), params.getException().getMessage()));
                    }
                }
                d10 = Result.d(Unit.f60915a);
            } catch (CancellationException e10) {
                throw e10;
            } catch (Throwable th2) {
                Result.a aVar2 = Result.f60901b;
                d10 = Result.d(f.a(th2));
            }
            if (Result.j(d10)) {
                d10 = Result.d(d10);
            } else {
                Throwable g10 = Result.g(d10);
                if (g10 != null) {
                    d10 = Result.d(f.a(g10));
                }
            }
            return Result.b(d10);
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(g0 g0Var, c<? super Result<? extends Unit>> cVar) {
        return invoke2(g0Var, (c<? super Result<Unit>>) cVar);
    }
}
