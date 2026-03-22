package androidx.work.impl;

import androidx.room.migration.Migration;
import androidx.sqlite.db.SupportSQLiteDatabase;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: WorkDatabaseMigrations.kt */
@Metadata
/* loaded from: classes2.dex */
public final class Migration_12_13 extends Migration {
    @NotNull
    public static final Migration_12_13 INSTANCE = new Migration_12_13();

    private Migration_12_13() {
        super(12, 13);
    }

    @Override // androidx.room.migration.Migration
    public void migrate(@NotNull SupportSQLiteDatabase db2) {
        Intrinsics.checkNotNullParameter(db2, "db");
        db2.execSQL("UPDATE workspec SET required_network_type = 0 WHERE required_network_type IS NULL ");
        db2.execSQL("UPDATE workspec SET content_uri_triggers = x'' WHERE content_uri_triggers is NULL");
    }
}
