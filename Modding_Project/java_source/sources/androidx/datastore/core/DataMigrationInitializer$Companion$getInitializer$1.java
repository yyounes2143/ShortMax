package androidx.datastore.core;

import androidx.datastore.core.DataMigrationInitializer;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: Add missing generic type declarations: [T] */
/* compiled from: DataMigrationInitializer.kt */
@Metadata
@d(c = "androidx.datastore.core.DataMigrationInitializer$Companion$getInitializer$1", f = "DataMigrationInitializer.kt", l = {33}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class DataMigrationInitializer$Companion$getInitializer$1<T> extends SuspendLambda implements Function2<InitializerApi<T>, c<? super Unit>, Object> {
    final /* synthetic */ List<DataMigration<T>> $migrations;
    /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public DataMigrationInitializer$Companion$getInitializer$1(List<? extends DataMigration<T>> list, c<? super DataMigrationInitializer$Companion$getInitializer$1> cVar) {
        super(2, cVar);
        this.$migrations = list;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        DataMigrationInitializer$Companion$getInitializer$1 dataMigrationInitializer$Companion$getInitializer$1 = new DataMigrationInitializer$Companion$getInitializer$1(this.$migrations, cVar);
        dataMigrationInitializer$Companion$getInitializer$1.L$0 = obj;
        return dataMigrationInitializer$Companion$getInitializer$1;
    }

    @Nullable
    public final Object invoke(@NotNull InitializerApi<T> initializerApi, @Nullable c<? super Unit> cVar) {
        return ((DataMigrationInitializer$Companion$getInitializer$1) create(initializerApi, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object runMigrations;
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
            DataMigrationInitializer.Companion companion = DataMigrationInitializer.Companion;
            List<DataMigration<T>> list = this.$migrations;
            this.label = 1;
            runMigrations = companion.runMigrations(list, (InitializerApi) this.L$0, this);
            if (runMigrations == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(Object obj, c<? super Unit> cVar) {
        return invoke((InitializerApi) ((InitializerApi) obj), cVar);
    }
}
