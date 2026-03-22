package com.tencent.wcdb.database;

import android.database.sqlite.SQLiteTransactionListener;
import android.os.Process;
import android.util.Pair;
import com.tencent.wcdb.CursorWindow;
import com.tencent.wcdb.DatabaseUtils;
import com.tencent.wcdb.database.SQLiteConnection;
import com.tencent.wcdb.support.CancellationSignal;
/* loaded from: classes7.dex */
public final class SQLiteSession {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final int TRANSACTION_MODE_DEFERRED = 0;
    public static final int TRANSACTION_MODE_EXCLUSIVE = 2;
    public static final int TRANSACTION_MODE_IMMEDIATE = 1;
    private SQLiteConnection mConnection;
    private int mConnectionFlags;
    private final SQLiteConnectionPool mConnectionPool;
    private int mConnectionUseCount;
    private Transaction mTransactionPool;
    private Transaction mTransactionStack;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes7.dex */
    public static final class Transaction {
        public boolean mChildFailed;
        public SQLiteTransactionListener mListener;
        public boolean mMarkedSuccessful;
        public int mMode;
        public Transaction mParent;

        private Transaction() {
        }
    }

    public SQLiteSession(SQLiteConnectionPool sQLiteConnectionPool) {
        if (sQLiteConnectionPool != null) {
            this.mConnectionPool = sQLiteConnectionPool;
            return;
        }
        throw new IllegalArgumentException("connectionPool must not be null");
    }

    private void acquireConnection(String str, int i10, CancellationSignal cancellationSignal) {
        if (this.mConnection == null) {
            SQLiteConnection acquireConnection = this.mConnectionPool.acquireConnection(str, i10, cancellationSignal);
            this.mConnection = acquireConnection;
            this.mConnectionFlags = i10;
            acquireConnection.setAcquisitionState(Thread.currentThread(), Process.myTid());
        }
        this.mConnectionUseCount++;
    }

    private void beginTransactionUnchecked(int i10, SQLiteTransactionListener sQLiteTransactionListener, int i11, CancellationSignal cancellationSignal) {
        if (cancellationSignal != null) {
            cancellationSignal.throwIfCanceled();
        }
        if (this.mTransactionStack == null) {
            acquireConnection(null, i11, cancellationSignal);
        }
        try {
            if (this.mTransactionStack == null) {
                if (i10 != 1) {
                    if (i10 != 2) {
                        this.mConnection.execute("BEGIN;", null, cancellationSignal);
                    } else {
                        this.mConnection.execute("BEGIN EXCLUSIVE;", null, cancellationSignal);
                    }
                } else {
                    this.mConnection.execute("BEGIN IMMEDIATE;", null, cancellationSignal);
                }
            }
            if (sQLiteTransactionListener != null) {
                try {
                    sQLiteTransactionListener.onBegin();
                } catch (RuntimeException e10) {
                    if (this.mTransactionStack == null) {
                        this.mConnection.execute("ROLLBACK;", null, cancellationSignal);
                    }
                    throw e10;
                }
            }
            Transaction obtainTransaction = obtainTransaction(i10, sQLiteTransactionListener);
            obtainTransaction.mParent = this.mTransactionStack;
            this.mTransactionStack = obtainTransaction;
        } catch (Throwable th2) {
            if (this.mTransactionStack == null) {
                releaseConnection();
            }
            throw th2;
        }
    }

    private void endTransactionUnchecked(CancellationSignal cancellationSignal, boolean z10) {
        boolean z11;
        if (cancellationSignal != null) {
            cancellationSignal.throwIfCanceled();
        }
        Transaction transaction = this.mTransactionStack;
        boolean z12 = false;
        if ((transaction.mMarkedSuccessful || z10) && !transaction.mChildFailed) {
            z11 = true;
        } else {
            z11 = false;
        }
        SQLiteTransactionListener sQLiteTransactionListener = transaction.mListener;
        if (sQLiteTransactionListener != null) {
            try {
                if (z11) {
                    sQLiteTransactionListener.onCommit();
                } else {
                    sQLiteTransactionListener.onRollback();
                }
            } catch (RuntimeException e10) {
                e = e10;
            }
        }
        z12 = z11;
        e = null;
        this.mTransactionStack = transaction.mParent;
        recycleTransaction(transaction);
        Transaction transaction2 = this.mTransactionStack;
        if (transaction2 != null) {
            if (!z12) {
                transaction2.mChildFailed = true;
            }
        } else {
            try {
                if (z12) {
                    this.mConnection.execute("COMMIT;", null, cancellationSignal);
                } else {
                    this.mConnection.execute("ROLLBACK;", null, cancellationSignal);
                }
                releaseConnection();
            } catch (Throwable th2) {
                releaseConnection();
                throw th2;
            }
        }
        if (e == null) {
            return;
        }
        throw e;
    }

    private boolean executeSpecial(String str, Object[] objArr, int i10, CancellationSignal cancellationSignal) {
        if (cancellationSignal != null) {
            cancellationSignal.throwIfCanceled();
        }
        int sqlStatementType = DatabaseUtils.getSqlStatementType(str);
        if (sqlStatementType != 4) {
            if (sqlStatementType != 5) {
                if (sqlStatementType != 6) {
                    return false;
                }
                endTransaction(cancellationSignal);
                return true;
            }
            setTransactionSuccessful();
            endTransaction(cancellationSignal);
            return true;
        }
        beginTransaction(2, null, i10, cancellationSignal);
        return true;
    }

    private Transaction obtainTransaction(int i10, SQLiteTransactionListener sQLiteTransactionListener) {
        Transaction transaction = this.mTransactionPool;
        if (transaction != null) {
            this.mTransactionPool = transaction.mParent;
            transaction.mParent = null;
            transaction.mMarkedSuccessful = false;
            transaction.mChildFailed = false;
        } else {
            transaction = new Transaction();
        }
        transaction.mMode = i10;
        transaction.mListener = sQLiteTransactionListener;
        return transaction;
    }

    private void recycleTransaction(Transaction transaction) {
        transaction.mParent = this.mTransactionPool;
        transaction.mListener = null;
        this.mTransactionPool = transaction;
    }

    private void releaseConnection() {
        int i10 = this.mConnectionUseCount - 1;
        this.mConnectionUseCount = i10;
        if (i10 == 0) {
            try {
                this.mConnection.setAcquisitionState(null, 0);
                this.mConnectionPool.releaseConnection(this.mConnection);
            } finally {
                this.mConnection = null;
            }
        }
    }

    private void throwIfNestedTransaction() {
        if (!hasNestedTransaction()) {
            return;
        }
        throw new IllegalStateException("Cannot perform this operation because a nested transaction is in progress.");
    }

    private void throwIfNoTransaction() {
        if (this.mTransactionStack != null) {
            return;
        }
        throw new IllegalStateException("Cannot perform this operation because there is no current transaction.");
    }

    private void throwIfTransactionMarkedSuccessful() {
        Transaction transaction = this.mTransactionStack;
        if (transaction != null && transaction.mMarkedSuccessful) {
            throw new IllegalStateException("Cannot perform this operation because the transaction has already been marked successful.  The only thing you can do now is call endTransaction().");
        }
    }

    private boolean yieldTransactionUnchecked(long j10, CancellationSignal cancellationSignal) {
        if (cancellationSignal != null) {
            cancellationSignal.throwIfCanceled();
        }
        if (!this.mConnectionPool.shouldYieldConnection(this.mConnection, this.mConnectionFlags)) {
            return false;
        }
        Transaction transaction = this.mTransactionStack;
        int i10 = transaction.mMode;
        SQLiteTransactionListener sQLiteTransactionListener = transaction.mListener;
        int i11 = this.mConnectionFlags;
        endTransactionUnchecked(cancellationSignal, true);
        if (j10 > 0) {
            try {
                Thread.sleep(j10);
            } catch (InterruptedException unused) {
            }
        }
        beginTransactionUnchecked(i10, sQLiteTransactionListener, i11, cancellationSignal);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SQLiteConnection acquireConnectionForNativeHandle(int i10) {
        acquireConnection(null, i10, null);
        return this.mConnection;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SQLiteConnection.PreparedStatement acquirePreparedStatement(String str, int i10) {
        acquireConnection(str, i10, null);
        return this.mConnection.acquirePreparedStatement(str);
    }

    public void beginTransaction(int i10, SQLiteTransactionListener sQLiteTransactionListener, int i11, CancellationSignal cancellationSignal) {
        throwIfTransactionMarkedSuccessful();
        beginTransactionUnchecked(i10, sQLiteTransactionListener, i11, cancellationSignal);
    }

    public void endTransaction(CancellationSignal cancellationSignal) {
        throwIfNoTransaction();
        endTransactionUnchecked(cancellationSignal, false);
    }

    public void execute(String str, Object[] objArr, int i10, CancellationSignal cancellationSignal) {
        if (str != null) {
            if (executeSpecial(str, objArr, i10, cancellationSignal)) {
                return;
            }
            acquireConnection(str, i10, cancellationSignal);
            try {
                this.mConnection.execute(str, objArr, cancellationSignal);
                return;
            } finally {
                releaseConnection();
            }
        }
        throw new IllegalArgumentException("sql must not be null.");
    }

    public int executeForChangedRowCount(String str, Object[] objArr, int i10, CancellationSignal cancellationSignal) {
        if (str != null) {
            if (executeSpecial(str, objArr, i10, cancellationSignal)) {
                return 0;
            }
            acquireConnection(str, i10, cancellationSignal);
            try {
                return this.mConnection.executeForChangedRowCount(str, objArr, cancellationSignal);
            } finally {
                releaseConnection();
            }
        }
        throw new IllegalArgumentException("sql must not be null.");
    }

    public int executeForCursorWindow(String str, Object[] objArr, CursorWindow cursorWindow, int i10, int i11, boolean z10, int i12, CancellationSignal cancellationSignal) {
        if (str != null) {
            if (cursorWindow != null) {
                if (executeSpecial(str, objArr, i12, cancellationSignal)) {
                    cursorWindow.clear();
                    return 0;
                }
                acquireConnection(str, i12, cancellationSignal);
                try {
                    return this.mConnection.executeForCursorWindow(str, objArr, cursorWindow, i10, i11, z10, cancellationSignal);
                } finally {
                    releaseConnection();
                }
            }
            throw new IllegalArgumentException("window must not be null.");
        }
        throw new IllegalArgumentException("sql must not be null.");
    }

    public long executeForLastInsertedRowId(String str, Object[] objArr, int i10, CancellationSignal cancellationSignal) {
        if (str != null) {
            if (executeSpecial(str, objArr, i10, cancellationSignal)) {
                return 0L;
            }
            acquireConnection(str, i10, cancellationSignal);
            try {
                return this.mConnection.executeForLastInsertedRowId(str, objArr, cancellationSignal);
            } finally {
                releaseConnection();
            }
        }
        throw new IllegalArgumentException("sql must not be null.");
    }

    public long executeForLong(String str, Object[] objArr, int i10, CancellationSignal cancellationSignal) {
        if (str != null) {
            if (executeSpecial(str, objArr, i10, cancellationSignal)) {
                return 0L;
            }
            acquireConnection(str, i10, cancellationSignal);
            try {
                return this.mConnection.executeForLong(str, objArr, cancellationSignal);
            } finally {
                releaseConnection();
            }
        }
        throw new IllegalArgumentException("sql must not be null.");
    }

    public String executeForString(String str, Object[] objArr, int i10, CancellationSignal cancellationSignal) {
        if (str != null) {
            if (executeSpecial(str, objArr, i10, cancellationSignal)) {
                return null;
            }
            acquireConnection(str, i10, cancellationSignal);
            try {
                return this.mConnection.executeForString(str, objArr, cancellationSignal);
            } finally {
                releaseConnection();
            }
        }
        throw new IllegalArgumentException("sql must not be null.");
    }

    public boolean hasConnection() {
        if (this.mConnection != null) {
            return true;
        }
        return false;
    }

    public boolean hasNestedTransaction() {
        Transaction transaction = this.mTransactionStack;
        if (transaction != null && transaction.mParent != null) {
            return true;
        }
        return false;
    }

    public boolean hasTransaction() {
        if (this.mTransactionStack != null) {
            return true;
        }
        return false;
    }

    public void prepare(String str, int i10, CancellationSignal cancellationSignal, SQLiteStatementInfo sQLiteStatementInfo) {
        if (str != null) {
            if (cancellationSignal != null) {
                cancellationSignal.throwIfCanceled();
            }
            acquireConnection(str, i10, cancellationSignal);
            try {
                this.mConnection.prepare(str, sQLiteStatementInfo);
                return;
            } finally {
                releaseConnection();
            }
        }
        throw new IllegalArgumentException("sql must not be null.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void releaseConnectionForNativeHandle(Exception exc) {
        SQLiteConnection sQLiteConnection = this.mConnection;
        if (sQLiteConnection != null) {
            sQLiteConnection.endNativeHandle(exc);
        }
        releaseConnection();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void releasePreparedStatement(SQLiteConnection.PreparedStatement preparedStatement) {
        SQLiteConnection sQLiteConnection = this.mConnection;
        if (sQLiteConnection != null) {
            sQLiteConnection.releasePreparedStatement(preparedStatement);
            releaseConnection();
        }
    }

    public void setTransactionSuccessful() {
        throwIfNoTransaction();
        throwIfTransactionMarkedSuccessful();
        this.mTransactionStack.mMarkedSuccessful = true;
    }

    public Pair<Integer, Integer> walCheckpoint(String str, int i10) {
        acquireConnection(null, i10, null);
        try {
            return this.mConnection.walCheckpoint(str);
        } finally {
            releaseConnection();
        }
    }

    public boolean yieldTransaction(long j10, boolean z10, CancellationSignal cancellationSignal) {
        if (z10) {
            throwIfNoTransaction();
            throwIfTransactionMarkedSuccessful();
            throwIfNestedTransaction();
        } else {
            Transaction transaction = this.mTransactionStack;
            if (transaction == null || transaction.mMarkedSuccessful || transaction.mParent != null) {
                return false;
            }
        }
        if (this.mTransactionStack.mChildFailed) {
            return false;
        }
        return yieldTransactionUnchecked(j10, cancellationSignal);
    }
}
