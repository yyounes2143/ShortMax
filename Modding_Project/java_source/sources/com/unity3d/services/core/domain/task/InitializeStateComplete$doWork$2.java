package com.unity3d.services.core.domain.task;

import androidx.datastore.core.DataStore;
import com.unity3d.services.core.configuration.IModuleConfiguration;
import com.unity3d.services.core.domain.task.InitializeStateComplete;
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
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: InitializeStateComplete.kt */
@Metadata
@d(c = "com.unity3d.services.core.domain.task.InitializeStateComplete$doWork$2", f = "InitializeStateComplete.kt", l = {26}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nInitializeStateComplete.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InitializeStateComplete.kt\ncom/unity3d/services/core/domain/task/InitializeStateComplete$doWork$2\n+ 2 CoroutineExtensions.kt\ncom/unity3d/services/core/extensions/CoroutineExtensionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,32:1\n24#2:33\n14#2,12:34\n26#2:47\n1#3:46\n*S KotlinDebug\n*F\n+ 1 InitializeStateComplete.kt\ncom/unity3d/services/core/domain/task/InitializeStateComplete$doWork$2\n*L\n22#1:33\n22#1:34,12\n22#1:47\n22#1:46\n*E\n"})
/* loaded from: classes7.dex */
public final class InitializeStateComplete$doWork$2 extends SuspendLambda implements Function2<g0, c<? super Result<? extends Unit>>, Object> {
    final /* synthetic */ InitializeStateComplete.Params $params;
    int label;
    final /* synthetic */ InitializeStateComplete this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InitializeStateComplete$doWork$2(InitializeStateComplete.Params params, InitializeStateComplete initializeStateComplete, c<? super InitializeStateComplete$doWork$2> cVar) {
        super(2, cVar);
        this.$params = params;
        this.this$0 = initializeStateComplete;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new InitializeStateComplete$doWork$2(this.$params, this.this$0, cVar);
    }

    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object invoke2(@NotNull g0 g0Var, @Nullable c<? super Result<Unit>> cVar) {
        return ((InitializeStateComplete$doWork$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object d10;
        DataStore dataStore;
        Object f10 = a.f();
        int i10 = this.label;
        try {
            if (i10 != 0) {
                if (i10 == 1) {
                    f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                f.b(obj);
                InitializeStateComplete.Params params = this.$params;
                InitializeStateComplete initializeStateComplete = this.this$0;
                Result.a aVar = Result.f60901b;
                Class[] moduleConfigurationList = params.getConfig().getModuleConfigurationList();
                Intrinsics.checkNotNullExpressionValue(moduleConfigurationList, "params.config.moduleConfigurationList");
                for (Class cls : moduleConfigurationList) {
                    IModuleConfiguration moduleConfiguration = params.getConfig().getModuleConfiguration(cls);
                    if (moduleConfiguration != null) {
                        kotlin.coroutines.jvm.internal.a.a(moduleConfiguration.initCompleteState(params.getConfig()));
                    }
                }
                dataStore = initializeStateComplete.dataStore;
                InitializeStateComplete$doWork$2$1$1 initializeStateComplete$doWork$2$1$1 = new InitializeStateComplete$doWork$2$1$1(null);
                this.label = 1;
                if (dataStore.updateData(initializeStateComplete$doWork$2$1$1, this) == f10) {
                    return f10;
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

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(g0 g0Var, c<? super Result<? extends Unit>> cVar) {
        return invoke2(g0Var, (c<? super Result<Unit>>) cVar);
    }
}
