package androidx.work.impl;

import androidx.room.RoomDatabase;
import androidx.sqlite.db.SupportSQLiteDatabase;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: WorkDatabase.kt */
@Metadata
/* loaded from: classes2.dex */
public final class CleanupCallback extends RoomDatabase.Callback {
    @NotNull
    public static final CleanupCallback INSTANCE = new CleanupCallback();

    private CleanupCallback() {
    }

    private final String getPruneSQL() {
        return "DELETE FROM workspec WHERE state IN (2, 3, 5) AND (last_enqueue_time + minimum_retention_duration) < " + getPruneDate() + " AND (SELECT COUNT(*)=0 FROM dependency WHERE     prerequisite_id=id AND     work_spec_id NOT IN         (SELECT id FROM workspec WHERE state IN (2, 3, 5)))";
    }

    public final long getPruneDate() {
        long j10;
        long currentTimeMillis = System.currentTimeMillis();
        j10 = WorkDatabaseKt.PRUNE_THRESHOLD_MILLIS;
        return currentTimeMillis - j10;
    }

    @Override // androidx.room.RoomDatabase.Callback
    public void onOpen(@NotNull SupportSQLiteDatabase db2) {
        Intrinsics.checkNotNullParameter(db2, "db");
        super.onOpen(db2);
        db2.beginTransaction();
        try {
            db2.execSQL(getPruneSQL());
            db2.setTransactionSuccessful();
        } finally {
            db2.endTransaction();
        }
    }
}
