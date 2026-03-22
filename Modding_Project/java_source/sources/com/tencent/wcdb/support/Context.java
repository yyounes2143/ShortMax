package com.tencent.wcdb.support;

import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.tencent.wcdb.DatabaseErrorHandler;
import com.tencent.wcdb.FileUtils;
import com.tencent.wcdb.database.SQLiteCipherSpec;
import com.tencent.wcdb.database.SQLiteDatabase;
import com.tencent.wcdb.database.SQLiteGlobal;
import java.io.File;
/* loaded from: classes7.dex */
public final class Context {
    public static final int MODE_ENABLE_WRITE_AHEAD_LOGGING = 8;

    static {
        SQLiteGlobal.loadLib();
    }

    private static File getDataDirFile(android.content.Context context) {
        if (context != null) {
            String str = context.getApplicationInfo().dataDir;
            if (str != null) {
                return new File(str);
            }
            return null;
        }
        throw new RuntimeException("Not supported in system context");
    }

    private static File getDatabasesDir(android.content.Context context) {
        File file = new File(getDataDirFile(context), "databases");
        if (file.getPath().equals("databases")) {
            return new File("/data/system");
        }
        return file;
    }

    private static File makeFilename(File file, String str) {
        if (str.indexOf(File.separatorChar) < 0) {
            return new File(file, str);
        }
        throw new IllegalArgumentException("File " + str + " contains a path separator");
    }

    public static SQLiteDatabase openOrCreateDatabase(android.content.Context context, String str, int i10, SQLiteDatabase.CursorFactory cursorFactory) {
        return openOrCreateDatabase(context, str, null, null, i10, cursorFactory, null, 0);
    }

    private static void setFilePermissionsFromMode(String str, int i10, int i11) {
        int i12 = i11 | TTVideoEngineInterface.PLAYER_OPTION_ENABLE_h266;
        if ((i10 & 1) != 0) {
            i12 = i11 | 436;
        }
        if ((i10 & 2) != 0) {
            i12 |= 2;
        }
        FileUtils.setPermissions(str, i12, -1, -1);
    }

    private static File validateFilePath(android.content.Context context, String str, boolean z10) {
        File databasesDir;
        File makeFilename;
        char charAt = str.charAt(0);
        char c10 = File.separatorChar;
        if (charAt == c10) {
            databasesDir = new File(str.substring(0, str.lastIndexOf(c10)));
            makeFilename = new File(databasesDir, str.substring(str.lastIndexOf(c10)));
        } else {
            databasesDir = getDatabasesDir(context);
            makeFilename = makeFilename(databasesDir, str);
        }
        if (z10 && !databasesDir.isDirectory() && databasesDir.mkdir()) {
            FileUtils.setPermissions(databasesDir.getPath(), 505, -1, -1);
        }
        return makeFilename;
    }

    public static SQLiteDatabase openOrCreateDatabase(android.content.Context context, String str, int i10, SQLiteDatabase.CursorFactory cursorFactory, DatabaseErrorHandler databaseErrorHandler) {
        return openOrCreateDatabase(context, str, null, null, i10, cursorFactory, databaseErrorHandler, 0);
    }

    public static SQLiteDatabase openOrCreateDatabase(android.content.Context context, String str, byte[] bArr, SQLiteCipherSpec sQLiteCipherSpec, int i10, SQLiteDatabase.CursorFactory cursorFactory) {
        return openOrCreateDatabase(context, str, bArr, sQLiteCipherSpec, i10, cursorFactory, null, 0);
    }

    public static SQLiteDatabase openOrCreateDatabase(android.content.Context context, String str, byte[] bArr, SQLiteCipherSpec sQLiteCipherSpec, int i10, SQLiteDatabase.CursorFactory cursorFactory, DatabaseErrorHandler databaseErrorHandler) {
        return openOrCreateDatabase(context, str, bArr, sQLiteCipherSpec, i10, cursorFactory, databaseErrorHandler, 0);
    }

    public static SQLiteDatabase openOrCreateDatabase(android.content.Context context, String str, byte[] bArr, SQLiteCipherSpec sQLiteCipherSpec, int i10, SQLiteDatabase.CursorFactory cursorFactory, DatabaseErrorHandler databaseErrorHandler, int i11) {
        File validateFilePath = validateFilePath(context, str, true);
        SQLiteDatabase openDatabase = SQLiteDatabase.openDatabase(validateFilePath.getPath(), bArr, sQLiteCipherSpec, cursorFactory, (i10 & 8) != 0 ? 805306368 : 268435456, databaseErrorHandler, i11);
        setFilePermissionsFromMode(validateFilePath.getPath(), i10, 0);
        return openDatabase;
    }
}
