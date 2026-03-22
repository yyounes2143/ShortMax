package androidx.datastore.core;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: Add missing generic type declarations: [T] */
/* compiled from: DataStoreImpl.kt */
@Metadata
@d(c = "androidx.datastore.core.DataStoreImpl$transformAndWrite$2", f = "DataStoreImpl.kt", l = {330, 331, 337}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class DataStoreImpl$transformAndWrite$2<T> extends SuspendLambda implements Function1<c<? super T>, Object> {
    final /* synthetic */ CoroutineContext $callerContext;
    final /* synthetic */ Function2<T, c<? super T>, Object> $transform;
    Object L$0;
    int label;
    final /* synthetic */ DataStoreImpl<T> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public DataStoreImpl$transformAndWrite$2(DataStoreImpl<T> dataStoreImpl, CoroutineContext coroutineContext, Function2<? super T, ? super c<? super T>, ? extends Object> function2, c<? super DataStoreImpl$transformAndWrite$2> cVar) {
        super(1, cVar);
        this.this$0 = dataStoreImpl;
        this.$callerContext = coroutineContext;
        this.$transform = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@NotNull c<?> cVar) {
        return new DataStoreImpl$transformAndWrite$2(this.this$0, this.$callerContext, this.$transform, cVar);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
        return invoke((c) ((c) obj));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:20:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:26:? A[RETURN, SYNTHETIC] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r9) {
        /*
            r8 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
            int r1 = r8.label
            r2 = 3
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L2b
            if (r1 == r4) goto L27
            if (r1 == r3) goto L1f
            if (r1 != r2) goto L17
            java.lang.Object r0 = r8.L$0
            kotlin.f.b(r9)
            goto L6c
        L17:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r0)
            throw r9
        L1f:
            java.lang.Object r1 = r8.L$0
            androidx.datastore.core.Data r1 = (androidx.datastore.core.Data) r1
            kotlin.f.b(r9)
            goto L51
        L27:
            kotlin.f.b(r9)
            goto L39
        L2b:
            kotlin.f.b(r9)
            androidx.datastore.core.DataStoreImpl<T> r9 = r8.this$0
            r8.label = r4
            java.lang.Object r9 = androidx.datastore.core.DataStoreImpl.access$readDataOrHandleCorruption(r9, r4, r8)
            if (r9 != r0) goto L39
            return r0
        L39:
            r1 = r9
            androidx.datastore.core.Data r1 = (androidx.datastore.core.Data) r1
            kotlin.coroutines.CoroutineContext r9 = r8.$callerContext
            androidx.datastore.core.DataStoreImpl$transformAndWrite$2$newData$1 r5 = new androidx.datastore.core.DataStoreImpl$transformAndWrite$2$newData$1
            kotlin.jvm.functions.Function2<T, rs.c<? super T>, java.lang.Object> r6 = r8.$transform
            r7 = 0
            r5.<init>(r6, r1, r7)
            r8.L$0 = r1
            r8.label = r3
            java.lang.Object r9 = gt.e.g(r9, r5, r8)
            if (r9 != r0) goto L51
            return r0
        L51:
            r1.checkHashCode()
            java.lang.Object r1 = r1.getValue()
            boolean r1 = kotlin.jvm.internal.Intrinsics.areEqual(r1, r9)
            if (r1 != 0) goto L6d
            androidx.datastore.core.DataStoreImpl<T> r1 = r8.this$0
            r8.L$0 = r9
            r8.label = r2
            java.lang.Object r1 = r1.writeData$datastore_core_release(r9, r4, r8)
            if (r1 != r0) goto L6b
            return r0
        L6b:
            r0 = r9
        L6c:
            r9 = r0
        L6d:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.DataStoreImpl$transformAndWrite$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Nullable
    public final Object invoke(@Nullable c<? super T> cVar) {
        return ((DataStoreImpl$transformAndWrite$2) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
