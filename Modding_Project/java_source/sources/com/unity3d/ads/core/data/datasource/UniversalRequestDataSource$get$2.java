package com.unity3d.ads.core.data.datasource;

import androidx.datastore.core.CorruptionException;
import at.n;
import com.unity3d.ads.datastore.UniversalRequestStoreOuterClass;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.internal.Intrinsics;
import kt.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: UniversalRequestDataSource.kt */
@Metadata
@d(c = "com.unity3d.ads.core.data.datasource.UniversalRequestDataSource$get$2", f = "UniversalRequestDataSource.kt", l = {16}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class UniversalRequestDataSource$get$2 extends SuspendLambda implements n<c<? super UniversalRequestStoreOuterClass.UniversalRequestStore>, Throwable, rs.c<? super Unit>, Object> {
    private /* synthetic */ Object L$0;
    /* synthetic */ Object L$1;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    public UniversalRequestDataSource$get$2(rs.c<? super UniversalRequestDataSource$get$2> cVar) {
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
                UniversalRequestStoreOuterClass.UniversalRequestStore defaultInstance = UniversalRequestStoreOuterClass.UniversalRequestStore.getDefaultInstance();
                Intrinsics.checkNotNullExpressionValue(defaultInstance, "getDefaultInstance()");
                this.L$0 = null;
                this.label = 1;
                if (cVar.emit(defaultInstance, this) == f10) {
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
    public final Object invoke(@NotNull c<? super UniversalRequestStoreOuterClass.UniversalRequestStore> cVar, @NotNull Throwable th2, @Nullable rs.c<? super Unit> cVar2) {
        UniversalRequestDataSource$get$2 universalRequestDataSource$get$2 = new UniversalRequestDataSource$get$2(cVar2);
        universalRequestDataSource$get$2.L$0 = cVar;
        universalRequestDataSource$get$2.L$1 = th2;
        return universalRequestDataSource$get$2.invokeSuspend(Unit.f60915a);
    }
}
