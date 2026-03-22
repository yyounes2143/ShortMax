package com.unity3d.ads.core.data.datasource;

import com.google.protobuf.ByteString;
import com.unity3d.ads.datastore.ByteStringStoreOuterClass;
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
/* compiled from: AndroidByteStringDataSource.kt */
@Metadata
@d(c = "com.unity3d.ads.core.data.datasource.AndroidByteStringDataSource$set$2", f = "AndroidByteStringDataSource.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class AndroidByteStringDataSource$set$2 extends SuspendLambda implements Function2<ByteStringStoreOuterClass.ByteStringStore, c<? super ByteStringStoreOuterClass.ByteStringStore>, Object> {
    final /* synthetic */ ByteString $data;
    /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidByteStringDataSource$set$2(ByteString byteString, c<? super AndroidByteStringDataSource$set$2> cVar) {
        super(2, cVar);
        this.$data = byteString;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        AndroidByteStringDataSource$set$2 androidByteStringDataSource$set$2 = new AndroidByteStringDataSource$set$2(this.$data, cVar);
        androidByteStringDataSource$set$2.L$0 = obj;
        return androidByteStringDataSource$set$2;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull ByteStringStoreOuterClass.ByteStringStore byteStringStore, @Nullable c<? super ByteStringStoreOuterClass.ByteStringStore> cVar) {
        return ((AndroidByteStringDataSource$set$2) create(byteStringStore, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        kotlin.coroutines.intrinsics.a.f();
        if (this.label == 0) {
            f.b(obj);
            ByteStringStoreOuterClass.ByteStringStore build = ((ByteStringStoreOuterClass.ByteStringStore) this.L$0).toBuilder().setData(this.$data).build();
            Intrinsics.checkNotNullExpressionValue(build, "currentData.toBuilder()\n…\n                .build()");
            return build;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
