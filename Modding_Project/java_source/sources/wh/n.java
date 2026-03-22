package wh;

import androidx.annotation.NonNull;
import androidx.room.EntityDeleteOrUpdateAdapter;
import androidx.room.EntityInsertAdapter;
import androidx.room.RoomDatabase;
import androidx.room.util.DBUtil;
import androidx.room.util.SQLiteStatementUtil;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import com.startshorts.androidplayer.bean.act.CallAppDataKey;
import com.startshorts.androidplayer.bean.download.ShortTaskInfo;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.jvm.functions.Function1;
/* compiled from: ShortTaskDao_Impl.java */
/* loaded from: classes7.dex */
public final class n implements j {

    /* renamed from: a  reason: collision with root package name */
    private final RoomDatabase f69884a;

    /* renamed from: b  reason: collision with root package name */
    private final EntityInsertAdapter<ShortTaskInfo> f69885b = new a();

    /* renamed from: c  reason: collision with root package name */
    private final EntityDeleteOrUpdateAdapter<ShortTaskInfo> f69886c = new b();

    /* renamed from: d  reason: collision with root package name */
    private final EntityDeleteOrUpdateAdapter<ShortTaskInfo> f69887d = new c();

    /* compiled from: ShortTaskDao_Impl.java */
    /* loaded from: classes7.dex */
    class a extends EntityInsertAdapter<ShortTaskInfo> {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.room.EntityInsertAdapter
        /* renamed from: a */
        public void bind(@NonNull SQLiteStatement sQLiteStatement, @NonNull ShortTaskInfo shortTaskInfo) {
            sQLiteStatement.mo4331bindLong(1, shortTaskInfo.getShortPlayId());
            if (shortTaskInfo.getShortPlayCode() == null) {
                sQLiteStatement.mo4332bindNull(2);
            } else {
                sQLiteStatement.mo4333bindText(2, shortTaskInfo.getShortPlayCode());
            }
            if (shortTaskInfo.getDramaName() == null) {
                sQLiteStatement.mo4332bindNull(3);
            } else {
                sQLiteStatement.mo4333bindText(3, shortTaskInfo.getDramaName());
            }
            if (shortTaskInfo.getShortCoverUrl() == null) {
                sQLiteStatement.mo4332bindNull(4);
            } else {
                sQLiteStatement.mo4333bindText(4, shortTaskInfo.getShortCoverUrl());
            }
            if (shortTaskInfo.getContent() == null) {
                sQLiteStatement.mo4332bindNull(5);
            } else {
                sQLiteStatement.mo4333bindText(5, shortTaskInfo.getContent());
            }
            sQLiteStatement.mo4331bindLong(6, shortTaskInfo.getAddTaskTime());
            sQLiteStatement.mo4331bindLong(7, shortTaskInfo.getHasUnfinishedJob() ? 1L : 0L);
        }

        @Override // androidx.room.EntityInsertAdapter
        @NonNull
        protected String createQuery() {
            return "INSERT OR REPLACE INTO `short_tasks` (`shortPlayId`,`shortPlayCode`,`dramaName`,`shortCoverUrl`,`content`,`addTaskTime`,`hasUnfinishedJob`) VALUES (?,?,?,?,?,?,?)";
        }
    }

    /* compiled from: ShortTaskDao_Impl.java */
    /* loaded from: classes7.dex */
    class b extends EntityDeleteOrUpdateAdapter<ShortTaskInfo> {
        b() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.room.EntityDeleteOrUpdateAdapter
        /* renamed from: a */
        public void bind(@NonNull SQLiteStatement sQLiteStatement, @NonNull ShortTaskInfo shortTaskInfo) {
            sQLiteStatement.mo4331bindLong(1, shortTaskInfo.getShortPlayId());
        }

        @Override // androidx.room.EntityDeleteOrUpdateAdapter
        @NonNull
        protected String createQuery() {
            return "DELETE FROM `short_tasks` WHERE `shortPlayId` = ?";
        }
    }

    /* compiled from: ShortTaskDao_Impl.java */
    /* loaded from: classes7.dex */
    class c extends EntityDeleteOrUpdateAdapter<ShortTaskInfo> {
        c() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.room.EntityDeleteOrUpdateAdapter
        /* renamed from: a */
        public void bind(@NonNull SQLiteStatement sQLiteStatement, @NonNull ShortTaskInfo shortTaskInfo) {
            sQLiteStatement.mo4331bindLong(1, shortTaskInfo.getShortPlayId());
            if (shortTaskInfo.getShortPlayCode() == null) {
                sQLiteStatement.mo4332bindNull(2);
            } else {
                sQLiteStatement.mo4333bindText(2, shortTaskInfo.getShortPlayCode());
            }
            if (shortTaskInfo.getDramaName() == null) {
                sQLiteStatement.mo4332bindNull(3);
            } else {
                sQLiteStatement.mo4333bindText(3, shortTaskInfo.getDramaName());
            }
            if (shortTaskInfo.getShortCoverUrl() == null) {
                sQLiteStatement.mo4332bindNull(4);
            } else {
                sQLiteStatement.mo4333bindText(4, shortTaskInfo.getShortCoverUrl());
            }
            if (shortTaskInfo.getContent() == null) {
                sQLiteStatement.mo4332bindNull(5);
            } else {
                sQLiteStatement.mo4333bindText(5, shortTaskInfo.getContent());
            }
            sQLiteStatement.mo4331bindLong(6, shortTaskInfo.getAddTaskTime());
            sQLiteStatement.mo4331bindLong(7, shortTaskInfo.getHasUnfinishedJob() ? 1L : 0L);
            sQLiteStatement.mo4331bindLong(8, shortTaskInfo.getShortPlayId());
        }

        @Override // androidx.room.EntityDeleteOrUpdateAdapter
        @NonNull
        protected String createQuery() {
            return "UPDATE OR ABORT `short_tasks` SET `shortPlayId` = ?,`shortPlayCode` = ?,`dramaName` = ?,`shortCoverUrl` = ?,`content` = ?,`addTaskTime` = ?,`hasUnfinishedJob` = ? WHERE `shortPlayId` = ?";
        }
    }

    public n(@NonNull RoomDatabase roomDatabase) {
        this.f69884a = roomDatabase;
    }

    @NonNull
    public static List<Class<?>> g() {
        return Collections.emptyList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object h(SQLiteConnection sQLiteConnection) {
        SQLiteStatement prepare = sQLiteConnection.prepare("DELETE  FROM short_tasks");
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
    public static /* synthetic */ List i(SQLiteConnection sQLiteConnection) {
        String text;
        String text2;
        String text3;
        String text4;
        boolean z10;
        SQLiteStatement prepare = sQLiteConnection.prepare("SELECT * FROM short_tasks");
        try {
            int columnIndexOrThrow = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, CallAppDataKey.KEY_SHORT_PLAY_ID);
            int columnIndexOrThrow2 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "shortPlayCode");
            int columnIndexOrThrow3 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "dramaName");
            int columnIndexOrThrow4 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "shortCoverUrl");
            int columnIndexOrThrow5 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "content");
            int columnIndexOrThrow6 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "addTaskTime");
            int columnIndexOrThrow7 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "hasUnfinishedJob");
            ArrayList arrayList = new ArrayList();
            while (prepare.step()) {
                int i10 = (int) prepare.getLong(columnIndexOrThrow);
                if (prepare.isNull(columnIndexOrThrow2)) {
                    text = null;
                } else {
                    text = prepare.getText(columnIndexOrThrow2);
                }
                if (prepare.isNull(columnIndexOrThrow3)) {
                    text2 = null;
                } else {
                    text2 = prepare.getText(columnIndexOrThrow3);
                }
                if (prepare.isNull(columnIndexOrThrow4)) {
                    text3 = null;
                } else {
                    text3 = prepare.getText(columnIndexOrThrow4);
                }
                if (prepare.isNull(columnIndexOrThrow5)) {
                    text4 = null;
                } else {
                    text4 = prepare.getText(columnIndexOrThrow5);
                }
                ShortTaskInfo shortTaskInfo = new ShortTaskInfo(i10, text, text2, text3, text4);
                shortTaskInfo.setAddTaskTime(prepare.getLong(columnIndexOrThrow6));
                if (((int) prepare.getLong(columnIndexOrThrow7)) != 0) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                shortTaskInfo.setHasUnfinishedJob(z10);
                arrayList.add(shortTaskInfo);
            }
            return arrayList;
        } finally {
            prepare.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object j(ShortTaskInfo shortTaskInfo, SQLiteConnection sQLiteConnection) {
        this.f69885b.insert(sQLiteConnection, (SQLiteConnection) shortTaskInfo);
        return null;
    }

    @Override // wh.j
    public void a() {
        DBUtil.performBlocking(this.f69884a, false, true, new Function1() { // from class: wh.k
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Object h10;
                h10 = n.h((SQLiteConnection) obj);
                return h10;
            }
        });
    }

    @Override // wh.j
    public void b(final ShortTaskInfo shortTaskInfo) {
        shortTaskInfo.getClass();
        DBUtil.performBlocking(this.f69884a, false, true, new Function1() { // from class: wh.m
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Object j10;
                j10 = n.this.j(shortTaskInfo, (SQLiteConnection) obj);
                return j10;
            }
        });
    }

    @Override // wh.j
    public List<ShortTaskInfo> c() {
        return (List) DBUtil.performBlocking(this.f69884a, true, false, new Function1() { // from class: wh.l
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                List i10;
                i10 = n.i((SQLiteConnection) obj);
                return i10;
            }
        });
    }
}
