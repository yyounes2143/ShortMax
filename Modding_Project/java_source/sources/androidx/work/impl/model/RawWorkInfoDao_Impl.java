package androidx.work.impl.model;

import android.database.Cursor;
import androidx.collection.ArrayMap;
import androidx.lifecycle.LiveData;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.util.CursorUtil;
import androidx.room.util.DBUtil;
import androidx.room.util.StringUtil;
import androidx.sqlite.db.SupportSQLiteQuery;
import androidx.work.Data;
import androidx.work.impl.model.WorkSpec;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
/* loaded from: classes2.dex */
public final class RawWorkInfoDao_Impl implements RawWorkInfoDao {
    private final RoomDatabase __db;

    public RawWorkInfoDao_Impl(RoomDatabase roomDatabase) {
        this.__db = roomDatabase;
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

    /* JADX WARN: Removed duplicated region for block: B:24:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0099 A[Catch: all -> 0x0054, TryCatch #0 {all -> 0x0054, blocks: (B:3:0x0011, B:4:0x0039, B:6:0x003f, B:8:0x004b, B:11:0x0057, B:13:0x0063, B:14:0x006c, B:15:0x007f, B:40:0x00cf, B:42:0x00db, B:43:0x00e0, B:45:0x00ee, B:46:0x00f3, B:39:0x00ca, B:36:0x00bf, B:28:0x00a7, B:32:0x00b3, B:31:0x00af, B:25:0x0099, B:19:0x0089, B:22:0x0090), top: B:52:0x0011 }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00a7 A[Catch: all -> 0x0054, TryCatch #0 {all -> 0x0054, blocks: (B:3:0x0011, B:4:0x0039, B:6:0x003f, B:8:0x004b, B:11:0x0057, B:13:0x0063, B:14:0x006c, B:15:0x007f, B:40:0x00cf, B:42:0x00db, B:43:0x00e0, B:45:0x00ee, B:46:0x00f3, B:39:0x00ca, B:36:0x00bf, B:28:0x00a7, B:32:0x00b3, B:31:0x00af, B:25:0x0099, B:19:0x0089, B:22:0x0090), top: B:52:0x0011 }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00bf A[Catch: all -> 0x0054, TryCatch #0 {all -> 0x0054, blocks: (B:3:0x0011, B:4:0x0039, B:6:0x003f, B:8:0x004b, B:11:0x0057, B:13:0x0063, B:14:0x006c, B:15:0x007f, B:40:0x00cf, B:42:0x00db, B:43:0x00e0, B:45:0x00ee, B:46:0x00f3, B:39:0x00ca, B:36:0x00bf, B:28:0x00a7, B:32:0x00b3, B:31:0x00af, B:25:0x0099, B:19:0x0089, B:22:0x0090), top: B:52:0x0011 }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00ca A[Catch: all -> 0x0054, TryCatch #0 {all -> 0x0054, blocks: (B:3:0x0011, B:4:0x0039, B:6:0x003f, B:8:0x004b, B:11:0x0057, B:13:0x0063, B:14:0x006c, B:15:0x007f, B:40:0x00cf, B:42:0x00db, B:43:0x00e0, B:45:0x00ee, B:46:0x00f3, B:39:0x00ca, B:36:0x00bf, B:28:0x00a7, B:32:0x00b3, B:31:0x00af, B:25:0x0099, B:19:0x0089, B:22:0x0090), top: B:52:0x0011 }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00db A[Catch: all -> 0x0054, TryCatch #0 {all -> 0x0054, blocks: (B:3:0x0011, B:4:0x0039, B:6:0x003f, B:8:0x004b, B:11:0x0057, B:13:0x0063, B:14:0x006c, B:15:0x007f, B:40:0x00cf, B:42:0x00db, B:43:0x00e0, B:45:0x00ee, B:46:0x00f3, B:39:0x00ca, B:36:0x00bf, B:28:0x00a7, B:32:0x00b3, B:31:0x00af, B:25:0x0099, B:19:0x0089, B:22:0x0090), top: B:52:0x0011 }] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00ee A[Catch: all -> 0x0054, TryCatch #0 {all -> 0x0054, blocks: (B:3:0x0011, B:4:0x0039, B:6:0x003f, B:8:0x004b, B:11:0x0057, B:13:0x0063, B:14:0x006c, B:15:0x007f, B:40:0x00cf, B:42:0x00db, B:43:0x00e0, B:45:0x00ee, B:46:0x00f3, B:39:0x00ca, B:36:0x00bf, B:28:0x00a7, B:32:0x00b3, B:31:0x00af, B:25:0x0099, B:19:0x0089, B:22:0x0090), top: B:52:0x0011 }] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00f3 A[SYNTHETIC] */
    @Override // androidx.work.impl.model.RawWorkInfoDao
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<androidx.work.impl.model.WorkSpec.WorkInfoPojo> getWorkInfoPojos(androidx.sqlite.db.SupportSQLiteQuery r22) {
        /*
            Method dump skipped, instructions count: 263
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.model.RawWorkInfoDao_Impl.getWorkInfoPojos(androidx.sqlite.db.SupportSQLiteQuery):java.util.List");
    }

    @Override // androidx.work.impl.model.RawWorkInfoDao
    public LiveData<List<WorkSpec.WorkInfoPojo>> getWorkInfoPojosLiveData(final SupportSQLiteQuery supportSQLiteQuery) {
        return this.__db.getInvalidationTracker().createLiveData(new String[]{"WorkTag", "WorkProgress", "WorkSpec"}, false, (Callable) new Callable<List<WorkSpec.WorkInfoPojo>>() { // from class: androidx.work.impl.model.RawWorkInfoDao_Impl.1
            /* JADX WARN: Removed duplicated region for block: B:24:0x009a  */
            /* JADX WARN: Removed duplicated region for block: B:25:0x009c A[Catch: all -> 0x0053, TryCatch #0 {all -> 0x0053, blocks: (B:3:0x0010, B:4:0x0038, B:6:0x003e, B:8:0x004a, B:11:0x0056, B:13:0x0062, B:14:0x006b, B:15:0x0082, B:40:0x00d2, B:42:0x00de, B:43:0x00e3, B:45:0x00f1, B:46:0x00f6, B:39:0x00cd, B:36:0x00c2, B:28:0x00aa, B:32:0x00b6, B:31:0x00b2, B:25:0x009c, B:19:0x008c, B:22:0x0093), top: B:52:0x0010 }] */
            /* JADX WARN: Removed duplicated region for block: B:27:0x00a7  */
            /* JADX WARN: Removed duplicated region for block: B:28:0x00aa A[Catch: all -> 0x0053, TryCatch #0 {all -> 0x0053, blocks: (B:3:0x0010, B:4:0x0038, B:6:0x003e, B:8:0x004a, B:11:0x0056, B:13:0x0062, B:14:0x006b, B:15:0x0082, B:40:0x00d2, B:42:0x00de, B:43:0x00e3, B:45:0x00f1, B:46:0x00f6, B:39:0x00cd, B:36:0x00c2, B:28:0x00aa, B:32:0x00b6, B:31:0x00b2, B:25:0x009c, B:19:0x008c, B:22:0x0093), top: B:52:0x0010 }] */
            /* JADX WARN: Removed duplicated region for block: B:35:0x00bf  */
            /* JADX WARN: Removed duplicated region for block: B:36:0x00c2 A[Catch: all -> 0x0053, TryCatch #0 {all -> 0x0053, blocks: (B:3:0x0010, B:4:0x0038, B:6:0x003e, B:8:0x004a, B:11:0x0056, B:13:0x0062, B:14:0x006b, B:15:0x0082, B:40:0x00d2, B:42:0x00de, B:43:0x00e3, B:45:0x00f1, B:46:0x00f6, B:39:0x00cd, B:36:0x00c2, B:28:0x00aa, B:32:0x00b6, B:31:0x00b2, B:25:0x009c, B:19:0x008c, B:22:0x0093), top: B:52:0x0010 }] */
            /* JADX WARN: Removed duplicated region for block: B:39:0x00cd A[Catch: all -> 0x0053, TryCatch #0 {all -> 0x0053, blocks: (B:3:0x0010, B:4:0x0038, B:6:0x003e, B:8:0x004a, B:11:0x0056, B:13:0x0062, B:14:0x006b, B:15:0x0082, B:40:0x00d2, B:42:0x00de, B:43:0x00e3, B:45:0x00f1, B:46:0x00f6, B:39:0x00cd, B:36:0x00c2, B:28:0x00aa, B:32:0x00b6, B:31:0x00b2, B:25:0x009c, B:19:0x008c, B:22:0x0093), top: B:52:0x0010 }] */
            /* JADX WARN: Removed duplicated region for block: B:42:0x00de A[Catch: all -> 0x0053, TryCatch #0 {all -> 0x0053, blocks: (B:3:0x0010, B:4:0x0038, B:6:0x003e, B:8:0x004a, B:11:0x0056, B:13:0x0062, B:14:0x006b, B:15:0x0082, B:40:0x00d2, B:42:0x00de, B:43:0x00e3, B:45:0x00f1, B:46:0x00f6, B:39:0x00cd, B:36:0x00c2, B:28:0x00aa, B:32:0x00b6, B:31:0x00b2, B:25:0x009c, B:19:0x008c, B:22:0x0093), top: B:52:0x0010 }] */
            /* JADX WARN: Removed duplicated region for block: B:45:0x00f1 A[Catch: all -> 0x0053, TryCatch #0 {all -> 0x0053, blocks: (B:3:0x0010, B:4:0x0038, B:6:0x003e, B:8:0x004a, B:11:0x0056, B:13:0x0062, B:14:0x006b, B:15:0x0082, B:40:0x00d2, B:42:0x00de, B:43:0x00e3, B:45:0x00f1, B:46:0x00f6, B:39:0x00cd, B:36:0x00c2, B:28:0x00aa, B:32:0x00b6, B:31:0x00b2, B:25:0x009c, B:19:0x008c, B:22:0x0093), top: B:52:0x0010 }] */
            /* JADX WARN: Removed duplicated region for block: B:61:0x00f6 A[SYNTHETIC] */
            @Override // java.util.concurrent.Callable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public java.util.List<androidx.work.impl.model.WorkSpec.WorkInfoPojo> call() throws java.lang.Exception {
                /*
                    Method dump skipped, instructions count: 266
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.model.RawWorkInfoDao_Impl.AnonymousClass1.call():java.util.List");
            }
        });
    }
}
