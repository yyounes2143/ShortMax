package androidx.work.impl.model;

import android.database.Cursor;
import androidx.collection.ArrayMap;
import androidx.lifecycle.LiveData;
import androidx.room.EntityDeletionOrUpdateAdapter;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.SharedSQLiteStatement;
import androidx.room.util.CursorUtil;
import androidx.room.util.DBUtil;
import androidx.room.util.StringUtil;
import androidx.sqlite.db.SupportSQLiteStatement;
import androidx.work.BackoffPolicy;
import androidx.work.Constraints;
import androidx.work.Data;
import androidx.work.NetworkType;
import androidx.work.OutOfQuotaPolicy;
import androidx.work.WorkInfo;
import androidx.work.impl.model.WorkSpec;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
/* loaded from: classes2.dex */
public final class WorkSpecDao_Impl implements WorkSpecDao {
    private final RoomDatabase __db;
    private final EntityInsertionAdapter<WorkSpec> __insertionAdapterOfWorkSpec;
    private final SharedSQLiteStatement __preparedStmtOfDelete;
    private final SharedSQLiteStatement __preparedStmtOfIncrementGeneration;
    private final SharedSQLiteStatement __preparedStmtOfIncrementPeriodCount;
    private final SharedSQLiteStatement __preparedStmtOfIncrementWorkSpecRunAttemptCount;
    private final SharedSQLiteStatement __preparedStmtOfMarkWorkSpecScheduled;
    private final SharedSQLiteStatement __preparedStmtOfPruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast;
    private final SharedSQLiteStatement __preparedStmtOfResetScheduledState;
    private final SharedSQLiteStatement __preparedStmtOfResetWorkSpecRunAttemptCount;
    private final SharedSQLiteStatement __preparedStmtOfSetLastEnqueuedTime;
    private final SharedSQLiteStatement __preparedStmtOfSetOutput;
    private final SharedSQLiteStatement __preparedStmtOfSetState;
    private final EntityDeletionOrUpdateAdapter<WorkSpec> __updateAdapterOfWorkSpec;

    public WorkSpecDao_Impl(RoomDatabase roomDatabase) {
        this.__db = roomDatabase;
        this.__insertionAdapterOfWorkSpec = new EntityInsertionAdapter<WorkSpec>(roomDatabase) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.1
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "INSERT OR IGNORE INTO `WorkSpec` (`id`,`state`,`worker_class_name`,`input_merger_class_name`,`input`,`output`,`initial_delay`,`interval_duration`,`flex_duration`,`run_attempt_count`,`backoff_policy`,`backoff_delay_duration`,`last_enqueue_time`,`minimum_retention_duration`,`schedule_requested_at`,`run_in_foreground`,`out_of_quota_policy`,`period_count`,`generation`,`required_network_type`,`requires_charging`,`requires_device_idle`,`requires_battery_not_low`,`requires_storage_not_low`,`trigger_content_update_delay`,`trigger_max_content_delay`,`content_uri_triggers`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            }

            @Override // androidx.room.EntityInsertionAdapter
            public void bind(SupportSQLiteStatement supportSQLiteStatement, WorkSpec workSpec) {
                String str = workSpec.f1724id;
                if (str == null) {
                    supportSQLiteStatement.bindNull(1);
                } else {
                    supportSQLiteStatement.bindString(1, str);
                }
                WorkTypeConverters workTypeConverters = WorkTypeConverters.INSTANCE;
                supportSQLiteStatement.bindLong(2, WorkTypeConverters.stateToInt(workSpec.state));
                String str2 = workSpec.workerClassName;
                if (str2 == null) {
                    supportSQLiteStatement.bindNull(3);
                } else {
                    supportSQLiteStatement.bindString(3, str2);
                }
                String str3 = workSpec.inputMergerClassName;
                if (str3 == null) {
                    supportSQLiteStatement.bindNull(4);
                } else {
                    supportSQLiteStatement.bindString(4, str3);
                }
                byte[] byteArrayInternal = Data.toByteArrayInternal(workSpec.input);
                if (byteArrayInternal == null) {
                    supportSQLiteStatement.bindNull(5);
                } else {
                    supportSQLiteStatement.bindBlob(5, byteArrayInternal);
                }
                byte[] byteArrayInternal2 = Data.toByteArrayInternal(workSpec.output);
                if (byteArrayInternal2 == null) {
                    supportSQLiteStatement.bindNull(6);
                } else {
                    supportSQLiteStatement.bindBlob(6, byteArrayInternal2);
                }
                supportSQLiteStatement.bindLong(7, workSpec.initialDelay);
                supportSQLiteStatement.bindLong(8, workSpec.intervalDuration);
                supportSQLiteStatement.bindLong(9, workSpec.flexDuration);
                supportSQLiteStatement.bindLong(10, workSpec.runAttemptCount);
                supportSQLiteStatement.bindLong(11, WorkTypeConverters.backoffPolicyToInt(workSpec.backoffPolicy));
                supportSQLiteStatement.bindLong(12, workSpec.backoffDelayDuration);
                supportSQLiteStatement.bindLong(13, workSpec.lastEnqueueTime);
                supportSQLiteStatement.bindLong(14, workSpec.minimumRetentionDuration);
                supportSQLiteStatement.bindLong(15, workSpec.scheduleRequestedAt);
                supportSQLiteStatement.bindLong(16, workSpec.expedited ? 1L : 0L);
                supportSQLiteStatement.bindLong(17, WorkTypeConverters.outOfQuotaPolicyToInt(workSpec.outOfQuotaPolicy));
                supportSQLiteStatement.bindLong(18, workSpec.getPeriodCount());
                supportSQLiteStatement.bindLong(19, workSpec.getGeneration());
                Constraints constraints = workSpec.constraints;
                if (constraints != null) {
                    supportSQLiteStatement.bindLong(20, WorkTypeConverters.networkTypeToInt(constraints.getRequiredNetworkType()));
                    supportSQLiteStatement.bindLong(21, constraints.requiresCharging() ? 1L : 0L);
                    supportSQLiteStatement.bindLong(22, constraints.requiresDeviceIdle() ? 1L : 0L);
                    supportSQLiteStatement.bindLong(23, constraints.requiresBatteryNotLow() ? 1L : 0L);
                    supportSQLiteStatement.bindLong(24, constraints.requiresStorageNotLow() ? 1L : 0L);
                    supportSQLiteStatement.bindLong(25, constraints.getContentTriggerUpdateDelayMillis());
                    supportSQLiteStatement.bindLong(26, constraints.getContentTriggerMaxDelayMillis());
                    byte[] ofTriggersToByteArray = WorkTypeConverters.setOfTriggersToByteArray(constraints.getContentUriTriggers());
                    if (ofTriggersToByteArray == null) {
                        supportSQLiteStatement.bindNull(27);
                        return;
                    } else {
                        supportSQLiteStatement.bindBlob(27, ofTriggersToByteArray);
                        return;
                    }
                }
                supportSQLiteStatement.bindNull(20);
                supportSQLiteStatement.bindNull(21);
                supportSQLiteStatement.bindNull(22);
                supportSQLiteStatement.bindNull(23);
                supportSQLiteStatement.bindNull(24);
                supportSQLiteStatement.bindNull(25);
                supportSQLiteStatement.bindNull(26);
                supportSQLiteStatement.bindNull(27);
            }
        };
        this.__updateAdapterOfWorkSpec = new EntityDeletionOrUpdateAdapter<WorkSpec>(roomDatabase) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.2
            @Override // androidx.room.EntityDeletionOrUpdateAdapter, androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE OR ABORT `WorkSpec` SET `id` = ?,`state` = ?,`worker_class_name` = ?,`input_merger_class_name` = ?,`input` = ?,`output` = ?,`initial_delay` = ?,`interval_duration` = ?,`flex_duration` = ?,`run_attempt_count` = ?,`backoff_policy` = ?,`backoff_delay_duration` = ?,`last_enqueue_time` = ?,`minimum_retention_duration` = ?,`schedule_requested_at` = ?,`run_in_foreground` = ?,`out_of_quota_policy` = ?,`period_count` = ?,`generation` = ?,`required_network_type` = ?,`requires_charging` = ?,`requires_device_idle` = ?,`requires_battery_not_low` = ?,`requires_storage_not_low` = ?,`trigger_content_update_delay` = ?,`trigger_max_content_delay` = ?,`content_uri_triggers` = ? WHERE `id` = ?";
            }

            @Override // androidx.room.EntityDeletionOrUpdateAdapter
            public void bind(SupportSQLiteStatement supportSQLiteStatement, WorkSpec workSpec) {
                String str = workSpec.f1724id;
                if (str == null) {
                    supportSQLiteStatement.bindNull(1);
                } else {
                    supportSQLiteStatement.bindString(1, str);
                }
                WorkTypeConverters workTypeConverters = WorkTypeConverters.INSTANCE;
                supportSQLiteStatement.bindLong(2, WorkTypeConverters.stateToInt(workSpec.state));
                String str2 = workSpec.workerClassName;
                if (str2 == null) {
                    supportSQLiteStatement.bindNull(3);
                } else {
                    supportSQLiteStatement.bindString(3, str2);
                }
                String str3 = workSpec.inputMergerClassName;
                if (str3 == null) {
                    supportSQLiteStatement.bindNull(4);
                } else {
                    supportSQLiteStatement.bindString(4, str3);
                }
                byte[] byteArrayInternal = Data.toByteArrayInternal(workSpec.input);
                if (byteArrayInternal == null) {
                    supportSQLiteStatement.bindNull(5);
                } else {
                    supportSQLiteStatement.bindBlob(5, byteArrayInternal);
                }
                byte[] byteArrayInternal2 = Data.toByteArrayInternal(workSpec.output);
                if (byteArrayInternal2 == null) {
                    supportSQLiteStatement.bindNull(6);
                } else {
                    supportSQLiteStatement.bindBlob(6, byteArrayInternal2);
                }
                supportSQLiteStatement.bindLong(7, workSpec.initialDelay);
                supportSQLiteStatement.bindLong(8, workSpec.intervalDuration);
                supportSQLiteStatement.bindLong(9, workSpec.flexDuration);
                supportSQLiteStatement.bindLong(10, workSpec.runAttemptCount);
                supportSQLiteStatement.bindLong(11, WorkTypeConverters.backoffPolicyToInt(workSpec.backoffPolicy));
                supportSQLiteStatement.bindLong(12, workSpec.backoffDelayDuration);
                supportSQLiteStatement.bindLong(13, workSpec.lastEnqueueTime);
                supportSQLiteStatement.bindLong(14, workSpec.minimumRetentionDuration);
                supportSQLiteStatement.bindLong(15, workSpec.scheduleRequestedAt);
                supportSQLiteStatement.bindLong(16, workSpec.expedited ? 1L : 0L);
                supportSQLiteStatement.bindLong(17, WorkTypeConverters.outOfQuotaPolicyToInt(workSpec.outOfQuotaPolicy));
                supportSQLiteStatement.bindLong(18, workSpec.getPeriodCount());
                supportSQLiteStatement.bindLong(19, workSpec.getGeneration());
                Constraints constraints = workSpec.constraints;
                if (constraints != null) {
                    supportSQLiteStatement.bindLong(20, WorkTypeConverters.networkTypeToInt(constraints.getRequiredNetworkType()));
                    supportSQLiteStatement.bindLong(21, constraints.requiresCharging() ? 1L : 0L);
                    supportSQLiteStatement.bindLong(22, constraints.requiresDeviceIdle() ? 1L : 0L);
                    supportSQLiteStatement.bindLong(23, constraints.requiresBatteryNotLow() ? 1L : 0L);
                    supportSQLiteStatement.bindLong(24, constraints.requiresStorageNotLow() ? 1L : 0L);
                    supportSQLiteStatement.bindLong(25, constraints.getContentTriggerUpdateDelayMillis());
                    supportSQLiteStatement.bindLong(26, constraints.getContentTriggerMaxDelayMillis());
                    byte[] ofTriggersToByteArray = WorkTypeConverters.setOfTriggersToByteArray(constraints.getContentUriTriggers());
                    if (ofTriggersToByteArray == null) {
                        supportSQLiteStatement.bindNull(27);
                    } else {
                        supportSQLiteStatement.bindBlob(27, ofTriggersToByteArray);
                    }
                } else {
                    supportSQLiteStatement.bindNull(20);
                    supportSQLiteStatement.bindNull(21);
                    supportSQLiteStatement.bindNull(22);
                    supportSQLiteStatement.bindNull(23);
                    supportSQLiteStatement.bindNull(24);
                    supportSQLiteStatement.bindNull(25);
                    supportSQLiteStatement.bindNull(26);
                    supportSQLiteStatement.bindNull(27);
                }
                String str4 = workSpec.f1724id;
                if (str4 == null) {
                    supportSQLiteStatement.bindNull(28);
                } else {
                    supportSQLiteStatement.bindString(28, str4);
                }
            }
        };
        this.__preparedStmtOfDelete = new SharedSQLiteStatement(roomDatabase) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.3
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "DELETE FROM workspec WHERE id=?";
            }
        };
        this.__preparedStmtOfSetState = new SharedSQLiteStatement(roomDatabase) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.4
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE workspec SET state=? WHERE id=?";
            }
        };
        this.__preparedStmtOfIncrementPeriodCount = new SharedSQLiteStatement(roomDatabase) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.5
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE workspec SET period_count=period_count+1 WHERE id=?";
            }
        };
        this.__preparedStmtOfSetOutput = new SharedSQLiteStatement(roomDatabase) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.6
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE workspec SET output=? WHERE id=?";
            }
        };
        this.__preparedStmtOfSetLastEnqueuedTime = new SharedSQLiteStatement(roomDatabase) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.7
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE workspec SET last_enqueue_time=? WHERE id=?";
            }
        };
        this.__preparedStmtOfIncrementWorkSpecRunAttemptCount = new SharedSQLiteStatement(roomDatabase) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.8
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE workspec SET run_attempt_count=run_attempt_count+1 WHERE id=?";
            }
        };
        this.__preparedStmtOfResetWorkSpecRunAttemptCount = new SharedSQLiteStatement(roomDatabase) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.9
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE workspec SET run_attempt_count=0 WHERE id=?";
            }
        };
        this.__preparedStmtOfMarkWorkSpecScheduled = new SharedSQLiteStatement(roomDatabase) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.10
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE workspec SET schedule_requested_at=? WHERE id=?";
            }
        };
        this.__preparedStmtOfResetScheduledState = new SharedSQLiteStatement(roomDatabase) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.11
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE workspec SET schedule_requested_at=-1 WHERE state NOT IN (2, 3, 5)";
            }
        };
        this.__preparedStmtOfPruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast = new SharedSQLiteStatement(roomDatabase) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.12
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "DELETE FROM workspec WHERE state IN (2, 3, 5) AND (SELECT COUNT(*)=0 FROM dependency WHERE     prerequisite_id=id AND     work_spec_id NOT IN         (SELECT id FROM workspec WHERE state IN (2, 3, 5)))";
            }
        };
        this.__preparedStmtOfIncrementGeneration = new SharedSQLiteStatement(roomDatabase) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.13
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE workspec SET generation=generation+1 WHERE id=?";
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void __fetchRelationshipWorkProgressAsandroidxWorkData(ArrayMap<String, ArrayList<Data>> arrayMap) {
        byte[] blob;
        Set<String> keySet = arrayMap.keySet();
        if (keySet.isEmpty()) {
            return;
        }
        if (arrayMap.size() > 999) {
            ArrayMap<String, ArrayList<Data>> arrayMap2 = new ArrayMap<>(999);
            int size = arrayMap.size();
            int i10 = 0;
            int i11 = 0;
            while (i10 < size) {
                arrayMap2.put(arrayMap.keyAt(i10), arrayMap.valueAt(i10));
                i10++;
                i11++;
                if (i11 == 999) {
                    __fetchRelationshipWorkProgressAsandroidxWorkData(arrayMap2);
                    arrayMap2 = new ArrayMap<>(999);
                    i11 = 0;
                }
            }
            if (i11 > 0) {
                __fetchRelationshipWorkProgressAsandroidxWorkData(arrayMap2);
                return;
            }
            return;
        }
        StringBuilder newStringBuilder = StringUtil.newStringBuilder();
        newStringBuilder.append("SELECT `progress`,`work_spec_id` FROM `WorkProgress` WHERE `work_spec_id` IN (");
        int size2 = keySet.size();
        StringUtil.appendPlaceholders(newStringBuilder, size2);
        newStringBuilder.append(")");
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire(newStringBuilder.toString(), size2);
        int i12 = 1;
        for (String str : keySet) {
            if (str == null) {
                acquire.bindNull(i12);
            } else {
                acquire.bindString(i12, str);
            }
            i12++;
        }
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            int columnIndex = CursorUtil.getColumnIndex(query, "work_spec_id");
            if (columnIndex == -1) {
                return;
            }
            while (query.moveToNext()) {
                ArrayList<Data> arrayList = arrayMap.get(query.getString(columnIndex));
                if (arrayList != null) {
                    if (query.isNull(0)) {
                        blob = null;
                    } else {
                        blob = query.getBlob(0);
                    }
                    arrayList.add(Data.fromByteArray(blob));
                }
            }
        } finally {
            query.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void __fetchRelationshipWorkTagAsjavaLangString(ArrayMap<String, ArrayList<String>> arrayMap) {
        String string;
        Set<String> keySet = arrayMap.keySet();
        if (keySet.isEmpty()) {
            return;
        }
        if (arrayMap.size() > 999) {
            ArrayMap<String, ArrayList<String>> arrayMap2 = new ArrayMap<>(999);
            int size = arrayMap.size();
            int i10 = 0;
            int i11 = 0;
            while (i10 < size) {
                arrayMap2.put(arrayMap.keyAt(i10), arrayMap.valueAt(i10));
                i10++;
                i11++;
                if (i11 == 999) {
                    __fetchRelationshipWorkTagAsjavaLangString(arrayMap2);
                    arrayMap2 = new ArrayMap<>(999);
                    i11 = 0;
                }
            }
            if (i11 > 0) {
                __fetchRelationshipWorkTagAsjavaLangString(arrayMap2);
                return;
            }
            return;
        }
        StringBuilder newStringBuilder = StringUtil.newStringBuilder();
        newStringBuilder.append("SELECT `tag`,`work_spec_id` FROM `WorkTag` WHERE `work_spec_id` IN (");
        int size2 = keySet.size();
        StringUtil.appendPlaceholders(newStringBuilder, size2);
        newStringBuilder.append(")");
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire(newStringBuilder.toString(), size2);
        int i12 = 1;
        for (String str : keySet) {
            if (str == null) {
                acquire.bindNull(i12);
            } else {
                acquire.bindString(i12, str);
            }
            i12++;
        }
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            int columnIndex = CursorUtil.getColumnIndex(query, "work_spec_id");
            if (columnIndex == -1) {
                return;
            }
            while (query.moveToNext()) {
                ArrayList<String> arrayList = arrayMap.get(query.getString(columnIndex));
                if (arrayList != null) {
                    if (query.isNull(0)) {
                        string = null;
                    } else {
                        string = query.getString(0);
                    }
                    arrayList.add(string);
                }
            }
        } finally {
            query.close();
        }
    }

    public static List<Class<?>> getRequiredConverters() {
        return Collections.emptyList();
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void delete(String str) {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.__preparedStmtOfDelete.acquire();
        if (str == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, str);
        }
        this.__db.beginTransaction();
        try {
            acquire.executeUpdateDelete();
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
            this.__preparedStmtOfDelete.release(acquire);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<WorkSpec> getAllEligibleWorkSpecsForScheduling(int i10) {
        RoomSQLiteQuery roomSQLiteQuery;
        String string;
        String string2;
        String string3;
        byte[] blob;
        byte[] blob2;
        int i11;
        boolean z10;
        int i12;
        boolean z11;
        int i13;
        boolean z12;
        int i14;
        boolean z13;
        int i15;
        boolean z14;
        byte[] blob3;
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM workspec WHERE state=0 ORDER BY last_enqueue_time LIMIT ?", 1);
        acquire.bindLong(1, i10);
        this.__db.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, "id");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, "state");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, "worker_class_name");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, "input_merger_class_name");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(query, "input");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(query, "output");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(query, "initial_delay");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(query, "interval_duration");
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(query, "flex_duration");
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(query, "run_attempt_count");
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(query, "backoff_policy");
            int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(query, "backoff_delay_duration");
            int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(query, "last_enqueue_time");
            int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(query, "minimum_retention_duration");
            roomSQLiteQuery = acquire;
            try {
                int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(query, "schedule_requested_at");
                int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(query, "run_in_foreground");
                int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(query, "out_of_quota_policy");
                int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(query, "period_count");
                int columnIndexOrThrow19 = CursorUtil.getColumnIndexOrThrow(query, "generation");
                int columnIndexOrThrow20 = CursorUtil.getColumnIndexOrThrow(query, "required_network_type");
                int columnIndexOrThrow21 = CursorUtil.getColumnIndexOrThrow(query, "requires_charging");
                int columnIndexOrThrow22 = CursorUtil.getColumnIndexOrThrow(query, "requires_device_idle");
                int columnIndexOrThrow23 = CursorUtil.getColumnIndexOrThrow(query, "requires_battery_not_low");
                int columnIndexOrThrow24 = CursorUtil.getColumnIndexOrThrow(query, "requires_storage_not_low");
                int columnIndexOrThrow25 = CursorUtil.getColumnIndexOrThrow(query, "trigger_content_update_delay");
                int columnIndexOrThrow26 = CursorUtil.getColumnIndexOrThrow(query, "trigger_max_content_delay");
                int columnIndexOrThrow27 = CursorUtil.getColumnIndexOrThrow(query, "content_uri_triggers");
                int i16 = columnIndexOrThrow14;
                ArrayList arrayList = new ArrayList(query.getCount());
                while (query.moveToNext()) {
                    if (query.isNull(columnIndexOrThrow)) {
                        string = null;
                    } else {
                        string = query.getString(columnIndexOrThrow);
                    }
                    WorkInfo.State intToState = WorkTypeConverters.intToState(query.getInt(columnIndexOrThrow2));
                    if (query.isNull(columnIndexOrThrow3)) {
                        string2 = null;
                    } else {
                        string2 = query.getString(columnIndexOrThrow3);
                    }
                    if (query.isNull(columnIndexOrThrow4)) {
                        string3 = null;
                    } else {
                        string3 = query.getString(columnIndexOrThrow4);
                    }
                    if (query.isNull(columnIndexOrThrow5)) {
                        blob = null;
                    } else {
                        blob = query.getBlob(columnIndexOrThrow5);
                    }
                    Data fromByteArray = Data.fromByteArray(blob);
                    if (query.isNull(columnIndexOrThrow6)) {
                        blob2 = null;
                    } else {
                        blob2 = query.getBlob(columnIndexOrThrow6);
                    }
                    Data fromByteArray2 = Data.fromByteArray(blob2);
                    long j10 = query.getLong(columnIndexOrThrow7);
                    long j11 = query.getLong(columnIndexOrThrow8);
                    long j12 = query.getLong(columnIndexOrThrow9);
                    int i17 = query.getInt(columnIndexOrThrow10);
                    BackoffPolicy intToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy(query.getInt(columnIndexOrThrow11));
                    long j13 = query.getLong(columnIndexOrThrow12);
                    long j14 = query.getLong(columnIndexOrThrow13);
                    int i18 = i16;
                    long j15 = query.getLong(i18);
                    int i19 = columnIndexOrThrow;
                    int i20 = columnIndexOrThrow15;
                    long j16 = query.getLong(i20);
                    columnIndexOrThrow15 = i20;
                    int i21 = columnIndexOrThrow16;
                    if (query.getInt(i21) != 0) {
                        columnIndexOrThrow16 = i21;
                        i11 = columnIndexOrThrow17;
                        z10 = true;
                    } else {
                        columnIndexOrThrow16 = i21;
                        i11 = columnIndexOrThrow17;
                        z10 = false;
                    }
                    OutOfQuotaPolicy intToOutOfQuotaPolicy = WorkTypeConverters.intToOutOfQuotaPolicy(query.getInt(i11));
                    columnIndexOrThrow17 = i11;
                    int i22 = columnIndexOrThrow18;
                    int i23 = query.getInt(i22);
                    columnIndexOrThrow18 = i22;
                    int i24 = columnIndexOrThrow19;
                    int i25 = query.getInt(i24);
                    columnIndexOrThrow19 = i24;
                    int i26 = columnIndexOrThrow20;
                    NetworkType intToNetworkType = WorkTypeConverters.intToNetworkType(query.getInt(i26));
                    columnIndexOrThrow20 = i26;
                    int i27 = columnIndexOrThrow21;
                    if (query.getInt(i27) != 0) {
                        columnIndexOrThrow21 = i27;
                        i12 = columnIndexOrThrow22;
                        z11 = true;
                    } else {
                        columnIndexOrThrow21 = i27;
                        i12 = columnIndexOrThrow22;
                        z11 = false;
                    }
                    if (query.getInt(i12) != 0) {
                        columnIndexOrThrow22 = i12;
                        i13 = columnIndexOrThrow23;
                        z12 = true;
                    } else {
                        columnIndexOrThrow22 = i12;
                        i13 = columnIndexOrThrow23;
                        z12 = false;
                    }
                    if (query.getInt(i13) != 0) {
                        columnIndexOrThrow23 = i13;
                        i14 = columnIndexOrThrow24;
                        z13 = true;
                    } else {
                        columnIndexOrThrow23 = i13;
                        i14 = columnIndexOrThrow24;
                        z13 = false;
                    }
                    if (query.getInt(i14) != 0) {
                        columnIndexOrThrow24 = i14;
                        i15 = columnIndexOrThrow25;
                        z14 = true;
                    } else {
                        columnIndexOrThrow24 = i14;
                        i15 = columnIndexOrThrow25;
                        z14 = false;
                    }
                    long j17 = query.getLong(i15);
                    columnIndexOrThrow25 = i15;
                    int i28 = columnIndexOrThrow26;
                    long j18 = query.getLong(i28);
                    columnIndexOrThrow26 = i28;
                    int i29 = columnIndexOrThrow27;
                    if (query.isNull(i29)) {
                        blob3 = null;
                    } else {
                        blob3 = query.getBlob(i29);
                    }
                    columnIndexOrThrow27 = i29;
                    arrayList.add(new WorkSpec(string, intToState, string2, string3, fromByteArray, fromByteArray2, j10, j11, j12, new Constraints(intToNetworkType, z11, z12, z13, z14, j17, j18, WorkTypeConverters.byteArrayToSetOfTriggers(blob3)), i17, intToBackoffPolicy, j13, j14, j15, j16, z10, intToOutOfQuotaPolicy, i23, i25));
                    columnIndexOrThrow = i19;
                    i16 = i18;
                }
                query.close();
                roomSQLiteQuery.release();
                return arrayList;
            } catch (Throwable th2) {
                th = th2;
                query.close();
                roomSQLiteQuery.release();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            roomSQLiteQuery = acquire;
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<String> getAllUnfinishedWork() {
        String string;
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT id FROM workspec WHERE state NOT IN (2, 3, 5)", 0);
        this.__db.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            ArrayList arrayList = new ArrayList(query.getCount());
            while (query.moveToNext()) {
                if (query.isNull(0)) {
                    string = null;
                } else {
                    string = query.getString(0);
                }
                arrayList.add(string);
            }
            return arrayList;
        } finally {
            query.close();
            acquire.release();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<String> getAllWorkSpecIds() {
        String string;
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT id FROM workspec", 0);
        this.__db.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            ArrayList arrayList = new ArrayList(query.getCount());
            while (query.moveToNext()) {
                if (query.isNull(0)) {
                    string = null;
                } else {
                    string = query.getString(0);
                }
                arrayList.add(string);
            }
            return arrayList;
        } finally {
            query.close();
            acquire.release();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public LiveData<List<String>> getAllWorkSpecIdsLiveData() {
        final RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT id FROM workspec", 0);
        return this.__db.getInvalidationTracker().createLiveData(new String[]{"workspec"}, true, (Callable) new Callable<List<String>>() { // from class: androidx.work.impl.model.WorkSpecDao_Impl.14
            protected void finalize() {
                acquire.release();
            }

            @Override // java.util.concurrent.Callable
            public List<String> call() throws Exception {
                WorkSpecDao_Impl.this.__db.beginTransaction();
                try {
                    Cursor query = DBUtil.query(WorkSpecDao_Impl.this.__db, acquire, false, null);
                    ArrayList arrayList = new ArrayList(query.getCount());
                    while (query.moveToNext()) {
                        arrayList.add(query.isNull(0) ? null : query.getString(0));
                    }
                    WorkSpecDao_Impl.this.__db.setTransactionSuccessful();
                    query.close();
                    return arrayList;
                } finally {
                    WorkSpecDao_Impl.this.__db.endTransaction();
                }
            }
        });
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<WorkSpec> getEligibleWorkForScheduling(int i10) {
        RoomSQLiteQuery roomSQLiteQuery;
        String string;
        String string2;
        String string3;
        byte[] blob;
        byte[] blob2;
        int i11;
        boolean z10;
        int i12;
        boolean z11;
        int i13;
        boolean z12;
        int i14;
        boolean z13;
        int i15;
        boolean z14;
        byte[] blob3;
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM workspec WHERE state=0 AND schedule_requested_at=-1 ORDER BY last_enqueue_time LIMIT (SELECT MAX(?-COUNT(*), 0) FROM workspec WHERE schedule_requested_at<>-1 AND state NOT IN (2, 3, 5))", 1);
        acquire.bindLong(1, i10);
        this.__db.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, "id");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, "state");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, "worker_class_name");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, "input_merger_class_name");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(query, "input");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(query, "output");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(query, "initial_delay");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(query, "interval_duration");
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(query, "flex_duration");
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(query, "run_attempt_count");
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(query, "backoff_policy");
            int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(query, "backoff_delay_duration");
            int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(query, "last_enqueue_time");
            int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(query, "minimum_retention_duration");
            roomSQLiteQuery = acquire;
            try {
                int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(query, "schedule_requested_at");
                int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(query, "run_in_foreground");
                int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(query, "out_of_quota_policy");
                int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(query, "period_count");
                int columnIndexOrThrow19 = CursorUtil.getColumnIndexOrThrow(query, "generation");
                int columnIndexOrThrow20 = CursorUtil.getColumnIndexOrThrow(query, "required_network_type");
                int columnIndexOrThrow21 = CursorUtil.getColumnIndexOrThrow(query, "requires_charging");
                int columnIndexOrThrow22 = CursorUtil.getColumnIndexOrThrow(query, "requires_device_idle");
                int columnIndexOrThrow23 = CursorUtil.getColumnIndexOrThrow(query, "requires_battery_not_low");
                int columnIndexOrThrow24 = CursorUtil.getColumnIndexOrThrow(query, "requires_storage_not_low");
                int columnIndexOrThrow25 = CursorUtil.getColumnIndexOrThrow(query, "trigger_content_update_delay");
                int columnIndexOrThrow26 = CursorUtil.getColumnIndexOrThrow(query, "trigger_max_content_delay");
                int columnIndexOrThrow27 = CursorUtil.getColumnIndexOrThrow(query, "content_uri_triggers");
                int i16 = columnIndexOrThrow14;
                ArrayList arrayList = new ArrayList(query.getCount());
                while (query.moveToNext()) {
                    if (query.isNull(columnIndexOrThrow)) {
                        string = null;
                    } else {
                        string = query.getString(columnIndexOrThrow);
                    }
                    WorkInfo.State intToState = WorkTypeConverters.intToState(query.getInt(columnIndexOrThrow2));
                    if (query.isNull(columnIndexOrThrow3)) {
                        string2 = null;
                    } else {
                        string2 = query.getString(columnIndexOrThrow3);
                    }
                    if (query.isNull(columnIndexOrThrow4)) {
                        string3 = null;
                    } else {
                        string3 = query.getString(columnIndexOrThrow4);
                    }
                    if (query.isNull(columnIndexOrThrow5)) {
                        blob = null;
                    } else {
                        blob = query.getBlob(columnIndexOrThrow5);
                    }
                    Data fromByteArray = Data.fromByteArray(blob);
                    if (query.isNull(columnIndexOrThrow6)) {
                        blob2 = null;
                    } else {
                        blob2 = query.getBlob(columnIndexOrThrow6);
                    }
                    Data fromByteArray2 = Data.fromByteArray(blob2);
                    long j10 = query.getLong(columnIndexOrThrow7);
                    long j11 = query.getLong(columnIndexOrThrow8);
                    long j12 = query.getLong(columnIndexOrThrow9);
                    int i17 = query.getInt(columnIndexOrThrow10);
                    BackoffPolicy intToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy(query.getInt(columnIndexOrThrow11));
                    long j13 = query.getLong(columnIndexOrThrow12);
                    long j14 = query.getLong(columnIndexOrThrow13);
                    int i18 = i16;
                    long j15 = query.getLong(i18);
                    int i19 = columnIndexOrThrow;
                    int i20 = columnIndexOrThrow15;
                    long j16 = query.getLong(i20);
                    columnIndexOrThrow15 = i20;
                    int i21 = columnIndexOrThrow16;
                    if (query.getInt(i21) != 0) {
                        columnIndexOrThrow16 = i21;
                        i11 = columnIndexOrThrow17;
                        z10 = true;
                    } else {
                        columnIndexOrThrow16 = i21;
                        i11 = columnIndexOrThrow17;
                        z10 = false;
                    }
                    OutOfQuotaPolicy intToOutOfQuotaPolicy = WorkTypeConverters.intToOutOfQuotaPolicy(query.getInt(i11));
                    columnIndexOrThrow17 = i11;
                    int i22 = columnIndexOrThrow18;
                    int i23 = query.getInt(i22);
                    columnIndexOrThrow18 = i22;
                    int i24 = columnIndexOrThrow19;
                    int i25 = query.getInt(i24);
                    columnIndexOrThrow19 = i24;
                    int i26 = columnIndexOrThrow20;
                    NetworkType intToNetworkType = WorkTypeConverters.intToNetworkType(query.getInt(i26));
                    columnIndexOrThrow20 = i26;
                    int i27 = columnIndexOrThrow21;
                    if (query.getInt(i27) != 0) {
                        columnIndexOrThrow21 = i27;
                        i12 = columnIndexOrThrow22;
                        z11 = true;
                    } else {
                        columnIndexOrThrow21 = i27;
                        i12 = columnIndexOrThrow22;
                        z11 = false;
                    }
                    if (query.getInt(i12) != 0) {
                        columnIndexOrThrow22 = i12;
                        i13 = columnIndexOrThrow23;
                        z12 = true;
                    } else {
                        columnIndexOrThrow22 = i12;
                        i13 = columnIndexOrThrow23;
                        z12 = false;
                    }
                    if (query.getInt(i13) != 0) {
                        columnIndexOrThrow23 = i13;
                        i14 = columnIndexOrThrow24;
                        z13 = true;
                    } else {
                        columnIndexOrThrow23 = i13;
                        i14 = columnIndexOrThrow24;
                        z13 = false;
                    }
                    if (query.getInt(i14) != 0) {
                        columnIndexOrThrow24 = i14;
                        i15 = columnIndexOrThrow25;
                        z14 = true;
                    } else {
                        columnIndexOrThrow24 = i14;
                        i15 = columnIndexOrThrow25;
                        z14 = false;
                    }
                    long j17 = query.getLong(i15);
                    columnIndexOrThrow25 = i15;
                    int i28 = columnIndexOrThrow26;
                    long j18 = query.getLong(i28);
                    columnIndexOrThrow26 = i28;
                    int i29 = columnIndexOrThrow27;
                    if (query.isNull(i29)) {
                        blob3 = null;
                    } else {
                        blob3 = query.getBlob(i29);
                    }
                    columnIndexOrThrow27 = i29;
                    arrayList.add(new WorkSpec(string, intToState, string2, string3, fromByteArray, fromByteArray2, j10, j11, j12, new Constraints(intToNetworkType, z11, z12, z13, z14, j17, j18, WorkTypeConverters.byteArrayToSetOfTriggers(blob3)), i17, intToBackoffPolicy, j13, j14, j15, j16, z10, intToOutOfQuotaPolicy, i23, i25));
                    columnIndexOrThrow = i19;
                    i16 = i18;
                }
                query.close();
                roomSQLiteQuery.release();
                return arrayList;
            } catch (Throwable th2) {
                th = th2;
                query.close();
                roomSQLiteQuery.release();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            roomSQLiteQuery = acquire;
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<Data> getInputsFromPrerequisites(String str) {
        byte[] blob;
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT output FROM workspec WHERE id IN\n             (SELECT prerequisite_id FROM dependency WHERE work_spec_id=?)", 1);
        if (str == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, str);
        }
        this.__db.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            ArrayList arrayList = new ArrayList(query.getCount());
            while (query.moveToNext()) {
                if (query.isNull(0)) {
                    blob = null;
                } else {
                    blob = query.getBlob(0);
                }
                arrayList.add(Data.fromByteArray(blob));
            }
            return arrayList;
        } finally {
            query.close();
            acquire.release();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<WorkSpec> getRecentlyCompletedWork(long j10) {
        RoomSQLiteQuery roomSQLiteQuery;
        String string;
        String string2;
        String string3;
        byte[] blob;
        byte[] blob2;
        int i10;
        boolean z10;
        int i11;
        boolean z11;
        int i12;
        boolean z12;
        int i13;
        boolean z13;
        int i14;
        boolean z14;
        byte[] blob3;
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM workspec WHERE last_enqueue_time >= ? AND state IN (2, 3, 5) ORDER BY last_enqueue_time DESC", 1);
        acquire.bindLong(1, j10);
        this.__db.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, "id");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, "state");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, "worker_class_name");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, "input_merger_class_name");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(query, "input");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(query, "output");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(query, "initial_delay");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(query, "interval_duration");
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(query, "flex_duration");
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(query, "run_attempt_count");
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(query, "backoff_policy");
            int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(query, "backoff_delay_duration");
            int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(query, "last_enqueue_time");
            int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(query, "minimum_retention_duration");
            roomSQLiteQuery = acquire;
            try {
                int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(query, "schedule_requested_at");
                int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(query, "run_in_foreground");
                int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(query, "out_of_quota_policy");
                int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(query, "period_count");
                int columnIndexOrThrow19 = CursorUtil.getColumnIndexOrThrow(query, "generation");
                int columnIndexOrThrow20 = CursorUtil.getColumnIndexOrThrow(query, "required_network_type");
                int columnIndexOrThrow21 = CursorUtil.getColumnIndexOrThrow(query, "requires_charging");
                int columnIndexOrThrow22 = CursorUtil.getColumnIndexOrThrow(query, "requires_device_idle");
                int columnIndexOrThrow23 = CursorUtil.getColumnIndexOrThrow(query, "requires_battery_not_low");
                int columnIndexOrThrow24 = CursorUtil.getColumnIndexOrThrow(query, "requires_storage_not_low");
                int columnIndexOrThrow25 = CursorUtil.getColumnIndexOrThrow(query, "trigger_content_update_delay");
                int columnIndexOrThrow26 = CursorUtil.getColumnIndexOrThrow(query, "trigger_max_content_delay");
                int columnIndexOrThrow27 = CursorUtil.getColumnIndexOrThrow(query, "content_uri_triggers");
                int i15 = columnIndexOrThrow14;
                ArrayList arrayList = new ArrayList(query.getCount());
                while (query.moveToNext()) {
                    if (query.isNull(columnIndexOrThrow)) {
                        string = null;
                    } else {
                        string = query.getString(columnIndexOrThrow);
                    }
                    WorkInfo.State intToState = WorkTypeConverters.intToState(query.getInt(columnIndexOrThrow2));
                    if (query.isNull(columnIndexOrThrow3)) {
                        string2 = null;
                    } else {
                        string2 = query.getString(columnIndexOrThrow3);
                    }
                    if (query.isNull(columnIndexOrThrow4)) {
                        string3 = null;
                    } else {
                        string3 = query.getString(columnIndexOrThrow4);
                    }
                    if (query.isNull(columnIndexOrThrow5)) {
                        blob = null;
                    } else {
                        blob = query.getBlob(columnIndexOrThrow5);
                    }
                    Data fromByteArray = Data.fromByteArray(blob);
                    if (query.isNull(columnIndexOrThrow6)) {
                        blob2 = null;
                    } else {
                        blob2 = query.getBlob(columnIndexOrThrow6);
                    }
                    Data fromByteArray2 = Data.fromByteArray(blob2);
                    long j11 = query.getLong(columnIndexOrThrow7);
                    long j12 = query.getLong(columnIndexOrThrow8);
                    long j13 = query.getLong(columnIndexOrThrow9);
                    int i16 = query.getInt(columnIndexOrThrow10);
                    BackoffPolicy intToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy(query.getInt(columnIndexOrThrow11));
                    long j14 = query.getLong(columnIndexOrThrow12);
                    long j15 = query.getLong(columnIndexOrThrow13);
                    int i17 = i15;
                    long j16 = query.getLong(i17);
                    int i18 = columnIndexOrThrow;
                    int i19 = columnIndexOrThrow15;
                    long j17 = query.getLong(i19);
                    columnIndexOrThrow15 = i19;
                    int i20 = columnIndexOrThrow16;
                    if (query.getInt(i20) != 0) {
                        columnIndexOrThrow16 = i20;
                        i10 = columnIndexOrThrow17;
                        z10 = true;
                    } else {
                        columnIndexOrThrow16 = i20;
                        i10 = columnIndexOrThrow17;
                        z10 = false;
                    }
                    OutOfQuotaPolicy intToOutOfQuotaPolicy = WorkTypeConverters.intToOutOfQuotaPolicy(query.getInt(i10));
                    columnIndexOrThrow17 = i10;
                    int i21 = columnIndexOrThrow18;
                    int i22 = query.getInt(i21);
                    columnIndexOrThrow18 = i21;
                    int i23 = columnIndexOrThrow19;
                    int i24 = query.getInt(i23);
                    columnIndexOrThrow19 = i23;
                    int i25 = columnIndexOrThrow20;
                    NetworkType intToNetworkType = WorkTypeConverters.intToNetworkType(query.getInt(i25));
                    columnIndexOrThrow20 = i25;
                    int i26 = columnIndexOrThrow21;
                    if (query.getInt(i26) != 0) {
                        columnIndexOrThrow21 = i26;
                        i11 = columnIndexOrThrow22;
                        z11 = true;
                    } else {
                        columnIndexOrThrow21 = i26;
                        i11 = columnIndexOrThrow22;
                        z11 = false;
                    }
                    if (query.getInt(i11) != 0) {
                        columnIndexOrThrow22 = i11;
                        i12 = columnIndexOrThrow23;
                        z12 = true;
                    } else {
                        columnIndexOrThrow22 = i11;
                        i12 = columnIndexOrThrow23;
                        z12 = false;
                    }
                    if (query.getInt(i12) != 0) {
                        columnIndexOrThrow23 = i12;
                        i13 = columnIndexOrThrow24;
                        z13 = true;
                    } else {
                        columnIndexOrThrow23 = i12;
                        i13 = columnIndexOrThrow24;
                        z13 = false;
                    }
                    if (query.getInt(i13) != 0) {
                        columnIndexOrThrow24 = i13;
                        i14 = columnIndexOrThrow25;
                        z14 = true;
                    } else {
                        columnIndexOrThrow24 = i13;
                        i14 = columnIndexOrThrow25;
                        z14 = false;
                    }
                    long j18 = query.getLong(i14);
                    columnIndexOrThrow25 = i14;
                    int i27 = columnIndexOrThrow26;
                    long j19 = query.getLong(i27);
                    columnIndexOrThrow26 = i27;
                    int i28 = columnIndexOrThrow27;
                    if (query.isNull(i28)) {
                        blob3 = null;
                    } else {
                        blob3 = query.getBlob(i28);
                    }
                    columnIndexOrThrow27 = i28;
                    arrayList.add(new WorkSpec(string, intToState, string2, string3, fromByteArray, fromByteArray2, j11, j12, j13, new Constraints(intToNetworkType, z11, z12, z13, z14, j18, j19, WorkTypeConverters.byteArrayToSetOfTriggers(blob3)), i16, intToBackoffPolicy, j14, j15, j16, j17, z10, intToOutOfQuotaPolicy, i22, i24));
                    columnIndexOrThrow = i18;
                    i15 = i17;
                }
                query.close();
                roomSQLiteQuery.release();
                return arrayList;
            } catch (Throwable th2) {
                th = th2;
                query.close();
                roomSQLiteQuery.release();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            roomSQLiteQuery = acquire;
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<WorkSpec> getRunningWork() {
        RoomSQLiteQuery roomSQLiteQuery;
        String string;
        String string2;
        String string3;
        byte[] blob;
        byte[] blob2;
        int i10;
        boolean z10;
        int i11;
        boolean z11;
        int i12;
        boolean z12;
        int i13;
        boolean z13;
        int i14;
        boolean z14;
        byte[] blob3;
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM workspec WHERE state=1", 0);
        this.__db.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, "id");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, "state");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, "worker_class_name");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, "input_merger_class_name");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(query, "input");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(query, "output");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(query, "initial_delay");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(query, "interval_duration");
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(query, "flex_duration");
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(query, "run_attempt_count");
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(query, "backoff_policy");
            int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(query, "backoff_delay_duration");
            int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(query, "last_enqueue_time");
            int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(query, "minimum_retention_duration");
            roomSQLiteQuery = acquire;
            try {
                int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(query, "schedule_requested_at");
                int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(query, "run_in_foreground");
                int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(query, "out_of_quota_policy");
                int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(query, "period_count");
                int columnIndexOrThrow19 = CursorUtil.getColumnIndexOrThrow(query, "generation");
                int columnIndexOrThrow20 = CursorUtil.getColumnIndexOrThrow(query, "required_network_type");
                int columnIndexOrThrow21 = CursorUtil.getColumnIndexOrThrow(query, "requires_charging");
                int columnIndexOrThrow22 = CursorUtil.getColumnIndexOrThrow(query, "requires_device_idle");
                int columnIndexOrThrow23 = CursorUtil.getColumnIndexOrThrow(query, "requires_battery_not_low");
                int columnIndexOrThrow24 = CursorUtil.getColumnIndexOrThrow(query, "requires_storage_not_low");
                int columnIndexOrThrow25 = CursorUtil.getColumnIndexOrThrow(query, "trigger_content_update_delay");
                int columnIndexOrThrow26 = CursorUtil.getColumnIndexOrThrow(query, "trigger_max_content_delay");
                int columnIndexOrThrow27 = CursorUtil.getColumnIndexOrThrow(query, "content_uri_triggers");
                int i15 = columnIndexOrThrow14;
                ArrayList arrayList = new ArrayList(query.getCount());
                while (query.moveToNext()) {
                    if (query.isNull(columnIndexOrThrow)) {
                        string = null;
                    } else {
                        string = query.getString(columnIndexOrThrow);
                    }
                    WorkInfo.State intToState = WorkTypeConverters.intToState(query.getInt(columnIndexOrThrow2));
                    if (query.isNull(columnIndexOrThrow3)) {
                        string2 = null;
                    } else {
                        string2 = query.getString(columnIndexOrThrow3);
                    }
                    if (query.isNull(columnIndexOrThrow4)) {
                        string3 = null;
                    } else {
                        string3 = query.getString(columnIndexOrThrow4);
                    }
                    if (query.isNull(columnIndexOrThrow5)) {
                        blob = null;
                    } else {
                        blob = query.getBlob(columnIndexOrThrow5);
                    }
                    Data fromByteArray = Data.fromByteArray(blob);
                    if (query.isNull(columnIndexOrThrow6)) {
                        blob2 = null;
                    } else {
                        blob2 = query.getBlob(columnIndexOrThrow6);
                    }
                    Data fromByteArray2 = Data.fromByteArray(blob2);
                    long j10 = query.getLong(columnIndexOrThrow7);
                    long j11 = query.getLong(columnIndexOrThrow8);
                    long j12 = query.getLong(columnIndexOrThrow9);
                    int i16 = query.getInt(columnIndexOrThrow10);
                    BackoffPolicy intToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy(query.getInt(columnIndexOrThrow11));
                    long j13 = query.getLong(columnIndexOrThrow12);
                    long j14 = query.getLong(columnIndexOrThrow13);
                    int i17 = i15;
                    long j15 = query.getLong(i17);
                    int i18 = columnIndexOrThrow;
                    int i19 = columnIndexOrThrow15;
                    long j16 = query.getLong(i19);
                    columnIndexOrThrow15 = i19;
                    int i20 = columnIndexOrThrow16;
                    if (query.getInt(i20) != 0) {
                        columnIndexOrThrow16 = i20;
                        i10 = columnIndexOrThrow17;
                        z10 = true;
                    } else {
                        columnIndexOrThrow16 = i20;
                        i10 = columnIndexOrThrow17;
                        z10 = false;
                    }
                    OutOfQuotaPolicy intToOutOfQuotaPolicy = WorkTypeConverters.intToOutOfQuotaPolicy(query.getInt(i10));
                    columnIndexOrThrow17 = i10;
                    int i21 = columnIndexOrThrow18;
                    int i22 = query.getInt(i21);
                    columnIndexOrThrow18 = i21;
                    int i23 = columnIndexOrThrow19;
                    int i24 = query.getInt(i23);
                    columnIndexOrThrow19 = i23;
                    int i25 = columnIndexOrThrow20;
                    NetworkType intToNetworkType = WorkTypeConverters.intToNetworkType(query.getInt(i25));
                    columnIndexOrThrow20 = i25;
                    int i26 = columnIndexOrThrow21;
                    if (query.getInt(i26) != 0) {
                        columnIndexOrThrow21 = i26;
                        i11 = columnIndexOrThrow22;
                        z11 = true;
                    } else {
                        columnIndexOrThrow21 = i26;
                        i11 = columnIndexOrThrow22;
                        z11 = false;
                    }
                    if (query.getInt(i11) != 0) {
                        columnIndexOrThrow22 = i11;
                        i12 = columnIndexOrThrow23;
                        z12 = true;
                    } else {
                        columnIndexOrThrow22 = i11;
                        i12 = columnIndexOrThrow23;
                        z12 = false;
                    }
                    if (query.getInt(i12) != 0) {
                        columnIndexOrThrow23 = i12;
                        i13 = columnIndexOrThrow24;
                        z13 = true;
                    } else {
                        columnIndexOrThrow23 = i12;
                        i13 = columnIndexOrThrow24;
                        z13 = false;
                    }
                    if (query.getInt(i13) != 0) {
                        columnIndexOrThrow24 = i13;
                        i14 = columnIndexOrThrow25;
                        z14 = true;
                    } else {
                        columnIndexOrThrow24 = i13;
                        i14 = columnIndexOrThrow25;
                        z14 = false;
                    }
                    long j17 = query.getLong(i14);
                    columnIndexOrThrow25 = i14;
                    int i27 = columnIndexOrThrow26;
                    long j18 = query.getLong(i27);
                    columnIndexOrThrow26 = i27;
                    int i28 = columnIndexOrThrow27;
                    if (query.isNull(i28)) {
                        blob3 = null;
                    } else {
                        blob3 = query.getBlob(i28);
                    }
                    columnIndexOrThrow27 = i28;
                    arrayList.add(new WorkSpec(string, intToState, string2, string3, fromByteArray, fromByteArray2, j10, j11, j12, new Constraints(intToNetworkType, z11, z12, z13, z14, j17, j18, WorkTypeConverters.byteArrayToSetOfTriggers(blob3)), i16, intToBackoffPolicy, j13, j14, j15, j16, z10, intToOutOfQuotaPolicy, i22, i24));
                    columnIndexOrThrow = i18;
                    i15 = i17;
                }
                query.close();
                roomSQLiteQuery.release();
                return arrayList;
            } catch (Throwable th2) {
                th = th2;
                query.close();
                roomSQLiteQuery.release();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            roomSQLiteQuery = acquire;
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public LiveData<Long> getScheduleRequestedAtLiveData(String str) {
        final RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT schedule_requested_at FROM workspec WHERE id=?", 1);
        if (str == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, str);
        }
        return this.__db.getInvalidationTracker().createLiveData(new String[]{"workspec"}, false, (Callable) new Callable<Long>() { // from class: androidx.work.impl.model.WorkSpecDao_Impl.18
            protected void finalize() {
                acquire.release();
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public Long call() throws Exception {
                Cursor query = DBUtil.query(WorkSpecDao_Impl.this.__db, acquire, false, null);
                try {
                    Long valueOf = Long.valueOf(query.moveToFirst() ? query.getLong(0) : 0L);
                    query.close();
                    return valueOf;
                } catch (Throwable th2) {
                    query.close();
                    throw th2;
                }
            }
        });
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<WorkSpec> getScheduledWork() {
        RoomSQLiteQuery roomSQLiteQuery;
        String string;
        String string2;
        String string3;
        byte[] blob;
        byte[] blob2;
        int i10;
        boolean z10;
        int i11;
        boolean z11;
        int i12;
        boolean z12;
        int i13;
        boolean z13;
        int i14;
        boolean z14;
        byte[] blob3;
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM workspec WHERE state=0 AND schedule_requested_at<>-1", 0);
        this.__db.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, "id");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, "state");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, "worker_class_name");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, "input_merger_class_name");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(query, "input");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(query, "output");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(query, "initial_delay");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(query, "interval_duration");
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(query, "flex_duration");
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(query, "run_attempt_count");
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(query, "backoff_policy");
            int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(query, "backoff_delay_duration");
            int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(query, "last_enqueue_time");
            int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(query, "minimum_retention_duration");
            roomSQLiteQuery = acquire;
            try {
                int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(query, "schedule_requested_at");
                int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(query, "run_in_foreground");
                int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(query, "out_of_quota_policy");
                int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(query, "period_count");
                int columnIndexOrThrow19 = CursorUtil.getColumnIndexOrThrow(query, "generation");
                int columnIndexOrThrow20 = CursorUtil.getColumnIndexOrThrow(query, "required_network_type");
                int columnIndexOrThrow21 = CursorUtil.getColumnIndexOrThrow(query, "requires_charging");
                int columnIndexOrThrow22 = CursorUtil.getColumnIndexOrThrow(query, "requires_device_idle");
                int columnIndexOrThrow23 = CursorUtil.getColumnIndexOrThrow(query, "requires_battery_not_low");
                int columnIndexOrThrow24 = CursorUtil.getColumnIndexOrThrow(query, "requires_storage_not_low");
                int columnIndexOrThrow25 = CursorUtil.getColumnIndexOrThrow(query, "trigger_content_update_delay");
                int columnIndexOrThrow26 = CursorUtil.getColumnIndexOrThrow(query, "trigger_max_content_delay");
                int columnIndexOrThrow27 = CursorUtil.getColumnIndexOrThrow(query, "content_uri_triggers");
                int i15 = columnIndexOrThrow14;
                ArrayList arrayList = new ArrayList(query.getCount());
                while (query.moveToNext()) {
                    if (query.isNull(columnIndexOrThrow)) {
                        string = null;
                    } else {
                        string = query.getString(columnIndexOrThrow);
                    }
                    WorkInfo.State intToState = WorkTypeConverters.intToState(query.getInt(columnIndexOrThrow2));
                    if (query.isNull(columnIndexOrThrow3)) {
                        string2 = null;
                    } else {
                        string2 = query.getString(columnIndexOrThrow3);
                    }
                    if (query.isNull(columnIndexOrThrow4)) {
                        string3 = null;
                    } else {
                        string3 = query.getString(columnIndexOrThrow4);
                    }
                    if (query.isNull(columnIndexOrThrow5)) {
                        blob = null;
                    } else {
                        blob = query.getBlob(columnIndexOrThrow5);
                    }
                    Data fromByteArray = Data.fromByteArray(blob);
                    if (query.isNull(columnIndexOrThrow6)) {
                        blob2 = null;
                    } else {
                        blob2 = query.getBlob(columnIndexOrThrow6);
                    }
                    Data fromByteArray2 = Data.fromByteArray(blob2);
                    long j10 = query.getLong(columnIndexOrThrow7);
                    long j11 = query.getLong(columnIndexOrThrow8);
                    long j12 = query.getLong(columnIndexOrThrow9);
                    int i16 = query.getInt(columnIndexOrThrow10);
                    BackoffPolicy intToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy(query.getInt(columnIndexOrThrow11));
                    long j13 = query.getLong(columnIndexOrThrow12);
                    long j14 = query.getLong(columnIndexOrThrow13);
                    int i17 = i15;
                    long j15 = query.getLong(i17);
                    int i18 = columnIndexOrThrow;
                    int i19 = columnIndexOrThrow15;
                    long j16 = query.getLong(i19);
                    columnIndexOrThrow15 = i19;
                    int i20 = columnIndexOrThrow16;
                    if (query.getInt(i20) != 0) {
                        columnIndexOrThrow16 = i20;
                        i10 = columnIndexOrThrow17;
                        z10 = true;
                    } else {
                        columnIndexOrThrow16 = i20;
                        i10 = columnIndexOrThrow17;
                        z10 = false;
                    }
                    OutOfQuotaPolicy intToOutOfQuotaPolicy = WorkTypeConverters.intToOutOfQuotaPolicy(query.getInt(i10));
                    columnIndexOrThrow17 = i10;
                    int i21 = columnIndexOrThrow18;
                    int i22 = query.getInt(i21);
                    columnIndexOrThrow18 = i21;
                    int i23 = columnIndexOrThrow19;
                    int i24 = query.getInt(i23);
                    columnIndexOrThrow19 = i23;
                    int i25 = columnIndexOrThrow20;
                    NetworkType intToNetworkType = WorkTypeConverters.intToNetworkType(query.getInt(i25));
                    columnIndexOrThrow20 = i25;
                    int i26 = columnIndexOrThrow21;
                    if (query.getInt(i26) != 0) {
                        columnIndexOrThrow21 = i26;
                        i11 = columnIndexOrThrow22;
                        z11 = true;
                    } else {
                        columnIndexOrThrow21 = i26;
                        i11 = columnIndexOrThrow22;
                        z11 = false;
                    }
                    if (query.getInt(i11) != 0) {
                        columnIndexOrThrow22 = i11;
                        i12 = columnIndexOrThrow23;
                        z12 = true;
                    } else {
                        columnIndexOrThrow22 = i11;
                        i12 = columnIndexOrThrow23;
                        z12 = false;
                    }
                    if (query.getInt(i12) != 0) {
                        columnIndexOrThrow23 = i12;
                        i13 = columnIndexOrThrow24;
                        z13 = true;
                    } else {
                        columnIndexOrThrow23 = i12;
                        i13 = columnIndexOrThrow24;
                        z13 = false;
                    }
                    if (query.getInt(i13) != 0) {
                        columnIndexOrThrow24 = i13;
                        i14 = columnIndexOrThrow25;
                        z14 = true;
                    } else {
                        columnIndexOrThrow24 = i13;
                        i14 = columnIndexOrThrow25;
                        z14 = false;
                    }
                    long j17 = query.getLong(i14);
                    columnIndexOrThrow25 = i14;
                    int i27 = columnIndexOrThrow26;
                    long j18 = query.getLong(i27);
                    columnIndexOrThrow26 = i27;
                    int i28 = columnIndexOrThrow27;
                    if (query.isNull(i28)) {
                        blob3 = null;
                    } else {
                        blob3 = query.getBlob(i28);
                    }
                    columnIndexOrThrow27 = i28;
                    arrayList.add(new WorkSpec(string, intToState, string2, string3, fromByteArray, fromByteArray2, j10, j11, j12, new Constraints(intToNetworkType, z11, z12, z13, z14, j17, j18, WorkTypeConverters.byteArrayToSetOfTriggers(blob3)), i16, intToBackoffPolicy, j13, j14, j15, j16, z10, intToOutOfQuotaPolicy, i22, i24));
                    columnIndexOrThrow = i18;
                    i15 = i17;
                }
                query.close();
                roomSQLiteQuery.release();
                return arrayList;
            } catch (Throwable th2) {
                th = th2;
                query.close();
                roomSQLiteQuery.release();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            roomSQLiteQuery = acquire;
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public WorkInfo.State getState(String str) {
        Integer valueOf;
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT state FROM workspec WHERE id=?", 1);
        if (str == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, str);
        }
        this.__db.assertNotSuspendingTransaction();
        WorkInfo.State state = null;
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            if (query.moveToFirst()) {
                if (query.isNull(0)) {
                    valueOf = null;
                } else {
                    valueOf = Integer.valueOf(query.getInt(0));
                }
                if (valueOf != null) {
                    WorkTypeConverters workTypeConverters = WorkTypeConverters.INSTANCE;
                    state = WorkTypeConverters.intToState(valueOf.intValue());
                }
            }
            return state;
        } finally {
            query.close();
            acquire.release();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<String> getUnfinishedWorkWithName(String str) {
        String string;
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM workname WHERE name=?)", 1);
        if (str == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, str);
        }
        this.__db.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            ArrayList arrayList = new ArrayList(query.getCount());
            while (query.moveToNext()) {
                if (query.isNull(0)) {
                    string = null;
                } else {
                    string = query.getString(0);
                }
                arrayList.add(string);
            }
            return arrayList;
        } finally {
            query.close();
            acquire.release();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<String> getUnfinishedWorkWithTag(String str) {
        String string;
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM worktag WHERE tag=?)", 1);
        if (str == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, str);
        }
        this.__db.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            ArrayList arrayList = new ArrayList(query.getCount());
            while (query.moveToNext()) {
                if (query.isNull(0)) {
                    string = null;
                } else {
                    string = query.getString(0);
                }
                arrayList.add(string);
            }
            return arrayList;
        } finally {
            query.close();
            acquire.release();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public WorkSpec getWorkSpec(String str) {
        RoomSQLiteQuery roomSQLiteQuery;
        int columnIndexOrThrow;
        int columnIndexOrThrow2;
        int columnIndexOrThrow3;
        int columnIndexOrThrow4;
        int columnIndexOrThrow5;
        int columnIndexOrThrow6;
        int columnIndexOrThrow7;
        int columnIndexOrThrow8;
        int columnIndexOrThrow9;
        int columnIndexOrThrow10;
        int columnIndexOrThrow11;
        int columnIndexOrThrow12;
        int columnIndexOrThrow13;
        int columnIndexOrThrow14;
        WorkSpec workSpec;
        String string;
        String string2;
        String string3;
        byte[] blob;
        byte[] blob2;
        int i10;
        boolean z10;
        int i11;
        boolean z11;
        int i12;
        boolean z12;
        int i13;
        boolean z13;
        int i14;
        boolean z14;
        byte[] blob3;
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM workspec WHERE id=?", 1);
        if (str == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, str);
        }
        this.__db.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, "id");
            columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, "state");
            columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, "worker_class_name");
            columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, "input_merger_class_name");
            columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(query, "input");
            columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(query, "output");
            columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(query, "initial_delay");
            columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(query, "interval_duration");
            columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(query, "flex_duration");
            columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(query, "run_attempt_count");
            columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(query, "backoff_policy");
            columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(query, "backoff_delay_duration");
            columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(query, "last_enqueue_time");
            columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(query, "minimum_retention_duration");
            roomSQLiteQuery = acquire;
        } catch (Throwable th2) {
            th = th2;
            roomSQLiteQuery = acquire;
        }
        try {
            int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(query, "schedule_requested_at");
            int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(query, "run_in_foreground");
            int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(query, "out_of_quota_policy");
            int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(query, "period_count");
            int columnIndexOrThrow19 = CursorUtil.getColumnIndexOrThrow(query, "generation");
            int columnIndexOrThrow20 = CursorUtil.getColumnIndexOrThrow(query, "required_network_type");
            int columnIndexOrThrow21 = CursorUtil.getColumnIndexOrThrow(query, "requires_charging");
            int columnIndexOrThrow22 = CursorUtil.getColumnIndexOrThrow(query, "requires_device_idle");
            int columnIndexOrThrow23 = CursorUtil.getColumnIndexOrThrow(query, "requires_battery_not_low");
            int columnIndexOrThrow24 = CursorUtil.getColumnIndexOrThrow(query, "requires_storage_not_low");
            int columnIndexOrThrow25 = CursorUtil.getColumnIndexOrThrow(query, "trigger_content_update_delay");
            int columnIndexOrThrow26 = CursorUtil.getColumnIndexOrThrow(query, "trigger_max_content_delay");
            int columnIndexOrThrow27 = CursorUtil.getColumnIndexOrThrow(query, "content_uri_triggers");
            if (query.moveToFirst()) {
                if (query.isNull(columnIndexOrThrow)) {
                    string = null;
                } else {
                    string = query.getString(columnIndexOrThrow);
                }
                WorkInfo.State intToState = WorkTypeConverters.intToState(query.getInt(columnIndexOrThrow2));
                if (query.isNull(columnIndexOrThrow3)) {
                    string2 = null;
                } else {
                    string2 = query.getString(columnIndexOrThrow3);
                }
                if (query.isNull(columnIndexOrThrow4)) {
                    string3 = null;
                } else {
                    string3 = query.getString(columnIndexOrThrow4);
                }
                if (query.isNull(columnIndexOrThrow5)) {
                    blob = null;
                } else {
                    blob = query.getBlob(columnIndexOrThrow5);
                }
                Data fromByteArray = Data.fromByteArray(blob);
                if (query.isNull(columnIndexOrThrow6)) {
                    blob2 = null;
                } else {
                    blob2 = query.getBlob(columnIndexOrThrow6);
                }
                Data fromByteArray2 = Data.fromByteArray(blob2);
                long j10 = query.getLong(columnIndexOrThrow7);
                long j11 = query.getLong(columnIndexOrThrow8);
                long j12 = query.getLong(columnIndexOrThrow9);
                int i15 = query.getInt(columnIndexOrThrow10);
                BackoffPolicy intToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy(query.getInt(columnIndexOrThrow11));
                long j13 = query.getLong(columnIndexOrThrow12);
                long j14 = query.getLong(columnIndexOrThrow13);
                long j15 = query.getLong(columnIndexOrThrow14);
                long j16 = query.getLong(columnIndexOrThrow15);
                if (query.getInt(columnIndexOrThrow16) != 0) {
                    i10 = columnIndexOrThrow17;
                    z10 = true;
                } else {
                    i10 = columnIndexOrThrow17;
                    z10 = false;
                }
                OutOfQuotaPolicy intToOutOfQuotaPolicy = WorkTypeConverters.intToOutOfQuotaPolicy(query.getInt(i10));
                int i16 = query.getInt(columnIndexOrThrow18);
                int i17 = query.getInt(columnIndexOrThrow19);
                NetworkType intToNetworkType = WorkTypeConverters.intToNetworkType(query.getInt(columnIndexOrThrow20));
                if (query.getInt(columnIndexOrThrow21) != 0) {
                    i11 = columnIndexOrThrow22;
                    z11 = true;
                } else {
                    i11 = columnIndexOrThrow22;
                    z11 = false;
                }
                if (query.getInt(i11) != 0) {
                    i12 = columnIndexOrThrow23;
                    z12 = true;
                } else {
                    i12 = columnIndexOrThrow23;
                    z12 = false;
                }
                if (query.getInt(i12) != 0) {
                    i13 = columnIndexOrThrow24;
                    z13 = true;
                } else {
                    i13 = columnIndexOrThrow24;
                    z13 = false;
                }
                if (query.getInt(i13) != 0) {
                    i14 = columnIndexOrThrow25;
                    z14 = true;
                } else {
                    i14 = columnIndexOrThrow25;
                    z14 = false;
                }
                long j17 = query.getLong(i14);
                long j18 = query.getLong(columnIndexOrThrow26);
                if (query.isNull(columnIndexOrThrow27)) {
                    blob3 = null;
                } else {
                    blob3 = query.getBlob(columnIndexOrThrow27);
                }
                workSpec = new WorkSpec(string, intToState, string2, string3, fromByteArray, fromByteArray2, j10, j11, j12, new Constraints(intToNetworkType, z11, z12, z13, z14, j17, j18, WorkTypeConverters.byteArrayToSetOfTriggers(blob3)), i15, intToBackoffPolicy, j13, j14, j15, j16, z10, intToOutOfQuotaPolicy, i16, i17);
            } else {
                workSpec = null;
            }
            query.close();
            roomSQLiteQuery.release();
            return workSpec;
        } catch (Throwable th3) {
            th = th3;
            query.close();
            roomSQLiteQuery.release();
            throw th;
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<WorkSpec.IdAndState> getWorkSpecIdAndStatesForName(String str) {
        String string;
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT id, state FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)", 1);
        if (str == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, str);
        }
        this.__db.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            ArrayList arrayList = new ArrayList(query.getCount());
            while (query.moveToNext()) {
                if (query.isNull(0)) {
                    string = null;
                } else {
                    string = query.getString(0);
                }
                arrayList.add(new WorkSpec.IdAndState(string, WorkTypeConverters.intToState(query.getInt(1))));
            }
            return arrayList;
        } finally {
            query.close();
            acquire.release();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public WorkSpec.WorkInfoPojo getWorkStatusPojoForId(String str) {
        String string;
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT id, state, output, run_attempt_count, generation FROM workspec WHERE id=?", 1);
        if (str == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, str);
        }
        this.__db.assertNotSuspendingTransaction();
        this.__db.beginTransaction();
        try {
            WorkSpec.WorkInfoPojo workInfoPojo = null;
            byte[] blob = null;
            Cursor query = DBUtil.query(this.__db, acquire, true, null);
            ArrayMap<String, ArrayList<String>> arrayMap = new ArrayMap<>();
            ArrayMap<String, ArrayList<Data>> arrayMap2 = new ArrayMap<>();
            while (query.moveToNext()) {
                String string2 = query.getString(0);
                if (arrayMap.get(string2) == null) {
                    arrayMap.put(string2, new ArrayList<>());
                }
                String string3 = query.getString(0);
                if (arrayMap2.get(string3) == null) {
                    arrayMap2.put(string3, new ArrayList<>());
                }
            }
            query.moveToPosition(-1);
            __fetchRelationshipWorkTagAsjavaLangString(arrayMap);
            __fetchRelationshipWorkProgressAsandroidxWorkData(arrayMap2);
            if (query.moveToFirst()) {
                if (query.isNull(0)) {
                    string = null;
                } else {
                    string = query.getString(0);
                }
                WorkInfo.State intToState = WorkTypeConverters.intToState(query.getInt(1));
                if (!query.isNull(2)) {
                    blob = query.getBlob(2);
                }
                Data fromByteArray = Data.fromByteArray(blob);
                int i10 = query.getInt(3);
                int i11 = query.getInt(4);
                ArrayList<String> arrayList = arrayMap.get(query.getString(0));
                if (arrayList == null) {
                    arrayList = new ArrayList<>();
                }
                ArrayList<String> arrayList2 = arrayList;
                ArrayList<Data> arrayList3 = arrayMap2.get(query.getString(0));
                if (arrayList3 == null) {
                    arrayList3 = new ArrayList<>();
                }
                workInfoPojo = new WorkSpec.WorkInfoPojo(string, intToState, fromByteArray, i10, i11, arrayList2, arrayList3);
            }
            this.__db.setTransactionSuccessful();
            query.close();
            acquire.release();
            return workInfoPojo;
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<WorkSpec.WorkInfoPojo> getWorkStatusPojoForIds(List<String> list) {
        String string;
        byte[] blob;
        StringBuilder newStringBuilder = StringUtil.newStringBuilder();
        newStringBuilder.append("SELECT id, state, output, run_attempt_count, generation FROM workspec WHERE id IN (");
        int size = list.size();
        StringUtil.appendPlaceholders(newStringBuilder, size);
        newStringBuilder.append(")");
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire(newStringBuilder.toString(), size);
        int i10 = 1;
        for (String str : list) {
            if (str == null) {
                acquire.bindNull(i10);
            } else {
                acquire.bindString(i10, str);
            }
            i10++;
        }
        this.__db.assertNotSuspendingTransaction();
        this.__db.beginTransaction();
        try {
            Cursor query = DBUtil.query(this.__db, acquire, true, null);
            ArrayMap<String, ArrayList<String>> arrayMap = new ArrayMap<>();
            ArrayMap<String, ArrayList<Data>> arrayMap2 = new ArrayMap<>();
            while (query.moveToNext()) {
                String string2 = query.getString(0);
                if (arrayMap.get(string2) == null) {
                    arrayMap.put(string2, new ArrayList<>());
                }
                String string3 = query.getString(0);
                if (arrayMap2.get(string3) == null) {
                    arrayMap2.put(string3, new ArrayList<>());
                }
            }
            query.moveToPosition(-1);
            __fetchRelationshipWorkTagAsjavaLangString(arrayMap);
            __fetchRelationshipWorkProgressAsandroidxWorkData(arrayMap2);
            ArrayList arrayList = new ArrayList(query.getCount());
            while (query.moveToNext()) {
                if (query.isNull(0)) {
                    string = null;
                } else {
                    string = query.getString(0);
                }
                WorkInfo.State intToState = WorkTypeConverters.intToState(query.getInt(1));
                if (query.isNull(2)) {
                    blob = null;
                } else {
                    blob = query.getBlob(2);
                }
                Data fromByteArray = Data.fromByteArray(blob);
                int i11 = query.getInt(3);
                int i12 = query.getInt(4);
                ArrayList<String> arrayList2 = arrayMap.get(query.getString(0));
                if (arrayList2 == null) {
                    arrayList2 = new ArrayList<>();
                }
                ArrayList<String> arrayList3 = arrayList2;
                ArrayList<Data> arrayList4 = arrayMap2.get(query.getString(0));
                if (arrayList4 == null) {
                    arrayList4 = new ArrayList<>();
                }
                arrayList.add(new WorkSpec.WorkInfoPojo(string, intToState, fromByteArray, i11, i12, arrayList3, arrayList4));
            }
            this.__db.setTransactionSuccessful();
            query.close();
            acquire.release();
            return arrayList;
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<WorkSpec.WorkInfoPojo> getWorkStatusPojoForName(String str) {
        String string;
        byte[] blob;
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT id, state, output, run_attempt_count, generation FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)", 1);
        if (str == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, str);
        }
        this.__db.assertNotSuspendingTransaction();
        this.__db.beginTransaction();
        try {
            Cursor query = DBUtil.query(this.__db, acquire, true, null);
            ArrayMap<String, ArrayList<String>> arrayMap = new ArrayMap<>();
            ArrayMap<String, ArrayList<Data>> arrayMap2 = new ArrayMap<>();
            while (query.moveToNext()) {
                String string2 = query.getString(0);
                if (arrayMap.get(string2) == null) {
                    arrayMap.put(string2, new ArrayList<>());
                }
                String string3 = query.getString(0);
                if (arrayMap2.get(string3) == null) {
                    arrayMap2.put(string3, new ArrayList<>());
                }
            }
            query.moveToPosition(-1);
            __fetchRelationshipWorkTagAsjavaLangString(arrayMap);
            __fetchRelationshipWorkProgressAsandroidxWorkData(arrayMap2);
            ArrayList arrayList = new ArrayList(query.getCount());
            while (query.moveToNext()) {
                if (query.isNull(0)) {
                    string = null;
                } else {
                    string = query.getString(0);
                }
                WorkInfo.State intToState = WorkTypeConverters.intToState(query.getInt(1));
                if (query.isNull(2)) {
                    blob = null;
                } else {
                    blob = query.getBlob(2);
                }
                Data fromByteArray = Data.fromByteArray(blob);
                int i10 = query.getInt(3);
                int i11 = query.getInt(4);
                ArrayList<String> arrayList2 = arrayMap.get(query.getString(0));
                if (arrayList2 == null) {
                    arrayList2 = new ArrayList<>();
                }
                ArrayList<String> arrayList3 = arrayList2;
                ArrayList<Data> arrayList4 = arrayMap2.get(query.getString(0));
                if (arrayList4 == null) {
                    arrayList4 = new ArrayList<>();
                }
                arrayList.add(new WorkSpec.WorkInfoPojo(string, intToState, fromByteArray, i10, i11, arrayList3, arrayList4));
            }
            this.__db.setTransactionSuccessful();
            query.close();
            acquire.release();
            return arrayList;
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<WorkSpec.WorkInfoPojo> getWorkStatusPojoForTag(String str) {
        String string;
        byte[] blob;
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT id, state, output, run_attempt_count, generation FROM workspec WHERE id IN\n            (SELECT work_spec_id FROM worktag WHERE tag=?)", 1);
        if (str == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, str);
        }
        this.__db.assertNotSuspendingTransaction();
        this.__db.beginTransaction();
        try {
            Cursor query = DBUtil.query(this.__db, acquire, true, null);
            ArrayMap<String, ArrayList<String>> arrayMap = new ArrayMap<>();
            ArrayMap<String, ArrayList<Data>> arrayMap2 = new ArrayMap<>();
            while (query.moveToNext()) {
                String string2 = query.getString(0);
                if (arrayMap.get(string2) == null) {
                    arrayMap.put(string2, new ArrayList<>());
                }
                String string3 = query.getString(0);
                if (arrayMap2.get(string3) == null) {
                    arrayMap2.put(string3, new ArrayList<>());
                }
            }
            query.moveToPosition(-1);
            __fetchRelationshipWorkTagAsjavaLangString(arrayMap);
            __fetchRelationshipWorkProgressAsandroidxWorkData(arrayMap2);
            ArrayList arrayList = new ArrayList(query.getCount());
            while (query.moveToNext()) {
                if (query.isNull(0)) {
                    string = null;
                } else {
                    string = query.getString(0);
                }
                WorkInfo.State intToState = WorkTypeConverters.intToState(query.getInt(1));
                if (query.isNull(2)) {
                    blob = null;
                } else {
                    blob = query.getBlob(2);
                }
                Data fromByteArray = Data.fromByteArray(blob);
                int i10 = query.getInt(3);
                int i11 = query.getInt(4);
                ArrayList<String> arrayList2 = arrayMap.get(query.getString(0));
                if (arrayList2 == null) {
                    arrayList2 = new ArrayList<>();
                }
                ArrayList<String> arrayList3 = arrayList2;
                ArrayList<Data> arrayList4 = arrayMap2.get(query.getString(0));
                if (arrayList4 == null) {
                    arrayList4 = new ArrayList<>();
                }
                arrayList.add(new WorkSpec.WorkInfoPojo(string, intToState, fromByteArray, i10, i11, arrayList3, arrayList4));
            }
            this.__db.setTransactionSuccessful();
            query.close();
            acquire.release();
            return arrayList;
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public LiveData<List<WorkSpec.WorkInfoPojo>> getWorkStatusPojoLiveDataForIds(List<String> list) {
        StringBuilder newStringBuilder = StringUtil.newStringBuilder();
        newStringBuilder.append("SELECT id, state, output, run_attempt_count, generation FROM workspec WHERE id IN (");
        int size = list.size();
        StringUtil.appendPlaceholders(newStringBuilder, size);
        newStringBuilder.append(")");
        final RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire(newStringBuilder.toString(), size);
        int i10 = 1;
        for (String str : list) {
            if (str == null) {
                acquire.bindNull(i10);
            } else {
                acquire.bindString(i10, str);
            }
            i10++;
        }
        return this.__db.getInvalidationTracker().createLiveData(new String[]{"WorkTag", "WorkProgress", "workspec"}, true, (Callable) new Callable<List<WorkSpec.WorkInfoPojo>>() { // from class: androidx.work.impl.model.WorkSpecDao_Impl.15
            protected void finalize() {
                acquire.release();
            }

            @Override // java.util.concurrent.Callable
            public List<WorkSpec.WorkInfoPojo> call() throws Exception {
                WorkSpecDao_Impl.this.__db.beginTransaction();
                try {
                    Cursor query = DBUtil.query(WorkSpecDao_Impl.this.__db, acquire, true, null);
                    ArrayMap arrayMap = new ArrayMap();
                    ArrayMap arrayMap2 = new ArrayMap();
                    while (query.moveToNext()) {
                        String string = query.getString(0);
                        if (((ArrayList) arrayMap.get(string)) == null) {
                            arrayMap.put(string, new ArrayList());
                        }
                        String string2 = query.getString(0);
                        if (((ArrayList) arrayMap2.get(string2)) == null) {
                            arrayMap2.put(string2, new ArrayList());
                        }
                    }
                    query.moveToPosition(-1);
                    WorkSpecDao_Impl.this.__fetchRelationshipWorkTagAsjavaLangString(arrayMap);
                    WorkSpecDao_Impl.this.__fetchRelationshipWorkProgressAsandroidxWorkData(arrayMap2);
                    ArrayList arrayList = new ArrayList(query.getCount());
                    while (query.moveToNext()) {
                        String string3 = query.isNull(0) ? null : query.getString(0);
                        WorkInfo.State intToState = WorkTypeConverters.intToState(query.getInt(1));
                        Data fromByteArray = Data.fromByteArray(query.isNull(2) ? null : query.getBlob(2));
                        int i11 = query.getInt(3);
                        int i12 = query.getInt(4);
                        ArrayList arrayList2 = (ArrayList) arrayMap.get(query.getString(0));
                        if (arrayList2 == null) {
                            arrayList2 = new ArrayList();
                        }
                        ArrayList arrayList3 = arrayList2;
                        ArrayList arrayList4 = (ArrayList) arrayMap2.get(query.getString(0));
                        if (arrayList4 == null) {
                            arrayList4 = new ArrayList();
                        }
                        arrayList.add(new WorkSpec.WorkInfoPojo(string3, intToState, fromByteArray, i11, i12, arrayList3, arrayList4));
                    }
                    WorkSpecDao_Impl.this.__db.setTransactionSuccessful();
                    query.close();
                    return arrayList;
                } finally {
                    WorkSpecDao_Impl.this.__db.endTransaction();
                }
            }
        });
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public LiveData<List<WorkSpec.WorkInfoPojo>> getWorkStatusPojoLiveDataForName(String str) {
        final RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT id, state, output, run_attempt_count, generation FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)", 1);
        if (str == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, str);
        }
        return this.__db.getInvalidationTracker().createLiveData(new String[]{"WorkTag", "WorkProgress", "workspec", "workname"}, true, (Callable) new Callable<List<WorkSpec.WorkInfoPojo>>() { // from class: androidx.work.impl.model.WorkSpecDao_Impl.17
            protected void finalize() {
                acquire.release();
            }

            @Override // java.util.concurrent.Callable
            public List<WorkSpec.WorkInfoPojo> call() throws Exception {
                WorkSpecDao_Impl.this.__db.beginTransaction();
                try {
                    Cursor query = DBUtil.query(WorkSpecDao_Impl.this.__db, acquire, true, null);
                    ArrayMap arrayMap = new ArrayMap();
                    ArrayMap arrayMap2 = new ArrayMap();
                    while (query.moveToNext()) {
                        String string = query.getString(0);
                        if (((ArrayList) arrayMap.get(string)) == null) {
                            arrayMap.put(string, new ArrayList());
                        }
                        String string2 = query.getString(0);
                        if (((ArrayList) arrayMap2.get(string2)) == null) {
                            arrayMap2.put(string2, new ArrayList());
                        }
                    }
                    query.moveToPosition(-1);
                    WorkSpecDao_Impl.this.__fetchRelationshipWorkTagAsjavaLangString(arrayMap);
                    WorkSpecDao_Impl.this.__fetchRelationshipWorkProgressAsandroidxWorkData(arrayMap2);
                    ArrayList arrayList = new ArrayList(query.getCount());
                    while (query.moveToNext()) {
                        String string3 = query.isNull(0) ? null : query.getString(0);
                        WorkInfo.State intToState = WorkTypeConverters.intToState(query.getInt(1));
                        Data fromByteArray = Data.fromByteArray(query.isNull(2) ? null : query.getBlob(2));
                        int i10 = query.getInt(3);
                        int i11 = query.getInt(4);
                        ArrayList arrayList2 = (ArrayList) arrayMap.get(query.getString(0));
                        if (arrayList2 == null) {
                            arrayList2 = new ArrayList();
                        }
                        ArrayList arrayList3 = arrayList2;
                        ArrayList arrayList4 = (ArrayList) arrayMap2.get(query.getString(0));
                        if (arrayList4 == null) {
                            arrayList4 = new ArrayList();
                        }
                        arrayList.add(new WorkSpec.WorkInfoPojo(string3, intToState, fromByteArray, i10, i11, arrayList3, arrayList4));
                    }
                    WorkSpecDao_Impl.this.__db.setTransactionSuccessful();
                    query.close();
                    return arrayList;
                } finally {
                    WorkSpecDao_Impl.this.__db.endTransaction();
                }
            }
        });
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public LiveData<List<WorkSpec.WorkInfoPojo>> getWorkStatusPojoLiveDataForTag(String str) {
        final RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT id, state, output, run_attempt_count, generation FROM workspec WHERE id IN\n            (SELECT work_spec_id FROM worktag WHERE tag=?)", 1);
        if (str == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, str);
        }
        return this.__db.getInvalidationTracker().createLiveData(new String[]{"WorkTag", "WorkProgress", "workspec", "worktag"}, true, (Callable) new Callable<List<WorkSpec.WorkInfoPojo>>() { // from class: androidx.work.impl.model.WorkSpecDao_Impl.16
            protected void finalize() {
                acquire.release();
            }

            @Override // java.util.concurrent.Callable
            public List<WorkSpec.WorkInfoPojo> call() throws Exception {
                WorkSpecDao_Impl.this.__db.beginTransaction();
                try {
                    Cursor query = DBUtil.query(WorkSpecDao_Impl.this.__db, acquire, true, null);
                    ArrayMap arrayMap = new ArrayMap();
                    ArrayMap arrayMap2 = new ArrayMap();
                    while (query.moveToNext()) {
                        String string = query.getString(0);
                        if (((ArrayList) arrayMap.get(string)) == null) {
                            arrayMap.put(string, new ArrayList());
                        }
                        String string2 = query.getString(0);
                        if (((ArrayList) arrayMap2.get(string2)) == null) {
                            arrayMap2.put(string2, new ArrayList());
                        }
                    }
                    query.moveToPosition(-1);
                    WorkSpecDao_Impl.this.__fetchRelationshipWorkTagAsjavaLangString(arrayMap);
                    WorkSpecDao_Impl.this.__fetchRelationshipWorkProgressAsandroidxWorkData(arrayMap2);
                    ArrayList arrayList = new ArrayList(query.getCount());
                    while (query.moveToNext()) {
                        String string3 = query.isNull(0) ? null : query.getString(0);
                        WorkInfo.State intToState = WorkTypeConverters.intToState(query.getInt(1));
                        Data fromByteArray = Data.fromByteArray(query.isNull(2) ? null : query.getBlob(2));
                        int i10 = query.getInt(3);
                        int i11 = query.getInt(4);
                        ArrayList arrayList2 = (ArrayList) arrayMap.get(query.getString(0));
                        if (arrayList2 == null) {
                            arrayList2 = new ArrayList();
                        }
                        ArrayList arrayList3 = arrayList2;
                        ArrayList arrayList4 = (ArrayList) arrayMap2.get(query.getString(0));
                        if (arrayList4 == null) {
                            arrayList4 = new ArrayList();
                        }
                        arrayList.add(new WorkSpec.WorkInfoPojo(string3, intToState, fromByteArray, i10, i11, arrayList3, arrayList4));
                    }
                    WorkSpecDao_Impl.this.__db.setTransactionSuccessful();
                    query.close();
                    return arrayList;
                } finally {
                    WorkSpecDao_Impl.this.__db.endTransaction();
                }
            }
        });
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public boolean hasUnfinishedWork() {
        boolean z10 = false;
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT COUNT(*) > 0 FROM workspec WHERE state NOT IN (2, 3, 5) LIMIT 1", 0);
        this.__db.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            if (query.moveToFirst()) {
                if (query.getInt(0) != 0) {
                    z10 = true;
                }
            }
            return z10;
        } finally {
            query.close();
            acquire.release();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void incrementGeneration(String str) {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.__preparedStmtOfIncrementGeneration.acquire();
        if (str == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, str);
        }
        this.__db.beginTransaction();
        try {
            acquire.executeUpdateDelete();
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
            this.__preparedStmtOfIncrementGeneration.release(acquire);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void incrementPeriodCount(String str) {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.__preparedStmtOfIncrementPeriodCount.acquire();
        if (str == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, str);
        }
        this.__db.beginTransaction();
        try {
            acquire.executeUpdateDelete();
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
            this.__preparedStmtOfIncrementPeriodCount.release(acquire);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public int incrementWorkSpecRunAttemptCount(String str) {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.__preparedStmtOfIncrementWorkSpecRunAttemptCount.acquire();
        if (str == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, str);
        }
        this.__db.beginTransaction();
        try {
            int executeUpdateDelete = acquire.executeUpdateDelete();
            this.__db.setTransactionSuccessful();
            return executeUpdateDelete;
        } finally {
            this.__db.endTransaction();
            this.__preparedStmtOfIncrementWorkSpecRunAttemptCount.release(acquire);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void insertWorkSpec(WorkSpec workSpec) {
        this.__db.assertNotSuspendingTransaction();
        this.__db.beginTransaction();
        try {
            this.__insertionAdapterOfWorkSpec.insert((EntityInsertionAdapter<WorkSpec>) workSpec);
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public int markWorkSpecScheduled(String str, long j10) {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.__preparedStmtOfMarkWorkSpecScheduled.acquire();
        acquire.bindLong(1, j10);
        if (str == null) {
            acquire.bindNull(2);
        } else {
            acquire.bindString(2, str);
        }
        this.__db.beginTransaction();
        try {
            int executeUpdateDelete = acquire.executeUpdateDelete();
            this.__db.setTransactionSuccessful();
            return executeUpdateDelete;
        } finally {
            this.__db.endTransaction();
            this.__preparedStmtOfMarkWorkSpecScheduled.release(acquire);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void pruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast() {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.__preparedStmtOfPruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast.acquire();
        this.__db.beginTransaction();
        try {
            acquire.executeUpdateDelete();
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
            this.__preparedStmtOfPruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast.release(acquire);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public int resetScheduledState() {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.__preparedStmtOfResetScheduledState.acquire();
        this.__db.beginTransaction();
        try {
            int executeUpdateDelete = acquire.executeUpdateDelete();
            this.__db.setTransactionSuccessful();
            return executeUpdateDelete;
        } finally {
            this.__db.endTransaction();
            this.__preparedStmtOfResetScheduledState.release(acquire);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public int resetWorkSpecRunAttemptCount(String str) {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.__preparedStmtOfResetWorkSpecRunAttemptCount.acquire();
        if (str == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, str);
        }
        this.__db.beginTransaction();
        try {
            int executeUpdateDelete = acquire.executeUpdateDelete();
            this.__db.setTransactionSuccessful();
            return executeUpdateDelete;
        } finally {
            this.__db.endTransaction();
            this.__preparedStmtOfResetWorkSpecRunAttemptCount.release(acquire);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void setLastEnqueuedTime(String str, long j10) {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.__preparedStmtOfSetLastEnqueuedTime.acquire();
        acquire.bindLong(1, j10);
        if (str == null) {
            acquire.bindNull(2);
        } else {
            acquire.bindString(2, str);
        }
        this.__db.beginTransaction();
        try {
            acquire.executeUpdateDelete();
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
            this.__preparedStmtOfSetLastEnqueuedTime.release(acquire);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void setOutput(String str, Data data) {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.__preparedStmtOfSetOutput.acquire();
        byte[] byteArrayInternal = Data.toByteArrayInternal(data);
        if (byteArrayInternal == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindBlob(1, byteArrayInternal);
        }
        if (str == null) {
            acquire.bindNull(2);
        } else {
            acquire.bindString(2, str);
        }
        this.__db.beginTransaction();
        try {
            acquire.executeUpdateDelete();
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
            this.__preparedStmtOfSetOutput.release(acquire);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public int setState(WorkInfo.State state, String str) {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.__preparedStmtOfSetState.acquire();
        acquire.bindLong(1, WorkTypeConverters.stateToInt(state));
        if (str == null) {
            acquire.bindNull(2);
        } else {
            acquire.bindString(2, str);
        }
        this.__db.beginTransaction();
        try {
            int executeUpdateDelete = acquire.executeUpdateDelete();
            this.__db.setTransactionSuccessful();
            return executeUpdateDelete;
        } finally {
            this.__db.endTransaction();
            this.__preparedStmtOfSetState.release(acquire);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void updateWorkSpec(WorkSpec workSpec) {
        this.__db.assertNotSuspendingTransaction();
        this.__db.beginTransaction();
        try {
            this.__updateAdapterOfWorkSpec.handle(workSpec);
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
        }
    }
}
