package androidx.room.migration;

import androidx.sqlite.db.SupportSQLiteDatabase;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Migration.android.kt */
@Metadata
/* loaded from: classes2.dex */
final class MigrationImpl extends Migration {
    @NotNull
    private final Function1<SupportSQLiteDatabase, Unit> migrateCallback;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public MigrationImpl(int i10, int i11, @NotNull Function1<? super SupportSQLiteDatabase, Unit> migrateCallback) {
        super(i10, i11);
        Intrinsics.checkNotNullParameter(migrateCallback, "migrateCallback");
        this.migrateCallback = migrateCallback;
    }

    @NotNull
    public final Function1<SupportSQLiteDatabase, Unit> getMigrateCallback() {
        return this.migrateCallback;
    }

    @Override // androidx.room.migration.Migration
    public void migrate(@NotNull SupportSQLiteDatabase db2) {
        Intrinsics.checkNotNullParameter(db2, "db");
        this.migrateCallback.invoke(db2);
    }
}
