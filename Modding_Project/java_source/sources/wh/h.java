package wh;

import androidx.annotation.NonNull;
import androidx.room.EntityDeleteOrUpdateAdapter;
import androidx.room.EntityInsertAdapter;
import androidx.room.RoomDatabase;
import androidx.room.util.DBUtil;
import androidx.room.util.SQLiteConnectionUtil;
import androidx.room.util.SQLiteStatementUtil;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import com.startshorts.androidplayer.bean.act.CallAppDataKey;
import com.startshorts.androidplayer.bean.download.DownloadTaskInfo;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.jvm.functions.Function1;
/* compiled from: DownloadTaskDao_Impl.java */
/* loaded from: classes7.dex */
public final class h implements wh.a {

    /* renamed from: a  reason: collision with root package name */
    private final RoomDatabase f69873a;

    /* renamed from: b  reason: collision with root package name */
    private final EntityInsertAdapter<DownloadTaskInfo> f69874b = new a();

    /* renamed from: c  reason: collision with root package name */
    private final EntityDeleteOrUpdateAdapter<DownloadTaskInfo> f69875c = new b();

    /* renamed from: d  reason: collision with root package name */
    private final EntityDeleteOrUpdateAdapter<DownloadTaskInfo> f69876d = new c();

    /* compiled from: DownloadTaskDao_Impl.java */
    /* loaded from: classes7.dex */
    class a extends EntityInsertAdapter<DownloadTaskInfo> {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.room.EntityInsertAdapter
        /* renamed from: a */
        public void bind(@NonNull SQLiteStatement sQLiteStatement, @NonNull DownloadTaskInfo downloadTaskInfo) {
            sQLiteStatement.mo4331bindLong(1, downloadTaskInfo.getShortPlayId());
            sQLiteStatement.mo4331bindLong(2, downloadTaskInfo.getDramaId());
            sQLiteStatement.mo4331bindLong(3, downloadTaskInfo.getDramaNum());
            if (downloadTaskInfo.getUrl() == null) {
                sQLiteStatement.mo4332bindNull(4);
            } else {
                sQLiteStatement.mo4333bindText(4, downloadTaskInfo.getUrl());
            }
            sQLiteStatement.mo4331bindLong(5, downloadTaskInfo.getSolution());
            sQLiteStatement.mo4331bindLong(6, downloadTaskInfo.getFileSize());
            sQLiteStatement.mo4331bindLong(7, downloadTaskInfo.getDownloadState());
            if (downloadTaskInfo.getCacheKey() == null) {
                sQLiteStatement.mo4332bindNull(8);
            } else {
                sQLiteStatement.mo4333bindText(8, downloadTaskInfo.getCacheKey());
            }
            if (downloadTaskInfo.getShortCoverUrl() == null) {
                sQLiteStatement.mo4332bindNull(9);
            } else {
                sQLiteStatement.mo4333bindText(9, downloadTaskInfo.getShortCoverUrl());
            }
            if (downloadTaskInfo.getDramaCoverUrl() == null) {
                sQLiteStatement.mo4332bindNull(10);
            } else {
                sQLiteStatement.mo4333bindText(10, downloadTaskInfo.getDramaCoverUrl());
            }
            if (downloadTaskInfo.getDramaName() == null) {
                sQLiteStatement.mo4332bindNull(11);
            } else {
                sQLiteStatement.mo4333bindText(11, downloadTaskInfo.getDramaName());
            }
            if (downloadTaskInfo.getContent() == null) {
                sQLiteStatement.mo4332bindNull(12);
            } else {
                sQLiteStatement.mo4333bindText(12, downloadTaskInfo.getContent());
            }
            if (downloadTaskInfo.getShortPlayCode() == null) {
                sQLiteStatement.mo4332bindNull(13);
            } else {
                sQLiteStatement.mo4333bindText(13, downloadTaskInfo.getShortPlayCode());
            }
            if (downloadTaskInfo.getUpack() == null) {
                sQLiteStatement.mo4332bindNull(14);
            } else {
                sQLiteStatement.mo4333bindText(14, downloadTaskInfo.getUpack());
            }
            if (downloadTaskInfo.getLock() == null) {
                sQLiteStatement.mo4332bindNull(15);
            } else {
                sQLiteStatement.mo4331bindLong(15, downloadTaskInfo.getLock().intValue());
            }
            sQLiteStatement.mo4330bindDouble(16, downloadTaskInfo.getDownloadProgress());
        }

        @Override // androidx.room.EntityInsertAdapter
        @NonNull
        protected String createQuery() {
            return "INSERT OR REPLACE INTO `download_tasks` (`shortPlayId`,`dramaId`,`dramaNum`,`url`,`solution`,`fileSize`,`downloadState`,`cacheKey`,`shortCoverUrl`,`dramaCoverUrl`,`dramaName`,`content`,`shortPlayCode`,`upack`,`lock`,`downloadProgress`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        }
    }

    /* compiled from: DownloadTaskDao_Impl.java */
    /* loaded from: classes7.dex */
    class b extends EntityDeleteOrUpdateAdapter<DownloadTaskInfo> {
        b() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.room.EntityDeleteOrUpdateAdapter
        /* renamed from: a */
        public void bind(@NonNull SQLiteStatement sQLiteStatement, @NonNull DownloadTaskInfo downloadTaskInfo) {
            if (downloadTaskInfo.getCacheKey() == null) {
                sQLiteStatement.mo4332bindNull(1);
            } else {
                sQLiteStatement.mo4333bindText(1, downloadTaskInfo.getCacheKey());
            }
        }

        @Override // androidx.room.EntityDeleteOrUpdateAdapter
        @NonNull
        protected String createQuery() {
            return "DELETE FROM `download_tasks` WHERE `cacheKey` = ?";
        }
    }

    /* compiled from: DownloadTaskDao_Impl.java */
    /* loaded from: classes7.dex */
    class c extends EntityDeleteOrUpdateAdapter<DownloadTaskInfo> {
        c() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.room.EntityDeleteOrUpdateAdapter
        /* renamed from: a */
        public void bind(@NonNull SQLiteStatement sQLiteStatement, @NonNull DownloadTaskInfo downloadTaskInfo) {
            sQLiteStatement.mo4331bindLong(1, downloadTaskInfo.getShortPlayId());
            sQLiteStatement.mo4331bindLong(2, downloadTaskInfo.getDramaId());
            sQLiteStatement.mo4331bindLong(3, downloadTaskInfo.getDramaNum());
            if (downloadTaskInfo.getUrl() == null) {
                sQLiteStatement.mo4332bindNull(4);
            } else {
                sQLiteStatement.mo4333bindText(4, downloadTaskInfo.getUrl());
            }
            sQLiteStatement.mo4331bindLong(5, downloadTaskInfo.getSolution());
            sQLiteStatement.mo4331bindLong(6, downloadTaskInfo.getFileSize());
            sQLiteStatement.mo4331bindLong(7, downloadTaskInfo.getDownloadState());
            if (downloadTaskInfo.getCacheKey() == null) {
                sQLiteStatement.mo4332bindNull(8);
            } else {
                sQLiteStatement.mo4333bindText(8, downloadTaskInfo.getCacheKey());
            }
            if (downloadTaskInfo.getShortCoverUrl() == null) {
                sQLiteStatement.mo4332bindNull(9);
            } else {
                sQLiteStatement.mo4333bindText(9, downloadTaskInfo.getShortCoverUrl());
            }
            if (downloadTaskInfo.getDramaCoverUrl() == null) {
                sQLiteStatement.mo4332bindNull(10);
            } else {
                sQLiteStatement.mo4333bindText(10, downloadTaskInfo.getDramaCoverUrl());
            }
            if (downloadTaskInfo.getDramaName() == null) {
                sQLiteStatement.mo4332bindNull(11);
            } else {
                sQLiteStatement.mo4333bindText(11, downloadTaskInfo.getDramaName());
            }
            if (downloadTaskInfo.getContent() == null) {
                sQLiteStatement.mo4332bindNull(12);
            } else {
                sQLiteStatement.mo4333bindText(12, downloadTaskInfo.getContent());
            }
            if (downloadTaskInfo.getShortPlayCode() == null) {
                sQLiteStatement.mo4332bindNull(13);
            } else {
                sQLiteStatement.mo4333bindText(13, downloadTaskInfo.getShortPlayCode());
            }
            if (downloadTaskInfo.getUpack() == null) {
                sQLiteStatement.mo4332bindNull(14);
            } else {
                sQLiteStatement.mo4333bindText(14, downloadTaskInfo.getUpack());
            }
            if (downloadTaskInfo.getLock() == null) {
                sQLiteStatement.mo4332bindNull(15);
            } else {
                sQLiteStatement.mo4331bindLong(15, downloadTaskInfo.getLock().intValue());
            }
            sQLiteStatement.mo4330bindDouble(16, downloadTaskInfo.getDownloadProgress());
            if (downloadTaskInfo.getCacheKey() == null) {
                sQLiteStatement.mo4332bindNull(17);
            } else {
                sQLiteStatement.mo4333bindText(17, downloadTaskInfo.getCacheKey());
            }
        }

        @Override // androidx.room.EntityDeleteOrUpdateAdapter
        @NonNull
        protected String createQuery() {
            return "UPDATE OR ABORT `download_tasks` SET `shortPlayId` = ?,`dramaId` = ?,`dramaNum` = ?,`url` = ?,`solution` = ?,`fileSize` = ?,`downloadState` = ?,`cacheKey` = ?,`shortCoverUrl` = ?,`dramaCoverUrl` = ?,`dramaName` = ?,`content` = ?,`shortPlayCode` = ?,`upack` = ?,`lock` = ?,`downloadProgress` = ? WHERE `cacheKey` = ?";
        }
    }

    public h(@NonNull RoomDatabase roomDatabase) {
        this.f69873a = roomDatabase;
    }

    @NonNull
    public static List<Class<?>> m() {
        return Collections.emptyList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object n(SQLiteConnection sQLiteConnection) {
        SQLiteStatement prepare = sQLiteConnection.prepare("DELETE  FROM download_tasks");
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
    public /* synthetic */ Object o(DownloadTaskInfo downloadTaskInfo, SQLiteConnection sQLiteConnection) {
        this.f69875c.handle(sQLiteConnection, downloadTaskInfo);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Integer p(int i10, SQLiteConnection sQLiteConnection) {
        SQLiteStatement prepare = sQLiteConnection.prepare("DELETE FROM download_tasks WHERE downloadState = ?");
        try {
            prepare.mo4331bindLong(1, i10);
            prepare.step();
            return Integer.valueOf(SQLiteConnectionUtil.getTotalChangedRows(sQLiteConnection));
        } finally {
            prepare.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List q(SQLiteConnection sQLiteConnection) {
        int i10;
        String text;
        int i11;
        String text2;
        String text3;
        String text4;
        String text5;
        String text6;
        String text7;
        int i12;
        String text8;
        int i13;
        int i14;
        Integer valueOf;
        SQLiteStatement prepare = sQLiteConnection.prepare("SELECT * FROM download_tasks");
        try {
            int columnIndexOrThrow = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, CallAppDataKey.KEY_SHORT_PLAY_ID);
            int columnIndexOrThrow2 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "dramaId");
            int columnIndexOrThrow3 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "dramaNum");
            int columnIndexOrThrow4 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "url");
            int columnIndexOrThrow5 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "solution");
            int columnIndexOrThrow6 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "fileSize");
            int columnIndexOrThrow7 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "downloadState");
            int columnIndexOrThrow8 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "cacheKey");
            int columnIndexOrThrow9 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "shortCoverUrl");
            int columnIndexOrThrow10 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "dramaCoverUrl");
            int columnIndexOrThrow11 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "dramaName");
            int columnIndexOrThrow12 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "content");
            int columnIndexOrThrow13 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "shortPlayCode");
            int columnIndexOrThrow14 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "upack");
            int columnIndexOrThrow15 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "lock");
            int columnIndexOrThrow16 = SQLiteStatementUtil.getColumnIndexOrThrow(prepare, "downloadProgress");
            ArrayList arrayList = new ArrayList();
            while (prepare.step()) {
                int i15 = columnIndexOrThrow14;
                ArrayList arrayList2 = arrayList;
                int i16 = (int) prepare.getLong(columnIndexOrThrow);
                int i17 = (int) prepare.getLong(columnIndexOrThrow2);
                int i18 = (int) prepare.getLong(columnIndexOrThrow3);
                if (prepare.isNull(columnIndexOrThrow4)) {
                    i11 = columnIndexOrThrow2;
                    i10 = columnIndexOrThrow3;
                    text = null;
                } else {
                    i10 = columnIndexOrThrow3;
                    text = prepare.getText(columnIndexOrThrow4);
                    i11 = columnIndexOrThrow2;
                }
                int i19 = (int) prepare.getLong(columnIndexOrThrow5);
                long j10 = prepare.getLong(columnIndexOrThrow6);
                int i20 = columnIndexOrThrow4;
                int i21 = (int) prepare.getLong(columnIndexOrThrow7);
                if (prepare.isNull(columnIndexOrThrow8)) {
                    text2 = null;
                } else {
                    text2 = prepare.getText(columnIndexOrThrow8);
                }
                if (prepare.isNull(columnIndexOrThrow9)) {
                    text3 = null;
                } else {
                    text3 = prepare.getText(columnIndexOrThrow9);
                }
                if (prepare.isNull(columnIndexOrThrow10)) {
                    text4 = null;
                } else {
                    text4 = prepare.getText(columnIndexOrThrow10);
                }
                if (prepare.isNull(columnIndexOrThrow11)) {
                    text5 = null;
                } else {
                    text5 = prepare.getText(columnIndexOrThrow11);
                }
                if (prepare.isNull(columnIndexOrThrow12)) {
                    text6 = null;
                } else {
                    text6 = prepare.getText(columnIndexOrThrow12);
                }
                if (prepare.isNull(columnIndexOrThrow13)) {
                    i12 = i15;
                    text7 = null;
                } else {
                    text7 = prepare.getText(columnIndexOrThrow13);
                    i12 = i15;
                }
                if (prepare.isNull(i12)) {
                    text8 = null;
                } else {
                    text8 = prepare.getText(i12);
                }
                int i22 = columnIndexOrThrow;
                int i23 = columnIndexOrThrow15;
                if (prepare.isNull(i23)) {
                    i13 = i12;
                    i14 = columnIndexOrThrow5;
                    valueOf = null;
                } else {
                    i13 = i12;
                    i14 = columnIndexOrThrow5;
                    valueOf = Integer.valueOf((int) prepare.getLong(i23));
                }
                DownloadTaskInfo downloadTaskInfo = new DownloadTaskInfo(i16, i17, i18, text, i19, j10, i21, text2, text3, text4, text5, text6, text7, text8, valueOf);
                int i24 = columnIndexOrThrow6;
                int i25 = columnIndexOrThrow16;
                downloadTaskInfo.setDownloadProgress((float) prepare.getDouble(i25));
                arrayList2.add(downloadTaskInfo);
                columnIndexOrThrow16 = i25;
                columnIndexOrThrow6 = i24;
                columnIndexOrThrow2 = i11;
                columnIndexOrThrow3 = i10;
                columnIndexOrThrow4 = i20;
                columnIndexOrThrow14 = i13;
                arrayList = arrayList2;
                columnIndexOrThrow5 = i14;
                columnIndexOrThrow = i22;
                columnIndexOrThrow15 = i23;
            }
            return arrayList;
        } finally {
            prepare.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object r(DownloadTaskInfo downloadTaskInfo, SQLiteConnection sQLiteConnection) {
        this.f69874b.insert(sQLiteConnection, (SQLiteConnection) downloadTaskInfo);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object s(List list, SQLiteConnection sQLiteConnection) {
        this.f69874b.insert(sQLiteConnection, list);
        return null;
    }

    @Override // wh.a
    public void a() {
        DBUtil.performBlocking(this.f69873a, false, true, new Function1() { // from class: wh.b
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Object n10;
                n10 = h.n((SQLiteConnection) obj);
                return n10;
            }
        });
    }

    @Override // wh.a
    public void b(final DownloadTaskInfo downloadTaskInfo) {
        downloadTaskInfo.getClass();
        DBUtil.performBlocking(this.f69873a, false, true, new Function1() { // from class: wh.c
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Object o10;
                o10 = h.this.o(downloadTaskInfo, (SQLiteConnection) obj);
                return o10;
            }
        });
    }

    @Override // wh.a
    public void c(final DownloadTaskInfo downloadTaskInfo) {
        downloadTaskInfo.getClass();
        DBUtil.performBlocking(this.f69873a, false, true, new Function1() { // from class: wh.d
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Object r10;
                r10 = h.this.r(downloadTaskInfo, (SQLiteConnection) obj);
                return r10;
            }
        });
    }

    @Override // wh.a
    public List<DownloadTaskInfo> d() {
        return (List) DBUtil.performBlocking(this.f69873a, true, false, new Function1() { // from class: wh.f
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                List q10;
                q10 = h.q((SQLiteConnection) obj);
                return q10;
            }
        });
    }

    @Override // wh.a
    public int e(final int i10) {
        return ((Integer) DBUtil.performBlocking(this.f69873a, false, true, new Function1() { // from class: wh.e
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Integer p10;
                p10 = h.p(i10, (SQLiteConnection) obj);
                return p10;
            }
        })).intValue();
    }

    @Override // wh.a
    public void f(final List<DownloadTaskInfo> list) {
        list.getClass();
        DBUtil.performBlocking(this.f69873a, false, true, new Function1() { // from class: wh.g
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Object s10;
                s10 = h.this.s(list, (SQLiteConnection) obj);
                return s10;
            }
        });
    }
}
