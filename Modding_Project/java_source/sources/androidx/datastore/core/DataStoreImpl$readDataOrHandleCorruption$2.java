package androidx.datastore.core;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: Add missing generic type declarations: [T] */
/* compiled from: DataStoreImpl.kt */
@Metadata
@d(c = "androidx.datastore.core.DataStoreImpl$readDataOrHandleCorruption$2", f = "DataStoreImpl.kt", l = {370, 371}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class DataStoreImpl$readDataOrHandleCorruption$2<T> extends SuspendLambda implements Function2<Boolean, c<? super Data<T>>, Object> {
    final /* synthetic */ int $preLockVersion;
    Object L$0;
    /* synthetic */ boolean Z$0;
    int label;
    final /* synthetic */ DataStoreImpl<T> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DataStoreImpl$readDataOrHandleCorruption$2(DataStoreImpl<T> dataStoreImpl, int i10, c<? super DataStoreImpl$readDataOrHandleCorruption$2> cVar) {
        super(2, cVar);
        this.this$0 = dataStoreImpl;
        this.$preLockVersion = i10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        DataStoreImpl$readDataOrHandleCorruption$2 dataStoreImpl$readDataOrHandleCorruption$2 = new DataStoreImpl$readDataOrHandleCorruption$2(this.this$0, this.$preLockVersion, cVar);
        dataStoreImpl$readDataOrHandleCorruption$2.Z$0 = ((Boolean) obj).booleanValue();
        return dataStoreImpl$readDataOrHandleCorruption$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(Boolean bool, Object obj) {
        return invoke(bool.booleanValue(), (c) obj);
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x005e  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r6) {
        /*
            r5 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
            int r1 = r5.label
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L22
            if (r1 == r3) goto L1c
            if (r1 != r2) goto L14
            java.lang.Object r0 = r5.L$0
            kotlin.f.b(r6)
            goto L49
        L14:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L1c:
            boolean r1 = r5.Z$0
            kotlin.f.b(r6)
            goto L34
        L22:
            kotlin.f.b(r6)
            boolean r1 = r5.Z$0
            androidx.datastore.core.DataStoreImpl<T> r6 = r5.this$0
            r5.Z$0 = r1
            r5.label = r3
            java.lang.Object r6 = androidx.datastore.core.DataStoreImpl.access$readDataFromFileOrDefault(r6, r5)
            if (r6 != r0) goto L34
            return r0
        L34:
            if (r1 == 0) goto L50
            androidx.datastore.core.DataStoreImpl<T> r1 = r5.this$0
            androidx.datastore.core.InterProcessCoordinator r1 = androidx.datastore.core.DataStoreImpl.access$getCoordinator(r1)
            r5.L$0 = r6
            r5.label = r2
            java.lang.Object r1 = r1.getVersion(r5)
            if (r1 != r0) goto L47
            return r0
        L47:
            r0 = r6
            r6 = r1
        L49:
            java.lang.Number r6 = (java.lang.Number) r6
            int r6 = r6.intValue()
            goto L55
        L50:
            int r0 = r5.$preLockVersion
            r4 = r0
            r0 = r6
            r6 = r4
        L55:
            androidx.datastore.core.Data r1 = new androidx.datastore.core.Data
            if (r0 == 0) goto L5e
            int r2 = r0.hashCode()
            goto L5f
        L5e:
            r2 = 0
        L5f:
            r1.<init>(r0, r2, r6)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.DataStoreImpl$readDataOrHandleCorruption$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Nullable
    public final Object invoke(boolean z10, @Nullable c<? super Data<T>> cVar) {
        return ((DataStoreImpl$readDataOrHandleCorruption$2) create(Boolean.valueOf(z10), cVar)).invokeSuspend(Unit.f60915a);
    }
}
