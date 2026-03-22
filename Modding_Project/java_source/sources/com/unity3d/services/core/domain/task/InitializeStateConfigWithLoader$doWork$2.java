package com.unity3d.services.core.domain.task;

import com.unity3d.services.core.configuration.Configuration;
import com.unity3d.services.core.domain.task.InitializeStateConfigWithLoader;
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
/* compiled from: InitializeStateConfigWithLoader.kt */
@Metadata
@d(c = "com.unity3d.services.core.domain.task.InitializeStateConfigWithLoader$doWork$2", f = "InitializeStateConfigWithLoader.kt", l = {58, 101, 109}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nInitializeStateConfigWithLoader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InitializeStateConfigWithLoader.kt\ncom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader$doWork$2\n+ 2 CoroutineExtensions.kt\ncom/unity3d/services/core/extensions/CoroutineExtensionsKt\n+ 3 IServiceComponent.kt\ncom/unity3d/services/core/di/IServiceComponentKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,150:1\n24#2:151\n14#2,2:152\n16#2,10:162\n26#2:173\n16#3,4:154\n16#3,4:158\n1#4:172\n*S KotlinDebug\n*F\n+ 1 InitializeStateConfigWithLoader.kt\ncom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader$doWork$2\n*L\n34#1:151\n34#1:152,2\n34#1:162,10\n34#1:173\n44#1:154,4\n53#1:158,4\n34#1:172\n*E\n"})
/* loaded from: classes7.dex */
public final class InitializeStateConfigWithLoader$doWork$2 extends SuspendLambda implements Function2<g0, c<? super Result<? extends Configuration>>, Object> {
    final /* synthetic */ InitializeStateConfigWithLoader.Params $params;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    int label;
    final /* synthetic */ InitializeStateConfigWithLoader this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InitializeStateConfigWithLoader$doWork$2(InitializeStateConfigWithLoader initializeStateConfigWithLoader, InitializeStateConfigWithLoader.Params params, c<? super InitializeStateConfigWithLoader$doWork$2> cVar) {
        super(2, cVar);
        this.this$0 = initializeStateConfigWithLoader;
        this.$params = params;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        InitializeStateConfigWithLoader$doWork$2 initializeStateConfigWithLoader$doWork$2 = new InitializeStateConfigWithLoader$doWork$2(this.this$0, this.$params, cVar);
        initializeStateConfigWithLoader$doWork$2.L$0 = obj;
        return initializeStateConfigWithLoader$doWork$2;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Result<? extends Configuration>> cVar) {
        return ((InitializeStateConfigWithLoader$doWork$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:43:0x016a A[Catch: all -> 0x0024, CancellationException -> 0x0027, TRY_LEAVE, TryCatch #7 {CancellationException -> 0x0027, all -> 0x0024, blocks: (B:8:0x001f, B:60:0x01e0, B:66:0x0211, B:54:0x01ac, B:56:0x01b2, B:61:0x01ea, B:62:0x01fc, B:53:0x01a1, B:41:0x0164, B:43:0x016a, B:63:0x01fd, B:64:0x020a, B:65:0x020b, B:40:0x0159, B:27:0x0086), top: B:88:0x000f }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x01b2 A[Catch: all -> 0x0024, CancellationException -> 0x0027, TryCatch #7 {CancellationException -> 0x0027, all -> 0x0024, blocks: (B:8:0x001f, B:60:0x01e0, B:66:0x0211, B:54:0x01ac, B:56:0x01b2, B:61:0x01ea, B:62:0x01fc, B:53:0x01a1, B:41:0x0164, B:43:0x016a, B:63:0x01fd, B:64:0x020a, B:65:0x020b, B:40:0x0159, B:27:0x0086), top: B:88:0x000f }] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x01ea A[Catch: all -> 0x0024, CancellationException -> 0x0027, TryCatch #7 {CancellationException -> 0x0027, all -> 0x0024, blocks: (B:8:0x001f, B:60:0x01e0, B:66:0x0211, B:54:0x01ac, B:56:0x01b2, B:61:0x01ea, B:62:0x01fc, B:53:0x01a1, B:41:0x0164, B:43:0x016a, B:63:0x01fd, B:64:0x020a, B:65:0x020b, B:40:0x0159, B:27:0x0086), top: B:88:0x000f }] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x020b A[Catch: all -> 0x0024, CancellationException -> 0x0027, TryCatch #7 {CancellationException -> 0x0027, all -> 0x0024, blocks: (B:8:0x001f, B:60:0x01e0, B:66:0x0211, B:54:0x01ac, B:56:0x01b2, B:61:0x01ea, B:62:0x01fc, B:53:0x01a1, B:41:0x0164, B:43:0x016a, B:63:0x01fd, B:64:0x020a, B:65:0x020b, B:40:0x0159, B:27:0x0086), top: B:88:0x000f }] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x022c  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0231  */
    /* JADX WARN: Type inference failed for: r0v14, types: [T, com.unity3d.services.core.configuration.Configuration] */
    /* JADX WARN: Type inference failed for: r3v4, types: [T, com.unity3d.services.core.configuration.PrivacyConfigurationLoader] */
    /* JADX WARN: Type inference failed for: r6v1, types: [T, com.unity3d.services.core.configuration.ConfigurationLoader] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r18) {
        /*
            Method dump skipped, instructions count: 581
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.services.core.domain.task.InitializeStateConfigWithLoader$doWork$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
