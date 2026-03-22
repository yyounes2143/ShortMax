package com.tencent.wcdb.database;

import com.tencent.wcdb.DatabaseUtils;
import com.tencent.wcdb.database.SQLiteConnection;
import com.tencent.wcdb.support.CancellationSignal;
import java.util.Arrays;
/* loaded from: classes7.dex */
public abstract class SQLiteProgram extends SQLiteClosable {
    private static final String[] EMPTY_STRING_ARRAY = new String[0];
    private static final String TAG = "WCDB.SQLiteProgram";
    private final Object[] mBindArgs;
    private SQLiteSession mBoundSession;
    private final String[] mColumnNames;
    private final SQLiteDatabase mDatabase;
    private final int mNumParameters;
    protected SQLiteConnection.PreparedStatement mPreparedStatement;
    private final boolean mReadOnly;
    private final String mSql;

    /* JADX INFO: Access modifiers changed from: protected */
    public SQLiteProgram(SQLiteDatabase sQLiteDatabase, String str, Object[] objArr, CancellationSignal cancellationSignal) {
        this.mDatabase = sQLiteDatabase;
        String trim = str.trim();
        this.mSql = trim;
        int sqlStatementType = DatabaseUtils.getSqlStatementType(trim);
        if (sqlStatementType != 4 && sqlStatementType != 5 && sqlStatementType != 6) {
            boolean z10 = sqlStatementType == 1;
            SQLiteStatementInfo sQLiteStatementInfo = new SQLiteStatementInfo();
            sQLiteDatabase.getThreadSession().prepare(trim, sQLiteDatabase.getThreadDefaultConnectionFlags(z10), cancellationSignal, sQLiteStatementInfo);
            this.mReadOnly = sQLiteStatementInfo.readOnly;
            this.mColumnNames = sQLiteStatementInfo.columnNames;
            this.mNumParameters = sQLiteStatementInfo.numParameters;
        } else {
            this.mReadOnly = false;
            this.mColumnNames = EMPTY_STRING_ARRAY;
            this.mNumParameters = 0;
        }
        if (objArr != null && objArr.length > this.mNumParameters) {
            throw new IllegalArgumentException("Too many bind arguments.  " + objArr.length + " arguments were provided but the statement needs " + this.mNumParameters + " arguments.");
        }
        int i10 = this.mNumParameters;
        if (i10 != 0) {
            Object[] objArr2 = new Object[i10];
            this.mBindArgs = objArr2;
            if (objArr != null) {
                System.arraycopy(objArr, 0, objArr2, 0, objArr.length);
            }
        } else {
            this.mBindArgs = null;
        }
        this.mPreparedStatement = null;
        this.mBoundSession = null;
    }

    private void bind(int i10, Object obj) {
        if (i10 >= 1 && i10 <= this.mNumParameters) {
            this.mBindArgs[i10 - 1] = obj;
            return;
        }
        throw new IllegalArgumentException("Cannot bind argument at index " + i10 + " because the index is out of range.  The statement has " + this.mNumParameters + " parameters.");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public synchronized boolean acquirePreparedStatement() {
        SQLiteSession threadSession = this.mDatabase.getThreadSession();
        SQLiteSession sQLiteSession = this.mBoundSession;
        if (threadSession == sQLiteSession) {
            return false;
        }
        if (sQLiteSession == null) {
            this.mBoundSession = threadSession;
            SQLiteConnection.PreparedStatement acquirePreparedStatement = threadSession.acquirePreparedStatement(this.mSql, this.mDatabase.getThreadDefaultConnectionFlags(this.mReadOnly));
            this.mPreparedStatement = acquirePreparedStatement;
            acquirePreparedStatement.bindArguments(this.mBindArgs);
            return true;
        }
        throw new IllegalStateException("SQLiteProgram has bound to another thread.");
    }

    public void bindAllArgsAsStrings(String[] strArr) {
        if (strArr != null) {
            for (int length = strArr.length; length != 0; length--) {
                bindString(length, strArr[length - 1]);
            }
        }
    }

    public void bindBlob(int i10, byte[] bArr) {
        if (bArr != null) {
            bind(i10, bArr);
            return;
        }
        throw new IllegalArgumentException("the bind value at index " + i10 + " is null");
    }

    public void bindDouble(int i10, double d10) {
        bind(i10, Double.valueOf(d10));
    }

    public void bindLong(int i10, long j10) {
        bind(i10, Long.valueOf(j10));
    }

    public void bindNull(int i10) {
        bind(i10, null);
    }

    public void bindString(int i10, String str) {
        if (str != null) {
            bind(i10, str);
            return;
        }
        throw new IllegalArgumentException("the bind value at index " + i10 + " is null");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void checkCorruption(SQLiteException sQLiteException) {
        if ((sQLiteException instanceof SQLiteDatabaseCorruptException) || ((sQLiteException instanceof SQLiteFullException) && this.mReadOnly)) {
            SQLiteDebug.collectLastIOTraceStats(this.mDatabase);
            this.mDatabase.onCorruption();
        }
    }

    public void clearBindings() {
        Object[] objArr = this.mBindArgs;
        if (objArr != null) {
            Arrays.fill(objArr, (Object) null);
        }
    }

    protected void finalize() throws Throwable {
        synchronized (this) {
            if (this.mBoundSession != null || this.mPreparedStatement != null) {
                throw new SQLiteMisuseException("Acquired prepared statement is not released.");
            }
        }
        super.finalize();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Object[] getBindArgs() {
        return this.mBindArgs;
    }

    public final String[] getColumnNames() {
        return this.mColumnNames;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int getConnectionFlags() {
        return this.mDatabase.getThreadDefaultConnectionFlags(this.mReadOnly);
    }

    public final SQLiteDatabase getDatabase() {
        return this.mDatabase;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final SQLiteSession getSession() {
        return this.mDatabase.getThreadSession();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final String getSql() {
        return this.mSql;
    }

    @Deprecated
    public final int getUniqueId() {
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.tencent.wcdb.database.SQLiteClosable
    public void onAllReferencesReleased() {
        releasePreparedStatement();
        clearBindings();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public synchronized void releasePreparedStatement() {
        SQLiteSession sQLiteSession = this.mBoundSession;
        if (sQLiteSession == null && this.mPreparedStatement == null) {
            return;
        }
        if (sQLiteSession != null && this.mPreparedStatement != null) {
            if (sQLiteSession == this.mDatabase.getThreadSession()) {
                this.mBoundSession.releasePreparedStatement(this.mPreparedStatement);
                this.mPreparedStatement = null;
                this.mBoundSession = null;
                return;
            }
            throw new IllegalStateException("SQLiteProgram has bound to another thread.");
        }
        throw new IllegalStateException("Internal state error.");
    }
}
