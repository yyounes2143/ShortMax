package androidx.datastore.core;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Add missing generic type declarations: [R] */
/* compiled from: DataStoreImpl.kt */
@Metadata
@d(c = "androidx.datastore.core.DataStoreImpl$doWithWriteFileLock$3", f = "DataStoreImpl.kt", l = {416}, m = "invokeSuspend")
/* loaded from: classes2.dex */
final class DataStoreImpl$doWithWriteFileLock$3<R> extends SuspendLambda implements Function1<c<? super R>, Object> {
    final /* synthetic */ Function1<c<? super R>, Object> $block;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public DataStoreImpl$doWithWriteFileLock$3(Function1<? super c<? super R>, ? extends Object> function1, c<? super DataStoreImpl$doWithWriteFileLock$3> cVar) {
        super(1, cVar);
        this.$block = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@NotNull c<?> cVar) {
        return new DataStoreImpl$doWithWriteFileLock$3(this.$block, cVar);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
        return invoke((c) ((c) obj));
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
            Function1<c<? super R>, Object> function1 = this.$block;
            this.label = 1;
            obj = function1.invoke(this);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }

    @Nullable
    public final Object invoke(@Nullable c<? super R> cVar) {
        return ((DataStoreImpl$doWithWriteFileLock$3) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
