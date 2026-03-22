package androidx.work.impl.utils;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.model.Preference;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: IdGenerator.kt */
@Metadata
/* loaded from: classes2.dex */
public final class IdGeneratorKt {
    public static final int INITIAL_ID = 0;
    @NotNull
    public static final String NEXT_ALARM_MANAGER_ID_KEY = "next_alarm_manager_id";
    @NotNull
    public static final String NEXT_JOB_SCHEDULER_ID_KEY = "next_job_scheduler_id";
    @NotNull
    public static final String PREFERENCE_FILE_KEY = "androidx.work.util.id";

    public static final void migrateLegacyIdGenerator(@NotNull Context context, @NotNull SupportSQLiteDatabase sqLiteDatabase) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(sqLiteDatabase, "sqLiteDatabase");
        SharedPreferences sharedPreferences = context.getSharedPreferences(PREFERENCE_FILE_KEY, 0);
        if (sharedPreferences.contains(NEXT_JOB_SCHEDULER_ID_KEY) || sharedPreferences.contains(NEXT_JOB_SCHEDULER_ID_KEY)) {
            int i10 = sharedPreferences.getInt(NEXT_JOB_SCHEDULER_ID_KEY, 0);
            int i11 = sharedPreferences.getInt(NEXT_ALARM_MANAGER_ID_KEY, 0);
            sqLiteDatabase.beginTransaction();
            try {
                sqLiteDatabase.execSQL(PreferenceUtils.INSERT_PREFERENCE, new Object[]{NEXT_JOB_SCHEDULER_ID_KEY, Integer.valueOf(i10)});
                sqLiteDatabase.execSQL(PreferenceUtils.INSERT_PREFERENCE, new Object[]{NEXT_ALARM_MANAGER_ID_KEY, Integer.valueOf(i11)});
                sharedPreferences.edit().clear().apply();
                sqLiteDatabase.setTransactionSuccessful();
            } finally {
                sqLiteDatabase.endTransaction();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int nextId(WorkDatabase workDatabase, String str) {
        int i10;
        Long longValue = workDatabase.preferenceDao().getLongValue(str);
        int i11 = 0;
        if (longValue != null) {
            i10 = (int) longValue.longValue();
        } else {
            i10 = 0;
        }
        if (i10 != Integer.MAX_VALUE) {
            i11 = i10 + 1;
        }
        updatePreference(workDatabase, str, i11);
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void updatePreference(WorkDatabase workDatabase, String str, int i10) {
        workDatabase.preferenceDao().insertPreference(new Preference(str, Long.valueOf(i10)));
    }
}
