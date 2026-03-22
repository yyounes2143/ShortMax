package com.tencent.wcdb.database;

import android.os.SystemClock;
import android.util.Printer;
import com.tencent.wcdb.database.SQLiteDebug;
import com.tencent.wcdb.support.CancellationSignal;
import com.tencent.wcdb.support.Log;
import com.tencent.wcdb.support.OperationCanceledException;
import com.tencent.wcdb.support.PrefixPrinter;
import java.io.Closeable;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.LockSupport;
/* loaded from: classes7.dex */
public final class SQLiteConnectionPool implements Closeable {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final int CONNECTION_FLAG_INTERACTIVE = 4;
    public static final int CONNECTION_FLAG_PRIMARY_CONNECTION_AFFINITY = 2;
    public static final int CONNECTION_FLAG_READ_ONLY = 1;
    private static final long CONNECTION_POOL_BUSY_MILLIS = 3000;
    private static final int OPEN_FLAG_REOPEN_MASK = 268435473;
    private static final String TAG = "WCDB.SQLiteConnectionPool";
    private SQLiteConnection mAvailablePrimaryConnection;
    private volatile SQLiteChangeListener mChangeListener;
    private volatile SQLiteCheckpointListener mCheckpointListener;
    private SQLiteCipherSpec mCipher;
    private final SQLiteDatabaseConfiguration mConfiguration;
    private ConnectionWaiter mConnectionWaiterPool;
    private ConnectionWaiter mConnectionWaiterQueue;
    private final WeakReference<SQLiteDatabase> mDB;
    private boolean mIsOpen;
    private int mMaxConnectionPoolSize;
    private int mNextConnectionId;
    private byte[] mPassword;
    private volatile SQLiteTrace mTraceCallback;
    private final Object mLock = new Object();
    private final AtomicBoolean mConnectionLeaked = new AtomicBoolean();
    private final ArrayList<SQLiteConnection> mAvailableNonPrimaryConnections = new ArrayList<>();
    private final WeakHashMap<SQLiteConnection, AcquiredConnectionStatus> mAcquiredConnections = new WeakHashMap<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public enum AcquiredConnectionStatus {
        NORMAL,
        RECONFIGURE,
        DISCARD
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes7.dex */
    public static final class ConnectionWaiter {
        public SQLiteConnection mAssignedConnection;
        public int mConnectionFlags;
        public RuntimeException mException;
        public ConnectionWaiter mNext;
        public int mNonce;
        public int mPriority;
        public String mSql;
        public long mStartTime;
        public Thread mThread;
        public boolean mWantPrimaryConnection;

        private ConnectionWaiter() {
        }
    }

    private SQLiteConnectionPool(SQLiteDatabase sQLiteDatabase, SQLiteDatabaseConfiguration sQLiteDatabaseConfiguration, int i10) {
        this.mDB = new WeakReference<>(sQLiteDatabase);
        this.mConfiguration = new SQLiteDatabaseConfiguration(sQLiteDatabaseConfiguration);
        setMaxConnectionPoolSizeLocked(i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cancelConnectionWaiterLocked(ConnectionWaiter connectionWaiter) {
        if (connectionWaiter.mAssignedConnection == null && connectionWaiter.mException == null) {
            ConnectionWaiter connectionWaiter2 = null;
            for (ConnectionWaiter connectionWaiter3 = this.mConnectionWaiterQueue; connectionWaiter3 != connectionWaiter; connectionWaiter3 = connectionWaiter3.mNext) {
                connectionWaiter2 = connectionWaiter3;
            }
            if (connectionWaiter2 != null) {
                connectionWaiter2.mNext = connectionWaiter.mNext;
            } else {
                this.mConnectionWaiterQueue = connectionWaiter.mNext;
            }
            connectionWaiter.mException = new OperationCanceledException();
            LockSupport.unpark(connectionWaiter.mThread);
            wakeConnectionWaitersLocked();
        }
    }

    private void closeAvailableConnectionsAndLogExceptionsLocked() {
        closeAvailableNonPrimaryConnectionsAndLogExceptionsLocked();
        SQLiteConnection sQLiteConnection = this.mAvailablePrimaryConnection;
        if (sQLiteConnection != null) {
            closeConnectionAndLogExceptionsLocked(sQLiteConnection);
            this.mAvailablePrimaryConnection = null;
        }
    }

    private void closeAvailableNonPrimaryConnectionsAndLogExceptionsLocked() {
        int size = this.mAvailableNonPrimaryConnections.size();
        for (int i10 = 0; i10 < size; i10++) {
            closeConnectionAndLogExceptionsLocked(this.mAvailableNonPrimaryConnections.get(i10));
        }
        this.mAvailableNonPrimaryConnections.clear();
    }

    private void closeConnectionAndLogExceptionsLocked(SQLiteConnection sQLiteConnection) {
        try {
            sQLiteConnection.close();
        } catch (RuntimeException e10) {
            Log.e(TAG, "Failed to close connection, its fate is now in the hands of the merciful GC: " + sQLiteConnection + e10.getMessage());
        }
    }

    private void closeExcessConnectionsAndLogExceptionsLocked() {
        int size = this.mAvailableNonPrimaryConnections.size();
        while (true) {
            int i10 = size - 1;
            if (size > this.mMaxConnectionPoolSize - 1) {
                closeConnectionAndLogExceptionsLocked(this.mAvailableNonPrimaryConnections.remove(i10));
                size = i10;
            } else {
                return;
            }
        }
    }

    private void discardAcquiredConnectionsLocked() {
        markAcquiredConnectionsLocked(AcquiredConnectionStatus.DISCARD);
    }

    private void dispose(boolean z10) {
        if (!z10) {
            synchronized (this.mLock) {
                try {
                    throwIfClosedLocked();
                    this.mIsOpen = false;
                    closeAvailableConnectionsAndLogExceptionsLocked();
                    int size = this.mAcquiredConnections.size();
                    if (size != 0) {
                        Log.i(TAG, "The connection pool for " + this.mConfiguration.label + " has been closed but there are still " + size + " connections in use.  They will be closed as they are released back to the pool.");
                    }
                    wakeConnectionWaitersLocked();
                } finally {
                }
            }
        }
    }

    private void finishAcquireConnectionLocked(SQLiteConnection sQLiteConnection, int i10) {
        boolean z10;
        if ((i10 & 1) != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        try {
            sQLiteConnection.setOnlyAllowReadOnlyOperations(z10);
            this.mAcquiredConnections.put(sQLiteConnection, AcquiredConnectionStatus.NORMAL);
        } catch (RuntimeException e10) {
            Log.e(TAG, "Failed to prepare acquired connection for session, closing it: " + sQLiteConnection + ", connectionFlags=" + i10);
            closeConnectionAndLogExceptionsLocked(sQLiteConnection);
            throw e10;
        }
    }

    private static int getPriority(int i10) {
        if ((i10 & 4) != 0) {
            return 1;
        }
        return 0;
    }

    private boolean isSessionBlockingImportantConnectionWaitersLocked(boolean z10, int i10) {
        ConnectionWaiter connectionWaiter = this.mConnectionWaiterQueue;
        if (connectionWaiter != null) {
            int priority = getPriority(i10);
            while (priority <= connectionWaiter.mPriority) {
                if (!z10 && connectionWaiter.mWantPrimaryConnection) {
                    connectionWaiter = connectionWaiter.mNext;
                    if (connectionWaiter == null) {
                        return false;
                    }
                } else {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    private void logConnectionPoolBusyLocked(String str, long j10, int i10) {
        int i11;
        StringBuilder sb2 = new StringBuilder();
        if (j10 != 0) {
            Thread currentThread = Thread.currentThread();
            sb2.append("The connection pool for database '");
            sb2.append(this.mConfiguration.label);
            sb2.append("' has been unable to grant a connection to thread ");
            sb2.append(currentThread.getId());
            sb2.append(" (");
            sb2.append(currentThread.getName());
            sb2.append(") ");
            sb2.append("with flags 0x");
            sb2.append(Integer.toHexString(i10));
            sb2.append(" for ");
            sb2.append(((float) j10) * 0.001f);
            sb2.append(" seconds.\n");
        }
        ArrayList arrayList = new ArrayList();
        int i12 = 0;
        if (!this.mAcquiredConnections.isEmpty()) {
            i11 = 0;
            for (SQLiteConnection sQLiteConnection : this.mAcquiredConnections.keySet()) {
                String describeCurrentOperationUnsafe = sQLiteConnection.describeCurrentOperationUnsafe();
                if (describeCurrentOperationUnsafe != null) {
                    arrayList.add(describeCurrentOperationUnsafe);
                    i12++;
                } else {
                    i11++;
                }
            }
        } else {
            i11 = 0;
        }
        int size = this.mAvailableNonPrimaryConnections.size();
        if (this.mAvailablePrimaryConnection != null) {
            size++;
        }
        sb2.append("Connections: ");
        sb2.append(i12);
        sb2.append(" active, ");
        sb2.append(i11);
        sb2.append(" idle, ");
        sb2.append(size);
        sb2.append(" available.\n");
        if (!arrayList.isEmpty()) {
            sb2.append("\nRequests in progress:\n");
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                sb2.append("  ");
                sb2.append((String) it.next());
                sb2.append("\n");
            }
        }
        String sb3 = sb2.toString();
        Log.w(TAG, sb3);
        SQLiteDatabase sQLiteDatabase = this.mDB.get();
        if (sQLiteDatabase != null && this.mTraceCallback != null) {
            this.mTraceCallback.onConnectionPoolBusy(sQLiteDatabase, str, arrayList, sb3);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void markAcquiredConnectionsLocked(AcquiredConnectionStatus acquiredConnectionStatus) {
        if (!this.mAcquiredConnections.isEmpty()) {
            ArrayList arrayList = new ArrayList(this.mAcquiredConnections.size());
            for (Map.Entry<SQLiteConnection, AcquiredConnectionStatus> entry : this.mAcquiredConnections.entrySet()) {
                AcquiredConnectionStatus value = entry.getValue();
                if (acquiredConnectionStatus != value && value != AcquiredConnectionStatus.DISCARD) {
                    arrayList.add(entry.getKey());
                }
            }
            int size = arrayList.size();
            for (int i10 = 0; i10 < size; i10++) {
                this.mAcquiredConnections.put(arrayList.get(i10), acquiredConnectionStatus);
            }
        }
    }

    private ConnectionWaiter obtainConnectionWaiterLocked(Thread thread, long j10, int i10, boolean z10, String str, int i11) {
        ConnectionWaiter connectionWaiter = this.mConnectionWaiterPool;
        if (connectionWaiter != null) {
            this.mConnectionWaiterPool = connectionWaiter.mNext;
            connectionWaiter.mNext = null;
        } else {
            connectionWaiter = new ConnectionWaiter();
        }
        connectionWaiter.mThread = thread;
        connectionWaiter.mStartTime = j10;
        connectionWaiter.mPriority = i10;
        connectionWaiter.mWantPrimaryConnection = z10;
        connectionWaiter.mSql = str;
        connectionWaiter.mConnectionFlags = i11;
        return connectionWaiter;
    }

    public static SQLiteConnectionPool open(SQLiteDatabase sQLiteDatabase, SQLiteDatabaseConfiguration sQLiteDatabaseConfiguration, byte[] bArr, SQLiteCipherSpec sQLiteCipherSpec) {
        return open(sQLiteDatabase, sQLiteDatabaseConfiguration, bArr, sQLiteCipherSpec, 1);
    }

    private SQLiteConnection openConnectionLocked(SQLiteDatabaseConfiguration sQLiteDatabaseConfiguration, boolean z10) {
        int i10 = this.mNextConnectionId;
        this.mNextConnectionId = i10 + 1;
        return SQLiteConnection.open(this, sQLiteDatabaseConfiguration, i10, z10, this.mPassword, this.mCipher);
    }

    private void reconfigureAllConnectionsLocked() {
        SQLiteConnection sQLiteConnection = this.mAvailablePrimaryConnection;
        if (sQLiteConnection != null) {
            try {
                sQLiteConnection.reconfigure(this.mConfiguration);
            } catch (RuntimeException e10) {
                Log.e(TAG, "Failed to reconfigure available primary connection, closing it: " + this.mAvailablePrimaryConnection, e10);
                closeConnectionAndLogExceptionsLocked(this.mAvailablePrimaryConnection);
                this.mAvailablePrimaryConnection = null;
            }
        }
        int size = this.mAvailableNonPrimaryConnections.size();
        int i10 = 0;
        while (i10 < size) {
            SQLiteConnection sQLiteConnection2 = this.mAvailableNonPrimaryConnections.get(i10);
            try {
                sQLiteConnection2.reconfigure(this.mConfiguration);
            } catch (RuntimeException e11) {
                Log.e(TAG, "Failed to reconfigure available non-primary connection, closing it: " + sQLiteConnection2, e11);
                closeConnectionAndLogExceptionsLocked(sQLiteConnection2);
                this.mAvailableNonPrimaryConnections.remove(i10);
                size += -1;
                i10--;
            }
            i10++;
        }
        markAcquiredConnectionsLocked(AcquiredConnectionStatus.RECONFIGURE);
    }

    private boolean recycleConnectionLocked(SQLiteConnection sQLiteConnection, AcquiredConnectionStatus acquiredConnectionStatus) {
        if (acquiredConnectionStatus == AcquiredConnectionStatus.RECONFIGURE) {
            try {
                sQLiteConnection.reconfigure(this.mConfiguration);
            } catch (RuntimeException e10) {
                Log.e(TAG, "Failed to reconfigure released connection, closing it: " + sQLiteConnection, e10);
                acquiredConnectionStatus = AcquiredConnectionStatus.DISCARD;
            }
        }
        if (acquiredConnectionStatus == AcquiredConnectionStatus.DISCARD) {
            closeConnectionAndLogExceptionsLocked(sQLiteConnection);
            return false;
        }
        return true;
    }

    private void recycleConnectionWaiterLocked(ConnectionWaiter connectionWaiter) {
        connectionWaiter.mNext = this.mConnectionWaiterPool;
        connectionWaiter.mThread = null;
        connectionWaiter.mSql = null;
        connectionWaiter.mAssignedConnection = null;
        connectionWaiter.mException = null;
        connectionWaiter.mNonce++;
        this.mConnectionWaiterPool = connectionWaiter;
    }

    private void setMaxConnectionPoolSizeLocked(int i10) {
        if (i10 <= 0) {
            if ((this.mConfiguration.openFlags & 536870912) != 0) {
                i10 = 4;
            } else {
                i10 = 1;
            }
        }
        this.mMaxConnectionPoolSize = i10;
        Log.i(TAG, "Max connection pool size is %d.", Integer.valueOf(i10));
    }

    private void throwIfClosedLocked() {
        if (this.mIsOpen) {
            return;
        }
        throw new IllegalStateException("Cannot perform this operation because the connection pool has been closed.");
    }

    private SQLiteConnection tryAcquireNonPrimaryConnectionLocked(String str, int i10) {
        int size = this.mAvailableNonPrimaryConnections.size();
        if (size > 1 && str != null) {
            for (int i11 = 0; i11 < size; i11++) {
                SQLiteConnection sQLiteConnection = this.mAvailableNonPrimaryConnections.get(i11);
                if (sQLiteConnection.isPreparedStatementInCache(str)) {
                    this.mAvailableNonPrimaryConnections.remove(i11);
                    finishAcquireConnectionLocked(sQLiteConnection, i10);
                    return sQLiteConnection;
                }
            }
        }
        if (size > 0) {
            SQLiteConnection remove = this.mAvailableNonPrimaryConnections.remove(size - 1);
            finishAcquireConnectionLocked(remove, i10);
            return remove;
        }
        int size2 = this.mAcquiredConnections.size();
        if (this.mAvailablePrimaryConnection != null) {
            size2++;
        }
        if (size2 >= this.mMaxConnectionPoolSize) {
            return null;
        }
        SQLiteConnection openConnectionLocked = openConnectionLocked(this.mConfiguration, false);
        finishAcquireConnectionLocked(openConnectionLocked, i10);
        return openConnectionLocked;
    }

    private SQLiteConnection tryAcquirePrimaryConnectionLocked(int i10) {
        SQLiteConnection sQLiteConnection = this.mAvailablePrimaryConnection;
        if (sQLiteConnection != null) {
            this.mAvailablePrimaryConnection = null;
            finishAcquireConnectionLocked(sQLiteConnection, i10);
            return sQLiteConnection;
        }
        for (SQLiteConnection sQLiteConnection2 : this.mAcquiredConnections.keySet()) {
            if (sQLiteConnection2.isPrimaryConnection()) {
                return null;
            }
        }
        SQLiteConnection openConnectionLocked = openConnectionLocked(this.mConfiguration, true);
        finishAcquireConnectionLocked(openConnectionLocked, i10);
        return openConnectionLocked;
    }

    /* JADX WARN: Removed duplicated region for block: B:66:0x00c9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.tencent.wcdb.database.SQLiteConnection waitForConnection(java.lang.String r19, int r20, com.tencent.wcdb.support.CancellationSignal r21) {
        /*
            Method dump skipped, instructions count: 216
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.wcdb.database.SQLiteConnectionPool.waitForConnection(java.lang.String, int, com.tencent.wcdb.support.CancellationSignal):com.tencent.wcdb.database.SQLiteConnection");
    }

    private void wakeConnectionWaitersLocked() {
        SQLiteConnection sQLiteConnection;
        ConnectionWaiter connectionWaiter = this.mConnectionWaiterQueue;
        ConnectionWaiter connectionWaiter2 = null;
        boolean z10 = false;
        boolean z11 = false;
        while (connectionWaiter != null) {
            boolean z12 = true;
            if (this.mIsOpen) {
                try {
                    if (!connectionWaiter.mWantPrimaryConnection && !z10) {
                        sQLiteConnection = tryAcquireNonPrimaryConnectionLocked(connectionWaiter.mSql, connectionWaiter.mConnectionFlags);
                        if (sQLiteConnection == null) {
                            z10 = true;
                        }
                    } else {
                        sQLiteConnection = null;
                    }
                    if (sQLiteConnection == null && !z11 && (sQLiteConnection = tryAcquirePrimaryConnectionLocked(connectionWaiter.mConnectionFlags)) == null) {
                        z11 = true;
                    }
                    if (sQLiteConnection != null) {
                        connectionWaiter.mAssignedConnection = sQLiteConnection;
                    } else if (!z10 || !z11) {
                        z12 = false;
                    } else {
                        return;
                    }
                } catch (RuntimeException e10) {
                    connectionWaiter.mException = e10;
                }
            }
            ConnectionWaiter connectionWaiter3 = connectionWaiter.mNext;
            if (z12) {
                if (connectionWaiter2 != null) {
                    connectionWaiter2.mNext = connectionWaiter3;
                } else {
                    this.mConnectionWaiterQueue = connectionWaiter3;
                }
                connectionWaiter.mNext = null;
                LockSupport.unpark(connectionWaiter.mThread);
            } else {
                connectionWaiter2 = connectionWaiter;
            }
            connectionWaiter = connectionWaiter3;
        }
    }

    public SQLiteConnection acquireConnection(String str, int i10, CancellationSignal cancellationSignal) {
        boolean z10;
        long uptimeMillis = SystemClock.uptimeMillis();
        SQLiteConnection waitForConnection = waitForConnection(str, i10, cancellationSignal);
        if (this.mTraceCallback != null) {
            long uptimeMillis2 = SystemClock.uptimeMillis() - uptimeMillis;
            SQLiteDatabase sQLiteDatabase = this.mDB.get();
            if (sQLiteDatabase != null) {
                if ((i10 & 2) != 0) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                this.mTraceCallback.onConnectionObtained(sQLiteDatabase, str, uptimeMillis2, z10);
            }
        }
        return waitForConnection;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        dispose(false);
    }

    public void collectDbStats(ArrayList<SQLiteDebug.DbStats> arrayList) {
        synchronized (this.mLock) {
            try {
                SQLiteConnection sQLiteConnection = this.mAvailablePrimaryConnection;
                if (sQLiteConnection != null) {
                    sQLiteConnection.collectDbStats(arrayList);
                }
                Iterator<SQLiteConnection> it = this.mAvailableNonPrimaryConnections.iterator();
                while (it.hasNext()) {
                    it.next().collectDbStats(arrayList);
                }
                for (SQLiteConnection sQLiteConnection2 : this.mAcquiredConnections.keySet()) {
                    sQLiteConnection2.collectDbStatsUnsafe(arrayList);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void dump(Printer printer, boolean z10) {
        Printer create = PrefixPrinter.create(printer, "    ");
        synchronized (this.mLock) {
            try {
                printer.println("Connection pool for " + this.mConfiguration.path + ":");
                StringBuilder sb2 = new StringBuilder();
                sb2.append("  Open: ");
                sb2.append(this.mIsOpen);
                printer.println(sb2.toString());
                printer.println("  Max connections: " + this.mMaxConnectionPoolSize);
                printer.println("  Available primary connection:");
                SQLiteConnection sQLiteConnection = this.mAvailablePrimaryConnection;
                if (sQLiteConnection != null) {
                    sQLiteConnection.dump(create, z10);
                } else {
                    create.println("<none>");
                }
                printer.println("  Available non-primary connections:");
                int i10 = 0;
                if (!this.mAvailableNonPrimaryConnections.isEmpty()) {
                    int size = this.mAvailableNonPrimaryConnections.size();
                    for (int i11 = 0; i11 < size; i11++) {
                        this.mAvailableNonPrimaryConnections.get(i11).dump(create, z10);
                    }
                } else {
                    create.println("<none>");
                }
                printer.println("  Acquired connections:");
                if (!this.mAcquiredConnections.isEmpty()) {
                    for (Map.Entry<SQLiteConnection, AcquiredConnectionStatus> entry : this.mAcquiredConnections.entrySet()) {
                        entry.getKey().dumpUnsafe(create, z10);
                        create.println("  Status: " + entry.getValue());
                    }
                } else {
                    create.println("<none>");
                }
                printer.println("  Connection waiters:");
                if (this.mConnectionWaiterQueue != null) {
                    long uptimeMillis = SystemClock.uptimeMillis();
                    ConnectionWaiter connectionWaiter = this.mConnectionWaiterQueue;
                    while (connectionWaiter != null) {
                        create.println(i10 + ": waited for " + (uptimeMillis - connectionWaiter.mStartTime) + " ms - thread=" + connectionWaiter.mThread + ", priority=" + connectionWaiter.mPriority + ", sql='" + connectionWaiter.mSql + "'");
                        connectionWaiter = connectionWaiter.mNext;
                        i10++;
                    }
                } else {
                    create.println("<none>");
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    protected void finalize() throws Throwable {
        try {
            dispose(true);
        } finally {
            super.finalize();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SQLiteChangeListener getChangeListener() {
        return this.mChangeListener;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SQLiteCheckpointListener getCheckpointListener() {
        return this.mCheckpointListener;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SQLiteTrace getTraceCallback() {
        return this.mTraceCallback;
    }

    public void logConnectionPoolBusy(String str) {
        synchronized (this.mLock) {
            logConnectionPoolBusyLocked(str, 0L, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void notifyChanges(String str, String str2, long[] jArr, long[] jArr2, long[] jArr3) {
        SQLiteDatabase sQLiteDatabase = this.mDB.get();
        SQLiteChangeListener sQLiteChangeListener = this.mChangeListener;
        if (sQLiteChangeListener != null && sQLiteDatabase != null) {
            sQLiteChangeListener.onChange(sQLiteDatabase, str, str2, jArr, jArr2, jArr3);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void notifyCheckpoint(String str, int i10) {
        SQLiteDatabase sQLiteDatabase = this.mDB.get();
        SQLiteCheckpointListener sQLiteCheckpointListener = this.mCheckpointListener;
        if (sQLiteCheckpointListener != null && sQLiteDatabase != null) {
            sQLiteCheckpointListener.onWALCommit(sQLiteDatabase, str, i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onConnectionLeaked() {
        Log.w(TAG, "A SQLiteConnection object for database '" + this.mConfiguration.label + "' was leaked!  Please fix your application to end transactions in progress properly and to close the database when it is no longer needed.");
        this.mConnectionLeaked.set(true);
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0073, code lost:
        closeAvailableConnectionsAndLogExceptionsLocked();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void reconfigure(com.tencent.wcdb.database.SQLiteDatabaseConfiguration r8) {
        /*
            r7 = this;
            if (r8 == 0) goto L91
            java.lang.Object r0 = r7.mLock
            monitor-enter(r0)
            r7.throwIfClosedLocked()     // Catch: java.lang.Throwable -> L27
            int r1 = r8.openFlags     // Catch: java.lang.Throwable -> L27
            com.tencent.wcdb.database.SQLiteDatabaseConfiguration r2 = r7.mConfiguration     // Catch: java.lang.Throwable -> L27
            int r2 = r2.openFlags     // Catch: java.lang.Throwable -> L27
            r1 = r1 ^ r2
            r2 = 536870912(0x20000000, float:1.0842022E-19)
            r1 = r1 & r2
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L18
            r1 = r2
            goto L19
        L18:
            r1 = r3
        L19:
            if (r1 == 0) goto L31
            java.util.WeakHashMap<com.tencent.wcdb.database.SQLiteConnection, com.tencent.wcdb.database.SQLiteConnectionPool$AcquiredConnectionStatus> r4 = r7.mAcquiredConnections     // Catch: java.lang.Throwable -> L27
            boolean r4 = r4.isEmpty()     // Catch: java.lang.Throwable -> L27
            if (r4 == 0) goto L29
            r7.closeAvailableNonPrimaryConnectionsAndLogExceptionsLocked()     // Catch: java.lang.Throwable -> L27
            goto L31
        L27:
            r8 = move-exception
            goto L8f
        L29:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L27
            java.lang.String r1 = "Write Ahead Logging (WAL) mode cannot be enabled or disabled while there are transactions in progress.  Finish all transactions and release all active database connections first."
            r8.<init>(r1)     // Catch: java.lang.Throwable -> L27
            throw r8     // Catch: java.lang.Throwable -> L27
        L31:
            boolean r4 = r8.foreignKeyConstraintsEnabled     // Catch: java.lang.Throwable -> L27
            com.tencent.wcdb.database.SQLiteDatabaseConfiguration r5 = r7.mConfiguration     // Catch: java.lang.Throwable -> L27
            boolean r5 = r5.foreignKeyConstraintsEnabled     // Catch: java.lang.Throwable -> L27
            if (r4 == r5) goto L4a
            java.util.WeakHashMap<com.tencent.wcdb.database.SQLiteConnection, com.tencent.wcdb.database.SQLiteConnectionPool$AcquiredConnectionStatus> r4 = r7.mAcquiredConnections     // Catch: java.lang.Throwable -> L27
            boolean r4 = r4.isEmpty()     // Catch: java.lang.Throwable -> L27
            if (r4 == 0) goto L42
            goto L4a
        L42:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L27
            java.lang.String r1 = "Foreign Key Constraints cannot be enabled or disabled while there are transactions in progress.  Finish all transactions and release all active database connections first."
            r8.<init>(r1)     // Catch: java.lang.Throwable -> L27
            throw r8     // Catch: java.lang.Throwable -> L27
        L4a:
            com.tencent.wcdb.database.SQLiteDatabaseConfiguration r4 = r7.mConfiguration     // Catch: java.lang.Throwable -> L27
            int r5 = r4.openFlags     // Catch: java.lang.Throwable -> L27
            int r6 = r8.openFlags     // Catch: java.lang.Throwable -> L27
            r5 = r5 ^ r6
            r6 = 268435473(0x10000011, float:2.52436E-29)
            r5 = r5 & r6
            if (r5 != 0) goto L71
            java.lang.String r4 = r4.vfsName     // Catch: java.lang.Throwable -> L27
            java.lang.String r5 = r8.vfsName     // Catch: java.lang.Throwable -> L27
            boolean r4 = com.tencent.wcdb.DatabaseUtils.objectEquals(r4, r5)     // Catch: java.lang.Throwable -> L27
            if (r4 != 0) goto L62
            goto L71
        L62:
            com.tencent.wcdb.database.SQLiteDatabaseConfiguration r1 = r7.mConfiguration     // Catch: java.lang.Throwable -> L27
            r1.updateParametersFrom(r8)     // Catch: java.lang.Throwable -> L27
            r7.setMaxConnectionPoolSizeLocked(r3)     // Catch: java.lang.Throwable -> L27
            r7.closeExcessConnectionsAndLogExceptionsLocked()     // Catch: java.lang.Throwable -> L27
            r7.reconfigureAllConnectionsLocked()     // Catch: java.lang.Throwable -> L27
            goto L8a
        L71:
            if (r1 == 0) goto L76
            r7.closeAvailableConnectionsAndLogExceptionsLocked()     // Catch: java.lang.Throwable -> L27
        L76:
            com.tencent.wcdb.database.SQLiteConnection r1 = r7.openConnectionLocked(r8, r2)     // Catch: java.lang.Throwable -> L27
            r7.closeAvailableConnectionsAndLogExceptionsLocked()     // Catch: java.lang.Throwable -> L27
            r7.discardAcquiredConnectionsLocked()     // Catch: java.lang.Throwable -> L27
            r7.mAvailablePrimaryConnection = r1     // Catch: java.lang.Throwable -> L27
            com.tencent.wcdb.database.SQLiteDatabaseConfiguration r1 = r7.mConfiguration     // Catch: java.lang.Throwable -> L27
            r1.updateParametersFrom(r8)     // Catch: java.lang.Throwable -> L27
            r7.setMaxConnectionPoolSizeLocked(r3)     // Catch: java.lang.Throwable -> L27
        L8a:
            r7.wakeConnectionWaitersLocked()     // Catch: java.lang.Throwable -> L27
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L27
            return
        L8f:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L27
            throw r8
        L91:
            java.lang.IllegalArgumentException r8 = new java.lang.IllegalArgumentException
            java.lang.String r0 = "configuration must not be null."
            r8.<init>(r0)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.wcdb.database.SQLiteConnectionPool.reconfigure(com.tencent.wcdb.database.SQLiteDatabaseConfiguration):void");
    }

    public void releaseConnection(SQLiteConnection sQLiteConnection) {
        synchronized (this.mLock) {
            try {
                AcquiredConnectionStatus remove = this.mAcquiredConnections.remove(sQLiteConnection);
                if (remove != null) {
                    if (!this.mIsOpen) {
                        closeConnectionAndLogExceptionsLocked(sQLiteConnection);
                    } else if (sQLiteConnection.isPrimaryConnection()) {
                        if (recycleConnectionLocked(sQLiteConnection, remove)) {
                            this.mAvailablePrimaryConnection = sQLiteConnection;
                        }
                        wakeConnectionWaitersLocked();
                    } else if (this.mAvailableNonPrimaryConnections.size() >= this.mMaxConnectionPoolSize - 1) {
                        closeConnectionAndLogExceptionsLocked(sQLiteConnection);
                    } else {
                        if (recycleConnectionLocked(sQLiteConnection, remove)) {
                            this.mAvailableNonPrimaryConnections.add(sQLiteConnection);
                        }
                        wakeConnectionWaitersLocked();
                    }
                } else {
                    throw new IllegalStateException("Cannot perform this operation because the specified connection was not acquired from this pool or has already been released.");
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setChangeListener(SQLiteChangeListener sQLiteChangeListener, boolean z10) {
        boolean z11;
        if (sQLiteChangeListener != null) {
            z11 = true;
        } else {
            z11 = false;
        }
        if (!z11) {
            z10 = false;
        }
        synchronized (this.mLock) {
            try {
                SQLiteDatabaseConfiguration sQLiteDatabaseConfiguration = this.mConfiguration;
                if (sQLiteDatabaseConfiguration.updateNotificationEnabled == z11) {
                    if (sQLiteDatabaseConfiguration.updateNotificationRowID != z10) {
                    }
                    this.mChangeListener = sQLiteChangeListener;
                }
                sQLiteDatabaseConfiguration.updateNotificationEnabled = z11;
                sQLiteDatabaseConfiguration.updateNotificationRowID = z10;
                closeExcessConnectionsAndLogExceptionsLocked();
                reconfigureAllConnectionsLocked();
                this.mChangeListener = sQLiteChangeListener;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setCheckpointListener(SQLiteCheckpointListener sQLiteCheckpointListener) {
        SQLiteDatabase sQLiteDatabase = this.mDB.get();
        if (this.mCheckpointListener != null) {
            this.mCheckpointListener.onDetach(sQLiteDatabase);
        }
        this.mCheckpointListener = sQLiteCheckpointListener;
        if (this.mCheckpointListener != null) {
            this.mCheckpointListener.onAttach(sQLiteDatabase);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setTraceCallback(SQLiteTrace sQLiteTrace) {
        this.mTraceCallback = sQLiteTrace;
    }

    public boolean shouldYieldConnection(SQLiteConnection sQLiteConnection, int i10) {
        synchronized (this.mLock) {
            try {
                if (this.mAcquiredConnections.containsKey(sQLiteConnection)) {
                    if (!this.mIsOpen) {
                        return false;
                    }
                    return isSessionBlockingImportantConnectionWaitersLocked(sQLiteConnection.isPrimaryConnection(), i10);
                }
                throw new IllegalStateException("Cannot perform this operation because the specified connection was not acquired from this pool or has already been released.");
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public String toString() {
        return "SQLiteConnectionPool: " + this.mConfiguration.path;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void traceExecute(String str, int i10, long j10) {
        SQLiteDatabase sQLiteDatabase = this.mDB.get();
        SQLiteTrace sQLiteTrace = this.mTraceCallback;
        if (sQLiteTrace != null && sQLiteDatabase != null) {
            sQLiteTrace.onSQLExecuted(sQLiteDatabase, str, i10, j10);
        }
    }

    public static SQLiteConnectionPool open(SQLiteDatabase sQLiteDatabase, SQLiteDatabaseConfiguration sQLiteDatabaseConfiguration, byte[] bArr, SQLiteCipherSpec sQLiteCipherSpec, int i10) {
        if (sQLiteDatabaseConfiguration != null) {
            SQLiteConnectionPool sQLiteConnectionPool = new SQLiteConnectionPool(sQLiteDatabase, sQLiteDatabaseConfiguration, i10);
            sQLiteConnectionPool.mPassword = bArr;
            sQLiteConnectionPool.mCipher = sQLiteCipherSpec == null ? null : new SQLiteCipherSpec(sQLiteCipherSpec);
            sQLiteConnectionPool.open();
            return sQLiteConnectionPool;
        }
        throw new IllegalArgumentException("configuration must not be null.");
    }

    private void open() {
        this.mAvailablePrimaryConnection = openConnectionLocked(this.mConfiguration, true);
        this.mIsOpen = true;
    }
}
