package com.tencent.wcdb.database;

import android.content.ContentValues;
import android.database.sqlite.SQLiteTransactionListener;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Pair;
import android.util.Printer;
import com.tencent.wcdb.Cursor;
import com.tencent.wcdb.DatabaseErrorHandler;
import com.tencent.wcdb.DatabaseUtils;
import com.tencent.wcdb.DefaultDatabaseErrorHandler;
import com.tencent.wcdb.SQLException;
import com.tencent.wcdb.database.SQLiteDebug;
import com.tencent.wcdb.support.CancellationSignal;
import com.tencent.wcdb.support.Log;
import java.io.File;
import java.io.FileFilter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
/* loaded from: classes7.dex */
public final class SQLiteDatabase extends SQLiteClosable {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final int CONFLICT_ABORT = 2;
    public static final int CONFLICT_FAIL = 3;
    public static final int CONFLICT_IGNORE = 4;
    public static final int CONFLICT_NONE = 0;
    public static final int CONFLICT_REPLACE = 5;
    public static final int CONFLICT_ROLLBACK = 1;
    private static final String[] CONFLICT_VALUES;
    public static final int CREATE_IF_NECESSARY = 268435456;
    public static final int ENABLE_IO_TRACE = 256;
    public static final int ENABLE_WRITE_AHEAD_LOGGING = 536870912;
    public static final int MAX_SQL_CACHE_SIZE = 100;
    public static final int NO_LOCALIZED_COLLATORS = 16;
    public static final int OPEN_READONLY = 1;
    public static final int OPEN_READWRITE = 0;
    private static final int OPEN_READ_MASK = 1;
    public static final int SQLITE_MAX_LIKE_PATTERN_LENGTH = 50000;
    public static final int SYNCHRONOUS_EXTRA = 3;
    public static final int SYNCHRONOUS_FULL = 2;
    public static final int SYNCHRONOUS_NORMAL = 1;
    public static final int SYNCHRONOUS_OFF = 0;
    private static final String TAG = "WCDB.SQLiteDatabase";
    private static final WeakHashMap<SQLiteDatabase, Object> sActiveDatabases;
    private final SQLiteDatabaseConfiguration mConfigurationLocked;
    private SQLiteConnectionPool mConnectionPoolLocked;
    private final CursorFactory mCursorFactory;
    private final DatabaseErrorHandler mErrorHandler;
    private boolean mHasAttachedDbsLocked;
    private final ThreadLocal<SQLiteSession> mThreadSession = new ThreadLocal<SQLiteSession>() { // from class: com.tencent.wcdb.database.SQLiteDatabase.1
        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.lang.ThreadLocal
        public SQLiteSession initialValue() {
            return SQLiteDatabase.this.createSession();
        }
    };
    private final Object mLock = new Object();

    /* loaded from: classes7.dex */
    public interface CursorFactory {
        Cursor newCursor(SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteProgram sQLiteProgram);

        SQLiteProgram newQuery(SQLiteDatabase sQLiteDatabase, String str, Object[] objArr, CancellationSignal cancellationSignal);
    }

    /* loaded from: classes7.dex */
    public interface CustomFunction {
        void callback(String[] strArr);
    }

    static {
        SQLiteGlobal.loadLib();
        sActiveDatabases = new WeakHashMap<>();
        CONFLICT_VALUES = new String[]{"", " OR ROLLBACK ", " OR ABORT ", " OR FAIL ", " OR IGNORE ", " OR REPLACE "};
    }

    private SQLiteDatabase(String str, int i10, CursorFactory cursorFactory, DatabaseErrorHandler databaseErrorHandler) {
        this.mCursorFactory = cursorFactory;
        this.mErrorHandler = databaseErrorHandler == null ? new DefaultDatabaseErrorHandler(true) : databaseErrorHandler;
        this.mConfigurationLocked = new SQLiteDatabaseConfiguration(str, i10);
    }

    private void collectDbStats(ArrayList<SQLiteDebug.DbStats> arrayList) {
        synchronized (this.mLock) {
            try {
                SQLiteConnectionPool sQLiteConnectionPool = this.mConnectionPoolLocked;
                if (sQLiteConnectionPool != null) {
                    sQLiteConnectionPool.collectDbStats(arrayList);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static SQLiteDatabase create(CursorFactory cursorFactory) {
        return openDatabase(SQLiteDatabaseConfiguration.MEMORY_DB_PATH, cursorFactory, 268435456);
    }

    public static boolean deleteDatabase(File file) {
        if (file != null) {
            boolean delete = file.delete() | new File(file.getPath() + "-journal").delete() | new File(file.getPath() + "-shm").delete() | new File(file.getPath() + "-wal").delete();
            File parentFile = file.getParentFile();
            if (parentFile != null) {
                final String str = file.getName() + "-mj";
                File[] listFiles = parentFile.listFiles(new FileFilter() { // from class: com.tencent.wcdb.database.SQLiteDatabase.2
                    @Override // java.io.FileFilter
                    public boolean accept(File file2) {
                        return file2.getName().startsWith(str);
                    }
                });
                if (listFiles != null) {
                    for (File file2 : listFiles) {
                        delete |= file2.delete();
                    }
                }
            }
            return delete;
        }
        throw new IllegalArgumentException("file must not be null");
    }

    private void dispose(boolean z10) {
        SQLiteConnectionPool sQLiteConnectionPool;
        synchronized (this.mLock) {
            sQLiteConnectionPool = this.mConnectionPoolLocked;
            this.mConnectionPoolLocked = null;
        }
        if (!z10) {
            WeakHashMap<SQLiteDatabase, Object> weakHashMap = sActiveDatabases;
            synchronized (weakHashMap) {
                weakHashMap.remove(this);
            }
            if (sQLiteConnectionPool != null) {
                sQLiteConnectionPool.close();
            }
        }
    }

    public static void dumpAll(Printer printer, boolean z10) {
        Iterator<SQLiteDatabase> it = getActiveDatabases().iterator();
        while (it.hasNext()) {
            it.next().dump(printer, z10);
        }
    }

    private int executeSql(String str, Object[] objArr, CancellationSignal cancellationSignal) throws SQLException {
        boolean z10;
        acquireReference();
        try {
            if (DatabaseUtils.getSqlStatementType(str) == 3) {
                synchronized (this.mLock) {
                    if (!this.mHasAttachedDbsLocked) {
                        z10 = true;
                        this.mHasAttachedDbsLocked = true;
                    } else {
                        z10 = false;
                    }
                }
                if (z10) {
                    disableWriteAheadLogging();
                }
            }
            SQLiteStatement sQLiteStatement = new SQLiteStatement(this, str, objArr);
            int executeUpdateDelete = sQLiteStatement.executeUpdateDelete(cancellationSignal);
            sQLiteStatement.close();
            return executeUpdateDelete;
        } finally {
            releaseReference();
        }
    }

    public static String findEditTable(String str) {
        if (!TextUtils.isEmpty(str)) {
            int indexOf = str.indexOf(32);
            int indexOf2 = str.indexOf(44);
            if (indexOf > 0 && (indexOf < indexOf2 || indexOf2 < 0)) {
                return str.substring(0, indexOf);
            }
            if (indexOf2 > 0) {
                if (indexOf2 < indexOf || indexOf < 0) {
                    return str.substring(0, indexOf2);
                }
                return str;
            }
            return str;
        }
        throw new IllegalStateException("Invalid tables");
    }

    private static ArrayList<SQLiteDatabase> getActiveDatabases() {
        ArrayList<SQLiteDatabase> arrayList = new ArrayList<>();
        WeakHashMap<SQLiteDatabase, Object> weakHashMap = sActiveDatabases;
        synchronized (weakHashMap) {
            arrayList.addAll(weakHashMap.keySet());
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ArrayList<SQLiteDebug.DbStats> getDbStats() {
        ArrayList<SQLiteDebug.DbStats> arrayList = new ArrayList<>();
        Iterator<SQLiteDatabase> it = getActiveDatabases().iterator();
        while (it.hasNext()) {
            it.next().collectDbStats(arrayList);
        }
        return arrayList;
    }

    private static boolean isMainThread() {
        Looper myLooper = Looper.myLooper();
        if (myLooper != null && myLooper == Looper.getMainLooper()) {
            return true;
        }
        return false;
    }

    private boolean isReadOnlyLocked() {
        if ((this.mConfigurationLocked.openFlags & 1) == 1) {
            return true;
        }
        return false;
    }

    private Set<String> keySet(ContentValues contentValues) {
        return contentValues.keySet();
    }

    private void open(byte[] bArr, SQLiteCipherSpec sQLiteCipherSpec, int i10) {
        try {
            try {
                openInner(bArr, sQLiteCipherSpec, i10);
            } catch (SQLiteDatabaseCorruptException unused) {
                onCorruption();
                openInner(bArr, sQLiteCipherSpec, i10);
            }
        } catch (SQLiteException e10) {
            Log.e(TAG, "Failed to open database '" + getLabel() + "'.", e10);
            close();
            throw e10;
        }
    }

    public static SQLiteDatabase openDatabase(String str, CursorFactory cursorFactory, int i10) {
        return openDatabase(str, cursorFactory, i10, null);
    }

    private void openInner(byte[] bArr, SQLiteCipherSpec sQLiteCipherSpec, int i10) {
        synchronized (this.mLock) {
            this.mConnectionPoolLocked = SQLiteConnectionPool.open(this, this.mConfigurationLocked, bArr, sQLiteCipherSpec, i10);
        }
        WeakHashMap<SQLiteDatabase, Object> weakHashMap = sActiveDatabases;
        synchronized (weakHashMap) {
            weakHashMap.put(this, null);
        }
    }

    public static SQLiteDatabase openOrCreateDatabase(File file, CursorFactory cursorFactory) {
        return openOrCreateDatabase(file.getPath(), cursorFactory);
    }

    public static SQLiteDatabase openOrCreateDatabaseInWalMode(String str, CursorFactory cursorFactory) {
        return openDatabase(str, null, null, cursorFactory, 805306368, null, 0);
    }

    public static SQLiteDatabase openOrCreateMemoryDatabaseInWalMode(CursorFactory cursorFactory) {
        return openDatabase(SQLiteDatabaseConfiguration.MEMORY_DB_PATH, null, null, cursorFactory, 805306368, null, 0);
    }

    public static int releaseMemory() {
        return SQLiteGlobal.releaseMemory();
    }

    private void throwIfNotOpenLocked() {
        if (this.mConnectionPoolLocked != null) {
            return;
        }
        throw new IllegalStateException("The database '" + this.mConfigurationLocked.label + "' is not open.");
    }

    private boolean yieldIfContendedHelper(boolean z10, long j10) {
        acquireReference();
        try {
            return getThreadSession().yieldTransaction(j10, z10, null);
        } finally {
            releaseReference();
        }
    }

    public long acquireNativeConnectionHandle(String str, boolean z10, boolean z11) {
        int i10;
        if (str == null) {
            str = "unnamedNative";
        }
        if (z10) {
            i10 = 1;
        } else {
            i10 = 2;
        }
        if (z11) {
            i10 |= 4;
        }
        long nativeHandle = getThreadSession().acquireConnectionForNativeHandle(i10).getNativeHandle(str);
        if (nativeHandle != 0) {
            return nativeHandle;
        }
        throw new IllegalStateException("SQLiteConnection native handle not initialized.");
    }

    public void addCustomFunction(String str, int i10, CustomFunction customFunction) {
        SQLiteCustomFunction sQLiteCustomFunction = new SQLiteCustomFunction(str, i10, customFunction);
        synchronized (this.mLock) {
            try {
                throwIfNotOpenLocked();
                this.mConfigurationLocked.customFunctions.add(sQLiteCustomFunction);
                try {
                    this.mConnectionPoolLocked.reconfigure(this.mConfigurationLocked);
                } catch (RuntimeException e10) {
                    this.mConfigurationLocked.customFunctions.remove(sQLiteCustomFunction);
                    throw e10;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void beginTransaction() {
        beginTransaction(null, true);
    }

    public void beginTransactionNonExclusive() {
        beginTransaction(null, false);
    }

    public void beginTransactionWithListener(SQLiteTransactionListener sQLiteTransactionListener) {
        beginTransaction(sQLiteTransactionListener, true);
    }

    public void beginTransactionWithListenerNonExclusive(SQLiteTransactionListener sQLiteTransactionListener) {
        beginTransaction(sQLiteTransactionListener, false);
    }

    public SQLiteStatement compileStatement(String str) throws SQLException {
        acquireReference();
        try {
            return new SQLiteStatement(this, str, null);
        } finally {
            releaseReference();
        }
    }

    SQLiteSession createSession() {
        SQLiteConnectionPool sQLiteConnectionPool;
        synchronized (this.mLock) {
            throwIfNotOpenLocked();
            sQLiteConnectionPool = this.mConnectionPoolLocked;
        }
        return new SQLiteSession(sQLiteConnectionPool);
    }

    public int delete(String str, String str2, String[] strArr) {
        String str3;
        acquireReference();
        try {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("DELETE FROM ");
            sb2.append(str);
            if (!TextUtils.isEmpty(str2)) {
                str3 = " WHERE " + str2;
            } else {
                str3 = "";
            }
            sb2.append(str3);
            SQLiteStatement sQLiteStatement = new SQLiteStatement(this, sb2.toString(), strArr);
            int executeUpdateDelete = sQLiteStatement.executeUpdateDelete();
            sQLiteStatement.close();
            releaseReference();
            return executeUpdateDelete;
        } catch (Throwable th2) {
            releaseReference();
            throw th2;
        }
    }

    public void disableWriteAheadLogging() {
        synchronized (this.mLock) {
            try {
                throwIfNotOpenLocked();
                SQLiteDatabaseConfiguration sQLiteDatabaseConfiguration = this.mConfigurationLocked;
                int i10 = sQLiteDatabaseConfiguration.openFlags;
                if ((i10 & 536870912) == 0) {
                    return;
                }
                sQLiteDatabaseConfiguration.openFlags = i10 & (-536870913);
                try {
                    this.mConnectionPoolLocked.reconfigure(sQLiteDatabaseConfiguration);
                } catch (RuntimeException e10) {
                    SQLiteDatabaseConfiguration sQLiteDatabaseConfiguration2 = this.mConfigurationLocked;
                    sQLiteDatabaseConfiguration2.openFlags = 536870912 | sQLiteDatabaseConfiguration2.openFlags;
                    throw e10;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void dump(Printer printer, boolean z10) {
        synchronized (this.mLock) {
            try {
                SQLiteConnectionPool sQLiteConnectionPool = this.mConnectionPoolLocked;
                if (sQLiteConnectionPool != null) {
                    sQLiteConnectionPool.dump(printer, z10);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public boolean enableWriteAheadLogging() {
        synchronized (this.mLock) {
            try {
                throwIfNotOpenLocked();
                if ((this.mConfigurationLocked.openFlags & 536870912) != 0) {
                    return true;
                }
                if (isReadOnlyLocked()) {
                    return false;
                }
                if (this.mConfigurationLocked.isInMemoryDb()) {
                    Log.i(TAG, "can't enable WAL for memory databases.");
                    return false;
                } else if (this.mHasAttachedDbsLocked) {
                    Log.i(TAG, "this database: " + this.mConfigurationLocked.label + " has attached databases. can't  enable WAL.");
                    return false;
                } else {
                    SQLiteDatabaseConfiguration sQLiteDatabaseConfiguration = this.mConfigurationLocked;
                    sQLiteDatabaseConfiguration.openFlags = 536870912 | sQLiteDatabaseConfiguration.openFlags;
                    try {
                        this.mConnectionPoolLocked.reconfigure(sQLiteDatabaseConfiguration);
                        return true;
                    } catch (RuntimeException e10) {
                        this.mConfigurationLocked.openFlags &= -536870913;
                        throw e10;
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void endTransaction() {
        acquireReference();
        try {
            getThreadSession().endTransaction(null);
        } finally {
            releaseReference();
        }
    }

    public void execSQL(String str) throws SQLException {
        executeSql(str, null, null);
    }

    protected void finalize() throws Throwable {
        try {
            dispose(true);
        } finally {
            super.finalize();
        }
    }

    public boolean getAsyncCheckpointEnabled() {
        SQLiteCheckpointListener checkpointCallback = getCheckpointCallback();
        if (checkpointCallback != null && (checkpointCallback instanceof SQLiteAsyncCheckpointer)) {
            return true;
        }
        return false;
    }

    public List<Pair<String, String>> getAttachedDbs() {
        ArrayList arrayList = new ArrayList();
        synchronized (this.mLock) {
            try {
                if (this.mConnectionPoolLocked == null) {
                    return null;
                }
                if (!this.mHasAttachedDbsLocked) {
                    arrayList.add(new Pair("main", this.mConfigurationLocked.path));
                    return arrayList;
                }
                acquireReference();
                try {
                    Cursor rawQuery = rawQuery("pragma database_list;", null);
                    while (rawQuery.moveToNext()) {
                        arrayList.add(new Pair(rawQuery.getString(1), rawQuery.getString(2)));
                    }
                    rawQuery.close();
                    return arrayList;
                } finally {
                    releaseReference();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public SQLiteChangeListener getChangeListener() {
        SQLiteChangeListener changeListener;
        synchronized (this.mLock) {
            throwIfNotOpenLocked();
            changeListener = this.mConnectionPoolLocked.getChangeListener();
        }
        return changeListener;
    }

    public SQLiteCheckpointListener getCheckpointCallback() {
        synchronized (this.mLock) {
            try {
                throwIfNotOpenLocked();
                if (!this.mConfigurationLocked.customWALHookEnabled) {
                    return null;
                }
                return this.mConnectionPoolLocked.getCheckpointListener();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    String getLabel() {
        String str;
        synchronized (this.mLock) {
            str = this.mConfigurationLocked.label;
        }
        return str;
    }

    public long getMaximumSize() {
        return DatabaseUtils.longForQuery(this, "PRAGMA max_page_count;", null) * getPageSize();
    }

    public long getPageSize() {
        return DatabaseUtils.longForQuery(this, "PRAGMA page_size;", null);
    }

    public final String getPath() {
        String str;
        synchronized (this.mLock) {
            str = this.mConfigurationLocked.path;
        }
        return str;
    }

    @Deprecated
    public Map<String, String> getSyncedTables() {
        return new HashMap(0);
    }

    public int getSynchronousMode() {
        int i10;
        synchronized (this.mLock) {
            throwIfNotOpenLocked();
            i10 = this.mConfigurationLocked.synchronousMode;
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getThreadDefaultConnectionFlags(boolean z10) {
        int i10;
        if (z10) {
            i10 = 1;
        } else {
            i10 = 2;
        }
        if (isMainThread()) {
            return i10 | 4;
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SQLiteSession getThreadSession() {
        return this.mThreadSession.get();
    }

    public SQLiteTrace getTraceCallback() {
        SQLiteTrace traceCallback;
        synchronized (this.mLock) {
            throwIfNotOpenLocked();
            traceCallback = this.mConnectionPoolLocked.getTraceCallback();
        }
        return traceCallback;
    }

    public int getVersion() {
        return Long.valueOf(DatabaseUtils.longForQuery(this, "PRAGMA user_version;", null)).intValue();
    }

    public boolean inTransaction() {
        acquireReference();
        try {
            return getThreadSession().hasTransaction();
        } finally {
            releaseReference();
        }
    }

    public long insert(String str, String str2, ContentValues contentValues) {
        try {
            return insertWithOnConflict(str, str2, contentValues, 0);
        } catch (SQLiteDatabaseCorruptException e10) {
            throw e10;
        } catch (SQLException e11) {
            Log.e(TAG, "Error inserting %s: %s", contentValues, e11);
            return -1L;
        }
    }

    public long insertOrThrow(String str, String str2, ContentValues contentValues) throws SQLException {
        return insertWithOnConflict(str, str2, contentValues, 0);
    }

    public long insertWithOnConflict(String str, String str2, ContentValues contentValues, int i10) {
        int i11;
        Object[] objArr;
        String str3;
        String str4;
        acquireReference();
        try {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("INSERT");
            sb2.append(CONFLICT_VALUES[i10]);
            sb2.append(" INTO ");
            sb2.append(str);
            sb2.append('(');
            if (contentValues != null && contentValues.size() > 0) {
                i11 = contentValues.size();
            } else {
                i11 = 0;
            }
            if (i11 > 0) {
                objArr = new Object[i11];
                int i12 = 0;
                for (String str5 : keySet(contentValues)) {
                    if (i12 > 0) {
                        str4 = ",";
                    } else {
                        str4 = "";
                    }
                    sb2.append(str4);
                    sb2.append(str5);
                    objArr[i12] = contentValues.get(str5);
                    i12++;
                }
                sb2.append(')');
                sb2.append(" VALUES (");
                for (int i13 = 0; i13 < i11; i13++) {
                    if (i13 > 0) {
                        str3 = ",?";
                    } else {
                        str3 = "?";
                    }
                    sb2.append(str3);
                }
            } else {
                sb2.append(str2 + ") VALUES (NULL");
                objArr = null;
            }
            sb2.append(')');
            SQLiteStatement sQLiteStatement = new SQLiteStatement(this, sb2.toString(), objArr);
            long executeInsert = sQLiteStatement.executeInsert();
            sQLiteStatement.close();
            releaseReference();
            return executeInsert;
        } catch (Throwable th2) {
            releaseReference();
            throw th2;
        }
    }

    public boolean isDatabaseIntegrityOk() {
        List<Pair<String, String>> arrayList;
        acquireReference();
        try {
            try {
                arrayList = getAttachedDbs();
            } catch (SQLiteException unused) {
                arrayList = new ArrayList<>();
                arrayList.add(new Pair<>("main", getPath()));
            }
            if (arrayList == null) {
                throw new IllegalStateException("databaselist for: " + getPath() + " couldn't be retrieved. probably because the database is closed");
            }
            for (int i10 = 0; i10 < arrayList.size(); i10++) {
                Pair<String, String> pair = arrayList.get(i10);
                SQLiteStatement compileStatement = compileStatement("PRAGMA " + ((String) pair.first) + ".integrity_check(1);");
                String simpleQueryForString = compileStatement.simpleQueryForString();
                if (!DatabaseUtils.objectEquals(simpleQueryForString, "ok")) {
                    Log.e(TAG, "PRAGMA integrity_check on " + ((String) pair.second) + " returned: " + simpleQueryForString);
                    compileStatement.close();
                    return false;
                }
                compileStatement.close();
            }
            releaseReference();
            return true;
        } finally {
            releaseReference();
        }
    }

    public boolean isDbLockedByCurrentThread() {
        acquireReference();
        try {
            return getThreadSession().hasConnection();
        } finally {
            releaseReference();
        }
    }

    @Deprecated
    public boolean isDbLockedByOtherThreads() {
        return false;
    }

    public boolean isInMemoryDatabase() {
        boolean isInMemoryDb;
        synchronized (this.mLock) {
            isInMemoryDb = this.mConfigurationLocked.isInMemoryDb();
        }
        return isInMemoryDb;
    }

    public boolean isOpen() {
        boolean z10;
        synchronized (this.mLock) {
            if (this.mConnectionPoolLocked != null) {
                z10 = true;
            } else {
                z10 = false;
            }
        }
        return z10;
    }

    public boolean isReadOnly() {
        boolean isReadOnlyLocked;
        synchronized (this.mLock) {
            isReadOnlyLocked = isReadOnlyLocked();
        }
        return isReadOnlyLocked;
    }

    public boolean isWriteAheadLoggingEnabled() {
        boolean z10;
        synchronized (this.mLock) {
            throwIfNotOpenLocked();
            if ((this.mConfigurationLocked.openFlags & 536870912) != 0) {
                z10 = true;
            } else {
                z10 = false;
            }
        }
        return z10;
    }

    @Deprecated
    public void markTableSyncable(String str, String str2) {
    }

    public boolean needUpgrade(int i10) {
        if (i10 > getVersion()) {
            return true;
        }
        return false;
    }

    @Override // com.tencent.wcdb.database.SQLiteClosable
    protected void onAllReferencesReleased() {
        dispose(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onCorruption() {
        this.mErrorHandler.onCorruption(this);
    }

    public Cursor query(boolean z10, String str, String[] strArr, String str2, Object[] objArr, String str3, String str4, String str5, String str6) {
        return queryWithFactory(null, z10, str, strArr, str2, objArr, str3, str4, str5, str6, null);
    }

    public Cursor queryWithFactory(CursorFactory cursorFactory, boolean z10, String str, String[] strArr, String str2, Object[] objArr, String str3, String str4, String str5, String str6) {
        return queryWithFactory(cursorFactory, z10, str, strArr, str2, objArr, str3, str4, str5, str6, null);
    }

    public Cursor rawQuery(String str, Object[] objArr) {
        return rawQueryWithFactory(null, str, objArr, null, null);
    }

    public Cursor rawQueryWithFactory(CursorFactory cursorFactory, String str, Object[] objArr, String str2) {
        return rawQueryWithFactory(cursorFactory, str, objArr, str2, null);
    }

    public void releaseNativeConnection(long j10, Exception exc) {
        getThreadSession().releaseConnectionForNativeHandle(exc);
    }

    public void reopenReadWrite() {
        synchronized (this.mLock) {
            try {
                throwIfNotOpenLocked();
                if (!isReadOnlyLocked()) {
                    return;
                }
                SQLiteDatabaseConfiguration sQLiteDatabaseConfiguration = this.mConfigurationLocked;
                int i10 = sQLiteDatabaseConfiguration.openFlags;
                sQLiteDatabaseConfiguration.openFlags = i10 & (-2);
                try {
                    this.mConnectionPoolLocked.reconfigure(sQLiteDatabaseConfiguration);
                } catch (RuntimeException e10) {
                    this.mConfigurationLocked.openFlags = i10;
                    throw e10;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public long replace(String str, String str2, ContentValues contentValues) {
        try {
            return insertWithOnConflict(str, str2, contentValues, 5);
        } catch (SQLiteDatabaseCorruptException e10) {
            throw e10;
        } catch (SQLException e11) {
            Log.e(TAG, "Error inserting " + contentValues, e11);
            return -1L;
        }
    }

    public long replaceOrThrow(String str, String str2, ContentValues contentValues) throws SQLException {
        return insertWithOnConflict(str, str2, contentValues, 5);
    }

    public void setAsyncCheckpointEnabled(boolean z10) {
        SQLiteAsyncCheckpointer sQLiteAsyncCheckpointer;
        if (z10) {
            sQLiteAsyncCheckpointer = new SQLiteAsyncCheckpointer();
        } else {
            sQLiteAsyncCheckpointer = null;
        }
        setCheckpointCallback(sQLiteAsyncCheckpointer);
    }

    public void setChangeListener(SQLiteChangeListener sQLiteChangeListener, boolean z10) {
        synchronized (this.mLock) {
            throwIfNotOpenLocked();
            this.mConnectionPoolLocked.setChangeListener(sQLiteChangeListener, z10);
        }
    }

    public void setCheckpointCallback(SQLiteCheckpointListener sQLiteCheckpointListener) {
        boolean z10 = false;
        if (sQLiteCheckpointListener != null) {
            z10 = true;
        }
        synchronized (this.mLock) {
            throwIfNotOpenLocked();
            SQLiteDatabaseConfiguration sQLiteDatabaseConfiguration = this.mConfigurationLocked;
            if (sQLiteDatabaseConfiguration.customWALHookEnabled != z10) {
                sQLiteDatabaseConfiguration.customWALHookEnabled = z10;
                try {
                    this.mConnectionPoolLocked.reconfigure(sQLiteDatabaseConfiguration);
                } catch (RuntimeException e10) {
                    this.mConfigurationLocked.customWALHookEnabled = !z10;
                    throw e10;
                }
            }
            this.mConnectionPoolLocked.setCheckpointListener(sQLiteCheckpointListener);
        }
    }

    public void setForeignKeyConstraintsEnabled(boolean z10) {
        synchronized (this.mLock) {
            try {
                throwIfNotOpenLocked();
                SQLiteDatabaseConfiguration sQLiteDatabaseConfiguration = this.mConfigurationLocked;
                if (sQLiteDatabaseConfiguration.foreignKeyConstraintsEnabled == z10) {
                    return;
                }
                sQLiteDatabaseConfiguration.foreignKeyConstraintsEnabled = z10;
                try {
                    this.mConnectionPoolLocked.reconfigure(sQLiteDatabaseConfiguration);
                } catch (RuntimeException e10) {
                    this.mConfigurationLocked.foreignKeyConstraintsEnabled = !z10;
                    throw e10;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void setLocale(Locale locale) {
        if (locale != null) {
            synchronized (this.mLock) {
                try {
                    throwIfNotOpenLocked();
                    SQLiteDatabaseConfiguration sQLiteDatabaseConfiguration = this.mConfigurationLocked;
                    Locale locale2 = sQLiteDatabaseConfiguration.locale;
                    sQLiteDatabaseConfiguration.locale = locale;
                    try {
                        this.mConnectionPoolLocked.reconfigure(sQLiteDatabaseConfiguration);
                    } catch (RuntimeException e10) {
                        this.mConfigurationLocked.locale = locale2;
                        throw e10;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return;
        }
        throw new IllegalArgumentException("locale must not be null.");
    }

    public void setMaxSqlCacheSize(int i10) {
        if (i10 <= 100 && i10 >= 0) {
            synchronized (this.mLock) {
                try {
                    throwIfNotOpenLocked();
                    SQLiteDatabaseConfiguration sQLiteDatabaseConfiguration = this.mConfigurationLocked;
                    int i11 = sQLiteDatabaseConfiguration.maxSqlCacheSize;
                    sQLiteDatabaseConfiguration.maxSqlCacheSize = i10;
                    try {
                        this.mConnectionPoolLocked.reconfigure(sQLiteDatabaseConfiguration);
                    } catch (RuntimeException e10) {
                        this.mConfigurationLocked.maxSqlCacheSize = i11;
                        throw e10;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return;
        }
        throw new IllegalStateException("expected value between 0 and 100");
    }

    public long setMaximumSize(long j10) {
        long pageSize = getPageSize();
        long j11 = j10 / pageSize;
        if (j10 % pageSize != 0) {
            j11++;
        }
        return DatabaseUtils.longForQuery(this, "PRAGMA max_page_count = " + j11, null) * pageSize;
    }

    public void setPageSize(long j10) {
        execSQL("PRAGMA page_size = " + j10);
    }

    public void setSynchronousMode(int i10) {
        synchronized (this.mLock) {
            throwIfNotOpenLocked();
            SQLiteDatabaseConfiguration sQLiteDatabaseConfiguration = this.mConfigurationLocked;
            int i11 = sQLiteDatabaseConfiguration.synchronousMode;
            if (i11 != i10) {
                sQLiteDatabaseConfiguration.synchronousMode = i10;
                try {
                    this.mConnectionPoolLocked.reconfigure(sQLiteDatabaseConfiguration);
                } catch (RuntimeException e10) {
                    this.mConfigurationLocked.synchronousMode = i11;
                    throw e10;
                }
            }
        }
    }

    public void setTraceCallback(SQLiteTrace sQLiteTrace) {
        synchronized (this.mLock) {
            throwIfNotOpenLocked();
            this.mConnectionPoolLocked.setTraceCallback(sQLiteTrace);
        }
    }

    public void setTransactionSuccessful() {
        acquireReference();
        try {
            getThreadSession().setTransactionSuccessful();
        } finally {
            releaseReference();
        }
    }

    public void setVersion(int i10) {
        execSQL("PRAGMA user_version = " + i10);
    }

    public String toString() {
        return "SQLiteDatabase: " + getPath();
    }

    public int update(String str, ContentValues contentValues, String str2, String[] strArr) {
        return updateWithOnConflict(str, contentValues, str2, strArr, 0);
    }

    public int updateWithOnConflict(String str, ContentValues contentValues, String str2, String[] strArr, int i10) {
        int length;
        String str3;
        if (contentValues != null && contentValues.size() != 0) {
            acquireReference();
            try {
                StringBuilder sb2 = new StringBuilder(120);
                sb2.append("UPDATE ");
                sb2.append(CONFLICT_VALUES[i10]);
                sb2.append(str);
                sb2.append(" SET ");
                int size = contentValues.size();
                if (strArr == null) {
                    length = size;
                } else {
                    length = strArr.length + size;
                }
                Object[] objArr = new Object[length];
                int i11 = 0;
                for (String str4 : keySet(contentValues)) {
                    if (i11 > 0) {
                        str3 = ",";
                    } else {
                        str3 = "";
                    }
                    sb2.append(str3);
                    sb2.append(str4);
                    objArr[i11] = contentValues.get(str4);
                    sb2.append("=?");
                    i11++;
                }
                if (strArr != null) {
                    for (int i12 = size; i12 < length; i12++) {
                        objArr[i12] = strArr[i12 - size];
                    }
                }
                if (!TextUtils.isEmpty(str2)) {
                    sb2.append(" WHERE ");
                    sb2.append(str2);
                }
                SQLiteStatement sQLiteStatement = new SQLiteStatement(this, sb2.toString(), objArr);
                int executeUpdateDelete = sQLiteStatement.executeUpdateDelete();
                sQLiteStatement.close();
                releaseReference();
                return executeUpdateDelete;
            } catch (Throwable th2) {
                releaseReference();
                throw th2;
            }
        }
        throw new IllegalArgumentException("Empty values");
    }

    public Pair<Integer, Integer> walCheckpoint(String str, boolean z10) {
        int i10;
        acquireReference();
        if (z10) {
            i10 = 2;
        } else {
            i10 = 0;
        }
        try {
            return getThreadSession().walCheckpoint(str, i10);
        } finally {
            releaseReference();
        }
    }

    @Deprecated
    public boolean yieldIfContended() {
        return yieldIfContendedHelper(false, -1L);
    }

    public boolean yieldIfContendedSafely() {
        return yieldIfContendedHelper(true, -1L);
    }

    private void beginTransaction(SQLiteTransactionListener sQLiteTransactionListener, boolean z10) {
        acquireReference();
        try {
            getThreadSession().beginTransaction(z10 ? 2 : 1, sQLiteTransactionListener, getThreadDefaultConnectionFlags(false), null);
        } finally {
            releaseReference();
        }
    }

    public static SQLiteDatabase openDatabase(String str, byte[] bArr, SQLiteCipherSpec sQLiteCipherSpec, CursorFactory cursorFactory, int i10, DatabaseErrorHandler databaseErrorHandler, int i11) {
        SQLiteDatabase sQLiteDatabase = new SQLiteDatabase(str, i10, cursorFactory, databaseErrorHandler);
        sQLiteDatabase.open(bArr, sQLiteCipherSpec, i11);
        return sQLiteDatabase;
    }

    public static SQLiteDatabase openOrCreateDatabase(File file, byte[] bArr, SQLiteCipherSpec sQLiteCipherSpec, CursorFactory cursorFactory, DatabaseErrorHandler databaseErrorHandler) {
        return openOrCreateDatabase(file.getPath(), bArr, sQLiteCipherSpec, cursorFactory, databaseErrorHandler, 0);
    }

    public static SQLiteDatabase openOrCreateDatabaseInWalMode(String str, CursorFactory cursorFactory, int i10) {
        return openDatabase(str, null, null, cursorFactory, 805306368, null, i10);
    }

    public void execSQL(String str, Object[] objArr) throws SQLException {
        executeSql(str, objArr, null);
    }

    @Deprecated
    public void markTableSyncable(String str, String str2, String str3) {
    }

    public Cursor query(boolean z10, String str, String[] strArr, String str2, Object[] objArr, String str3, String str4, String str5, String str6, CancellationSignal cancellationSignal) {
        return queryWithFactory(null, z10, str, strArr, str2, objArr, str3, str4, str5, str6, cancellationSignal);
    }

    public Cursor queryWithFactory(CursorFactory cursorFactory, boolean z10, String str, String[] strArr, String str2, Object[] objArr, String str3, String str4, String str5, String str6, CancellationSignal cancellationSignal) {
        acquireReference();
        try {
            return rawQueryWithFactory(cursorFactory, SQLiteQueryBuilder.buildQueryString(z10, str, strArr, str2, str3, str4, str5, str6), objArr, findEditTable(str), cancellationSignal);
        } finally {
            releaseReference();
        }
    }

    public Cursor rawQuery(String str, Object[] objArr, CancellationSignal cancellationSignal) {
        return rawQueryWithFactory(null, str, objArr, null, cancellationSignal);
    }

    public Cursor rawQueryWithFactory(CursorFactory cursorFactory, String str, Object[] objArr, String str2, CancellationSignal cancellationSignal) {
        acquireReference();
        try {
            SQLiteDirectCursorDriver sQLiteDirectCursorDriver = new SQLiteDirectCursorDriver(this, str, str2, cancellationSignal);
            if (cursorFactory == null) {
                cursorFactory = this.mCursorFactory;
            }
            return sQLiteDirectCursorDriver.query(cursorFactory, objArr);
        } finally {
            releaseReference();
        }
    }

    public boolean yieldIfContendedSafely(long j10) {
        return yieldIfContendedHelper(true, j10);
    }

    public static SQLiteDatabase openOrCreateDatabase(File file, byte[] bArr, SQLiteCipherSpec sQLiteCipherSpec, CursorFactory cursorFactory, DatabaseErrorHandler databaseErrorHandler, int i10) {
        return openOrCreateDatabase(file.getPath(), bArr, sQLiteCipherSpec, cursorFactory, databaseErrorHandler, i10);
    }

    public static SQLiteDatabase openOrCreateDatabaseInWalMode(String str, byte[] bArr, SQLiteCipherSpec sQLiteCipherSpec, CursorFactory cursorFactory, DatabaseErrorHandler databaseErrorHandler, int i10) {
        return openDatabase(str, bArr, sQLiteCipherSpec, cursorFactory, 805306368, databaseErrorHandler, i10);
    }

    public void execSQL(String str, Object[] objArr, CancellationSignal cancellationSignal) {
        executeSql(str, objArr, cancellationSignal);
    }

    public Cursor query(String str, String[] strArr, String str2, Object[] objArr, String str3, String str4, String str5) {
        return query(false, str, strArr, str2, objArr, str3, str4, str5, null);
    }

    public static SQLiteDatabase openDatabase(String str, byte[] bArr, SQLiteCipherSpec sQLiteCipherSpec, CursorFactory cursorFactory, int i10, DatabaseErrorHandler databaseErrorHandler) {
        return openDatabase(str, bArr, sQLiteCipherSpec, cursorFactory, i10, databaseErrorHandler, 0);
    }

    public static SQLiteDatabase openOrCreateDatabase(File file, byte[] bArr, CursorFactory cursorFactory, DatabaseErrorHandler databaseErrorHandler) {
        return openOrCreateDatabase(file.getPath(), bArr, (SQLiteCipherSpec) null, cursorFactory, databaseErrorHandler, 0);
    }

    public static SQLiteDatabase openOrCreateDatabaseInWalMode(String str, byte[] bArr, SQLiteCipherSpec sQLiteCipherSpec, CursorFactory cursorFactory) {
        return openDatabase(str, bArr, sQLiteCipherSpec, cursorFactory, 805306368, null, 0);
    }

    public Cursor query(String str, String[] strArr, String str2, Object[] objArr, String str3, String str4, String str5, String str6) {
        return query(false, str, strArr, str2, objArr, str3, str4, str5, str6);
    }

    public static SQLiteDatabase openDatabase(String str, CursorFactory cursorFactory, int i10, DatabaseErrorHandler databaseErrorHandler) {
        return openDatabase(str, null, null, cursorFactory, i10, databaseErrorHandler, 0);
    }

    public static SQLiteDatabase openOrCreateDatabase(File file, byte[] bArr, CursorFactory cursorFactory, DatabaseErrorHandler databaseErrorHandler, int i10) {
        return openOrCreateDatabase(file.getPath(), bArr, (SQLiteCipherSpec) null, cursorFactory, databaseErrorHandler, i10);
    }

    public static SQLiteDatabase openDatabase(String str, CursorFactory cursorFactory, int i10, DatabaseErrorHandler databaseErrorHandler, int i11) {
        return openDatabase(str, null, null, cursorFactory, i10, databaseErrorHandler, i11);
    }

    public static SQLiteDatabase openOrCreateDatabase(String str, CursorFactory cursorFactory, int i10) {
        return openDatabase(str, null, null, cursorFactory, 268435456, null, i10);
    }

    public static SQLiteDatabase openOrCreateDatabase(String str, CursorFactory cursorFactory) {
        return openDatabase(str, null, null, cursorFactory, 268435456, null, 0);
    }

    public static SQLiteDatabase openOrCreateDatabase(String str, CursorFactory cursorFactory, boolean z10) {
        return openDatabase(str, null, null, cursorFactory, z10 ? 805306368 : 268435456, null, 0);
    }

    public static SQLiteDatabase openOrCreateDatabase(String str, byte[] bArr, SQLiteCipherSpec sQLiteCipherSpec, CursorFactory cursorFactory, DatabaseErrorHandler databaseErrorHandler, int i10) {
        return openDatabase(str, bArr, sQLiteCipherSpec, cursorFactory, 268435456, databaseErrorHandler, i10);
    }

    public static SQLiteDatabase openOrCreateDatabase(String str, byte[] bArr, CursorFactory cursorFactory, DatabaseErrorHandler databaseErrorHandler, int i10) {
        return openOrCreateDatabase(str, bArr, (SQLiteCipherSpec) null, cursorFactory, databaseErrorHandler, i10);
    }

    public static SQLiteDatabase openOrCreateDatabase(String str, byte[] bArr, CursorFactory cursorFactory, DatabaseErrorHandler databaseErrorHandler) {
        return openOrCreateDatabase(str, bArr, (SQLiteCipherSpec) null, cursorFactory, databaseErrorHandler, 0);
    }

    public static SQLiteDatabase openOrCreateDatabase(String str, CursorFactory cursorFactory, DatabaseErrorHandler databaseErrorHandler) {
        return openDatabase(str, cursorFactory, 268435456, databaseErrorHandler);
    }

    @Deprecated
    public void setLockingEnabled(boolean z10) {
    }
}
