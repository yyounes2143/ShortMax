package com.tencent.wcdb.database;

import android.annotation.SuppressLint;
import android.util.Pair;
import android.util.Printer;
import com.huawei.hms.framework.common.ContainerUtils;
import com.tencent.wcdb.CursorWindow;
import com.tencent.wcdb.DatabaseUtils;
import com.tencent.wcdb.database.SQLiteDebug;
import com.tencent.wcdb.support.CancellationSignal;
import com.tencent.wcdb.support.Log;
import com.tencent.wcdb.support.LruCache;
import java.lang.ref.WeakReference;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Map;
import java.util.regex.Pattern;
/* loaded from: classes7.dex */
public final class SQLiteConnection implements CancellationSignal.OnCancelListener {
    private static final boolean DEBUG = false;
    private static final String TAG = "WCDB.SQLiteConnection";
    private Thread mAcquiredThread;
    private int mAcquiredTid;
    private int mCancellationSignalAttachCount;
    private SQLiteCipherSpec mCipher;
    private final SQLiteDatabaseConfiguration mConfiguration;
    private final int mConnectionId;
    private long mConnectionPtr;
    private final boolean mIsPrimaryConnection;
    private final boolean mIsReadOnlyConnection;
    private int mNativeHandleCount;
    private Operation mNativeOperation;
    private boolean mOnlyAllowReadOnlyOperations;
    private byte[] mPassword;
    private final SQLiteConnectionPool mPool;
    private final PreparedStatementCache mPreparedStatementCache;
    private PreparedStatement mPreparedStatementPool;
    private final OperationLog mRecentOperations = new OperationLog();
    private static final String[] EMPTY_STRING_ARRAY = new String[0];
    private static final byte[] EMPTY_BYTE_ARRAY = new byte[0];
    private static final Pattern TRIM_SQL_PATTERN = Pattern.compile("[\\s]*\\n+[\\s]*");

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"SimpleDateFormat"})
    /* loaded from: classes7.dex */
    public static final class Operation {
        private static final SimpleDateFormat sDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
        public ArrayList<Object> mBindArgs;
        public int mCookie;
        public long mEndTime;
        public Exception mException;
        public boolean mFinished;
        public String mKind;
        public String mSql;
        public long mStartTime;
        public int mTid;
        public int mType;

        private Operation() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public String getFormattedStartTime() {
            return sDateFormat.format(new Date(this.mStartTime));
        }

        private String getStatus() {
            if (!this.mFinished) {
                return "running";
            }
            if (this.mException != null) {
                return "failed";
            }
            return "succeeded";
        }

        public void describe(StringBuilder sb2, boolean z10) {
            ArrayList<Object> arrayList;
            sb2.append(this.mKind);
            if (this.mFinished) {
                sb2.append(" took ");
                sb2.append(this.mEndTime - this.mStartTime);
                sb2.append("ms");
            } else {
                sb2.append(" started ");
                sb2.append(System.currentTimeMillis() - this.mStartTime);
                sb2.append("ms ago");
            }
            sb2.append(" - ");
            sb2.append(getStatus());
            if (this.mSql != null) {
                sb2.append(", sql=\"");
                sb2.append(SQLiteConnection.trimSqlForDisplay(this.mSql));
                sb2.append("\"");
            }
            if (this.mTid > 0) {
                sb2.append(", tid=");
                sb2.append(this.mTid);
            }
            if (z10 && (arrayList = this.mBindArgs) != null && arrayList.size() != 0) {
                sb2.append(", bindArgs=[");
                int size = this.mBindArgs.size();
                for (int i10 = 0; i10 < size; i10++) {
                    Object obj = this.mBindArgs.get(i10);
                    if (i10 != 0) {
                        sb2.append(", ");
                    }
                    if (obj == null) {
                        sb2.append("null");
                    } else if (obj instanceof byte[]) {
                        sb2.append("<byte[]>");
                    } else if (obj instanceof String) {
                        sb2.append("\"");
                        sb2.append((String) obj);
                        sb2.append("\"");
                    } else {
                        sb2.append(obj);
                    }
                }
                sb2.append("]");
            }
            Exception exc = this.mException;
            if (exc != null && exc.getMessage() != null) {
                sb2.append(", exception=\"");
                sb2.append(this.mException.getMessage());
                sb2.append("\"");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes7.dex */
    public final class OperationLog {
        private static final int COOKIE_GENERATION_SHIFT = 8;
        private static final int COOKIE_INDEX_MASK = 255;
        private static final int MAX_RECENT_OPERATIONS = 20;
        private int mGeneration;
        private int mIndex;
        private final Operation[] mOperations;

        private OperationLog() {
            this.mOperations = new Operation[20];
        }

        private boolean endOperationDeferLogLocked(Operation operation) {
            if (operation != null) {
                operation.mEndTime = System.currentTimeMillis();
                operation.mFinished = true;
                Exception exc = operation.mException;
                if (exc != null && exc.getMessage() != null) {
                    return true;
                }
                return SQLiteDebug.shouldLogSlowQuery(operation.mEndTime - operation.mStartTime);
            }
            return false;
        }

        private Operation getOperationLocked(int i10) {
            Operation operation = this.mOperations[i10 & 255];
            if (operation.mCookie != i10) {
                return null;
            }
            return operation;
        }

        private void logOperationLocked(Operation operation, String str) {
            StringBuilder sb2 = new StringBuilder();
            operation.describe(sb2, false);
            if (str != null) {
                sb2.append(", ");
                sb2.append(str);
            }
            Log.i(SQLiteConnection.TAG, sb2.toString());
        }

        private int newOperationCookieLocked(int i10) {
            int i11 = this.mGeneration;
            this.mGeneration = i11 + 1;
            return i10 | (i11 << 8);
        }

        public Operation beginOperation(String str, String str2, Object[] objArr) {
            Operation operation;
            synchronized (this.mOperations) {
                try {
                    int i10 = (this.mIndex + 1) % 20;
                    operation = this.mOperations[i10];
                    if (operation == null) {
                        operation = new Operation();
                        this.mOperations[i10] = operation;
                    } else {
                        operation.mFinished = false;
                        operation.mException = null;
                        ArrayList<Object> arrayList = operation.mBindArgs;
                        if (arrayList != null) {
                            arrayList.clear();
                        }
                    }
                    operation.mStartTime = System.currentTimeMillis();
                    operation.mKind = str;
                    operation.mSql = str2;
                    if (objArr != null) {
                        ArrayList<Object> arrayList2 = operation.mBindArgs;
                        if (arrayList2 == null) {
                            operation.mBindArgs = new ArrayList<>();
                        } else {
                            arrayList2.clear();
                        }
                        for (Object obj : objArr) {
                            if (obj != null && (obj instanceof byte[])) {
                                operation.mBindArgs.add(SQLiteConnection.EMPTY_BYTE_ARRAY);
                            } else {
                                operation.mBindArgs.add(obj);
                            }
                        }
                    }
                    operation.mCookie = newOperationCookieLocked(i10);
                    operation.mTid = SQLiteConnection.this.mAcquiredTid;
                    this.mIndex = i10;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return operation;
        }

        public String describeCurrentOperation() {
            synchronized (this.mOperations) {
                try {
                    Operation operation = this.mOperations[this.mIndex];
                    if (operation != null && !operation.mFinished) {
                        StringBuilder sb2 = new StringBuilder();
                        operation.describe(sb2, false);
                        return sb2.toString();
                    }
                    return null;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        public void dump(Printer printer, boolean z10) {
            synchronized (this.mOperations) {
                try {
                    printer.println("  Most recently executed operations:");
                    int i10 = this.mIndex;
                    Operation operation = this.mOperations[i10];
                    if (operation != null) {
                        int i11 = 0;
                        do {
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("    ");
                            sb2.append(i11);
                            sb2.append(": [");
                            sb2.append(operation.getFormattedStartTime());
                            sb2.append("] ");
                            operation.describe(sb2, z10);
                            printer.println(sb2.toString());
                            if (i10 > 0) {
                                i10--;
                            } else {
                                i10 = 19;
                            }
                            i11++;
                            operation = this.mOperations[i10];
                            if (operation == null) {
                                break;
                            }
                        } while (i11 < 20);
                    } else {
                        printer.println("    <none>");
                    }
                } finally {
                }
            }
        }

        public void endOperation(int i10) {
            String str;
            String str2;
            int i11;
            long j10;
            synchronized (this.mOperations) {
                try {
                    Operation operationLocked = getOperationLocked(i10);
                    if (endOperationDeferLogLocked(operationLocked)) {
                        logOperationLocked(operationLocked, null);
                    }
                    str = operationLocked.mSql;
                    str2 = operationLocked.mKind;
                    i11 = operationLocked.mType;
                    j10 = operationLocked.mEndTime - operationLocked.mStartTime;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (!"prepare".equals(str2)) {
                SQLiteConnection.this.mPool.traceExecute(str, i11, j10);
            }
        }

        public boolean endOperationDeferLog(int i10) {
            synchronized (this.mOperations) {
                try {
                    Operation operationLocked = getOperationLocked(i10);
                    if (operationLocked == null) {
                        return false;
                    }
                    boolean endOperationDeferLogLocked = endOperationDeferLogLocked(operationLocked);
                    String str = operationLocked.mSql;
                    String str2 = operationLocked.mKind;
                    int i11 = operationLocked.mType;
                    long j10 = operationLocked.mEndTime - operationLocked.mStartTime;
                    if (!"prepare".equals(str2)) {
                        SQLiteConnection.this.mPool.traceExecute(str, i11, j10);
                    }
                    return endOperationDeferLogLocked;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        public void failOperation(int i10, Exception exc) {
            synchronized (this.mOperations) {
                try {
                    Operation operationLocked = getOperationLocked(i10);
                    if (operationLocked != null) {
                        operationLocked.mException = exc;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        public void logOperation(int i10, String str) {
            synchronized (this.mOperations) {
                try {
                    Operation operationLocked = getOperationLocked(i10);
                    if (operationLocked != null) {
                        logOperationLocked(operationLocked, str);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class PreparedStatement {
        private WeakReference<SQLiteConnection> mConnection;
        private boolean mInCache;
        private boolean mInUse;
        private int mNumParameters;
        private Operation mOperation;
        private PreparedStatement mPoolNext;
        private boolean mReadOnly;
        private String mSql;
        private long mStatementPtr;
        private int mType;

        PreparedStatement(SQLiteConnection sQLiteConnection) {
            this.mConnection = new WeakReference<>(sQLiteConnection);
        }

        public void attachCancellationSignal(CancellationSignal cancellationSignal) {
            SQLiteConnection sQLiteConnection = this.mConnection.get();
            if (sQLiteConnection != null) {
                sQLiteConnection.attachCancellationSignal(cancellationSignal);
            }
        }

        public void beginOperation(String str, Object[] objArr) {
            SQLiteConnection sQLiteConnection = this.mConnection.get();
            if (sQLiteConnection == null) {
                return;
            }
            Operation beginOperation = sQLiteConnection.mRecentOperations.beginOperation(str, this.mSql, objArr);
            this.mOperation = beginOperation;
            beginOperation.mType = this.mType;
        }

        public void bindArguments(Object[] objArr) {
            SQLiteConnection sQLiteConnection = this.mConnection.get();
            if (sQLiteConnection != null) {
                sQLiteConnection.bindArguments(this, objArr);
            }
        }

        public void detachCancellationSignal(CancellationSignal cancellationSignal) {
            SQLiteConnection sQLiteConnection = this.mConnection.get();
            if (sQLiteConnection != null) {
                sQLiteConnection.detachCancellationSignal(cancellationSignal);
            }
        }

        public void endOperation(String str) {
            SQLiteConnection sQLiteConnection;
            if (this.mOperation == null || (sQLiteConnection = this.mConnection.get()) == null) {
                return;
            }
            if (sQLiteConnection.mRecentOperations.endOperationDeferLog(this.mOperation.mCookie)) {
                sQLiteConnection.mRecentOperations.logOperation(this.mOperation.mCookie, str);
            }
            this.mOperation = null;
        }

        public void failOperation(Exception exc) {
            SQLiteConnection sQLiteConnection;
            if (this.mOperation == null || (sQLiteConnection = this.mConnection.get()) == null) {
                return;
            }
            sQLiteConnection.mRecentOperations.failOperation(this.mOperation.mCookie, exc);
        }

        public long getPtr() {
            return this.mStatementPtr;
        }

        public String getSQL() {
            return this.mSql;
        }

        public int getType() {
            return this.mType;
        }

        public boolean isReadOnly() {
            return this.mReadOnly;
        }

        public void reset(boolean z10) {
            SQLiteConnection sQLiteConnection = this.mConnection.get();
            if (sQLiteConnection != null) {
                sQLiteConnection.resetStatement(this, z10);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes7.dex */
    public final class PreparedStatementCache extends LruCache<String, PreparedStatement> {
        public PreparedStatementCache(int i10) {
            super(i10);
        }

        public void dump(Printer printer) {
            printer.println("  Prepared statement cache:");
            Map<String, PreparedStatement> snapshot = snapshot();
            if (!snapshot.isEmpty()) {
                int i10 = 0;
                for (Map.Entry<String, PreparedStatement> entry : snapshot.entrySet()) {
                    PreparedStatement value = entry.getValue();
                    if (value.mInCache) {
                        printer.println("    " + i10 + ": statementPtr=0x" + Long.toHexString(value.getPtr()) + ", numParameters=" + value.mNumParameters + ", type=" + value.mType + ", readOnly=" + value.mReadOnly + ", sql=\"" + SQLiteConnection.trimSqlForDisplay(entry.getKey()) + "\"");
                    }
                    i10++;
                }
                return;
            }
            printer.println("    <none>");
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.tencent.wcdb.support.LruCache
        public void entryRemoved(boolean z10, String str, PreparedStatement preparedStatement, PreparedStatement preparedStatement2) {
            preparedStatement.mInCache = false;
            if (preparedStatement.mInUse) {
                return;
            }
            SQLiteConnection.this.finalizePreparedStatement(preparedStatement);
        }
    }

    private SQLiteConnection(SQLiteConnectionPool sQLiteConnectionPool, SQLiteDatabaseConfiguration sQLiteDatabaseConfiguration, int i10, boolean z10, byte[] bArr, SQLiteCipherSpec sQLiteCipherSpec) {
        this.mPassword = bArr;
        this.mCipher = sQLiteCipherSpec != null ? new SQLiteCipherSpec(sQLiteCipherSpec) : null;
        this.mPool = sQLiteConnectionPool;
        SQLiteDatabaseConfiguration sQLiteDatabaseConfiguration2 = new SQLiteDatabaseConfiguration(sQLiteDatabaseConfiguration);
        this.mConfiguration = sQLiteDatabaseConfiguration2;
        this.mConnectionId = i10;
        this.mIsPrimaryConnection = z10;
        this.mIsReadOnlyConnection = (sQLiteDatabaseConfiguration.openFlags & 1) != 0;
        this.mPreparedStatementCache = new PreparedStatementCache(sQLiteDatabaseConfiguration2.maxSqlCacheSize);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void attachCancellationSignal(CancellationSignal cancellationSignal) {
        if (cancellationSignal != null) {
            cancellationSignal.throwIfCanceled();
            int i10 = this.mCancellationSignalAttachCount + 1;
            this.mCancellationSignalAttachCount = i10;
            if (i10 == 1) {
                nativeResetCancel(this.mConnectionPtr, true);
                cancellationSignal.setOnCancelListener(this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void bindArguments(PreparedStatement preparedStatement, Object[] objArr) {
        int i10;
        long j10;
        if (objArr != null) {
            i10 = objArr.length;
        } else {
            i10 = 0;
        }
        if (i10 == preparedStatement.mNumParameters) {
            if (i10 == 0) {
                return;
            }
            long ptr = preparedStatement.getPtr();
            for (int i11 = 0; i11 < i10; i11++) {
                Object obj = objArr[i11];
                int typeOfObject = DatabaseUtils.getTypeOfObject(obj);
                if (typeOfObject != 0) {
                    if (typeOfObject != 1) {
                        if (typeOfObject != 2) {
                            if (typeOfObject != 4) {
                                if (obj instanceof Boolean) {
                                    long j11 = this.mConnectionPtr;
                                    int i12 = i11 + 1;
                                    if (((Boolean) obj).booleanValue()) {
                                        j10 = 1;
                                    } else {
                                        j10 = 0;
                                    }
                                    nativeBindLong(j11, ptr, i12, j10);
                                } else {
                                    nativeBindString(this.mConnectionPtr, ptr, i11 + 1, obj.toString());
                                }
                            } else {
                                nativeBindBlob(this.mConnectionPtr, ptr, i11 + 1, (byte[]) obj);
                            }
                        } else {
                            nativeBindDouble(this.mConnectionPtr, ptr, i11 + 1, ((Number) obj).doubleValue());
                        }
                    } else {
                        nativeBindLong(this.mConnectionPtr, ptr, i11 + 1, ((Number) obj).longValue());
                    }
                } else {
                    nativeBindNull(this.mConnectionPtr, ptr, i11 + 1);
                }
            }
            return;
        }
        throw new SQLiteBindOrColumnIndexOutOfRangeException("Expected " + preparedStatement.mNumParameters + " bind arguments but " + i10 + " were provided.");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void detachCancellationSignal(CancellationSignal cancellationSignal) {
        if (cancellationSignal != null) {
            int i10 = this.mCancellationSignalAttachCount - 1;
            this.mCancellationSignalAttachCount = i10;
            if (i10 == 0) {
                cancellationSignal.setOnCancelListener(null);
                nativeResetCancel(this.mConnectionPtr, false);
            }
        }
    }

    private void dispose(boolean z10) {
        if (this.mConnectionPtr != 0) {
            int i10 = this.mRecentOperations.beginOperation("close", null, null).mCookie;
            try {
                this.mPreparedStatementCache.evictAll();
                nativeClose(this.mConnectionPtr);
                this.mConnectionPtr = 0L;
            } finally {
                this.mRecentOperations.endOperation(i10);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finalizePreparedStatement(PreparedStatement preparedStatement) {
        nativeFinalizeStatement(this.mConnectionPtr, preparedStatement.getPtr());
        recyclePreparedStatement(preparedStatement);
    }

    private SQLiteDebug.DbStats getMainDbStatsUnsafe(int i10, long j10, long j11) {
        String str = this.mConfiguration.path;
        if (!this.mIsPrimaryConnection) {
            str = str + " (" + this.mConnectionId + ")";
        }
        return new SQLiteDebug.DbStats(str, j10, j11, i10, this.mPreparedStatementCache.hitCount(), this.mPreparedStatementCache.missCount(), this.mPreparedStatementCache.size());
    }

    private static boolean isCacheable(int i10) {
        if (i10 == 2 || i10 == 1) {
            return true;
        }
        return false;
    }

    private static native void nativeBindBlob(long j10, long j11, int i10, byte[] bArr);

    private static native void nativeBindDouble(long j10, long j11, int i10, double d10);

    private static native void nativeBindLong(long j10, long j11, int i10, long j12);

    private static native void nativeBindNull(long j10, long j11, int i10);

    private static native void nativeBindString(long j10, long j11, int i10, String str);

    private static native void nativeCancel(long j10);

    private static native void nativeClose(long j10);

    private static native void nativeExecute(long j10, long j11);

    private static native int nativeExecuteForChangedRowCount(long j10, long j11);

    private static native long nativeExecuteForCursorWindow(long j10, long j11, long j12, int i10, int i11, boolean z10);

    private static native long nativeExecuteForLastInsertedRowId(long j10, long j11);

    private static native long nativeExecuteForLong(long j10, long j11);

    private static native String nativeExecuteForString(long j10, long j11);

    private static native void nativeFinalizeStatement(long j10, long j11);

    private static native int nativeGetColumnCount(long j10, long j11);

    private static native String nativeGetColumnName(long j10, long j11, int i10);

    private static native int nativeGetDbLookaside(long j10);

    private static native int nativeGetParameterCount(long j10, long j11);

    private static native boolean nativeIsReadOnly(long j10, long j11);

    private native long nativeOpen(String str, int i10, String str2);

    private static native long nativePrepareStatement(long j10, String str);

    private static native void nativeRegisterCustomFunction(long j10, SQLiteCustomFunction sQLiteCustomFunction);

    private static native void nativeRegisterLocalizedCollators(long j10, String str);

    private static native void nativeResetCancel(long j10, boolean z10);

    private static native void nativeResetStatement(long j10, long j11, boolean z10);

    private static native long nativeSQLiteHandle(long j10, boolean z10);

    private static native void nativeSetKey(long j10, byte[] bArr);

    private static native void nativeSetUpdateNotification(long j10, boolean z10, boolean z11);

    private static native void nativeSetWalHook(long j10);

    private static native long nativeWalCheckpoint(long j10, String str);

    private void notifyChange(String str, String str2, long[] jArr, long[] jArr2, long[] jArr3) {
        this.mPool.notifyChanges(str, str2, jArr, jArr2, jArr3);
    }

    private void notifyCheckpoint(String str, int i10) {
        this.mPool.notifyCheckpoint(str, i10);
    }

    private PreparedStatement obtainPreparedStatement(String str, long j10, int i10, int i11, boolean z10) {
        PreparedStatement preparedStatement = this.mPreparedStatementPool;
        if (preparedStatement != null) {
            this.mPreparedStatementPool = preparedStatement.mPoolNext;
            preparedStatement.mPoolNext = null;
            preparedStatement.mInCache = false;
        } else {
            preparedStatement = new PreparedStatement(this);
        }
        preparedStatement.mSql = str;
        preparedStatement.mStatementPtr = j10;
        preparedStatement.mNumParameters = i10;
        preparedStatement.mType = i11;
        preparedStatement.mReadOnly = z10;
        return preparedStatement;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static SQLiteConnection open(SQLiteConnectionPool sQLiteConnectionPool, SQLiteDatabaseConfiguration sQLiteDatabaseConfiguration, int i10, boolean z10, byte[] bArr, SQLiteCipherSpec sQLiteCipherSpec) {
        SQLiteConnection sQLiteConnection = new SQLiteConnection(sQLiteConnectionPool, sQLiteDatabaseConfiguration, i10, z10, bArr, sQLiteCipherSpec);
        try {
            sQLiteConnection.open();
            return sQLiteConnection;
        } catch (SQLiteException e10) {
            SQLiteDebug.collectLastIOTraceStats(sQLiteConnection);
            sQLiteConnection.dispose(false);
            throw e10;
        }
    }

    private void recyclePreparedStatement(PreparedStatement preparedStatement) {
        preparedStatement.mSql = null;
        preparedStatement.mPoolNext = this.mPreparedStatementPool;
        this.mPreparedStatementPool = preparedStatement;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetStatement(PreparedStatement preparedStatement, boolean z10) {
        nativeResetStatement(this.mConnectionPtr, preparedStatement.getPtr(), z10);
    }

    private void setCheckpointStrategy() {
        if (!this.mConfiguration.isInMemoryDb() && !this.mIsReadOnlyConnection) {
            if (this.mConfiguration.customWALHookEnabled) {
                nativeSetWalHook(this.mConnectionPtr);
            } else if (executeForLong("PRAGMA wal_autocheckpoint", null, null) != 100) {
                executeForLong("PRAGMA wal_autocheckpoint=100", null, null);
            }
        }
    }

    private void setCipherSpec() {
        SQLiteCipherSpec sQLiteCipherSpec = this.mCipher;
        if (sQLiteCipherSpec != null) {
            if (sQLiteCipherSpec.cipher != null) {
                execute("PRAGMA cipher=" + DatabaseUtils.sqlEscapeString(this.mCipher.cipher), null, null);
            }
            if (this.mCipher.kdfIteration != 0) {
                execute("PRAGMA kdf_iter=" + this.mCipher.kdfIteration, null, null);
            }
            execute("PRAGMA cipher_use_hmac=" + this.mCipher.hmacEnabled, null, null);
        }
    }

    private void setForeignKeyModeFromConfiguration() {
        long j10;
        if (!this.mIsReadOnlyConnection) {
            if (this.mConfiguration.foreignKeyConstraintsEnabled) {
                j10 = 1;
            } else {
                j10 = 0;
            }
            if (executeForLong("PRAGMA foreign_keys", null, null) != j10) {
                execute("PRAGMA foreign_keys=" + j10, null, null);
            }
        }
    }

    private void setJournalMode(String str) {
        String executeForString = executeForString("PRAGMA journal_mode", null, null);
        if (!executeForString.equalsIgnoreCase(str)) {
            try {
                if (executeForString("PRAGMA journal_mode=" + str, null, null).equalsIgnoreCase(str)) {
                    return;
                }
            } catch (SQLiteDatabaseLockedException unused) {
            }
            Log.w(TAG, "Could not change the database journal mode of '" + this.mConfiguration.label + "' from '" + executeForString + "' to '" + str + "' because the database is locked.  This usually means that there are other open connections to the database which prevents the database from enabling or disabling write-ahead logging mode.  Proceeding without changing the journal mode.");
        }
    }

    private void setJournalSizeLimit() {
        if (!this.mConfiguration.isInMemoryDb() && !this.mIsReadOnlyConnection && executeForLong("PRAGMA journal_size_limit", null, null) != 524288) {
            executeForLong("PRAGMA journal_size_limit=524288", null, null);
        }
    }

    private void setLocaleFromConfiguration() {
        SQLiteDatabaseConfiguration sQLiteDatabaseConfiguration = this.mConfiguration;
        int i10 = sQLiteDatabaseConfiguration.openFlags | 16;
        sQLiteDatabaseConfiguration.openFlags = i10;
        if ((i10 & 16) != 0) {
            return;
        }
        String locale = sQLiteDatabaseConfiguration.locale.toString();
        nativeRegisterLocalizedCollators(this.mConnectionPtr, locale);
        if (this.mIsReadOnlyConnection) {
            return;
        }
        try {
            execute("CREATE TABLE IF NOT EXISTS android_metadata (locale TEXT)", null, null);
            String executeForString = executeForString("SELECT locale FROM android_metadata UNION SELECT NULL ORDER BY locale DESC LIMIT 1", null, null);
            if (executeForString != null && executeForString.equals(locale)) {
                return;
            }
            execute("BEGIN", null, null);
            execute("DELETE FROM android_metadata", null, null);
            execute("INSERT INTO android_metadata (locale) VALUES(?)", new Object[]{locale}, null);
            execute("REINDEX LOCALIZED", null, null);
            execute("COMMIT", null, null);
        } catch (RuntimeException e10) {
            throw new SQLiteException("Failed to change locale for db '" + this.mConfiguration.label + "' to '" + locale + "'.", e10);
        }
    }

    private void setPageSize() {
        long j10;
        String str;
        int i10;
        if (!this.mConfiguration.isInMemoryDb()) {
            if (this.mPassword != null) {
                SQLiteCipherSpec sQLiteCipherSpec = this.mCipher;
                if (sQLiteCipherSpec == null || (i10 = sQLiteCipherSpec.pageSize) <= 0) {
                    i10 = SQLiteGlobal.defaultPageSize;
                }
                j10 = i10;
                str = "PRAGMA cipher_page_size";
            } else {
                j10 = SQLiteGlobal.defaultPageSize;
                str = "PRAGMA page_size";
            }
            if (executeForLong(str, null, null) != j10) {
                execute(str + ContainerUtils.KEY_VALUE_DELIMITER + j10, null, null);
            }
        }
    }

    private void setReadOnlyFromConfiguration() {
        if (this.mIsReadOnlyConnection) {
            execute("PRAGMA query_only = 1", null, null);
        }
    }

    private void setSyncModeFromConfiguration() {
        int i10 = this.mConfiguration.synchronousMode;
        execute("PRAGMA synchronous=" + i10, null, null);
    }

    private void setUpdateNotificationFromConfiguration() {
        long j10 = this.mConnectionPtr;
        SQLiteDatabaseConfiguration sQLiteDatabaseConfiguration = this.mConfiguration;
        nativeSetUpdateNotification(j10, sQLiteDatabaseConfiguration.updateNotificationEnabled, sQLiteDatabaseConfiguration.updateNotificationRowID);
    }

    private void setWalModeFromConfiguration() {
        String str;
        if (!this.mConfiguration.isInMemoryDb() && !this.mIsReadOnlyConnection) {
            if ((this.mConfiguration.openFlags & 536870912) != 0) {
                str = "WAL";
            } else {
                str = SQLiteGlobal.defaultJournalMode;
            }
            setJournalMode(str);
        }
    }

    private void throwIfStatementForbidden(PreparedStatement preparedStatement) {
        if (this.mOnlyAllowReadOnlyOperations && !preparedStatement.mReadOnly) {
            throw new SQLiteException("Cannot execute this statement because it might modify the database but the connection is read-only.");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String trimSqlForDisplay(String str) {
        return TRIM_SQL_PATTERN.matcher(str).replaceAll(" ");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PreparedStatement acquirePreparedStatement(String str) {
        boolean z10;
        PreparedStatement preparedStatement = this.mPreparedStatementCache.get(str);
        if (preparedStatement != null) {
            if (!preparedStatement.mInUse) {
                preparedStatement.mInUse = true;
                return preparedStatement;
            }
            z10 = true;
        } else {
            z10 = false;
        }
        long nativePrepareStatement = nativePrepareStatement(this.mConnectionPtr, str);
        try {
            int nativeGetParameterCount = nativeGetParameterCount(this.mConnectionPtr, nativePrepareStatement);
            int sqlStatementType = DatabaseUtils.getSqlStatementType(str);
            preparedStatement = obtainPreparedStatement(str, nativePrepareStatement, nativeGetParameterCount, sqlStatementType, nativeIsReadOnly(this.mConnectionPtr, nativePrepareStatement));
            if (!z10 && isCacheable(sqlStatementType)) {
                this.mPreparedStatementCache.put(str, preparedStatement);
                preparedStatement.mInCache = true;
            }
            preparedStatement.mInUse = true;
            return preparedStatement;
        } catch (RuntimeException e10) {
            if (preparedStatement == null || !preparedStatement.mInCache) {
                nativeFinalizeStatement(this.mConnectionPtr, nativePrepareStatement);
            }
            throw e10;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void close() {
        dispose(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0043 A[Catch: all -> 0x0081, SQLiteException -> 0x00ca, TRY_LEAVE, TryCatch #1 {all -> 0x0081, blocks: (B:9:0x002e, B:10:0x003d, B:12:0x0043, B:13:0x004c, B:14:0x0064, B:20:0x0088, B:22:0x009f, B:23:0x00b3), top: B:34:0x002e }] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x009f A[Catch: all -> 0x0081, SQLiteException -> 0x00ca, TryCatch #1 {all -> 0x0081, blocks: (B:9:0x002e, B:10:0x003d, B:12:0x0043, B:13:0x004c, B:14:0x0064, B:20:0x0088, B:22:0x009f, B:23:0x00b3), top: B:34:0x002e }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void collectDbStats(java.util.ArrayList<com.tencent.wcdb.database.SQLiteDebug.DbStats> r26) {
        /*
            r25 = this;
            r9 = r25
            r0 = r26
            java.lang.String r10 = "PRAGMA "
            long r1 = r9.mConnectionPtr
            int r2 = nativeGetDbLookaside(r1)
            r11 = 0
            r12 = 0
            java.lang.String r1 = "PRAGMA page_count;"
            long r3 = r9.executeForLong(r1, r11, r11)     // Catch: com.tencent.wcdb.database.SQLiteException -> L1c
            java.lang.String r1 = "PRAGMA page_size;"
            long r5 = r9.executeForLong(r1, r11, r11)     // Catch: com.tencent.wcdb.database.SQLiteException -> L1d
            goto L1e
        L1c:
            r3 = r12
        L1d:
            r5 = r12
        L1e:
            r1 = r25
            com.tencent.wcdb.database.SQLiteDebug$DbStats r1 = r1.getMainDbStatsUnsafe(r2, r3, r5)
            r0.add(r1)
            com.tencent.wcdb.CursorWindow r14 = new com.tencent.wcdb.CursorWindow
            java.lang.String r1 = "collectDbStats"
            r14.<init>(r1)
            java.lang.String r2 = "PRAGMA database_list;"
            r7 = 0
            r8 = 0
            r3 = 0
            r5 = 0
            r6 = 0
            r1 = r25
            r4 = r14
            r1.executeForCursorWindow(r2, r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> L81 com.tencent.wcdb.database.SQLiteException -> Lca
            r1 = 1
            r2 = r1
        L3d:
            int r3 = r14.getNumRows()     // Catch: java.lang.Throwable -> L81 com.tencent.wcdb.database.SQLiteException -> Lca
            if (r2 >= r3) goto Lca
            java.lang.String r3 = r14.getString(r2, r1)     // Catch: java.lang.Throwable -> L81 com.tencent.wcdb.database.SQLiteException -> Lca
            r4 = 2
            java.lang.String r4 = r14.getString(r2, r4)     // Catch: java.lang.Throwable -> L81 com.tencent.wcdb.database.SQLiteException -> Lca
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L81 com.tencent.wcdb.database.SQLiteException -> L83
            r5.<init>()     // Catch: java.lang.Throwable -> L81 com.tencent.wcdb.database.SQLiteException -> L83
            r5.append(r10)     // Catch: java.lang.Throwable -> L81 com.tencent.wcdb.database.SQLiteException -> L83
            r5.append(r3)     // Catch: java.lang.Throwable -> L81 com.tencent.wcdb.database.SQLiteException -> L83
            java.lang.String r6 = ".page_count;"
            r5.append(r6)     // Catch: java.lang.Throwable -> L81 com.tencent.wcdb.database.SQLiteException -> L83
            java.lang.String r5 = r5.toString()     // Catch: java.lang.Throwable -> L81 com.tencent.wcdb.database.SQLiteException -> L83
            long r5 = r9.executeForLong(r5, r11, r11)     // Catch: java.lang.Throwable -> L81 com.tencent.wcdb.database.SQLiteException -> L83
            java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L81 com.tencent.wcdb.database.SQLiteException -> L84
            r7.<init>()     // Catch: java.lang.Throwable -> L81 com.tencent.wcdb.database.SQLiteException -> L84
            r7.append(r10)     // Catch: java.lang.Throwable -> L81 com.tencent.wcdb.database.SQLiteException -> L84
            r7.append(r3)     // Catch: java.lang.Throwable -> L81 com.tencent.wcdb.database.SQLiteException -> L84
            java.lang.String r8 = ".page_size;"
            r7.append(r8)     // Catch: java.lang.Throwable -> L81 com.tencent.wcdb.database.SQLiteException -> L84
            java.lang.String r7 = r7.toString()     // Catch: java.lang.Throwable -> L81 com.tencent.wcdb.database.SQLiteException -> L84
            long r7 = r9.executeForLong(r7, r11, r11)     // Catch: java.lang.Throwable -> L81 com.tencent.wcdb.database.SQLiteException -> L84
            r17 = r5
            r19 = r7
            goto L88
        L81:
            r0 = move-exception
            goto Lce
        L83:
            r5 = r12
        L84:
            r17 = r5
            r19 = r12
        L88:
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L81 com.tencent.wcdb.database.SQLiteException -> Lca
            r5.<init>()     // Catch: java.lang.Throwable -> L81 com.tencent.wcdb.database.SQLiteException -> Lca
            java.lang.String r6 = "  (attached) "
            r5.append(r6)     // Catch: java.lang.Throwable -> L81 com.tencent.wcdb.database.SQLiteException -> Lca
            r5.append(r3)     // Catch: java.lang.Throwable -> L81 com.tencent.wcdb.database.SQLiteException -> Lca
            java.lang.String r3 = r5.toString()     // Catch: java.lang.Throwable -> L81 com.tencent.wcdb.database.SQLiteException -> Lca
            int r5 = r4.length()     // Catch: java.lang.Throwable -> L81 com.tencent.wcdb.database.SQLiteException -> Lca
            if (r5 == 0) goto Lb3
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L81 com.tencent.wcdb.database.SQLiteException -> Lca
            r5.<init>()     // Catch: java.lang.Throwable -> L81 com.tencent.wcdb.database.SQLiteException -> Lca
            r5.append(r3)     // Catch: java.lang.Throwable -> L81 com.tencent.wcdb.database.SQLiteException -> Lca
            java.lang.String r3 = ": "
            r5.append(r3)     // Catch: java.lang.Throwable -> L81 com.tencent.wcdb.database.SQLiteException -> Lca
            r5.append(r4)     // Catch: java.lang.Throwable -> L81 com.tencent.wcdb.database.SQLiteException -> Lca
            java.lang.String r3 = r5.toString()     // Catch: java.lang.Throwable -> L81 com.tencent.wcdb.database.SQLiteException -> Lca
        Lb3:
            r16 = r3
            com.tencent.wcdb.database.SQLiteDebug$DbStats r3 = new com.tencent.wcdb.database.SQLiteDebug$DbStats     // Catch: java.lang.Throwable -> L81 com.tencent.wcdb.database.SQLiteException -> Lca
            r23 = 0
            r24 = 0
            r21 = 0
            r22 = 0
            r15 = r3
            r15.<init>(r16, r17, r19, r21, r22, r23, r24)     // Catch: java.lang.Throwable -> L81 com.tencent.wcdb.database.SQLiteException -> Lca
            r0.add(r3)     // Catch: java.lang.Throwable -> L81 com.tencent.wcdb.database.SQLiteException -> Lca
            int r2 = r2 + 1
            goto L3d
        Lca:
            r14.close()
            goto Ld2
        Lce:
            r14.close()
            throw r0
        Ld2:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.wcdb.database.SQLiteConnection.collectDbStats(java.util.ArrayList):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void collectDbStatsUnsafe(ArrayList<SQLiteDebug.DbStats> arrayList) {
        arrayList.add(getMainDbStatsUnsafe(0, 0L, 0L));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String describeCurrentOperationUnsafe() {
        return this.mRecentOperations.describeCurrentOperation();
    }

    public void dump(Printer printer, boolean z10) {
        dumpUnsafe(printer, z10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void dumpUnsafe(Printer printer, boolean z10) {
        printer.println("Connection #" + this.mConnectionId + ":");
        if (z10) {
            printer.println("  connectionPtr: 0x" + Long.toHexString(this.mConnectionPtr));
        }
        printer.println("  isPrimaryConnection: " + this.mIsPrimaryConnection);
        printer.println("  onlyAllowReadOnlyOperations: " + this.mOnlyAllowReadOnlyOperations);
        if (this.mAcquiredThread != null) {
            printer.println("  acquiredThread: " + this.mAcquiredThread + " (tid: " + this.mAcquiredTid + ")");
        }
        this.mRecentOperations.dump(printer, z10);
        if (z10) {
            this.mPreparedStatementCache.dump(printer);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void endNativeHandle(Exception exc) {
        int i10 = this.mNativeHandleCount - 1;
        this.mNativeHandleCount = i10;
        if (i10 == 0 && this.mNativeOperation != null) {
            nativeSQLiteHandle(this.mConnectionPtr, false);
            if (exc == null) {
                this.mRecentOperations.endOperationDeferLog(this.mNativeOperation.mCookie);
            } else {
                this.mRecentOperations.failOperation(this.mNativeOperation.mCookie, exc);
            }
            this.mNativeOperation = null;
        }
    }

    public void execute(String str, Object[] objArr, CancellationSignal cancellationSignal) {
        SQLiteConnectionPool sQLiteConnectionPool;
        if (str != null) {
            Operation beginOperation = this.mRecentOperations.beginOperation("execute", str, objArr);
            int i10 = beginOperation.mCookie;
            try {
                try {
                    PreparedStatement acquirePreparedStatement = acquirePreparedStatement(str);
                    beginOperation.mType = acquirePreparedStatement.mType;
                    try {
                        throwIfStatementForbidden(acquirePreparedStatement);
                        bindArguments(acquirePreparedStatement, objArr);
                        applyBlockGuardPolicy(acquirePreparedStatement);
                        attachCancellationSignal(cancellationSignal);
                        nativeExecute(this.mConnectionPtr, acquirePreparedStatement.getPtr());
                        detachCancellationSignal(cancellationSignal);
                        return;
                    } finally {
                        releasePreparedStatement(acquirePreparedStatement);
                    }
                } catch (RuntimeException e10) {
                    if (((e10 instanceof SQLiteDatabaseLockedException) || (e10 instanceof SQLiteTableLockedException)) && (sQLiteConnectionPool = this.mPool) != null) {
                        sQLiteConnectionPool.logConnectionPoolBusy(str);
                    }
                    this.mRecentOperations.failOperation(i10, e10);
                    throw e10;
                }
            } finally {
                this.mRecentOperations.endOperation(i10);
            }
        }
        throw new IllegalArgumentException("sql must not be null.");
    }

    public int executeForChangedRowCount(String str, Object[] objArr, CancellationSignal cancellationSignal) {
        SQLiteConnectionPool sQLiteConnectionPool;
        if (str != null) {
            Operation beginOperation = this.mRecentOperations.beginOperation("executeForChangedRowCount", str, objArr);
            int i10 = beginOperation.mCookie;
            try {
                try {
                    PreparedStatement acquirePreparedStatement = acquirePreparedStatement(str);
                    beginOperation.mType = acquirePreparedStatement.mType;
                    try {
                        throwIfStatementForbidden(acquirePreparedStatement);
                        bindArguments(acquirePreparedStatement, objArr);
                        applyBlockGuardPolicy(acquirePreparedStatement);
                        attachCancellationSignal(cancellationSignal);
                        int nativeExecuteForChangedRowCount = nativeExecuteForChangedRowCount(this.mConnectionPtr, acquirePreparedStatement.getPtr());
                        detachCancellationSignal(cancellationSignal);
                        if (this.mRecentOperations.endOperationDeferLog(i10)) {
                            OperationLog operationLog = this.mRecentOperations;
                            operationLog.logOperation(i10, "changedRows=" + nativeExecuteForChangedRowCount);
                        }
                        return nativeExecuteForChangedRowCount;
                    } finally {
                        releasePreparedStatement(acquirePreparedStatement);
                    }
                } catch (RuntimeException e10) {
                    if (((e10 instanceof SQLiteDatabaseLockedException) || (e10 instanceof SQLiteTableLockedException)) && (sQLiteConnectionPool = this.mPool) != null) {
                        sQLiteConnectionPool.logConnectionPoolBusy(str);
                    }
                    this.mRecentOperations.failOperation(i10, e10);
                    throw e10;
                }
            } catch (Throwable th2) {
                if (this.mRecentOperations.endOperationDeferLog(i10)) {
                    OperationLog operationLog2 = this.mRecentOperations;
                    operationLog2.logOperation(i10, "changedRows=0");
                }
                throw th2;
            }
        }
        throw new IllegalArgumentException("sql must not be null.");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r5v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r8v0, types: [java.lang.String] */
    public int executeForCursorWindow(String str, Object[] objArr, CursorWindow cursorWindow, int i10, int i11, boolean z10, CancellationSignal cancellationSignal) {
        String str2;
        int i12;
        int i13;
        int i14;
        int i15;
        SQLiteConnectionPool sQLiteConnectionPool;
        PreparedStatement preparedStatement;
        int i16;
        int numRows;
        String str3 = ", countedRows=";
        String str4 = ", filledRows=";
        String str5 = ", actualPos=";
        String str6 = "', startPos=";
        ?? r82 = "window='";
        if (str != null) {
            if (cursorWindow != null) {
                cursorWindow.acquireReference();
                try {
                    ?? r52 = "executeForCursorWindow";
                    Operation beginOperation = this.mRecentOperations.beginOperation("executeForCursorWindow", str, objArr);
                    int i17 = beginOperation.mCookie;
                    try {
                        try {
                            PreparedStatement acquirePreparedStatement = acquirePreparedStatement(str);
                            beginOperation.mType = acquirePreparedStatement.mType;
                            try {
                                throwIfStatementForbidden(acquirePreparedStatement);
                                bindArguments(acquirePreparedStatement, objArr);
                                applyBlockGuardPolicy(acquirePreparedStatement);
                                attachCancellationSignal(cancellationSignal);
                                try {
                                } catch (Throwable th2) {
                                    th = th2;
                                    preparedStatement = acquirePreparedStatement;
                                }
                            } catch (Throwable th3) {
                                th = th3;
                                preparedStatement = acquirePreparedStatement;
                            }
                            try {
                                preparedStatement = acquirePreparedStatement;
                                str3 = "window='";
                                try {
                                    long nativeExecuteForCursorWindow = nativeExecuteForCursorWindow(this.mConnectionPtr, acquirePreparedStatement.getPtr(), cursorWindow.mWindowPtr, i10, i11, z10);
                                    i15 = (int) (nativeExecuteForCursorWindow >> 32);
                                    i16 = (int) nativeExecuteForCursorWindow;
                                    try {
                                        numRows = cursorWindow.getNumRows();
                                        try {
                                            cursorWindow.setStartPosition(i15);
                                            try {
                                                detachCancellationSignal(cancellationSignal);
                                            } catch (Throwable th4) {
                                                th = th4;
                                                i17 = i17;
                                                try {
                                                    releasePreparedStatement(preparedStatement);
                                                    throw th;
                                                } catch (RuntimeException e10) {
                                                    e = e10;
                                                    if ((!(e instanceof SQLiteDatabaseLockedException) || (e instanceof SQLiteTableLockedException)) && (sQLiteConnectionPool = this.mPool) != null) {
                                                        sQLiteConnectionPool.logConnectionPoolBusy(str);
                                                    }
                                                    this.mRecentOperations.failOperation(i17, e);
                                                    throw e;
                                                }
                                            }
                                        } catch (Throwable th5) {
                                            th = th5;
                                            i17 = i17;
                                            try {
                                                detachCancellationSignal(cancellationSignal);
                                                throw th;
                                            } catch (Throwable th6) {
                                                th = th6;
                                                releasePreparedStatement(preparedStatement);
                                                throw th;
                                            }
                                        }
                                    } catch (Throwable th7) {
                                        th = th7;
                                        i17 = i17;
                                    }
                                } catch (Throwable th8) {
                                    th = th8;
                                    i17 = i17;
                                    detachCancellationSignal(cancellationSignal);
                                    throw th;
                                }
                            } catch (Throwable th9) {
                                th = th9;
                                preparedStatement = acquirePreparedStatement;
                                i17 = i17;
                            }
                        } catch (Throwable th10) {
                            th = th10;
                            i15 = -1;
                            i13 = beginOperation;
                            i14 = r52;
                            i12 = r82;
                        }
                    } catch (RuntimeException e11) {
                        e = e11;
                    } catch (Throwable th11) {
                        th = th11;
                        str2 = "', startPos=";
                        str6 = ", actualPos=";
                        str5 = ", filledRows=";
                        str4 = ", countedRows=";
                        str3 = "window='";
                        i12 = i10;
                        i13 = -1;
                        i14 = -1;
                        i15 = -1;
                    }
                    try {
                        releasePreparedStatement(preparedStatement);
                        if (this.mRecentOperations.endOperationDeferLog(i17)) {
                            this.mRecentOperations.logOperation(i17, str3 + cursorWindow + "', startPos=" + i10 + ", actualPos=" + i15 + ", filledRows=" + numRows + ", countedRows=" + i16);
                        }
                        return i16;
                    } catch (RuntimeException e12) {
                        e = e12;
                        i17 = i17;
                        if (!(e instanceof SQLiteDatabaseLockedException)) {
                        }
                        sQLiteConnectionPool.logConnectionPoolBusy(str);
                        this.mRecentOperations.failOperation(i17, e);
                        throw e;
                    } catch (Throwable th12) {
                        th = th12;
                        i12 = i10;
                        i17 = i17;
                        str4 = ", countedRows=";
                        str2 = "', startPos=";
                        str6 = ", actualPos=";
                        str5 = ", filledRows=";
                        i13 = i16;
                        i14 = numRows;
                        if (this.mRecentOperations.endOperationDeferLog(i17)) {
                            this.mRecentOperations.logOperation(i17, str3 + cursorWindow + str2 + i12 + str6 + i15 + str5 + i14 + str4 + i13);
                        }
                        throw th;
                    }
                } finally {
                    cursorWindow.releaseReference();
                }
            }
            throw new IllegalArgumentException("window must not be null.");
        }
        throw new IllegalArgumentException("sql must not be null.");
    }

    public long executeForLastInsertedRowId(String str, Object[] objArr, CancellationSignal cancellationSignal) {
        SQLiteConnectionPool sQLiteConnectionPool;
        if (str != null) {
            Operation beginOperation = this.mRecentOperations.beginOperation("executeForLastInsertedRowId", str, objArr);
            int i10 = beginOperation.mCookie;
            try {
                try {
                    PreparedStatement acquirePreparedStatement = acquirePreparedStatement(str);
                    beginOperation.mType = acquirePreparedStatement.mType;
                    try {
                        throwIfStatementForbidden(acquirePreparedStatement);
                        bindArguments(acquirePreparedStatement, objArr);
                        applyBlockGuardPolicy(acquirePreparedStatement);
                        attachCancellationSignal(cancellationSignal);
                        long nativeExecuteForLastInsertedRowId = nativeExecuteForLastInsertedRowId(this.mConnectionPtr, acquirePreparedStatement.getPtr());
                        detachCancellationSignal(cancellationSignal);
                        return nativeExecuteForLastInsertedRowId;
                    } finally {
                        releasePreparedStatement(acquirePreparedStatement);
                    }
                } catch (RuntimeException e10) {
                    if (((e10 instanceof SQLiteDatabaseLockedException) || (e10 instanceof SQLiteTableLockedException)) && (sQLiteConnectionPool = this.mPool) != null) {
                        sQLiteConnectionPool.logConnectionPoolBusy(str);
                    }
                    this.mRecentOperations.failOperation(i10, e10);
                    throw e10;
                }
            } finally {
                this.mRecentOperations.endOperation(i10);
            }
        }
        throw new IllegalArgumentException("sql must not be null.");
    }

    public long executeForLong(String str, Object[] objArr, CancellationSignal cancellationSignal) {
        SQLiteConnectionPool sQLiteConnectionPool;
        if (str != null) {
            Operation beginOperation = this.mRecentOperations.beginOperation("executeForLong", str, objArr);
            int i10 = beginOperation.mCookie;
            try {
                try {
                    PreparedStatement acquirePreparedStatement = acquirePreparedStatement(str);
                    beginOperation.mType = acquirePreparedStatement.mType;
                    try {
                        throwIfStatementForbidden(acquirePreparedStatement);
                        bindArguments(acquirePreparedStatement, objArr);
                        applyBlockGuardPolicy(acquirePreparedStatement);
                        attachCancellationSignal(cancellationSignal);
                        long nativeExecuteForLong = nativeExecuteForLong(this.mConnectionPtr, acquirePreparedStatement.getPtr());
                        detachCancellationSignal(cancellationSignal);
                        return nativeExecuteForLong;
                    } finally {
                        releasePreparedStatement(acquirePreparedStatement);
                    }
                } catch (RuntimeException e10) {
                    if (((e10 instanceof SQLiteDatabaseLockedException) || (e10 instanceof SQLiteTableLockedException)) && (sQLiteConnectionPool = this.mPool) != null) {
                        sQLiteConnectionPool.logConnectionPoolBusy(str);
                    }
                    this.mRecentOperations.failOperation(i10, e10);
                    throw e10;
                }
            } finally {
                this.mRecentOperations.endOperation(i10);
            }
        }
        throw new IllegalArgumentException("sql must not be null.");
    }

    public String executeForString(String str, Object[] objArr, CancellationSignal cancellationSignal) {
        SQLiteConnectionPool sQLiteConnectionPool;
        if (str != null) {
            Operation beginOperation = this.mRecentOperations.beginOperation("executeForString", str, objArr);
            int i10 = beginOperation.mCookie;
            try {
                try {
                    PreparedStatement acquirePreparedStatement = acquirePreparedStatement(str);
                    beginOperation.mType = acquirePreparedStatement.mType;
                    try {
                        throwIfStatementForbidden(acquirePreparedStatement);
                        bindArguments(acquirePreparedStatement, objArr);
                        applyBlockGuardPolicy(acquirePreparedStatement);
                        attachCancellationSignal(cancellationSignal);
                        String nativeExecuteForString = nativeExecuteForString(this.mConnectionPtr, acquirePreparedStatement.getPtr());
                        detachCancellationSignal(cancellationSignal);
                        return nativeExecuteForString;
                    } finally {
                        releasePreparedStatement(acquirePreparedStatement);
                    }
                } catch (RuntimeException e10) {
                    if (((e10 instanceof SQLiteDatabaseLockedException) || (e10 instanceof SQLiteTableLockedException)) && (sQLiteConnectionPool = this.mPool) != null) {
                        sQLiteConnectionPool.logConnectionPoolBusy(str);
                    }
                    this.mRecentOperations.failOperation(i10, e10);
                    throw e10;
                }
            } finally {
                this.mRecentOperations.endOperation(i10);
            }
        }
        throw new IllegalArgumentException("sql must not be null.");
    }

    protected void finalize() throws Throwable {
        try {
            SQLiteConnectionPool sQLiteConnectionPool = this.mPool;
            if (sQLiteConnectionPool != null && this.mConnectionPtr != 0) {
                sQLiteConnectionPool.onConnectionLeaked();
            }
            dispose(true);
            super.finalize();
        } catch (Throwable th2) {
            super.finalize();
            throw th2;
        }
    }

    public int getConnectionId() {
        return this.mConnectionId;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long getNativeHandle(String str) {
        if (this.mConnectionPtr == 0) {
            return 0L;
        }
        if (str != null && this.mNativeOperation == null) {
            Operation beginOperation = this.mRecentOperations.beginOperation(str, null, null);
            this.mNativeOperation = beginOperation;
            beginOperation.mType = 99;
        }
        this.mNativeHandleCount++;
        return nativeSQLiteHandle(this.mConnectionPtr, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isPreparedStatementInCache(String str) {
        if (this.mPreparedStatementCache.get(str) != null) {
            return true;
        }
        return false;
    }

    public boolean isPrimaryConnection() {
        return this.mIsPrimaryConnection;
    }

    @Override // com.tencent.wcdb.support.CancellationSignal.OnCancelListener
    public void onCancel() {
        nativeCancel(this.mConnectionPtr);
    }

    public void prepare(String str, SQLiteStatementInfo sQLiteStatementInfo) {
        SQLiteConnectionPool sQLiteConnectionPool;
        if (str != null) {
            Operation beginOperation = this.mRecentOperations.beginOperation("prepare", str, null);
            int i10 = beginOperation.mCookie;
            try {
                try {
                    PreparedStatement acquirePreparedStatement = acquirePreparedStatement(str);
                    beginOperation.mType = acquirePreparedStatement.mType;
                    if (sQLiteStatementInfo != null) {
                        try {
                            sQLiteStatementInfo.numParameters = acquirePreparedStatement.mNumParameters;
                            sQLiteStatementInfo.readOnly = acquirePreparedStatement.mReadOnly;
                            int nativeGetColumnCount = nativeGetColumnCount(this.mConnectionPtr, acquirePreparedStatement.getPtr());
                            if (nativeGetColumnCount == 0) {
                                sQLiteStatementInfo.columnNames = EMPTY_STRING_ARRAY;
                            } else {
                                sQLiteStatementInfo.columnNames = new String[nativeGetColumnCount];
                                for (int i11 = 0; i11 < nativeGetColumnCount; i11++) {
                                    sQLiteStatementInfo.columnNames[i11] = nativeGetColumnName(this.mConnectionPtr, acquirePreparedStatement.getPtr(), i11);
                                }
                            }
                        } catch (Throwable th2) {
                            releasePreparedStatement(acquirePreparedStatement);
                            throw th2;
                        }
                    }
                    releasePreparedStatement(acquirePreparedStatement);
                    this.mRecentOperations.endOperation(i10);
                    return;
                } catch (RuntimeException e10) {
                    if (((e10 instanceof SQLiteDatabaseLockedException) || (e10 instanceof SQLiteTableLockedException)) && (sQLiteConnectionPool = this.mPool) != null) {
                        sQLiteConnectionPool.logConnectionPoolBusy(str);
                    }
                    this.mRecentOperations.failOperation(i10, e10);
                    throw e10;
                }
            } catch (Throwable th3) {
                this.mRecentOperations.endOperation(i10);
                throw th3;
            }
        }
        throw new IllegalArgumentException("sql must not be null.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void reconfigure(SQLiteDatabaseConfiguration sQLiteDatabaseConfiguration) {
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        boolean z14 = false;
        this.mOnlyAllowReadOnlyOperations = false;
        int size = sQLiteDatabaseConfiguration.customFunctions.size();
        for (int i10 = 0; i10 < size; i10++) {
            SQLiteCustomFunction sQLiteCustomFunction = sQLiteDatabaseConfiguration.customFunctions.get(i10);
            if (!this.mConfiguration.customFunctions.contains(sQLiteCustomFunction)) {
                nativeRegisterCustomFunction(this.mConnectionPtr, sQLiteCustomFunction);
            }
        }
        int i11 = sQLiteDatabaseConfiguration.openFlags;
        SQLiteDatabaseConfiguration sQLiteDatabaseConfiguration2 = this.mConfiguration;
        if (((i11 ^ sQLiteDatabaseConfiguration2.openFlags) & 536870912) != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (sQLiteDatabaseConfiguration.foreignKeyConstraintsEnabled != sQLiteDatabaseConfiguration2.foreignKeyConstraintsEnabled) {
            z11 = true;
        } else {
            z11 = false;
        }
        boolean equals = sQLiteDatabaseConfiguration.locale.equals(sQLiteDatabaseConfiguration2.locale);
        boolean z15 = sQLiteDatabaseConfiguration.customWALHookEnabled;
        SQLiteDatabaseConfiguration sQLiteDatabaseConfiguration3 = this.mConfiguration;
        if (z15 != sQLiteDatabaseConfiguration3.customWALHookEnabled) {
            z12 = true;
        } else {
            z12 = false;
        }
        if (sQLiteDatabaseConfiguration.synchronousMode != sQLiteDatabaseConfiguration3.synchronousMode) {
            z13 = true;
        } else {
            z13 = false;
        }
        z14 = (sQLiteDatabaseConfiguration.updateNotificationEnabled == sQLiteDatabaseConfiguration3.updateNotificationEnabled && sQLiteDatabaseConfiguration.updateNotificationRowID == sQLiteDatabaseConfiguration3.updateNotificationRowID) ? true : true;
        sQLiteDatabaseConfiguration3.updateParametersFrom(sQLiteDatabaseConfiguration);
        this.mPreparedStatementCache.resize(sQLiteDatabaseConfiguration.maxSqlCacheSize);
        if (z11) {
            setForeignKeyModeFromConfiguration();
        }
        if (z10) {
            setWalModeFromConfiguration();
        }
        if (z13) {
            setSyncModeFromConfiguration();
        }
        if (z12) {
            setCheckpointStrategy();
        }
        if (!equals) {
            setLocaleFromConfiguration();
        }
        if (z14) {
            setUpdateNotificationFromConfiguration();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void releasePreparedStatement(PreparedStatement preparedStatement) {
        preparedStatement.mInUse = false;
        if (preparedStatement.mInCache) {
            try {
                resetStatement(preparedStatement, true);
                return;
            } catch (SQLiteException unused) {
                this.mPreparedStatementCache.remove(preparedStatement.mSql);
                return;
            }
        }
        finalizePreparedStatement(preparedStatement);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setAcquisitionState(Thread thread, int i10) {
        this.mAcquiredThread = thread;
        this.mAcquiredTid = i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setOnlyAllowReadOnlyOperations(boolean z10) {
        this.mOnlyAllowReadOnlyOperations = z10;
    }

    public String toString() {
        return "SQLiteConnection: " + this.mConfiguration.path + " (" + this.mConnectionId + ")";
    }

    public Pair<Integer, Integer> walCheckpoint(String str) {
        long nativeWalCheckpoint = nativeWalCheckpoint(this.mConnectionPtr, (str == null || str.isEmpty()) ? "main" : "main");
        return new Pair<>(Integer.valueOf((int) (nativeWalCheckpoint >> 32)), Integer.valueOf((int) (nativeWalCheckpoint & 4294967295L)));
    }

    private void open() {
        SQLiteDatabaseConfiguration sQLiteDatabaseConfiguration = this.mConfiguration;
        long nativeOpen = nativeOpen(sQLiteDatabaseConfiguration.path, sQLiteDatabaseConfiguration.openFlags, sQLiteDatabaseConfiguration.vfsName);
        this.mConnectionPtr = nativeOpen;
        byte[] bArr = this.mPassword;
        if (bArr != null && bArr.length == 0) {
            this.mPassword = null;
        }
        byte[] bArr2 = this.mPassword;
        if (bArr2 != null) {
            nativeSetKey(nativeOpen, bArr2);
            setCipherSpec();
        }
        setPageSize();
        setReadOnlyFromConfiguration();
        setForeignKeyModeFromConfiguration();
        setWalModeFromConfiguration();
        setSyncModeFromConfiguration();
        setJournalSizeLimit();
        setCheckpointStrategy();
        setLocaleFromConfiguration();
        setUpdateNotificationFromConfiguration();
        int size = this.mConfiguration.customFunctions.size();
        for (int i10 = 0; i10 < size; i10++) {
            nativeRegisterCustomFunction(this.mConnectionPtr, this.mConfiguration.customFunctions.get(i10));
        }
    }

    private void applyBlockGuardPolicy(PreparedStatement preparedStatement) {
    }
}
