package com.moloco.sdk.acm.db;

import android.database.Cursor;
import androidx.room.CoroutinesRoom;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.RoomDatabaseKt;
import androidx.room.RoomSQLiteQuery;
import androidx.room.SharedSQLiteStatement;
import androidx.room.util.CursorUtil;
import androidx.room.util.DBUtil;
import androidx.room.util.StringUtil;
import androidx.sqlite.db.SupportSQLiteStatement;
import com.moloco.sdk.acm.db.d;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Callable;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
/* loaded from: classes6.dex */
public final class e implements com.moloco.sdk.acm.db.d {

    /* renamed from: a  reason: collision with root package name */
    public final RoomDatabase f31854a;

    /* renamed from: b  reason: collision with root package name */
    public final EntityInsertionAdapter<com.moloco.sdk.acm.db.b> f31855b;

    /* renamed from: c  reason: collision with root package name */
    public final com.moloco.sdk.acm.db.a f31856c = new com.moloco.sdk.acm.db.a();

    /* renamed from: d  reason: collision with root package name */
    public final EntityInsertionAdapter<com.moloco.sdk.acm.db.b> f31857d;

    /* renamed from: e  reason: collision with root package name */
    public final SharedSQLiteStatement f31858e;

    /* renamed from: f  reason: collision with root package name */
    public final SharedSQLiteStatement f31859f;

    /* loaded from: classes6.dex */
    public class a extends EntityInsertionAdapter<com.moloco.sdk.acm.db.b> {
        public a(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override // androidx.room.EntityInsertionAdapter
        /* renamed from: b */
        public void bind(SupportSQLiteStatement supportSQLiteStatement, com.moloco.sdk.acm.db.b bVar) {
            supportSQLiteStatement.bindLong(1, bVar.c());
            if (bVar.d() == null) {
                supportSQLiteStatement.bindNull(2);
            } else {
                supportSQLiteStatement.bindString(2, bVar.d());
            }
            supportSQLiteStatement.bindLong(3, bVar.f());
            String b10 = e.this.f31856c.b(bVar.b());
            if (b10 == null) {
                supportSQLiteStatement.bindNull(4);
            } else {
                supportSQLiteStatement.bindString(4, b10);
            }
            if (bVar.a() == null) {
                supportSQLiteStatement.bindNull(5);
            } else {
                supportSQLiteStatement.bindLong(5, bVar.a().longValue());
            }
            String c10 = e.this.f31856c.c(bVar.e());
            if (c10 == null) {
                supportSQLiteStatement.bindNull(6);
            } else {
                supportSQLiteStatement.bindString(6, c10);
            }
        }

        @Override // androidx.room.SharedSQLiteStatement
        public String createQuery() {
            return "INSERT OR REPLACE INTO `events` (`id`,`name`,`timestamp`,`eventType`,`data`,`tags`) VALUES (nullif(?, 0),?,?,?,?,?)";
        }
    }

    /* loaded from: classes6.dex */
    public class b extends EntityInsertionAdapter<com.moloco.sdk.acm.db.b> {
        public b(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override // androidx.room.EntityInsertionAdapter
        /* renamed from: b */
        public void bind(SupportSQLiteStatement supportSQLiteStatement, com.moloco.sdk.acm.db.b bVar) {
            supportSQLiteStatement.bindLong(1, bVar.c());
            if (bVar.d() == null) {
                supportSQLiteStatement.bindNull(2);
            } else {
                supportSQLiteStatement.bindString(2, bVar.d());
            }
            supportSQLiteStatement.bindLong(3, bVar.f());
            String b10 = e.this.f31856c.b(bVar.b());
            if (b10 == null) {
                supportSQLiteStatement.bindNull(4);
            } else {
                supportSQLiteStatement.bindString(4, b10);
            }
            if (bVar.a() == null) {
                supportSQLiteStatement.bindNull(5);
            } else {
                supportSQLiteStatement.bindLong(5, bVar.a().longValue());
            }
            String c10 = e.this.f31856c.c(bVar.e());
            if (c10 == null) {
                supportSQLiteStatement.bindNull(6);
            } else {
                supportSQLiteStatement.bindString(6, c10);
            }
        }

        @Override // androidx.room.SharedSQLiteStatement
        public String createQuery() {
            return "INSERT OR ABORT INTO `events` (`id`,`name`,`timestamp`,`eventType`,`data`,`tags`) VALUES (nullif(?, 0),?,?,?,?,?)";
        }
    }

    /* loaded from: classes6.dex */
    public class c extends SharedSQLiteStatement {
        public c(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override // androidx.room.SharedSQLiteStatement
        public String createQuery() {
            return "DELETE FROM events";
        }
    }

    /* loaded from: classes6.dex */
    public class d extends SharedSQLiteStatement {
        public d(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override // androidx.room.SharedSQLiteStatement
        public String createQuery() {
            return "DELETE FROM sqlite_sequence WHERE name='events'";
        }
    }

    /* renamed from: com.moloco.sdk.acm.db.e$e  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public class CallableC0461e implements Callable<Unit> {
        public CallableC0461e() {
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public Unit call() throws Exception {
            SupportSQLiteStatement acquire = e.this.f31859f.acquire();
            e.this.f31854a.beginTransaction();
            try {
                acquire.executeUpdateDelete();
                e.this.f31854a.setTransactionSuccessful();
                return Unit.f60915a;
            } finally {
                e.this.f31854a.endTransaction();
                e.this.f31859f.release(acquire);
            }
        }
    }

    /* loaded from: classes6.dex */
    public class f implements Callable<Unit> {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ List f31865a;

        public f(List list) {
            this.f31865a = list;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public Unit call() throws Exception {
            StringBuilder newStringBuilder = StringUtil.newStringBuilder();
            newStringBuilder.append("DELETE FROM events WHERE id IN (");
            StringUtil.appendPlaceholders(newStringBuilder, this.f31865a.size());
            newStringBuilder.append(")");
            SupportSQLiteStatement compileStatement = e.this.f31854a.compileStatement(newStringBuilder.toString());
            int i10 = 1;
            for (Long l10 : this.f31865a) {
                compileStatement.bindLong(i10, l10.longValue());
                i10++;
            }
            e.this.f31854a.beginTransaction();
            try {
                compileStatement.executeUpdateDelete();
                e.this.f31854a.setTransactionSuccessful();
                return Unit.f60915a;
            } finally {
                e.this.f31854a.endTransaction();
            }
        }
    }

    public e(RoomDatabase roomDatabase) {
        this.f31854a = roomDatabase;
        this.f31855b = new a(roomDatabase);
        this.f31857d = new b(roomDatabase);
        this.f31858e = new c(roomDatabase);
        this.f31859f = new d(roomDatabase);
    }

    public static List<Class<?>> g() {
        return Collections.emptyList();
    }

    @Override // com.moloco.sdk.acm.db.d
    public Object a(rs.c<? super List<com.moloco.sdk.acm.db.b>> cVar) {
        return RoomDatabaseKt.withTransaction(this.f31854a, new Function1() { // from class: com.moloco.sdk.acm.db.f
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return e.this.i((rs.c) obj);
            }
        }, cVar);
    }

    @Override // com.moloco.sdk.acm.db.d
    public long b(com.moloco.sdk.acm.db.b bVar) {
        this.f31854a.assertNotSuspendingTransaction();
        this.f31854a.beginTransaction();
        try {
            long insertAndReturnId = this.f31855b.insertAndReturnId(bVar);
            this.f31854a.setTransactionSuccessful();
            return insertAndReturnId;
        } finally {
            this.f31854a.endTransaction();
        }
    }

    @Override // com.moloco.sdk.acm.db.d
    public Object c(List<Long> list, rs.c<? super Unit> cVar) {
        return CoroutinesRoom.execute(this.f31854a, true, new f(list), cVar);
    }

    @Override // com.moloco.sdk.acm.db.d
    public Object d(rs.c<? super Unit> cVar) {
        return CoroutinesRoom.execute(this.f31854a, true, new CallableC0461e(), cVar);
    }

    public final /* synthetic */ Object i(rs.c cVar) {
        return d.a.a(this, cVar);
    }

    @Override // com.moloco.sdk.acm.db.d
    public List<com.moloco.sdk.acm.db.b> b() {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM events LIMIT 900", 0);
        this.f31854a.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.f31854a, acquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, "id");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, "name");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, "timestamp");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, "eventType");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(query, "data");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(query, "tags");
            ArrayList arrayList = new ArrayList(query.getCount());
            while (query.moveToNext()) {
                arrayList.add(new com.moloco.sdk.acm.db.b(query.getLong(columnIndexOrThrow), query.isNull(columnIndexOrThrow2) ? null : query.getString(columnIndexOrThrow2), query.getLong(columnIndexOrThrow3), this.f31856c.a(query.isNull(columnIndexOrThrow4) ? null : query.getString(columnIndexOrThrow4)), query.isNull(columnIndexOrThrow5) ? null : Long.valueOf(query.getLong(columnIndexOrThrow5)), this.f31856c.d(query.isNull(columnIndexOrThrow6) ? null : query.getString(columnIndexOrThrow6))));
            }
            return arrayList;
        } finally {
            query.close();
            acquire.release();
        }
    }
}
