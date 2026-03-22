package com.unity3d.ads.core.data.datasource;

import androidx.datastore.core.CorruptionException;
import at.n;
import com.google.protobuf.ByteString;
import com.unity3d.ads.datastore.ByteStringStoreKt;
import com.unity3d.ads.datastore.ByteStringStoreOuterClass;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kt.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AndroidByteStringDataSource.kt */
@Metadata
@d(c = "com.unity3d.ads.core.data.datasource.AndroidByteStringDataSource$get$2", f = "AndroidByteStringDataSource.kt", l = {18}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nAndroidByteStringDataSource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidByteStringDataSource.kt\ncom/unity3d/ads/core/data/datasource/AndroidByteStringDataSource$get$2\n+ 2 ByteStringStoreKt.kt\ncom/unity3d/ads/datastore/ByteStringStoreKtKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,33:1\n10#2:34\n1#3:35\n*S KotlinDebug\n*F\n+ 1 AndroidByteStringDataSource.kt\ncom/unity3d/ads/core/data/datasource/AndroidByteStringDataSource$get$2\n*L\n18#1:34\n18#1:35\n*E\n"})
/* loaded from: classes7.dex */
final class AndroidByteStringDataSource$get$2 extends SuspendLambda implements n<c<? super ByteStringStoreOuterClass.ByteStringStore>, Throwable, rs.c<? super Unit>, Object> {
    private /* synthetic */ Object L$0;
    /* synthetic */ Object L$1;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AndroidByteStringDataSource$get$2(rs.c<? super AndroidByteStringDataSource$get$2> cVar) {
        super(3, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            c cVar = (c) this.L$0;
            Throwable th2 = (Throwable) this.L$1;
            if (th2 instanceof CorruptionException) {
                ByteStringStoreKt.Dsl.Companion companion = ByteStringStoreKt.Dsl.Companion;
                ByteStringStoreOuterClass.ByteStringStore.Builder newBuilder = ByteStringStoreOuterClass.ByteStringStore.newBuilder();
                Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
                ByteStringStoreKt.Dsl _create = companion._create(newBuilder);
                ByteString EMPTY = ByteString.EMPTY;
                Intrinsics.checkNotNullExpressionValue(EMPTY, "EMPTY");
                _create.setData(EMPTY);
                ByteStringStoreOuterClass.ByteStringStore _build = _create._build();
                this.L$0 = null;
                this.label = 1;
                if (cVar.emit(_build, this) == f10) {
                    return f10;
                }
            } else {
                throw th2;
            }
        }
        return Unit.f60915a;
    }

    @Override // at.n
    @Nullable
    public final Object invoke(@NotNull c<? super ByteStringStoreOuterClass.ByteStringStore> cVar, @NotNull Throwable th2, @Nullable rs.c<? super Unit> cVar2) {
        AndroidByteStringDataSource$get$2 androidByteStringDataSource$get$2 = new AndroidByteStringDataSource$get$2(cVar2);
        androidByteStringDataSource$get$2.L$0 = cVar;
        androidByteStringDataSource$get$2.L$1 = th2;
        return androidByteStringDataSource$get$2.invokeSuspend(Unit.f60915a);
    }
}
