package com.unity3d.services.core.domain.task;

import com.unity3d.ads.datastore.ByteStringStoreOuterClass;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: InitializeStateComplete.kt */
@Metadata
@d(c = "com.unity3d.services.core.domain.task.InitializeStateComplete$doWork$2$1$1", f = "InitializeStateComplete.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class InitializeStateComplete$doWork$2$1$1 extends SuspendLambda implements Function2<ByteStringStoreOuterClass.ByteStringStore, c<? super ByteStringStoreOuterClass.ByteStringStore>, Object> {
    /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    public InitializeStateComplete$doWork$2$1$1(c<? super InitializeStateComplete$doWork$2$1$1> cVar) {
        super(2, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        InitializeStateComplete$doWork$2$1$1 initializeStateComplete$doWork$2$1$1 = new InitializeStateComplete$doWork$2$1$1(cVar);
        initializeStateComplete$doWork$2$1$1.L$0 = obj;
        return initializeStateComplete$doWork$2$1$1;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull ByteStringStoreOuterClass.ByteStringStore byteStringStore, @Nullable c<? super ByteStringStoreOuterClass.ByteStringStore> cVar) {
        return ((InitializeStateComplete$doWork$2$1$1) create(byteStringStore, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        a.f();
        if (this.label == 0) {
            f.b(obj);
            ByteStringStoreOuterClass.ByteStringStore build = ((ByteStringStoreOuterClass.ByteStringStore) this.L$0).toBuilder().clear().build();
            Intrinsics.checkNotNullExpressionValue(build, "it.toBuilder().clear().build()");
            return build;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
