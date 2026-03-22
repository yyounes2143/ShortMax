package com.unity3d.services.core.domain.task;

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
/* compiled from: InitializeSDK.kt */
@Metadata
@d(c = "com.unity3d.services.core.domain.task.InitializeSDK$doWork$2", f = "InitializeSDK.kt", l = {48, 53, 58, 60, 65, 67, 71, 74, 89, 92, 100, 103, 106}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nInitializeSDK.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InitializeSDK.kt\ncom/unity3d/services/core/domain/task/InitializeSDK$doWork$2\n+ 2 CoroutineExtensions.kt\ncom/unity3d/services/core/extensions/CoroutineExtensionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,129:1\n24#2:130\n14#2,2:131\n16#2,10:134\n26#2:145\n1#3:133\n1#3:144\n*S KotlinDebug\n*F\n+ 1 InitializeSDK.kt\ncom/unity3d/services/core/domain/task/InitializeSDK$doWork$2\n*L\n41#1:130\n41#1:131,2\n41#1:134,10\n41#1:145\n41#1:144\n*E\n"})
/* loaded from: classes7.dex */
public final class InitializeSDK$doWork$2 extends SuspendLambda implements Function2<g0, c<? super Result<? extends Unit>>, Object> {
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    int label;
    final /* synthetic */ InitializeSDK this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InitializeSDK$doWork$2(InitializeSDK initializeSDK, c<? super InitializeSDK$doWork$2> cVar) {
        super(2, cVar);
        this.this$0 = initializeSDK;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        InitializeSDK$doWork$2 initializeSDK$doWork$2 = new InitializeSDK$doWork$2(this.this$0, cVar);
        initializeSDK$doWork$2.L$0 = obj;
        return initializeSDK$doWork$2;
    }

    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object invoke2(@NotNull g0 g0Var, @Nullable c<? super Result<Unit>> cVar) {
        return ((InitializeSDK$doWork$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x0268 A[Catch: all -> 0x001e, CancellationException -> 0x0021, TryCatch #2 {CancellationException -> 0x0021, all -> 0x001e, blocks: (B:6:0x0013, B:132:0x034d, B:13:0x002a, B:129:0x0330, B:16:0x0035, B:124:0x0317, B:126:0x031d, B:19:0x0048, B:117:0x02e3, B:120:0x02f4, B:22:0x0053, B:112:0x02c8, B:114:0x02ce, B:26:0x0063, B:98:0x0262, B:100:0x0268, B:101:0x0273, B:29:0x007b, B:92:0x0242, B:94:0x0248, B:102:0x0274, B:104:0x027f, B:106:0x0289, B:108:0x028f, B:109:0x02a6, B:118:0x02ee, B:133:0x0357, B:134:0x035e, B:32:0x0094, B:89:0x0221, B:35:0x00a5, B:84:0x0205, B:86:0x020b, B:38:0x00b6, B:77:0x01da, B:79:0x01e0, B:80:0x01eb, B:41:0x00cc, B:71:0x01bd, B:73:0x01c3, B:81:0x01ec, B:44:0x00df, B:62:0x0177, B:64:0x017d, B:65:0x0195, B:68:0x01a1, B:48:0x00f4, B:58:0x0159, B:59:0x015b, B:51:0x0102, B:53:0x011f, B:55:0x0125), top: B:145:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0274 A[Catch: all -> 0x001e, CancellationException -> 0x0021, TryCatch #2 {CancellationException -> 0x0021, all -> 0x001e, blocks: (B:6:0x0013, B:132:0x034d, B:13:0x002a, B:129:0x0330, B:16:0x0035, B:124:0x0317, B:126:0x031d, B:19:0x0048, B:117:0x02e3, B:120:0x02f4, B:22:0x0053, B:112:0x02c8, B:114:0x02ce, B:26:0x0063, B:98:0x0262, B:100:0x0268, B:101:0x0273, B:29:0x007b, B:92:0x0242, B:94:0x0248, B:102:0x0274, B:104:0x027f, B:106:0x0289, B:108:0x028f, B:109:0x02a6, B:118:0x02ee, B:133:0x0357, B:134:0x035e, B:32:0x0094, B:89:0x0221, B:35:0x00a5, B:84:0x0205, B:86:0x020b, B:38:0x00b6, B:77:0x01da, B:79:0x01e0, B:80:0x01eb, B:41:0x00cc, B:71:0x01bd, B:73:0x01c3, B:81:0x01ec, B:44:0x00df, B:62:0x0177, B:64:0x017d, B:65:0x0195, B:68:0x01a1, B:48:0x00f4, B:58:0x0159, B:59:0x015b, B:51:0x0102, B:53:0x011f, B:55:0x0125), top: B:145:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:114:0x02ce A[Catch: all -> 0x001e, CancellationException -> 0x0021, TryCatch #2 {CancellationException -> 0x0021, all -> 0x001e, blocks: (B:6:0x0013, B:132:0x034d, B:13:0x002a, B:129:0x0330, B:16:0x0035, B:124:0x0317, B:126:0x031d, B:19:0x0048, B:117:0x02e3, B:120:0x02f4, B:22:0x0053, B:112:0x02c8, B:114:0x02ce, B:26:0x0063, B:98:0x0262, B:100:0x0268, B:101:0x0273, B:29:0x007b, B:92:0x0242, B:94:0x0248, B:102:0x0274, B:104:0x027f, B:106:0x0289, B:108:0x028f, B:109:0x02a6, B:118:0x02ee, B:133:0x0357, B:134:0x035e, B:32:0x0094, B:89:0x0221, B:35:0x00a5, B:84:0x0205, B:86:0x020b, B:38:0x00b6, B:77:0x01da, B:79:0x01e0, B:80:0x01eb, B:41:0x00cc, B:71:0x01bd, B:73:0x01c3, B:81:0x01ec, B:44:0x00df, B:62:0x0177, B:64:0x017d, B:65:0x0195, B:68:0x01a1, B:48:0x00f4, B:58:0x0159, B:59:0x015b, B:51:0x0102, B:53:0x011f, B:55:0x0125), top: B:145:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0315 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0316  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x031d A[Catch: all -> 0x001e, CancellationException -> 0x0021, TryCatch #2 {CancellationException -> 0x0021, all -> 0x001e, blocks: (B:6:0x0013, B:132:0x034d, B:13:0x002a, B:129:0x0330, B:16:0x0035, B:124:0x0317, B:126:0x031d, B:19:0x0048, B:117:0x02e3, B:120:0x02f4, B:22:0x0053, B:112:0x02c8, B:114:0x02ce, B:26:0x0063, B:98:0x0262, B:100:0x0268, B:101:0x0273, B:29:0x007b, B:92:0x0242, B:94:0x0248, B:102:0x0274, B:104:0x027f, B:106:0x0289, B:108:0x028f, B:109:0x02a6, B:118:0x02ee, B:133:0x0357, B:134:0x035e, B:32:0x0094, B:89:0x0221, B:35:0x00a5, B:84:0x0205, B:86:0x020b, B:38:0x00b6, B:77:0x01da, B:79:0x01e0, B:80:0x01eb, B:41:0x00cc, B:71:0x01bd, B:73:0x01c3, B:81:0x01ec, B:44:0x00df, B:62:0x0177, B:64:0x017d, B:65:0x0195, B:68:0x01a1, B:48:0x00f4, B:58:0x0159, B:59:0x015b, B:51:0x0102, B:53:0x011f, B:55:0x0125), top: B:145:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:131:0x034c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:138:0x036f  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x0374  */
    /* JADX WARN: Removed duplicated region for block: B:146:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:147:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0176 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x017d A[Catch: all -> 0x001e, CancellationException -> 0x0021, TryCatch #2 {CancellationException -> 0x0021, all -> 0x001e, blocks: (B:6:0x0013, B:132:0x034d, B:13:0x002a, B:129:0x0330, B:16:0x0035, B:124:0x0317, B:126:0x031d, B:19:0x0048, B:117:0x02e3, B:120:0x02f4, B:22:0x0053, B:112:0x02c8, B:114:0x02ce, B:26:0x0063, B:98:0x0262, B:100:0x0268, B:101:0x0273, B:29:0x007b, B:92:0x0242, B:94:0x0248, B:102:0x0274, B:104:0x027f, B:106:0x0289, B:108:0x028f, B:109:0x02a6, B:118:0x02ee, B:133:0x0357, B:134:0x035e, B:32:0x0094, B:89:0x0221, B:35:0x00a5, B:84:0x0205, B:86:0x020b, B:38:0x00b6, B:77:0x01da, B:79:0x01e0, B:80:0x01eb, B:41:0x00cc, B:71:0x01bd, B:73:0x01c3, B:81:0x01ec, B:44:0x00df, B:62:0x0177, B:64:0x017d, B:65:0x0195, B:68:0x01a1, B:48:0x00f4, B:58:0x0159, B:59:0x015b, B:51:0x0102, B:53:0x011f, B:55:0x0125), top: B:145:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01a0  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x01bc A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x01c3 A[Catch: all -> 0x001e, CancellationException -> 0x0021, TryCatch #2 {CancellationException -> 0x0021, all -> 0x001e, blocks: (B:6:0x0013, B:132:0x034d, B:13:0x002a, B:129:0x0330, B:16:0x0035, B:124:0x0317, B:126:0x031d, B:19:0x0048, B:117:0x02e3, B:120:0x02f4, B:22:0x0053, B:112:0x02c8, B:114:0x02ce, B:26:0x0063, B:98:0x0262, B:100:0x0268, B:101:0x0273, B:29:0x007b, B:92:0x0242, B:94:0x0248, B:102:0x0274, B:104:0x027f, B:106:0x0289, B:108:0x028f, B:109:0x02a6, B:118:0x02ee, B:133:0x0357, B:134:0x035e, B:32:0x0094, B:89:0x0221, B:35:0x00a5, B:84:0x0205, B:86:0x020b, B:38:0x00b6, B:77:0x01da, B:79:0x01e0, B:80:0x01eb, B:41:0x00cc, B:71:0x01bd, B:73:0x01c3, B:81:0x01ec, B:44:0x00df, B:62:0x0177, B:64:0x017d, B:65:0x0195, B:68:0x01a1, B:48:0x00f4, B:58:0x0159, B:59:0x015b, B:51:0x0102, B:53:0x011f, B:55:0x0125), top: B:145:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01e0 A[Catch: all -> 0x001e, CancellationException -> 0x0021, TryCatch #2 {CancellationException -> 0x0021, all -> 0x001e, blocks: (B:6:0x0013, B:132:0x034d, B:13:0x002a, B:129:0x0330, B:16:0x0035, B:124:0x0317, B:126:0x031d, B:19:0x0048, B:117:0x02e3, B:120:0x02f4, B:22:0x0053, B:112:0x02c8, B:114:0x02ce, B:26:0x0063, B:98:0x0262, B:100:0x0268, B:101:0x0273, B:29:0x007b, B:92:0x0242, B:94:0x0248, B:102:0x0274, B:104:0x027f, B:106:0x0289, B:108:0x028f, B:109:0x02a6, B:118:0x02ee, B:133:0x0357, B:134:0x035e, B:32:0x0094, B:89:0x0221, B:35:0x00a5, B:84:0x0205, B:86:0x020b, B:38:0x00b6, B:77:0x01da, B:79:0x01e0, B:80:0x01eb, B:41:0x00cc, B:71:0x01bd, B:73:0x01c3, B:81:0x01ec, B:44:0x00df, B:62:0x0177, B:64:0x017d, B:65:0x0195, B:68:0x01a1, B:48:0x00f4, B:58:0x0159, B:59:0x015b, B:51:0x0102, B:53:0x011f, B:55:0x0125), top: B:145:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x01ec A[Catch: all -> 0x001e, CancellationException -> 0x0021, TryCatch #2 {CancellationException -> 0x0021, all -> 0x001e, blocks: (B:6:0x0013, B:132:0x034d, B:13:0x002a, B:129:0x0330, B:16:0x0035, B:124:0x0317, B:126:0x031d, B:19:0x0048, B:117:0x02e3, B:120:0x02f4, B:22:0x0053, B:112:0x02c8, B:114:0x02ce, B:26:0x0063, B:98:0x0262, B:100:0x0268, B:101:0x0273, B:29:0x007b, B:92:0x0242, B:94:0x0248, B:102:0x0274, B:104:0x027f, B:106:0x0289, B:108:0x028f, B:109:0x02a6, B:118:0x02ee, B:133:0x0357, B:134:0x035e, B:32:0x0094, B:89:0x0221, B:35:0x00a5, B:84:0x0205, B:86:0x020b, B:38:0x00b6, B:77:0x01da, B:79:0x01e0, B:80:0x01eb, B:41:0x00cc, B:71:0x01bd, B:73:0x01c3, B:81:0x01ec, B:44:0x00df, B:62:0x0177, B:64:0x017d, B:65:0x0195, B:68:0x01a1, B:48:0x00f4, B:58:0x0159, B:59:0x015b, B:51:0x0102, B:53:0x011f, B:55:0x0125), top: B:145:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:86:0x020b A[Catch: all -> 0x001e, CancellationException -> 0x0021, TryCatch #2 {CancellationException -> 0x0021, all -> 0x001e, blocks: (B:6:0x0013, B:132:0x034d, B:13:0x002a, B:129:0x0330, B:16:0x0035, B:124:0x0317, B:126:0x031d, B:19:0x0048, B:117:0x02e3, B:120:0x02f4, B:22:0x0053, B:112:0x02c8, B:114:0x02ce, B:26:0x0063, B:98:0x0262, B:100:0x0268, B:101:0x0273, B:29:0x007b, B:92:0x0242, B:94:0x0248, B:102:0x0274, B:104:0x027f, B:106:0x0289, B:108:0x028f, B:109:0x02a6, B:118:0x02ee, B:133:0x0357, B:134:0x035e, B:32:0x0094, B:89:0x0221, B:35:0x00a5, B:84:0x0205, B:86:0x020b, B:38:0x00b6, B:77:0x01da, B:79:0x01e0, B:80:0x01eb, B:41:0x00cc, B:71:0x01bd, B:73:0x01c3, B:81:0x01ec, B:44:0x00df, B:62:0x0177, B:64:0x017d, B:65:0x0195, B:68:0x01a1, B:48:0x00f4, B:58:0x0159, B:59:0x015b, B:51:0x0102, B:53:0x011f, B:55:0x0125), top: B:145:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0241 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0248 A[Catch: all -> 0x001e, CancellationException -> 0x0021, TryCatch #2 {CancellationException -> 0x0021, all -> 0x001e, blocks: (B:6:0x0013, B:132:0x034d, B:13:0x002a, B:129:0x0330, B:16:0x0035, B:124:0x0317, B:126:0x031d, B:19:0x0048, B:117:0x02e3, B:120:0x02f4, B:22:0x0053, B:112:0x02c8, B:114:0x02ce, B:26:0x0063, B:98:0x0262, B:100:0x0268, B:101:0x0273, B:29:0x007b, B:92:0x0242, B:94:0x0248, B:102:0x0274, B:104:0x027f, B:106:0x0289, B:108:0x028f, B:109:0x02a6, B:118:0x02ee, B:133:0x0357, B:134:0x035e, B:32:0x0094, B:89:0x0221, B:35:0x00a5, B:84:0x0205, B:86:0x020b, B:38:0x00b6, B:77:0x01da, B:79:0x01e0, B:80:0x01eb, B:41:0x00cc, B:71:0x01bd, B:73:0x01c3, B:81:0x01ec, B:44:0x00df, B:62:0x0177, B:64:0x017d, B:65:0x0195, B:68:0x01a1, B:48:0x00f4, B:58:0x0159, B:59:0x015b, B:51:0x0102, B:53:0x011f, B:55:0x0125), top: B:145:0x0008 }] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r12) {
        /*
            Method dump skipped, instructions count: 936
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.services.core.domain.task.InitializeSDK$doWork$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(g0 g0Var, c<? super Result<? extends Unit>> cVar) {
        return invoke2(g0Var, (c<? super Result<Unit>>) cVar);
    }
}
