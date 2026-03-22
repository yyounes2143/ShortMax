package androidx.datastore.core;

import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import ms.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: Add missing generic type declarations: [T] */
/* compiled from: DataStoreImpl.kt */
@Metadata
@d(c = "androidx.datastore.core.DataStoreImpl$readDataAndUpdateCache$4", f = "DataStoreImpl.kt", l = {306, 309}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class DataStoreImpl$readDataAndUpdateCache$4<T> extends SuspendLambda implements Function2<Boolean, c<? super Pair<? extends State<T>, ? extends Boolean>>, Object> {
    final /* synthetic */ int $cachedVersion;
    Object L$0;
    /* synthetic */ boolean Z$0;
    int label;
    final /* synthetic */ DataStoreImpl<T> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DataStoreImpl$readDataAndUpdateCache$4(DataStoreImpl<T> dataStoreImpl, int i10, c<? super DataStoreImpl$readDataAndUpdateCache$4> cVar) {
        super(2, cVar);
        this.this$0 = dataStoreImpl;
        this.$cachedVersion = i10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        DataStoreImpl$readDataAndUpdateCache$4 dataStoreImpl$readDataAndUpdateCache$4 = new DataStoreImpl$readDataAndUpdateCache$4(this.this$0, this.$cachedVersion, cVar);
        dataStoreImpl$readDataAndUpdateCache$4.Z$0 = ((Boolean) obj).booleanValue();
        return dataStoreImpl$readDataAndUpdateCache$4;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(Boolean bool, Object obj) {
        return invoke(bool.booleanValue(), (c) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [int] */
    /* JADX WARN: Type inference failed for: r1v14 */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v9 */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Throwable th2;
        int i10;
        boolean z10;
        State state;
        boolean z11;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        boolean z12 = this.label;
        try {
        } catch (Throwable th3) {
            if (z12 != 0) {
                InterProcessCoordinator coordinator = this.this$0.getCoordinator();
                this.L$0 = th3;
                this.Z$0 = z12;
                this.label = 2;
                Object version = coordinator.getVersion(this);
                if (version == f10) {
                    return f10;
                }
                z10 = z12;
                th2 = th3;
                obj = version;
            } else {
                boolean z13 = z12;
                th2 = th3;
                i10 = this.$cachedVersion;
                z10 = z13;
            }
        }
        if (z12 != 0) {
            if (z12 != 1) {
                if (z12 == 2) {
                    z10 = this.Z$0;
                    th2 = (Throwable) this.L$0;
                    f.b(obj);
                    i10 = ((Number) obj).intValue();
                    ReadException readException = new ReadException(th2, i10);
                    z11 = z10;
                    state = readException;
                    return k.a(state, kotlin.coroutines.jvm.internal.a.a(z11));
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            boolean z14 = this.Z$0;
            f.b(obj);
            z12 = z14;
        } else {
            f.b(obj);
            boolean z15 = this.Z$0;
            DataStoreImpl<T> dataStoreImpl = this.this$0;
            this.Z$0 = z15;
            this.label = 1;
            obj = dataStoreImpl.readDataOrHandleCorruption(z15, this);
            z12 = z15;
            if (obj == f10) {
                return f10;
            }
        }
        state = (State) obj;
        z11 = z12;
        return k.a(state, kotlin.coroutines.jvm.internal.a.a(z11));
    }

    @Nullable
    public final Object invoke(boolean z10, @Nullable c<? super Pair<? extends State<T>, Boolean>> cVar) {
        return ((DataStoreImpl$readDataAndUpdateCache$4) create(Boolean.valueOf(z10), cVar)).invokeSuspend(Unit.f60915a);
    }
}
