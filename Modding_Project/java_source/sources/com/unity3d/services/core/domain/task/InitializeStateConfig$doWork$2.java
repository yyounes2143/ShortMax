package com.unity3d.services.core.domain.task;

import com.unity3d.services.core.configuration.Configuration;
import com.unity3d.services.core.configuration.ErrorState;
import com.unity3d.services.core.domain.task.InitializeStateConfig;
import com.unity3d.services.core.domain.task.InitializeStateConfigWithLoader;
import com.unity3d.services.core.log.DeviceLog;
import com.unity3d.services.core.properties.SdkProperties;
import com.unity3d.services.core.request.NetworkIOException;
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
/* compiled from: InitializeStateConfig.kt */
@Metadata
@d(c = "com.unity3d.services.core.domain.task.InitializeStateConfig$doWork$2", f = "InitializeStateConfig.kt", l = {32}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nInitializeStateConfig.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InitializeStateConfig.kt\ncom/unity3d/services/core/domain/task/InitializeStateConfig$doWork$2\n+ 2 CoroutineExtensions.kt\ncom/unity3d/services/core/extensions/CoroutineExtensionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,44:1\n24#2:45\n14#2,12:46\n26#2:59\n1#3:58\n*S KotlinDebug\n*F\n+ 1 InitializeStateConfig.kt\ncom/unity3d/services/core/domain/task/InitializeStateConfig$doWork$2\n*L\n25#1:45\n25#1:46,12\n25#1:59\n25#1:58\n*E\n"})
/* loaded from: classes7.dex */
public final class InitializeStateConfig$doWork$2 extends SuspendLambda implements Function2<g0, c<? super Result<? extends Configuration>>, Object> {
    final /* synthetic */ InitializeStateConfig.Params $params;
    Object L$0;
    int label;
    final /* synthetic */ InitializeStateConfig this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InitializeStateConfig$doWork$2(InitializeStateConfig.Params params, InitializeStateConfig initializeStateConfig, c<? super InitializeStateConfig$doWork$2> cVar) {
        super(2, cVar);
        this.$params = params;
        this.this$0 = initializeStateConfig;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new InitializeStateConfig$doWork$2(this.$params, this.this$0, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Result<? extends Configuration>> cVar) {
        return ((InitializeStateConfig$doWork$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object d10;
        Configuration configuration;
        InitializeStateConfigWithLoader initializeStateConfigWithLoader;
        Object mo4733invokegIAlus;
        Object f10 = a.f();
        int i10 = this.label;
        try {
            if (i10 != 0) {
                if (i10 == 1) {
                    configuration = (Configuration) this.L$0;
                    try {
                        f.b(obj);
                        mo4733invokegIAlus = ((Result) obj).n();
                    } catch (NetworkIOException e10) {
                        e = e10;
                        throw new InitializationException(ErrorState.NetworkConfigRequest, e, configuration);
                    }
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                f.b(obj);
                InitializeStateConfig.Params params = this.$params;
                InitializeStateConfig initializeStateConfig = this.this$0;
                Result.a aVar = Result.f60901b;
                DeviceLog.info("Unity Ads init: load configuration from " + SdkProperties.getConfigUrl());
                Configuration configuration2 = new Configuration(SdkProperties.getConfigUrl(), params.getConfig().getExperimentsReader());
                try {
                    initializeStateConfigWithLoader = initializeStateConfig.initializeStateConfigWithLoader;
                    InitializeStateConfigWithLoader.Params params2 = new InitializeStateConfigWithLoader.Params(configuration2);
                    this.L$0 = configuration2;
                    this.label = 1;
                    mo4733invokegIAlus = initializeStateConfigWithLoader.mo4733invokegIAlus(params2, (c<? super Result<? extends Configuration>>) this);
                    if (mo4733invokegIAlus == f10) {
                        return f10;
                    }
                    configuration = configuration2;
                } catch (NetworkIOException e11) {
                    e = e11;
                    configuration = configuration2;
                    throw new InitializationException(ErrorState.NetworkConfigRequest, e, configuration);
                }
            }
            f.b(mo4733invokegIAlus);
            d10 = Result.d((Configuration) mo4733invokegIAlus);
        } catch (CancellationException e12) {
            throw e12;
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
}
