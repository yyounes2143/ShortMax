package com.unity3d.services.core.domain.task;

import com.unity3d.services.ads.token.TokenStorage;
import com.unity3d.services.core.configuration.Configuration;
import com.unity3d.services.core.di.IServiceProvider;
import com.unity3d.services.core.domain.ISDKDispatchers;
import com.unity3d.services.core.domain.task.BaseTask;
import com.unity3d.services.core.request.metrics.SDKMetricsSender;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: InitializeStateConfigWithLoader.kt */
@Metadata
/* loaded from: classes7.dex */
public final class InitializeStateConfigWithLoader implements BaseTask<Params, Configuration> {
    @NotNull
    private final ISDKDispatchers dispatchers;
    @NotNull
    private final InitializeStateNetworkError initializeStateNetworkError;
    @NotNull
    private final SDKMetricsSender sdkMetricsSender;
    @NotNull
    private final TokenStorage tokenStorage;

    /* compiled from: InitializeStateConfigWithLoader.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Params implements BaseParams {
        @NotNull
        private final Configuration config;

        public Params(@NotNull Configuration config) {
            Intrinsics.checkNotNullParameter(config, "config");
            this.config = config;
        }

        public static /* synthetic */ Params copy$default(Params params, Configuration configuration, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                configuration = params.config;
            }
            return params.copy(configuration);
        }

        @NotNull
        public final Configuration component1() {
            return this.config;
        }

        @NotNull
        public final Params copy(@NotNull Configuration config) {
            Intrinsics.checkNotNullParameter(config, "config");
            return new Params(config);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof Params) && Intrinsics.areEqual(this.config, ((Params) obj).config)) {
                return true;
            }
            return false;
        }

        @NotNull
        public final Configuration getConfig() {
            return this.config;
        }

        public int hashCode() {
            return this.config.hashCode();
        }

        @NotNull
        public String toString() {
            return "Params(config=" + this.config + ')';
        }
    }

    public InitializeStateConfigWithLoader(@NotNull ISDKDispatchers dispatchers, @NotNull InitializeStateNetworkError initializeStateNetworkError, @NotNull TokenStorage tokenStorage, @NotNull SDKMetricsSender sdkMetricsSender) {
        Intrinsics.checkNotNullParameter(dispatchers, "dispatchers");
        Intrinsics.checkNotNullParameter(initializeStateNetworkError, "initializeStateNetworkError");
        Intrinsics.checkNotNullParameter(tokenStorage, "tokenStorage");
        Intrinsics.checkNotNullParameter(sdkMetricsSender, "sdkMetricsSender");
        this.dispatchers = dispatchers;
        this.initializeStateNetworkError = initializeStateNetworkError;
        this.tokenStorage = tokenStorage;
        this.sdkMetricsSender = sdkMetricsSender;
    }

    @Override // com.unity3d.services.core.di.IServiceComponent
    @NotNull
    public IServiceProvider getServiceProvider() {
        return BaseTask.DefaultImpls.getServiceProvider(this);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
    @Override // com.unity3d.services.core.domain.task.BaseTask
    @org.jetbrains.annotations.Nullable
    /* renamed from: doWork-gIAlu-s  reason: avoid collision after fix types in other method and not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo4732doWorkgIAlus(@org.jetbrains.annotations.NotNull com.unity3d.services.core.domain.task.InitializeStateConfigWithLoader.Params r6, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<? extends com.unity3d.services.core.configuration.Configuration>> r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof com.unity3d.services.core.domain.task.InitializeStateConfigWithLoader$doWork$1
            if (r0 == 0) goto L13
            r0 = r7
            com.unity3d.services.core.domain.task.InitializeStateConfigWithLoader$doWork$1 r0 = (com.unity3d.services.core.domain.task.InitializeStateConfigWithLoader$doWork$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.unity3d.services.core.domain.task.InitializeStateConfigWithLoader$doWork$1 r0 = new com.unity3d.services.core.domain.task.InitializeStateConfigWithLoader$doWork$1
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.f.b(r7)
            goto L49
        L29:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L31:
            kotlin.f.b(r7)
            com.unity3d.services.core.domain.ISDKDispatchers r7 = r5.dispatchers
            gt.c0 r7 = r7.getDefault()
            com.unity3d.services.core.domain.task.InitializeStateConfigWithLoader$doWork$2 r2 = new com.unity3d.services.core.domain.task.InitializeStateConfigWithLoader$doWork$2
            r4 = 0
            r2.<init>(r5, r6, r4)
            r0.label = r3
            java.lang.Object r7 = gt.e.g(r7, r2, r0)
            if (r7 != r1) goto L49
            return r1
        L49:
            kotlin.Result r7 = (kotlin.Result) r7
            java.lang.Object r6 = r7.n()
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.services.core.domain.task.InitializeStateConfigWithLoader.mo4732doWorkgIAlus(com.unity3d.services.core.domain.task.InitializeStateConfigWithLoader$Params, rs.c):java.lang.Object");
    }

    @Override // com.unity3d.services.core.domain.task.BaseTask
    @Nullable
    /* renamed from: invoke-gIAlu-s  reason: avoid collision after fix types in other method and not valid java name */
    public Object mo4733invokegIAlus(@NotNull Params params, @NotNull c<? super Result<? extends Configuration>> cVar) {
        return BaseTask.DefaultImpls.m4734invokegIAlus(this, params, cVar);
    }
}
