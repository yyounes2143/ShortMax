package com.unity3d.services.core.domain.task;

import com.unity3d.services.ads.token.TokenStorage;
import com.unity3d.services.core.configuration.Configuration;
import com.unity3d.services.core.configuration.IConfigurationLoader;
import com.unity3d.services.core.configuration.IConfigurationLoaderListener;
import com.unity3d.services.core.configuration.InitializeEventsMetricSender;
import com.unity3d.services.core.domain.ISDKDispatchers;
import com.unity3d.services.core.extensions.AbortRetryException;
import com.unity3d.services.core.request.metrics.Metric;
import com.unity3d.services.core.request.metrics.SDKMetricsSender;
import com.unity3d.services.core.request.metrics.TSIMetric;
import gt.c0;
import gt.e;
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
@d(c = "com.unity3d.services.core.domain.task.InitializeStateConfigWithLoader$doWork$2$1$configResult$1$1", f = "InitializeStateConfigWithLoader.kt", l = {69}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class InitializeStateConfigWithLoader$doWork$2$1$configResult$1$1 extends SuspendLambda implements Function2<Integer, c<? super Unit>, Object> {
    final /* synthetic */ Ref.ObjectRef<Configuration> $config;
    final /* synthetic */ Ref.ObjectRef<IConfigurationLoader> $configurationLoader;
    /* synthetic */ int I$0;
    int label;
    final /* synthetic */ InitializeStateConfigWithLoader this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: InitializeStateConfigWithLoader.kt */
    @Metadata
    @d(c = "com.unity3d.services.core.domain.task.InitializeStateConfigWithLoader$doWork$2$1$configResult$1$1$1", f = "InitializeStateConfigWithLoader.kt", l = {}, m = "invokeSuspend")
    /* renamed from: com.unity3d.services.core.domain.task.InitializeStateConfigWithLoader$doWork$2$1$configResult$1$1$1  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
        final /* synthetic */ Ref.ObjectRef<Configuration> $config;
        final /* synthetic */ Ref.ObjectRef<IConfigurationLoader> $configurationLoader;
        int label;
        final /* synthetic */ InitializeStateConfigWithLoader this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Ref.ObjectRef<IConfigurationLoader> objectRef, Ref.ObjectRef<Configuration> objectRef2, InitializeStateConfigWithLoader initializeStateConfigWithLoader, c<? super AnonymousClass1> cVar) {
            super(2, cVar);
            this.$configurationLoader = objectRef;
            this.$config = objectRef2;
            this.this$0 = initializeStateConfigWithLoader;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
            return new AnonymousClass1(this.$configurationLoader, this.$config, this.this$0, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        @Nullable
        public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
            return ((AnonymousClass1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            a.f();
            if (this.label == 0) {
                f.b(obj);
                final Ref.ObjectRef<Configuration> objectRef = this.$config;
                final InitializeStateConfigWithLoader initializeStateConfigWithLoader = this.this$0;
                this.$configurationLoader.element.loadConfiguration(new IConfigurationLoaderListener() { // from class: com.unity3d.services.core.domain.task.InitializeStateConfigWithLoader.doWork.2.1.configResult.1.1.1.1
                    @Override // com.unity3d.services.core.configuration.IConfigurationLoaderListener
                    public void onError(@NotNull String errorMsg) {
                        SDKMetricsSender sDKMetricsSender;
                        Intrinsics.checkNotNullParameter(errorMsg, "errorMsg");
                        sDKMetricsSender = initializeStateConfigWithLoader.sdkMetricsSender;
                        Metric newEmergencySwitchOff = TSIMetric.newEmergencySwitchOff();
                        Intrinsics.checkNotNullExpressionValue(newEmergencySwitchOff, "newEmergencySwitchOff()");
                        sDKMetricsSender.sendMetric(newEmergencySwitchOff);
                        throw new AbortRetryException(errorMsg);
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InitializeStateConfigWithLoader$doWork$2$1$configResult$1$1(InitializeStateConfigWithLoader initializeStateConfigWithLoader, Ref.ObjectRef<IConfigurationLoader> objectRef, Ref.ObjectRef<Configuration> objectRef2, c<? super InitializeStateConfigWithLoader$doWork$2$1$configResult$1$1> cVar) {
        super(2, cVar);
        this.this$0 = initializeStateConfigWithLoader;
        this.$configurationLoader = objectRef;
        this.$config = objectRef2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        InitializeStateConfigWithLoader$doWork$2$1$configResult$1$1 initializeStateConfigWithLoader$doWork$2$1$configResult$1$1 = new InitializeStateConfigWithLoader$doWork$2$1$configResult$1$1(this.this$0, this.$configurationLoader, this.$config, cVar);
        initializeStateConfigWithLoader$doWork$2$1$configResult$1$1.I$0 = ((Number) obj).intValue();
        return initializeStateConfigWithLoader$doWork$2$1$configResult$1$1;
    }

    @Nullable
    public final Object invoke(int i10, @Nullable c<? super Unit> cVar) {
        return ((InitializeStateConfigWithLoader$doWork$2$1$configResult$1$1) create(Integer.valueOf(i10), cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        ISDKDispatchers iSDKDispatchers;
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
            if (this.I$0 > 0) {
                InitializeEventsMetricSender.getInstance().onRetryConfig();
            }
            iSDKDispatchers = this.this$0.dispatchers;
            c0 io2 = iSDKDispatchers.getIo();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$configurationLoader, this.$config, this.this$0, null);
            this.label = 1;
            if (e.g(io2, anonymousClass1, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(Integer num, c<? super Unit> cVar) {
        return invoke(num.intValue(), cVar);
    }
}
