package androidx.datastore.core;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Add missing generic type declarations: [T] */
/* compiled from: StorageConnection.kt */
@Metadata
@d(c = "androidx.datastore.core.StorageConnectionKt$writeData$2", f = "StorageConnection.kt", l = {77}, m = "invokeSuspend")
/* loaded from: classes2.dex */
final class StorageConnectionKt$writeData$2<T> extends SuspendLambda implements Function2<WriteScope<T>, c<? super Unit>, Object> {
    final /* synthetic */ T $value;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StorageConnectionKt$writeData$2(T t10, c<? super StorageConnectionKt$writeData$2> cVar) {
        super(2, cVar);
        this.$value = t10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        StorageConnectionKt$writeData$2 storageConnectionKt$writeData$2 = new StorageConnectionKt$writeData$2(this.$value, cVar);
        storageConnectionKt$writeData$2.L$0 = obj;
        return storageConnectionKt$writeData$2;
    }

    @Nullable
    public final Object invoke(@NotNull WriteScope<T> writeScope, @Nullable c<? super Unit> cVar) {
        return ((StorageConnectionKt$writeData$2) create(writeScope, cVar)).invokeSuspend(Unit.f60915a);
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
            T t10 = this.$value;
            this.label = 1;
            if (((WriteScope) this.L$0).writeData(t10, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(Object obj, c<? super Unit> cVar) {
        return invoke((WriteScope) ((WriteScope) obj), cVar);
    }
}
