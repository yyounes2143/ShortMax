package com.unity3d.services.core.domain.task;

import com.unity3d.services.core.domain.task.InitializeStateLoadWeb;
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
/* compiled from: InitializeStateLoadWeb.kt */
@Metadata
@d(c = "com.unity3d.services.core.domain.task.InitializeStateLoadWeb$doWork$2", f = "InitializeStateLoadWeb.kt", l = {46, 64, 71}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nInitializeStateLoadWeb.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InitializeStateLoadWeb.kt\ncom/unity3d/services/core/domain/task/InitializeStateLoadWeb$doWork$2\n+ 2 CoroutineExtensions.kt\ncom/unity3d/services/core/extensions/CoroutineExtensionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,109:1\n24#2:110\n14#2,12:111\n26#2:124\n1#3:123\n*S KotlinDebug\n*F\n+ 1 InitializeStateLoadWeb.kt\ncom/unity3d/services/core/domain/task/InitializeStateLoadWeb$doWork$2\n*L\n40#1:110\n40#1:111,12\n40#1:124\n40#1:123\n*E\n"})
/* loaded from: classes7.dex */
public final class InitializeStateLoadWeb$doWork$2 extends SuspendLambda implements Function2<g0, c<? super Result<? extends InitializeStateLoadWeb.LoadWebResult>>, Object> {
    final /* synthetic */ InitializeStateLoadWeb.Params $params;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    int label;
    final /* synthetic */ InitializeStateLoadWeb this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InitializeStateLoadWeb$doWork$2(InitializeStateLoadWeb.Params params, InitializeStateLoadWeb initializeStateLoadWeb, c<? super InitializeStateLoadWeb$doWork$2> cVar) {
        super(2, cVar);
        this.$params = params;
        this.this$0 = initializeStateLoadWeb;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        InitializeStateLoadWeb$doWork$2 initializeStateLoadWeb$doWork$2 = new InitializeStateLoadWeb$doWork$2(this.$params, this.this$0, cVar);
        initializeStateLoadWeb$doWork$2.L$0 = obj;
        return initializeStateLoadWeb$doWork$2;
    }

    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object invoke2(@NotNull g0 g0Var, @Nullable c<? super Result<InitializeStateLoadWeb.LoadWebResult>> cVar) {
        return ((InitializeStateLoadWeb$doWork$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:66:0x01da, code lost:
        com.unity3d.services.core.misc.Utilities.writeFile(new java.io.File(com.unity3d.services.core.properties.SdkProperties.getLocalWebViewFile()), r0);
     */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0136 A[Catch: all -> 0x004a, TRY_ENTER, TryCatch #6 {CancellationException -> 0x0023, all -> 0x0020, blocks: (B:8:0x0018, B:54:0x018d, B:58:0x01b0, B:60:0x01ba, B:63:0x01c5, B:64:0x01d7, B:66:0x01da, B:67:0x01e6, B:49:0x0168, B:51:0x016e, B:55:0x0190, B:56:0x01a2, B:41:0x0130, B:57:0x01a3, B:40:0x0126, B:27:0x0075, B:17:0x003d, B:46:0x0155, B:43:0x0136), top: B:85:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x016e A[Catch: all -> 0x0020, CancellationException -> 0x0023, TryCatch #6 {CancellationException -> 0x0023, all -> 0x0020, blocks: (B:8:0x0018, B:54:0x018d, B:58:0x01b0, B:60:0x01ba, B:63:0x01c5, B:64:0x01d7, B:66:0x01da, B:67:0x01e6, B:49:0x0168, B:51:0x016e, B:55:0x0190, B:56:0x01a2, B:41:0x0130, B:57:0x01a3, B:40:0x0126, B:27:0x0075, B:17:0x003d, B:46:0x0155, B:43:0x0136), top: B:85:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0190 A[Catch: all -> 0x0020, CancellationException -> 0x0023, TryCatch #6 {CancellationException -> 0x0023, all -> 0x0020, blocks: (B:8:0x0018, B:54:0x018d, B:58:0x01b0, B:60:0x01ba, B:63:0x01c5, B:64:0x01d7, B:66:0x01da, B:67:0x01e6, B:49:0x0168, B:51:0x016e, B:55:0x0190, B:56:0x01a2, B:41:0x0130, B:57:0x01a3, B:40:0x0126, B:27:0x0075, B:17:0x003d, B:46:0x0155, B:43:0x0136), top: B:85:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x01a3 A[Catch: all -> 0x0020, CancellationException -> 0x0023, TryCatch #6 {CancellationException -> 0x0023, all -> 0x0020, blocks: (B:8:0x0018, B:54:0x018d, B:58:0x01b0, B:60:0x01ba, B:63:0x01c5, B:64:0x01d7, B:66:0x01da, B:67:0x01e6, B:49:0x0168, B:51:0x016e, B:55:0x0190, B:56:0x01a2, B:41:0x0130, B:57:0x01a3, B:40:0x0126, B:27:0x0075, B:17:0x003d, B:46:0x0155, B:43:0x0136), top: B:85:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x01ba A[Catch: all -> 0x0020, CancellationException -> 0x0023, TryCatch #6 {CancellationException -> 0x0023, all -> 0x0020, blocks: (B:8:0x0018, B:54:0x018d, B:58:0x01b0, B:60:0x01ba, B:63:0x01c5, B:64:0x01d7, B:66:0x01da, B:67:0x01e6, B:49:0x0168, B:51:0x016e, B:55:0x0190, B:56:0x01a2, B:41:0x0130, B:57:0x01a3, B:40:0x0126, B:27:0x0075, B:17:0x003d, B:46:0x0155, B:43:0x0136), top: B:85:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0204  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0209  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r37) {
        /*
            Method dump skipped, instructions count: 541
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.services.core.domain.task.InitializeStateLoadWeb$doWork$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(g0 g0Var, c<? super Result<? extends InitializeStateLoadWeb.LoadWebResult>> cVar) {
        return invoke2(g0Var, (c<? super Result<InitializeStateLoadWeb.LoadWebResult>>) cVar);
    }
}
