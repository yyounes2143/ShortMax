package com.bykv.vk.openvk.preload.geckox.a;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.appsflyer.AppsFlyerProperties;
import com.bykv.vk.openvk.preload.geckox.logger.GeckoLogger;
import com.bykv.vk.openvk.preload.geckox.statistic.model.StatisticModel;
import com.bykv.vk.openvk.preload.geckox.utils.CloseableUtils;
import com.ss.texturerender.TextureRenderKeys;
import java.util.ArrayList;
import java.util.List;
/* compiled from: AbandonChannelSQLiteHelper.java */
/* loaded from: classes3.dex */
class b extends SQLiteOpenHelper {

    /* renamed from: a  reason: collision with root package name */
    private static volatile b f11310a;

    private b(Context context, String str, SQLiteDatabase.CursorFactory cursorFactory) {
        super(context, str, cursorFactory, 1);
    }

    public static b a(Context context) {
        if (f11310a == null) {
            synchronized (b.class) {
                try {
                    if (f11310a == null) {
                        Context applicationContext = context.getApplicationContext();
                        f11310a = new b(applicationContext, "geckox_clean_statistic" + com.bykv.vk.openvk.preload.geckox.utils.a.a() + ".db", null);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f11310a;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("create table if not exists geckox_clean_statistic (id integer primary key autoincrement,access_key text,channel text,clean_type integer,status integer,pkg_id integer,err_code integer,clean_strategy integer,clean_duration integer,err_msg text)");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final List<StatisticModel.PackageStatisticModel> a() {
        Cursor cursor;
        ArrayList arrayList = new ArrayList();
        Cursor cursor2 = null;
        try {
            cursor = getWritableDatabase().query("geckox_clean_statistic", null, null, null, null, null, null);
        } catch (Exception e10) {
            e = e10;
        }
        if (cursor == null) {
            return arrayList;
        }
        while (cursor.moveToNext()) {
            try {
                String string = cursor.getString(cursor.getColumnIndex(TextureRenderKeys.KEY_IS_BMF_VQSCORE_ACCESS_KEY));
                String string2 = cursor.getString(cursor.getColumnIndex(AppsFlyerProperties.CHANNEL));
                int i10 = cursor.getInt(cursor.getColumnIndex("clean_type"));
                int i11 = cursor.getInt(cursor.getColumnIndex("status"));
                int i12 = cursor.getInt(cursor.getColumnIndex("err_code"));
                String string3 = cursor.getString(cursor.getColumnIndex("err_msg"));
                int i13 = cursor.getInt(cursor.getColumnIndex("clean_strategy"));
                long j10 = cursor.getLong(cursor.getColumnIndex("clean_duration"));
                StatisticModel.PackageStatisticModel packageStatisticModel = new StatisticModel.PackageStatisticModel();
                packageStatisticModel.accessKey = string;
                packageStatisticModel.channel = string2;
                packageStatisticModel.statsType = Integer.valueOf(i11);
                packageStatisticModel.f11442id = Long.valueOf(cursor.getInt(cursor.getColumnIndex("pkg_id")));
                packageStatisticModel.errCode = i12 == 0 ? null : String.valueOf(i12);
                packageStatisticModel.errMsg = string3;
                packageStatisticModel.cleanType = Integer.valueOf(i10);
                packageStatisticModel.cleanDuration = Long.valueOf(j10);
                packageStatisticModel.cleanStrategy = Integer.valueOf(i13);
                arrayList.add(packageStatisticModel);
            } catch (Exception e11) {
                e = e11;
                cursor2 = cursor;
                GeckoLogger.w("clean-channel", "get all statistic failed!", e);
                cursor = cursor2;
                CloseableUtils.close(cursor);
                return arrayList;
            }
        }
        getWritableDatabase().delete("geckox_clean_statistic", null, null);
        CloseableUtils.close(cursor);
        return arrayList;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
    }
}
