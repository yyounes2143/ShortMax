package com.unity3d.services.core.domain.task;

import com.unity3d.services.ads.token.TokenStorage;
import com.unity3d.services.core.configuration.Configuration;
import com.unity3d.services.core.configuration.ErrorState;
import com.unity3d.services.core.configuration.IConfigurationLoader;
import com.unity3d.services.core.configuration.IConfigurationLoaderListener;
import com.unity3d.services.core.domain.task.InitializeStateConfigWithLoader;
import com.unity3d.services.core.request.metrics.Metric;
import com.unity3d.services.core.request.metrics.SDKMetricsSender;
import com.unity3d.services.core.request.metrics.TSIMetric;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: InitializeStateConfigWithLoader.kt */
@Metadata
@d(c = "com.unity3d.services.core.domain.task.InitializeStateConfigWithLoader$doWork$2$1$1", f = "InitializeStateConfigWithLoader.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class InitializeStateConfigWithLoader$doWork$2$1$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
    final /* synthetic */ Ref.ObjectRef<Configuration> $config;
    final /* synthetic */ Ref.ObjectRef<IConfigurationLoader> $configurationLoader;
    final /* synthetic */ InitializeStateConfigWithLoader.Params $params;
    int label;
    final /* synthetic */ InitializeStateConfigWithLoader this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InitializeStateConfigWithLoader$doWork$2$1$1(Ref.ObjectRef<IConfigurationLoader> objectRef, Ref.ObjectRef<Configuration> objectRef2, InitializeStateConfigWithLoader initializeStateConfigWithLoader, InitializeStateConfigWithLoader.Params params, c<? super InitializeStateConfigWithLoader$doWork$2$1$1> cVar) {
        super(2, cVar);
        this.$configurationLoader = objectRef;
        this.$config = objectRef2;
        this.this$0 = initializeStateConfigWithLoader;
        this.$params = params;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new InitializeStateConfigWithLoader$doWork$2$1$1(this.$configurationLoader, this.$config, this.this$0, this.$params, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
        return ((InitializeStateConfigWithLoader$doWork$2$1$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        a.f();
        if (this.label == 0) {
            f.b(obj);
            final Ref.ObjectRef<Configuration> objectRef = this.$config;
            final InitializeStateConfigWithLoader initializeStateConfigWithLoader = this.this$0;
            final InitializeStateConfigWithLoader.Params params = this.$params;
            this.$configurationLoader.element.loadConfiguration(new IConfigurationLoaderListener() { // from class: com.unity3d.services.core.domain.task.InitializeStateConfigWithLoader$doWork$2$1$1.1
                @Override // com.unity3d.services.core.configuration.IConfigurationLoaderListener
                public void onError(@NotNull String errorMsg) {
                    SDKMetricsSender sDKMetricsSender;
                    Intrinsics.checkNotNullParameter(errorMsg, "errorMsg");
                    sDKMetricsSender = initializeStateConfigWithLoader.sdkMetricsSender;
                    Metric newEmergencySwitchOff = TSIMetric.newEmergencySwitchOff();
                    Intrinsics.checkNotNullExpressionValue(newEmergencySwitchOff, "newEmergencySwitchOff()");
                    sDKMetricsSender.sendMetric(newEmergencySwitchOff);
                    throw new InitializationException(ErrorState.NetworkConfigRequest, new Exception(errorMsg), params.getConfig());
                }

                /* JADX WARN: Multi-variable type inference failed */
                @Override // com.unity3d.services.core.configuration.IConfigurationLoaderListener
                public void onSuccess(@NotNull Configuration configuration) {
                    TokenStorage tokenStorage;
                    Intrinsics.checkNotNullParameter(configuration, "configuration");
                    objectRef.element = configuration;
                    configuration.saveToDisk();
                    tokenStorage = initializeStateConfigWithLoader.tokenStorage;
                    tokenStorage.setInitToken(objectRef.element.getUnifiedAuctionToken());
                }
            });
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
