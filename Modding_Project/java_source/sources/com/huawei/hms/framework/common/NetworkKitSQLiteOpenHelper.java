package com.huawei.hms.framework.common;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import java.io.File;
/* loaded from: classes5.dex */
public class NetworkKitSQLiteOpenHelper extends SQLiteOpenHelper {
    public static final int DB_VERSION = 1;

    /* renamed from: a  reason: collision with root package name */
    private static String f22138a = "networkkit.db";

    /* renamed from: b  reason: collision with root package name */
    private static volatile NetworkKitSQLiteOpenHelper f22139b;

    static {
        if (ContextHolder.getKitContext() != null) {
            f22138a = "networkkit_dynamic.db";
        }
    }

    private NetworkKitSQLiteOpenHelper(Context context, String str, int i10) {
        super(context, str, (SQLiteDatabase.CursorFactory) null, i10);
    }

    public static NetworkKitSQLiteOpenHelper getInstance() {
        if (f22139b == null) {
            synchronized (NetworkKitSQLiteOpenHelper.class) {
                try {
                    if (f22139b == null) {
                        f22139b = new NetworkKitSQLiteOpenHelper(ContextHolder.getAppContext().createDeviceProtectedStorageContext(), f22138a, 1);
                    }
                } finally {
                }
            }
        }
        return f22139b;
    }

    public boolean deleteDbFile() {
        return deleteDbFileByPath(getNetworkKitReadableDatabase().getPath());
    }

    public boolean deleteDbFileByPath(String str) {
        File file = new File(str);
        if (file.exists()) {
            return file.delete();
        }
        Logger.i("PLSQLiteOpenHelper", "db is not exists");
        return false;
    }

    public boolean deleteUnusedDbFile() {
        String str = "networkkit_dynamic.db";
        if (f22138a.equals("networkkit_dynamic.db")) {
            str = "networkkit.db";
        }
        return deleteDbFileByPath(getNetworkKitReadableDatabase().getPath().replace(f22138a, str));
    }

    public SQLiteDatabase getDbByName(String str) {
        SQLiteDatabase networkKitReadableDatabase = getNetworkKitReadableDatabase();
        if (networkKitReadableDatabase != null) {
            String replace = networkKitReadableDatabase.getPath().replace(f22138a, str);
            if (new File(replace).exists()) {
                return SQLiteDatabase.openDatabase(replace, null, 0);
            }
            Logger.i("PLSQLiteOpenHelper", "old db is not exists");
            return networkKitReadableDatabase;
        }
        return networkKitReadableDatabase;
    }

    public String getDbName() {
        return f22138a;
    }

    public String getDbNameSuffix() {
        return "-journal";
    }

    public SQLiteDatabase getNetworkKitReadableDatabase() {
        SQLiteDatabase sQLiteDatabase;
        try {
            sQLiteDatabase = getReadableDatabase();
        } catch (Throwable th2) {
            Logger.e("PLSQLiteOpenHelper", "getReadableDatabase db error:" + th2.getMessage());
            sQLiteDatabase = null;
        }
        if (sQLiteDatabase == null) {
            Logger.e("PLSQLiteOpenHelper", "getReadableDatabase db is null");
        }
        return sQLiteDatabase;
    }

    public SQLiteDatabase getNetworkKitWritableDatabase() {
        SQLiteDatabase sQLiteDatabase;
        try {
            sQLiteDatabase = getWritableDatabase();
        } catch (Throwable th2) {
            Logger.e("PLSQLiteOpenHelper", "getWritableDatabase db error:" + th2.getMessage());
            sQLiteDatabase = null;
        }
        if (sQLiteDatabase == null) {
            Logger.e("PLSQLiteOpenHelper", "getWritableDatabase db is null");
        }
        return sQLiteDatabase;
    }

    public SQLiteDatabase getNetworkkitUnusedDbDB() {
        String str = "networkkit_dynamic.db";
        if (f22138a.equals("networkkit_dynamic.db")) {
            str = "networkkit.db";
        }
        return getDbByName(str);
    }

    public boolean tabbleIsExistInDB(String str, String str2) {
        SQLiteDatabase networkKitReadableDatabase;
        if (str2 == null || (networkKitReadableDatabase = getNetworkKitReadableDatabase()) == null) {
            return false;
        }
        try {
            networkKitReadableDatabase = SQLiteDatabase.openDatabase(networkKitReadableDatabase.getPath().replace(f22138a, str), null, 0);
            networkKitReadableDatabase.rawQuery("select count(1) from " + str2, null);
            IoUtils.closeSecure(networkKitReadableDatabase);
            return true;
        } catch (Throwable unused) {
            IoUtils.closeSecure(networkKitReadableDatabase);
            return false;
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
    }
}
