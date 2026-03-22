package vd;

import androidx.annotation.NonNull;
import androidx.room.EntityInsertAdapter;
import androidx.room.RoomDatabase;
import androidx.room.util.DBUtil;
import androidx.room.util.SQLiteConnectionUtil;
import androidx.room.util.SQLiteStatementUtil;
import androidx.room.util.StringUtil;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import com.huawei.hms.support.feature.result.CommonConstant;
import com.startshorts.androidplayer.db.model.DbEvent;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.functions.Function1;
/* compiled from: EventDao_Impl.java */
/* loaded from: classes6.dex */
public final class f implements vd.a {

    /* renamed from: a  reason: collision with root package name */
    private final RoomDatabase f68884a;

    /* renamed from: b  reason: collision with root package name */
    private final EntityInsertAdapter<DbEvent> f68885b = new a();

    /* compiled from: EventDao_Impl.java */
    /* loaded from: classes6.dex */
    class a extends EntityInsertAdapter<DbEvent> {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.room.EntityInsertAdapter
        /* renamed from: a */
        public void bind(@NonNull SQLiteStatement sQLiteStatement, @NonNull DbEvent dbEvent) {
            sQLiteStatement.mo4331bindLong(1, dbEvent.getLocalId());
            if (dbEvent.getUid() == null) {
                sQLiteStatement.mo4332bindNull(2);
            } else {
                sQLiteStatement.mo4333bindText(2, dbEvent.getUid());
            }
            if (dbEvent.getAppVersion() == null) {
                sQLiteStatement.mo4332bindNull(3);
            } else {
                sQLiteStatement.mo4333bindText(3, dbEvent.getAppVersion());
            }
            if (dbEvent.getEventId() == null) {
                sQLiteStatement.mo4332bindNull(4);
            } else {
                sQLiteStatement.mo4333bindText(4, dbEvent.getEventId());
            }
            if (dbEvent.getEventName() == null) {
                sQLiteStatement.mo4332bindNull(5);
            } else {
                sQLiteStatement.mo4333bindText(5, dbEvent.getEventName());
            }
            if (dbEvent.getEventExtra() == null) {
                sQLiteStatement.mo4332bindNull(6);
            } else {
                sQLiteStatement.mo4333bindText(6, dbEvent.getEventExtra());
            }
            sQLiteStatement.mo4331bindLong(7, dbEvent.getEventTime());
            sQLiteStatement.mo4331bindLong(8, dbEvent.getLocalTime());
            sQLiteStatement.mo4331bindLong(9, dbEvent.getCheckTime());
            sQLiteStatement.mo4331bindLong(10, dbEvent.getStatus());
        }

        @Override // androidx.room.EntityInsertAdapter
        @NonNull
        protected String createQuery() {
            return "INSERT OR REPLACE INTO `DbEvent` (`localId`,`uid`,`app_version`,`event_id`,`event_name`,`event_extra`,`event_time`,`local_time`,`check_time`,`status`) VALUES (nullif(?, 0),?,?,?,?,?,?,?,?,?)";
        }
    }

    public f(@NonNull RoomDatabase roomDatabase) {
        this.f68884a = roomDatabase;
    }

    @NonNull
    public static List<Class<?>> i() {
        return Collections.emptyList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Integer j(String str, List list, SQLiteConnection sQLiteConnection) {
        SQLiteStatement prepare = sQLiteConnection.prepare(str);
        try {
            Iterator it = list.iterator();
            int i10 = 1;
            while (it.hasNext()) {
                Long l10 = (Long) it.next();
                if (l10 == null) {
                    prepare.mo4332bindNull(i10);
                } else {
                    prepare.mo4331bindLong(i10, l10.longValue());
                }
                i10++;
            }
            prepare.step();
            Integer valueOf = Integer.valueOf(SQLiteConnectionUtil.getTotalChangedRows(sQLiteConnection));
            prepare.close();
            return valueOf;
        } catch (Throwable th2) {
            prepare.close();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List k(SQLiteConnection sQLiteConnection) {
        String text;
        String text2;
        String text3;
        String text4;
        SQLiteStatement prepare = sQLiteConnection.prepare("SELECT * FROM DbEvent ORDER BY localId ASC");
        try {
            int columnIndexOrThrow = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "localId");
            int columnIndexOrThrow2 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, CommonConstant.KEY_UID);
            int columnIndexOrThrow3 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "app_version");
            int columnIndexOrThrow4 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "event_id");
            int columnIndexOrThrow5 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "event_name");
            int columnIndexOrThrow6 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "event_extra");
            int columnIndexOrThrow7 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "event_time");
            int columnIndexOrThrow8 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "local_time");
            int columnIndexOrThrow9 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "check_time");
            int columnIndexOrThrow10 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "status");
            ArrayList arrayList = new ArrayList();
            while (prepare.step()) {
                DbEvent dbEvent = new DbEvent();
                dbEvent.setLocalId(prepare.getLong(columnIndexOrThrow));
                String str = null;
                if (prepare.isNull(columnIndexOrThrow2)) {
                    text = null;
                } else {
                    text = prepare.getText(columnIndexOrThrow2);
                }
                dbEvent.setUid(text);
                if (prepare.isNull(columnIndexOrThrow3)) {
                    text2 = null;
                } else {
                    text2 = prepare.getText(columnIndexOrThrow3);
                }
                dbEvent.setAppVersion(text2);
                if (prepare.isNull(columnIndexOrThrow4)) {
                    text3 = null;
                } else {
                    text3 = prepare.getText(columnIndexOrThrow4);
                }
                dbEvent.setEventId(text3);
                if (prepare.isNull(columnIndexOrThrow5)) {
                    text4 = null;
                } else {
                    text4 = prepare.getText(columnIndexOrThrow5);
                }
                dbEvent.setEventName(text4);
                if (!prepare.isNull(columnIndexOrThrow6)) {
                    str = prepare.getText(columnIndexOrThrow6);
                }
                dbEvent.setEventExtra(str);
                dbEvent.setEventTime(prepare.getLong(columnIndexOrThrow7));
                dbEvent.setLocalTime(prepare.getLong(columnIndexOrThrow8));
                dbEvent.setCheckTime(prepare.getLong(columnIndexOrThrow9));
                dbEvent.setStatus((int) prepare.getLong(columnIndexOrThrow10));
                arrayList.add(dbEvent);
            }
            return arrayList;
        } finally {
            prepare.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Long l(DbEvent dbEvent, SQLiteConnection sQLiteConnection) {
        return Long.valueOf(this.f68885b.insertAndReturnId(sQLiteConnection, dbEvent));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ long[] m(List list, SQLiteConnection sQLiteConnection) {
        return this.f68885b.insertAndReturnIdsArray(sQLiteConnection, list);
    }

    @Override // vd.a
    public int a(final List<Long> list) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("DELETE FROM DbEvent WHERE localId in(");
        StringUtil.appendPlaceholders(sb2, list.size());
        sb2.append(")");
        final String sb3 = sb2.toString();
        return ((Integer) DBUtil.performBlocking(this.f68884a, false, true, new Function1() { // from class: vd.e
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Integer j10;
                j10 = f.j(sb3, list, (SQLiteConnection) obj);
                return j10;
            }
        })).intValue();
    }

    @Override // vd.a
    public List<DbEvent> b() {
        return (List) DBUtil.performBlocking(this.f68884a, true, false, new Function1() { // from class: vd.b
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                List k10;
                k10 = f.k((SQLiteConnection) obj);
                return k10;
            }
        });
    }

    @Override // vd.a
    public long c(final DbEvent dbEvent) {
        dbEvent.getClass();
        return ((Long) DBUtil.performBlocking(this.f68884a, false, true, new Function1() { // from class: vd.d
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Long l10;
                l10 = f.this.l(dbEvent, (SQLiteConnection) obj);
                return l10;
            }
        })).longValue();
    }

    @Override // vd.a
    public long[] d(final List<DbEvent> list) {
        list.getClass();
        return (long[]) DBUtil.performBlocking(this.f68884a, false, true, new Function1() { // from class: vd.c
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                long[] m10;
                m10 = f.this.m(list, (SQLiteConnection) obj);
                return m10;
            }
        });
    }
}
