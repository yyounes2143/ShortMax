package androidx.work.impl;

import androidx.room.migration.Migration;
import androidx.sqlite.db.SupportSQLiteDatabase;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: WorkDatabaseMigrations.kt */
@Metadata
/* loaded from: classes2.dex */
public final class Migration_8_9 extends Migration {
    @NotNull
    public static final Migration_8_9 INSTANCE = new Migration_8_9();

    private Migration_8_9() {
        super(8, 9);
    }

    @Override // androidx.room.migration.Migration
    public void migrate(@NotNull SupportSQLiteDatabase db2) {
        Intrinsics.checkNotNullParameter(db2, "db");
        db2.execSQL("ALTER TABLE workspec ADD COLUMN `run_in_foreground` INTEGER NOT NULL DEFAULT 0");
    }
}
