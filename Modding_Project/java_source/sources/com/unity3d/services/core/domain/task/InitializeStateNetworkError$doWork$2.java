package com.unity3d.services.core.domain.task;

import com.unity3d.services.core.connectivity.ConnectivityMonitor;
import com.unity3d.services.core.domain.task.InitializeStateNetworkError;
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
import kotlinx.coroutines.TimeoutKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: InitializeStateNetworkError.kt */
@Metadata
@d(c = "com.unity3d.services.core.domain.task.InitializeStateNetworkError$doWork$2", f = "InitializeStateNetworkError.kt", l = {39}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nInitializeStateNetworkError.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InitializeStateNetworkError.kt\ncom/unity3d/services/core/domain/task/InitializeStateNetworkError$doWork$2\n+ 2 CoroutineExtensions.kt\ncom/unity3d/services/core/extensions/CoroutineExtensionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,81:1\n24#2:82\n14#2,12:83\n26#2:96\n1#3:95\n*S KotlinDebug\n*F\n+ 1 InitializeStateNetworkError.kt\ncom/unity3d/services/core/domain/task/InitializeStateNetworkError$doWork$2\n*L\n34#1:82\n34#1:83,12\n34#1:96\n34#1:95\n*E\n"})
/* loaded from: classes7.dex */
public final class InitializeStateNetworkError$doWork$2 extends SuspendLambda implements Function2<g0, c<? super Result<? extends Unit>>, Object> {
    final /* synthetic */ InitializeStateNetworkError.Params $params;
    Object L$0;
    int label;
    final /* synthetic */ InitializeStateNetworkError this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InitializeStateNetworkError$doWork$2(InitializeStateNetworkError initializeStateNetworkError, InitializeStateNetworkError.Params params, c<? super InitializeStateNetworkError$doWork$2> cVar) {
        super(2, cVar);
        this.this$0 = initializeStateNetworkError;
        this.$params = params;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new InitializeStateNetworkError$doWork$2(this.this$0, this.$params, cVar);
    }

    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object invoke2(@NotNull g0 g0Var, @Nullable c<? super Result<Unit>> cVar) {
        return ((InitializeStateNetworkError$doWork$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object d10;
        InitializeStateNetworkError initializeStateNetworkError;
        Object f10 = a.f();
        int i10 = this.label;
        try {
            if (i10 != 0) {
                if (i10 == 1) {
                    initializeStateNetworkError = (InitializeStateNetworkError) this.L$0;
                    f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                f.b(obj);
                InitializeStateNetworkError initializeStateNetworkError2 = this.this$0;
                InitializeStateNetworkError.Params params = this.$params;
                Result.a aVar = Result.f60901b;
                DeviceLog.error("Unity Ads init: network error, waiting for connection events");
                initializeStateNetworkError2.maximumConnectedEvents = params.getConfig().getMaximumConnectedEvents();
                initializeStateNetworkError2.connectedEventThreshold = params.getConfig().getConnectedEventThreshold();
                long networkErrorTimeout = params.getConfig().getNetworkErrorTimeout();
                InitializeStateNetworkError$doWork$2$1$success$1 initializeStateNetworkError$doWork$2$1$success$1 = new InitializeStateNetworkError$doWork$2$1$success$1(initializeStateNetworkError2, null);
                this.L$0 = initializeStateNetworkError2;
                this.label = 1;
                Object e10 = TimeoutKt.e(networkErrorTimeout, initializeStateNetworkError$doWork$2$1$success$1, this);
                if (e10 == f10) {
                    return f10;
                }
                initializeStateNetworkError = initializeStateNetworkError2;
                obj = e10;
            }
        } catch (CancellationException e11) {
            throw e11;
        } catch (Throwable th2) {
            Result.a aVar2 = Result.f60901b;
            d10 = Result.d(f.a(th2));
        }
        if (((Unit) obj) != null) {
            d10 = Result.d(Unit.f60915a);
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
        ConnectivityMonitor.removeListener(initializeStateNetworkError);
        throw new Exception("No connected events within the timeout!");
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(g0 g0Var, c<? super Result<? extends Unit>> cVar) {
        return invoke2(g0Var, (c<? super Result<Unit>>) cVar);
    }
}
