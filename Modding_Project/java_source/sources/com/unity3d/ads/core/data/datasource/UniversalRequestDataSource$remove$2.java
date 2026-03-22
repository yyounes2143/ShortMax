package com.unity3d.ads.core.data.datasource;

import com.unity3d.ads.datastore.UniversalRequestStoreOuterClass;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: UniversalRequestDataSource.kt */
@Metadata
@d(c = "com.unity3d.ads.core.data.datasource.UniversalRequestDataSource$remove$2", f = "UniversalRequestDataSource.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class UniversalRequestDataSource$remove$2 extends SuspendLambda implements Function2<UniversalRequestStoreOuterClass.UniversalRequestStore, c<? super UniversalRequestStoreOuterClass.UniversalRequestStore>, Object> {
    final /* synthetic */ String $key;
    /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UniversalRequestDataSource$remove$2(String str, c<? super UniversalRequestDataSource$remove$2> cVar) {
        super(2, cVar);
        this.$key = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        UniversalRequestDataSource$remove$2 universalRequestDataSource$remove$2 = new UniversalRequestDataSource$remove$2(this.$key, cVar);
        universalRequestDataSource$remove$2.L$0 = obj;
        return universalRequestDataSource$remove$2;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull UniversalRequestStoreOuterClass.UniversalRequestStore universalRequestStore, @Nullable c<? super UniversalRequestStoreOuterClass.UniversalRequestStore> cVar) {
        return ((UniversalRequestDataSource$remove$2) create(universalRequestStore, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        kotlin.coroutines.intrinsics.a.f();
        if (this.label == 0) {
            f.b(obj);
            UniversalRequestStoreOuterClass.UniversalRequestStore.Builder builder = ((UniversalRequestStoreOuterClass.UniversalRequestStore) this.L$0).toBuilder();
            builder.removeUniversalRequestMap(this.$key);
            UniversalRequestStoreOuterClass.UniversalRequestStore build = builder.build();
            Intrinsics.checkNotNullExpressionValue(build, "dataBuilder.build()");
            return build;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
