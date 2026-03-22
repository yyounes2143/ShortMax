package com.unity3d.services.core.domain.task;

import com.unity3d.services.core.domain.task.InitializeStateLoadCache;
import gt.g0;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: InitializeStateLoadCache.kt */
@Metadata
@d(c = "com.unity3d.services.core.domain.task.InitializeStateLoadCache$doWork$2", f = "InitializeStateLoadCache.kt", l = {}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nInitializeStateLoadCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InitializeStateLoadCache.kt\ncom/unity3d/services/core/domain/task/InitializeStateLoadCache$doWork$2\n+ 2 CoroutineExtensions.kt\ncom/unity3d/services/core/extensions/CoroutineExtensionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,72:1\n24#2:73\n14#2,12:74\n26#2:87\n1#3:86\n*S KotlinDebug\n*F\n+ 1 InitializeStateLoadCache.kt\ncom/unity3d/services/core/domain/task/InitializeStateLoadCache$doWork$2\n*L\n33#1:73\n33#1:74,12\n33#1:87\n33#1:86\n*E\n"})
/* loaded from: classes7.dex */
public final class InitializeStateLoadCache$doWork$2 extends SuspendLambda implements Function2<g0, c<? super Result<? extends InitializeStateLoadCache.LoadCacheResult>>, Object> {
    final /* synthetic */ InitializeStateLoadCache.Params $params;
    int label;
    final /* synthetic */ InitializeStateLoadCache this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InitializeStateLoadCache$doWork$2(InitializeStateLoadCache initializeStateLoadCache, InitializeStateLoadCache.Params params, c<? super InitializeStateLoadCache$doWork$2> cVar) {
        super(2, cVar);
        this.this$0 = initializeStateLoadCache;
        this.$params = params;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new InitializeStateLoadCache$doWork$2(this.this$0, this.$params, cVar);
    }

    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object invoke2(@NotNull g0 g0Var, @Nullable c<? super Result<InitializeStateLoadCache.LoadCacheResult>> cVar) {
        return ((InitializeStateLoadCache$doWork$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0051, code lost:
        com.unity3d.services.core.log.DeviceLog.info("Unity Ads init: webapp loaded from local cache");
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r6) {
        /*
            r5 = this;
            kotlin.coroutines.intrinsics.a.f()
            int r0 = r5.label
            if (r0 != 0) goto L89
            kotlin.f.b(r6)
            com.unity3d.services.core.domain.task.InitializeStateLoadCache r6 = r5.this$0
            com.unity3d.services.core.domain.task.InitializeStateLoadCache$Params r0 = r5.$params
            kotlin.Result$a r1 = kotlin.Result.f60901b     // Catch: java.lang.Throwable -> L24 java.util.concurrent.CancellationException -> L26
            java.lang.String r1 = "Unity Ads init: check if webapp can be loaded from local cache"
            com.unity3d.services.core.log.DeviceLog.debug(r1)     // Catch: java.lang.Throwable -> L24 java.util.concurrent.CancellationException -> L26
            byte[] r6 = com.unity3d.services.core.domain.task.InitializeStateLoadCache.access$getWebViewData(r6)     // Catch: java.lang.Throwable -> L24 java.util.concurrent.CancellationException -> L26
            r1 = 1
            if (r6 != 0) goto L28
            com.unity3d.services.core.domain.task.InitializeStateLoadCache$LoadCacheResult r6 = new com.unity3d.services.core.domain.task.InitializeStateLoadCache$LoadCacheResult     // Catch: java.lang.Throwable -> L24 java.util.concurrent.CancellationException -> L26
            r0 = 2
            r2 = 0
            r6.<init>(r1, r2, r0, r2)     // Catch: java.lang.Throwable -> L24 java.util.concurrent.CancellationException -> L26
            goto L5b
        L24:
            r6 = move-exception
            goto L60
        L26:
            r6 = move-exception
            goto L88
        L28:
            java.lang.String r2 = com.unity3d.services.core.misc.Utilities.Sha256(r6)     // Catch: java.lang.Throwable -> L24 java.util.concurrent.CancellationException -> L26
            java.lang.String r3 = "UTF-8"
            java.nio.charset.Charset r3 = java.nio.charset.Charset.forName(r3)     // Catch: java.lang.Throwable -> L24 java.util.concurrent.CancellationException -> L26
            java.lang.String r4 = "forName(\"UTF-8\")"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r4)     // Catch: java.lang.Throwable -> L24 java.util.concurrent.CancellationException -> L26
            java.lang.String r4 = new java.lang.String     // Catch: java.lang.Throwable -> L24 java.util.concurrent.CancellationException -> L26
            r4.<init>(r6, r3)     // Catch: java.lang.Throwable -> L24 java.util.concurrent.CancellationException -> L26
            r6 = 0
            if (r2 == 0) goto L4f
            com.unity3d.services.core.configuration.Configuration r0 = r0.getConfig()     // Catch: java.lang.Throwable -> L24 java.util.concurrent.CancellationException -> L26
            java.lang.String r0 = r0.getWebViewHash()     // Catch: java.lang.Throwable -> L24 java.util.concurrent.CancellationException -> L26
            boolean r0 = kotlin.jvm.internal.Intrinsics.areEqual(r2, r0)     // Catch: java.lang.Throwable -> L24 java.util.concurrent.CancellationException -> L26
            if (r0 != 0) goto L4e
            goto L4f
        L4e:
            r1 = r6
        L4f:
            if (r1 != 0) goto L56
            java.lang.String r6 = "Unity Ads init: webapp loaded from local cache"
            com.unity3d.services.core.log.DeviceLog.info(r6)     // Catch: java.lang.Throwable -> L24 java.util.concurrent.CancellationException -> L26
        L56:
            com.unity3d.services.core.domain.task.InitializeStateLoadCache$LoadCacheResult r6 = new com.unity3d.services.core.domain.task.InitializeStateLoadCache$LoadCacheResult     // Catch: java.lang.Throwable -> L24 java.util.concurrent.CancellationException -> L26
            r6.<init>(r1, r4)     // Catch: java.lang.Throwable -> L24 java.util.concurrent.CancellationException -> L26
        L5b:
            java.lang.Object r6 = kotlin.Result.d(r6)     // Catch: java.lang.Throwable -> L24 java.util.concurrent.CancellationException -> L26
            goto L6a
        L60:
            kotlin.Result$a r0 = kotlin.Result.f60901b
            java.lang.Object r6 = kotlin.f.a(r6)
            java.lang.Object r6 = kotlin.Result.d(r6)
        L6a:
            boolean r0 = kotlin.Result.j(r6)
            if (r0 == 0) goto L75
            java.lang.Object r6 = kotlin.Result.d(r6)
            goto L83
        L75:
            java.lang.Throwable r0 = kotlin.Result.g(r6)
            if (r0 == 0) goto L83
            java.lang.Object r6 = kotlin.f.a(r0)
            java.lang.Object r6 = kotlin.Result.d(r6)
        L83:
            kotlin.Result r6 = kotlin.Result.b(r6)
            return r6
        L88:
            throw r6
        L89:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.services.core.domain.task.InitializeStateLoadCache$doWork$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(g0 g0Var, c<? super Result<? extends InitializeStateLoadCache.LoadCacheResult>> cVar) {
        return invoke2(g0Var, (c<? super Result<InitializeStateLoadCache.LoadCacheResult>>) cVar);
    }
}
