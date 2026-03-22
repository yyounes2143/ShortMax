package xh;

import androidx.annotation.NonNull;
import androidx.room.EntityDeleteOrUpdateAdapter;
import androidx.room.EntityInsertAdapter;
import androidx.room.RoomDatabase;
import androidx.room.util.DBUtil;
import androidx.room.util.SQLiteStatementUtil;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import com.startshorts.androidplayer.bean.act.CallAppDataKey;
import java.util.Collections;
import java.util.List;
import kotlin.jvm.functions.Function1;
/* compiled from: DownloadEpisodesDao_Impl.java */
/* loaded from: classes7.dex */
public final class e implements xh.a {

    /* renamed from: a  reason: collision with root package name */
    private final RoomDatabase f70464a;

    /* renamed from: b  reason: collision with root package name */
    private final EntityInsertAdapter<f> f70465b = new a();

    /* renamed from: c  reason: collision with root package name */
    private final EntityDeleteOrUpdateAdapter<f> f70466c = new b();

    /* renamed from: d  reason: collision with root package name */
    private final EntityDeleteOrUpdateAdapter<f> f70467d = new c();

    /* compiled from: DownloadEpisodesDao_Impl.java */
    /* loaded from: classes7.dex */
    class a extends EntityInsertAdapter<f> {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.room.EntityInsertAdapter
        /* renamed from: a */
        public void bind(@NonNull SQLiteStatement sQLiteStatement, @NonNull f fVar) {
            sQLiteStatement.mo4331bindLong(1, fVar.c());
            if (fVar.a() == null) {
                sQLiteStatement.mo4332bindNull(2);
            } else {
                sQLiteStatement.mo4333bindText(2, fVar.a());
            }
        }

        @Override // androidx.room.EntityInsertAdapter
        @NonNull
        protected String createQuery() {
            return "INSERT OR REPLACE INTO `download_episodes` (`shortPlayId`,`episodes`) VALUES (?,?)";
        }
    }

    /* compiled from: DownloadEpisodesDao_Impl.java */
    /* loaded from: classes7.dex */
    class b extends EntityDeleteOrUpdateAdapter<f> {
        b() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.room.EntityDeleteOrUpdateAdapter
        /* renamed from: a */
        public void bind(@NonNull SQLiteStatement sQLiteStatement, @NonNull f fVar) {
            sQLiteStatement.mo4331bindLong(1, fVar.c());
        }

        @Override // androidx.room.EntityDeleteOrUpdateAdapter
        @NonNull
        protected String createQuery() {
            return "DELETE FROM `download_episodes` WHERE `shortPlayId` = ?";
        }
    }

    /* compiled from: DownloadEpisodesDao_Impl.java */
    /* loaded from: classes7.dex */
    class c extends EntityDeleteOrUpdateAdapter<f> {
        c() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.room.EntityDeleteOrUpdateAdapter
        /* renamed from: a */
        public void bind(@NonNull SQLiteStatement sQLiteStatement, @NonNull f fVar) {
            sQLiteStatement.mo4331bindLong(1, fVar.c());
            if (fVar.a() == null) {
                sQLiteStatement.mo4332bindNull(2);
            } else {
                sQLiteStatement.mo4333bindText(2, fVar.a());
            }
            sQLiteStatement.mo4331bindLong(3, fVar.c());
        }

        @Override // androidx.room.EntityDeleteOrUpdateAdapter
        @NonNull
        protected String createQuery() {
            return "UPDATE OR ABORT `download_episodes` SET `shortPlayId` = ?,`episodes` = ? WHERE `shortPlayId` = ?";
        }
    }

    public e(@NonNull RoomDatabase roomDatabase) {
        this.f70464a = roomDatabase;
    }

    @NonNull
    public static List<Class<?>> g() {
        return Collections.emptyList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object h(SQLiteConnection sQLiteConnection) {
        SQLiteStatement prepare = sQLiteConnection.prepare("DELETE  FROM download_episodes");
        try {
            prepare.step();
            prepare.close();
            return null;
        } catch (Throwable th2) {
            prepare.close();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ f i(int i10, SQLiteConnection sQLiteConnection) {
        SQLiteStatement prepare = sQLiteConnection.prepare("SELECT * FROM download_episodes WHERE shortPlayId = ?");
        try {
            prepare.mo4331bindLong(1, i10);
            int columnIndexOrThrow = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, CallAppDataKey.KEY_SHORT_PLAY_ID);
            int columnIndexOrThrow2 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "episodes");
            f fVar = null;
            String text = null;
            if (prepare.step()) {
                int i11 = (int) prepare.getLong(columnIndexOrThrow);
                if (!prepare.isNull(columnIndexOrThrow2)) {
                    text = prepare.getText(columnIndexOrThrow2);
                }
                fVar = new f(i11, text);
            }
            return fVar;
        } finally {
            prepare.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object j(f fVar, SQLiteConnection sQLiteConnection) {
        this.f70465b.insert(sQLiteConnection, (SQLiteConnection) fVar);
        return null;
    }

    @Override // xh.a
    public void a() {
        DBUtil.performBlocking(this.f70464a, false, true, new Function1() { // from class: xh.b
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Object h10;
                h10 = e.h((SQLiteConnection) obj);
                return h10;
            }
        });
    }

    @Override // xh.a
    public void b(final f fVar) {
        fVar.getClass();
        DBUtil.performBlocking(this.f70464a, false, true, new Function1() { // from class: xh.d
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Object j10;
                j10 = e.this.j(fVar, (SQLiteConnection) obj);
                return j10;
            }
        });
    }

    @Override // xh.a
    public f c(final int i10) {
        return (f) DBUtil.performBlocking(this.f70464a, true, false, new Function1() { // from class: xh.c
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                f i11;
                i11 = e.i(i10, (SQLiteConnection) obj);
                return i11;
            }
        });
    }
}
