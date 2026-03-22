package androidx.work.impl;

import android.content.Context;
import androidx.room.migration.Migration;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.work.impl.utils.IdGeneratorKt;
import androidx.work.impl.utils.PreferenceUtils;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: WorkDatabaseMigrations.kt */
@Metadata
/* loaded from: classes2.dex */
public final class WorkMigration9To10 extends Migration {
    @NotNull
    private final Context context;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WorkMigration9To10(@NotNull Context context) {
        super(9, 10);
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
    }

    @Override // androidx.room.migration.Migration
    public void migrate(@NotNull SupportSQLiteDatabase db2) {
        Intrinsics.checkNotNullParameter(db2, "db");
        db2.execSQL(PreferenceUtils.CREATE_PREFERENCE);
        PreferenceUtils.migrateLegacyPreferences(this.context, db2);
        IdGeneratorKt.migrateLegacyIdGenerator(this.context, db2);
    }
}
