package androidx.datastore.core;

import at.n;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Add missing generic type declarations: [T] */
/* compiled from: StorageConnection.kt */
@Metadata
@d(c = "androidx.datastore.core.StorageConnectionKt$readData$2", f = "StorageConnection.kt", l = {74}, m = "invokeSuspend")
/* loaded from: classes2.dex */
final class StorageConnectionKt$readData$2<T> extends SuspendLambda implements n<ReadScope<T>, Boolean, c<? super T>, Object> {
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    public StorageConnectionKt$readData$2(c<? super StorageConnectionKt$readData$2> cVar) {
        super(3, cVar);
    }

    @Nullable
    public final Object invoke(@NotNull ReadScope<T> readScope, boolean z10, @Nullable c<? super T> cVar) {
        StorageConnectionKt$readData$2 storageConnectionKt$readData$2 = new StorageConnectionKt$readData$2(cVar);
        storageConnectionKt$readData$2.L$0 = readScope;
        return storageConnectionKt$readData$2.invokeSuspend(Unit.f60915a);
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
            this.label = 1;
            obj = ((ReadScope) this.L$0).readData(this);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }

    @Override // at.n
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Boolean bool, Object obj2) {
        return invoke((ReadScope) obj, bool.booleanValue(), (c) obj2);
    }
}
