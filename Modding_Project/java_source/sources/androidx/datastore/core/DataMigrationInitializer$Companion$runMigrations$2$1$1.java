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
/* compiled from: DataMigrationInitializer.kt */
@Metadata
@d(c = "androidx.datastore.core.DataMigrationInitializer$Companion$runMigrations$2$1$1", f = "DataMigrationInitializer.kt", l = {45}, m = "invokeSuspend")
/* loaded from: classes2.dex */
final class DataMigrationInitializer$Companion$runMigrations$2$1$1 extends SuspendLambda implements Function1<c<? super Unit>, Object> {
    final /* synthetic */ DataMigration<T> $migration;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DataMigrationInitializer$Companion$runMigrations$2$1$1(DataMigration<T> dataMigration, c<? super DataMigrationInitializer$Companion$runMigrations$2$1$1> cVar) {
        super(1, cVar);
        this.$migration = dataMigration;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@NotNull c<?> cVar) {
        return new DataMigrationInitializer$Companion$runMigrations$2$1$1(this.$migration, cVar);
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
            DataMigration<T> dataMigration = this.$migration;
            this.label = 1;
            if (dataMigration.cleanUp(this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }

    @Override // kotlin.jvm.functions.Function1
    @Nullable
    public final Object invoke(@Nullable c<? super Unit> cVar) {
        return ((DataMigrationInitializer$Companion$runMigrations$2$1$1) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
