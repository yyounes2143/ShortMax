package com.tencent.wcdb;

import android.content.ContentValues;
import android.content.Context;
import android.content.OperationApplicationException;
import android.os.Parcel;
import android.text.TextUtils;
import com.tencent.wcdb.database.SQLiteAbortException;
import com.tencent.wcdb.database.SQLiteCipherSpec;
import com.tencent.wcdb.database.SQLiteConstraintException;
import com.tencent.wcdb.database.SQLiteDatabase;
import com.tencent.wcdb.database.SQLiteDatabaseCorruptException;
import com.tencent.wcdb.database.SQLiteDiskIOException;
import com.tencent.wcdb.database.SQLiteException;
import com.tencent.wcdb.database.SQLiteFullException;
import com.tencent.wcdb.database.SQLiteProgram;
import com.tencent.wcdb.database.SQLiteStatement;
import com.tencent.wcdb.support.Log;
import com.tencent.wcdb.support.OperationCanceledException;
import java.io.FileNotFoundException;
import java.io.PrintStream;
import java.text.Collator;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes7.dex */
public final class DatabaseUtils {
    private static final boolean DEBUG = false;
    private static final int EX_HAS_REPLY_HEADER = -128;
    public static final int STATEMENT_ABORT = 6;
    public static final int STATEMENT_ATTACH = 3;
    public static final int STATEMENT_BEGIN = 4;
    public static final int STATEMENT_COMMIT = 5;
    public static final int STATEMENT_DDL = 8;
    public static final int STATEMENT_OTHER = 99;
    public static final int STATEMENT_PRAGMA = 7;
    public static final int STATEMENT_SELECT = 1;
    public static final int STATEMENT_UNPREPARED = 9;
    public static final int STATEMENT_UPDATE = 2;
    private static final String TAG = "WCDB.DatabaseUtils";
    private static final char[] DIGITS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    private static Collator mColl = null;

    @Deprecated
    /* loaded from: classes7.dex */
    public static class InsertHelper {
        public static final int TABLE_INFO_PRAGMA_COLUMNNAME_INDEX = 1;
        public static final int TABLE_INFO_PRAGMA_DEFAULT_INDEX = 4;
        private HashMap<String, Integer> mColumns;
        private final SQLiteDatabase mDb;
        private final String mTableName;
        private String mInsertSQL = null;
        private SQLiteStatement mInsertStatement = null;
        private SQLiteStatement mReplaceStatement = null;
        private SQLiteStatement mPreparedStatement = null;

        public InsertHelper(SQLiteDatabase sQLiteDatabase, String str) {
            this.mDb = sQLiteDatabase;
            this.mTableName = str;
        }

        private void buildSQL() throws SQLException {
            String str;
            StringBuilder sb2 = new StringBuilder(128);
            sb2.append("INSERT INTO ");
            sb2.append(this.mTableName);
            sb2.append(" (");
            StringBuilder sb3 = new StringBuilder(128);
            sb3.append("VALUES (");
            Cursor cursor = null;
            try {
                SQLiteDatabase sQLiteDatabase = this.mDb;
                cursor = sQLiteDatabase.rawQuery("PRAGMA table_info(" + this.mTableName + ")", null);
                this.mColumns = new HashMap<>(cursor.getCount());
                int i10 = 1;
                while (cursor.moveToNext()) {
                    String string = cursor.getString(1);
                    String string2 = cursor.getString(4);
                    this.mColumns.put(string, Integer.valueOf(i10));
                    sb2.append("'");
                    sb2.append(string);
                    sb2.append("'");
                    if (string2 == null) {
                        sb3.append("?");
                    } else {
                        sb3.append("COALESCE(?, ");
                        sb3.append(string2);
                        sb3.append(")");
                    }
                    String str2 = ", ";
                    if (i10 != cursor.getCount()) {
                        str = ", ";
                    } else {
                        str = ") ";
                    }
                    sb2.append(str);
                    if (i10 == cursor.getCount()) {
                        str2 = ");";
                    }
                    sb3.append(str2);
                    i10++;
                }
                cursor.close();
                sb2.append((CharSequence) sb3);
                this.mInsertSQL = sb2.toString();
            } catch (Throwable th2) {
                if (cursor != null) {
                    cursor.close();
                }
                throw th2;
            }
        }

        private SQLiteStatement getStatement(boolean z10) throws SQLException {
            if (z10) {
                if (this.mReplaceStatement == null) {
                    if (this.mInsertSQL == null) {
                        buildSQL();
                    }
                    this.mReplaceStatement = this.mDb.compileStatement("INSERT OR REPLACE" + this.mInsertSQL.substring(6));
                }
                return this.mReplaceStatement;
            }
            if (this.mInsertStatement == null) {
                if (this.mInsertSQL == null) {
                    buildSQL();
                }
                this.mInsertStatement = this.mDb.compileStatement(this.mInsertSQL);
            }
            return this.mInsertStatement;
        }

        private long insertInternal(ContentValues contentValues, boolean z10) {
            this.mDb.beginTransactionNonExclusive();
            try {
                try {
                    SQLiteStatement statement = getStatement(z10);
                    statement.clearBindings();
                    for (Map.Entry<String, Object> entry : contentValues.valueSet()) {
                        DatabaseUtils.bindObjectToProgram(statement, getColumnIndex(entry.getKey()), entry.getValue());
                    }
                    long executeInsert = statement.executeInsert();
                    this.mDb.setTransactionSuccessful();
                    this.mDb.endTransaction();
                    return executeInsert;
                } catch (SQLException e10) {
                    Log.e(DatabaseUtils.TAG, "Error inserting " + contentValues + " into table  " + this.mTableName, e10);
                    this.mDb.endTransaction();
                    return -1L;
                }
            } catch (Throwable th2) {
                this.mDb.endTransaction();
                throw th2;
            }
        }

        public void bind(int i10, double d10) {
            this.mPreparedStatement.bindDouble(i10, d10);
        }

        public void bindNull(int i10) {
            this.mPreparedStatement.bindNull(i10);
        }

        public void close() {
            SQLiteStatement sQLiteStatement = this.mInsertStatement;
            if (sQLiteStatement != null) {
                sQLiteStatement.close();
                this.mInsertStatement = null;
            }
            SQLiteStatement sQLiteStatement2 = this.mReplaceStatement;
            if (sQLiteStatement2 != null) {
                sQLiteStatement2.close();
                this.mReplaceStatement = null;
            }
            this.mInsertSQL = null;
            this.mColumns = null;
        }

        public long execute() {
            SQLiteStatement sQLiteStatement = this.mPreparedStatement;
            if (sQLiteStatement != null) {
                try {
                    try {
                        return sQLiteStatement.executeInsert();
                    } catch (SQLException e10) {
                        Log.e(DatabaseUtils.TAG, "Error executing InsertHelper with table " + this.mTableName, e10);
                        this.mPreparedStatement = null;
                        return -1L;
                    }
                } finally {
                    this.mPreparedStatement = null;
                }
            }
            throw new IllegalStateException("you must prepare this inserter before calling execute");
        }

        public int getColumnIndex(String str) {
            getStatement(false);
            Integer num = this.mColumns.get(str);
            if (num != null) {
                return num.intValue();
            }
            throw new IllegalArgumentException("column '" + str + "' is invalid");
        }

        public long insert(ContentValues contentValues) {
            return insertInternal(contentValues, false);
        }

        public void prepareForInsert() {
            SQLiteStatement statement = getStatement(false);
            this.mPreparedStatement = statement;
            statement.clearBindings();
        }

        public void prepareForReplace() {
            SQLiteStatement statement = getStatement(true);
            this.mPreparedStatement = statement;
            statement.clearBindings();
        }

        public long replace(ContentValues contentValues) {
            return insertInternal(contentValues, true);
        }

        public void bind(int i10, float f10) {
            this.mPreparedStatement.bindDouble(i10, f10);
        }

        public void bind(int i10, long j10) {
            this.mPreparedStatement.bindLong(i10, j10);
        }

        public void bind(int i10, int i11) {
            this.mPreparedStatement.bindLong(i10, i11);
        }

        public void bind(int i10, boolean z10) {
            this.mPreparedStatement.bindLong(i10, z10 ? 1L : 0L);
        }

        public void bind(int i10, byte[] bArr) {
            if (bArr == null) {
                this.mPreparedStatement.bindNull(i10);
            } else {
                this.mPreparedStatement.bindBlob(i10, bArr);
            }
        }

        public void bind(int i10, String str) {
            if (str == null) {
                this.mPreparedStatement.bindNull(i10);
            } else {
                this.mPreparedStatement.bindString(i10, str);
            }
        }
    }

    public static void appendEscapedSQLString(StringBuilder sb2, String str) {
        sb2.append('\'');
        if (str.indexOf(39) != -1) {
            int length = str.length();
            for (int i10 = 0; i10 < length; i10++) {
                char charAt = str.charAt(i10);
                if (charAt == '\'') {
                    sb2.append('\'');
                }
                sb2.append(charAt);
            }
        } else {
            sb2.append(str);
        }
        sb2.append('\'');
    }

    public static String[] appendSelectionArgs(String[] strArr, String[] strArr2) {
        if (strArr != null && strArr.length != 0) {
            String[] strArr3 = new String[strArr.length + strArr2.length];
            System.arraycopy(strArr, 0, strArr3, 0, strArr.length);
            System.arraycopy(strArr2, 0, strArr3, strArr.length, strArr2.length);
            return strArr3;
        }
        return strArr2;
    }

    public static final void appendValueToSql(StringBuilder sb2, Object obj) {
        if (obj == null) {
            sb2.append("NULL");
        } else if (obj instanceof Boolean) {
            if (((Boolean) obj).booleanValue()) {
                sb2.append('1');
            } else {
                sb2.append('0');
            }
        } else {
            appendEscapedSQLString(sb2, obj.toString());
        }
    }

    public static void bindObjectToProgram(SQLiteProgram sQLiteProgram, int i10, Object obj) {
        if (obj == null) {
            sQLiteProgram.bindNull(i10);
        } else if (!(obj instanceof Double) && !(obj instanceof Float)) {
            if (obj instanceof Number) {
                sQLiteProgram.bindLong(i10, ((Number) obj).longValue());
            } else if (obj instanceof Boolean) {
                if (((Boolean) obj).booleanValue()) {
                    sQLiteProgram.bindLong(i10, 1L);
                } else {
                    sQLiteProgram.bindLong(i10, 0L);
                }
            } else if (obj instanceof byte[]) {
                sQLiteProgram.bindBlob(i10, (byte[]) obj);
            } else {
                sQLiteProgram.bindString(i10, obj.toString());
            }
        } else {
            sQLiteProgram.bindDouble(i10, ((Number) obj).doubleValue());
        }
    }

    public static String concatenateWhere(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return str2;
        }
        if (TextUtils.isEmpty(str2)) {
            return str;
        }
        return "(" + str + ") AND (" + str2 + ")";
    }

    public static void createDbFromSqlStatements(Context context, String str, byte[] bArr, SQLiteCipherSpec sQLiteCipherSpec, int i10, String str2) {
        String[] split;
        SQLiteDatabase openOrCreateDatabase = com.tencent.wcdb.support.Context.openOrCreateDatabase(context, str, bArr, sQLiteCipherSpec, 0, null);
        for (String str3 : TextUtils.split(str2, ";\n")) {
            if (!TextUtils.isEmpty(str3)) {
                openOrCreateDatabase.execSQL(str3);
            }
        }
        openOrCreateDatabase.setVersion(i10);
        openOrCreateDatabase.close();
    }

    public static void cursorDoubleToContentValues(Cursor cursor, String str, ContentValues contentValues, String str2) {
        int columnIndex = cursor.getColumnIndex(str);
        if (!cursor.isNull(columnIndex)) {
            contentValues.put(str2, Double.valueOf(cursor.getDouble(columnIndex)));
        } else {
            contentValues.put(str2, (Double) null);
        }
    }

    public static void cursorDoubleToContentValuesIfPresent(Cursor cursor, ContentValues contentValues, String str) {
        int columnIndex = cursor.getColumnIndex(str);
        if (columnIndex != -1 && !cursor.isNull(columnIndex)) {
            contentValues.put(str, Double.valueOf(cursor.getDouble(columnIndex)));
        }
    }

    public static void cursorDoubleToCursorValues(Cursor cursor, String str, ContentValues contentValues) {
        cursorDoubleToContentValues(cursor, str, contentValues, str);
    }

    public static void cursorFillWindow(Cursor cursor, int i10, CursorWindow cursorWindow) {
        boolean putNull;
        if (i10 >= 0 && i10 < cursor.getCount()) {
            int position = cursor.getPosition();
            int columnCount = cursor.getColumnCount();
            cursorWindow.clear();
            cursorWindow.setStartPosition(i10);
            cursorWindow.setNumColumns(columnCount);
            if (cursor.moveToPosition(i10)) {
                while (cursorWindow.allocRow()) {
                    int i11 = 0;
                    while (true) {
                        if (i11 >= columnCount) {
                            break;
                        }
                        int type = cursor.getType(i11);
                        if (type != 0) {
                            if (type != 1) {
                                if (type != 2) {
                                    if (type != 4) {
                                        String string = cursor.getString(i11);
                                        if (string != null) {
                                            putNull = cursorWindow.putString(string, i10, i11);
                                        } else {
                                            putNull = cursorWindow.putNull(i10, i11);
                                        }
                                    } else {
                                        byte[] blob = cursor.getBlob(i11);
                                        if (blob != null) {
                                            putNull = cursorWindow.putBlob(blob, i10, i11);
                                        } else {
                                            putNull = cursorWindow.putNull(i10, i11);
                                        }
                                    }
                                } else {
                                    putNull = cursorWindow.putDouble(cursor.getDouble(i11), i10, i11);
                                }
                            } else {
                                putNull = cursorWindow.putLong(cursor.getLong(i11), i10, i11);
                            }
                        } else {
                            putNull = cursorWindow.putNull(i10, i11);
                        }
                        if (!putNull) {
                            cursorWindow.freeLastRow();
                            break;
                        }
                        i11++;
                    }
                    i10++;
                    if (!cursor.moveToNext()) {
                        break;
                    }
                }
            }
            cursor.moveToPosition(position);
        }
    }

    public static void cursorFloatToContentValuesIfPresent(Cursor cursor, ContentValues contentValues, String str) {
        int columnIndex = cursor.getColumnIndex(str);
        if (columnIndex != -1 && !cursor.isNull(columnIndex)) {
            contentValues.put(str, Float.valueOf(cursor.getFloat(columnIndex)));
        }
    }

    public static void cursorIntToContentValues(Cursor cursor, String str, ContentValues contentValues) {
        cursorIntToContentValues(cursor, str, contentValues, str);
    }

    public static void cursorIntToContentValuesIfPresent(Cursor cursor, ContentValues contentValues, String str) {
        int columnIndex = cursor.getColumnIndex(str);
        if (columnIndex != -1 && !cursor.isNull(columnIndex)) {
            contentValues.put(str, Integer.valueOf(cursor.getInt(columnIndex)));
        }
    }

    public static void cursorLongToContentValues(Cursor cursor, String str, ContentValues contentValues) {
        cursorLongToContentValues(cursor, str, contentValues, str);
    }

    public static void cursorLongToContentValuesIfPresent(Cursor cursor, ContentValues contentValues, String str) {
        int columnIndex = cursor.getColumnIndex(str);
        if (columnIndex != -1 && !cursor.isNull(columnIndex)) {
            contentValues.put(str, Long.valueOf(cursor.getLong(columnIndex)));
        }
    }

    public static int cursorPickFillWindowStartPosition(int i10, int i11) {
        return Math.max(i10 - (i11 / 3), 0);
    }

    public static void cursorRowToContentValues(Cursor cursor, ContentValues contentValues) {
        AbstractWindowedCursor abstractWindowedCursor;
        if (cursor instanceof AbstractWindowedCursor) {
            abstractWindowedCursor = (AbstractWindowedCursor) cursor;
        } else {
            abstractWindowedCursor = null;
        }
        String[] columnNames = cursor.getColumnNames();
        int length = columnNames.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (abstractWindowedCursor != null && abstractWindowedCursor.isBlob(i10)) {
                contentValues.put(columnNames[i10], cursor.getBlob(i10));
            } else {
                contentValues.put(columnNames[i10], cursor.getString(i10));
            }
        }
    }

    public static void cursorShortToContentValuesIfPresent(Cursor cursor, ContentValues contentValues, String str) {
        int columnIndex = cursor.getColumnIndex(str);
        if (columnIndex != -1 && !cursor.isNull(columnIndex)) {
            contentValues.put(str, Short.valueOf(cursor.getShort(columnIndex)));
        }
    }

    public static void cursorStringToContentValues(Cursor cursor, String str, ContentValues contentValues) {
        cursorStringToContentValues(cursor, str, contentValues, str);
    }

    public static void cursorStringToContentValuesIfPresent(Cursor cursor, ContentValues contentValues, String str) {
        int columnIndex = cursor.getColumnIndex(str);
        if (columnIndex != -1 && !cursor.isNull(columnIndex)) {
            contentValues.put(str, cursor.getString(columnIndex));
        }
    }

    public static void cursorStringToInsertHelper(Cursor cursor, String str, InsertHelper insertHelper, int i10) {
        insertHelper.bind(i10, cursor.getString(cursor.getColumnIndexOrThrow(str)));
    }

    public static void dumpCurrentRow(Cursor cursor) {
        dumpCurrentRow(cursor, System.out);
    }

    public static String dumpCurrentRowToString(Cursor cursor) {
        StringBuilder sb2 = new StringBuilder();
        dumpCurrentRow(cursor, sb2);
        return sb2.toString();
    }

    public static void dumpCursor(Cursor cursor) {
        dumpCursor(cursor, System.out);
    }

    public static String dumpCursorToString(Cursor cursor) {
        StringBuilder sb2 = new StringBuilder();
        dumpCursor(cursor, sb2);
        return sb2.toString();
    }

    private static char[] encodeHex(byte[] bArr) {
        char[] cArr = new char[bArr.length << 1];
        int i10 = 0;
        for (byte b10 : bArr) {
            int i11 = i10 + 1;
            char[] cArr2 = DIGITS;
            cArr[i10] = cArr2[(b10 & 240) >>> 4];
            i10 += 2;
            cArr[i11] = cArr2[b10 & 15];
        }
        return cArr;
    }

    private static int extractSqlCode(String str) {
        int i10 = 0;
        for (int i11 = 0; i11 < 3; i11++) {
            int charAt = str.charAt(i11);
            if (charAt >= 97 && charAt <= 122) {
                charAt -= 32;
            } else if (charAt >= 128) {
                return 0;
            }
            i10 |= (charAt & 127) << (i11 * 8);
        }
        return i10;
    }

    public static int findRowIdColumnIndex(String[] strArr) {
        int length = strArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (strArr[i10].equals("_id")) {
                return i10;
            }
        }
        return -1;
    }

    public static String getCollationKey(String str) {
        byte[] collationKeyInBytes = getCollationKeyInBytes(str);
        try {
            return new String(collationKeyInBytes, 0, getKeyLen(collationKeyInBytes), "ISO8859_1");
        } catch (Exception unused) {
            return "";
        }
    }

    private static byte[] getCollationKeyInBytes(String str) {
        if (mColl == null) {
            Collator collator = Collator.getInstance();
            mColl = collator;
            collator.setStrength(0);
        }
        return mColl.getCollationKey(str).toByteArray();
    }

    public static String getHexCollationKey(String str) {
        byte[] collationKeyInBytes = getCollationKeyInBytes(str);
        return new String(encodeHex(collationKeyInBytes), 0, getKeyLen(collationKeyInBytes) * 2);
    }

    private static int getKeyLen(byte[] bArr) {
        if (bArr[bArr.length - 1] != 0) {
            return bArr.length;
        }
        return bArr.length - 1;
    }

    public static int getSqlStatementType(String str) {
        String trim = str.trim();
        if (trim.length() < 3) {
            return 99;
        }
        switch (extractSqlCode(trim)) {
            case 4279873:
            case 5522756:
                return 9;
            case 4280912:
                return 7;
            case 4476485:
            case 5066563:
                return 5;
            case 4477013:
            case 4998468:
            case 5260626:
            case 5459529:
                return 2;
            case 4543043:
            case 5198404:
            case 5524545:
                return 8;
            case 4670786:
                return 4;
            case 4998483:
                return 1;
            case 5001042:
                return 6;
            case 5526593:
                return 3;
            default:
                return 99;
        }
    }

    public static int getTypeOfObject(Object obj) {
        if (obj == null) {
            return 0;
        }
        if (obj instanceof byte[]) {
            return 4;
        }
        if (!(obj instanceof Float) && !(obj instanceof Double)) {
            if (!(obj instanceof Long) && !(obj instanceof Integer) && !(obj instanceof Short) && !(obj instanceof Byte)) {
                return 3;
            }
            return 1;
        }
        return 2;
    }

    public static long longForQuery(SQLiteDatabase sQLiteDatabase, String str, String[] strArr) {
        SQLiteStatement compileStatement = sQLiteDatabase.compileStatement(str);
        try {
            return longForQuery(compileStatement, strArr);
        } finally {
            compileStatement.close();
        }
    }

    public static boolean objectEquals(Object obj, Object obj2) {
        if (obj != obj2 && (obj == null || !obj.equals(obj2))) {
            return false;
        }
        return true;
    }

    public static boolean queryIsEmpty(SQLiteDatabase sQLiteDatabase, String str) {
        if (longForQuery(sQLiteDatabase, "select exists(select 1 from " + str + ")", null) == 0) {
            return true;
        }
        return false;
    }

    public static long queryNumEntries(SQLiteDatabase sQLiteDatabase, String str) {
        return queryNumEntries(sQLiteDatabase, str, null, null);
    }

    private static final int readExceptionCode(Parcel parcel) {
        int readInt = parcel.readInt();
        if (readInt == EX_HAS_REPLY_HEADER) {
            if (parcel.readInt() == 0) {
                Log.e(TAG, "Unexpected zero-sized Parcel reply header.");
                return 0;
            }
            return 0;
        }
        return readInt;
    }

    public static final void readExceptionFromParcel(Parcel parcel) {
        int readExceptionCode = readExceptionCode(parcel);
        if (readExceptionCode == 0) {
            return;
        }
        readExceptionFromParcel(parcel, parcel.readString(), readExceptionCode);
    }

    public static void readExceptionWithFileNotFoundExceptionFromParcel(Parcel parcel) throws FileNotFoundException {
        int readExceptionCode = readExceptionCode(parcel);
        if (readExceptionCode == 0) {
            return;
        }
        String readString = parcel.readString();
        if (readExceptionCode != 1) {
            readExceptionFromParcel(parcel, readString, readExceptionCode);
            return;
        }
        throw new FileNotFoundException(readString);
    }

    public static void readExceptionWithOperationApplicationExceptionFromParcel(Parcel parcel) throws OperationApplicationException {
        int readExceptionCode = readExceptionCode(parcel);
        if (readExceptionCode == 0) {
            return;
        }
        String readString = parcel.readString();
        if (readExceptionCode != 10) {
            readExceptionFromParcel(parcel, readString, readExceptionCode);
            return;
        }
        throw new OperationApplicationException(readString);
    }

    public static String sqlEscapeString(String str) {
        StringBuilder sb2 = new StringBuilder();
        appendEscapedSQLString(sb2, str);
        return sb2.toString();
    }

    public static String stringForQuery(SQLiteDatabase sQLiteDatabase, String str, String[] strArr) {
        SQLiteStatement compileStatement = sQLiteDatabase.compileStatement(str);
        try {
            return stringForQuery(compileStatement, strArr);
        } finally {
            compileStatement.close();
        }
    }

    public static final void writeExceptionToParcel(Parcel parcel, Exception exc) {
        int i10;
        boolean z10 = false;
        int i11 = 1;
        if (!(exc instanceof FileNotFoundException)) {
            if (exc instanceof IllegalArgumentException) {
                i10 = 2;
            } else if (exc instanceof UnsupportedOperationException) {
                i10 = 3;
            } else if (exc instanceof SQLiteAbortException) {
                i10 = 4;
            } else if (exc instanceof SQLiteConstraintException) {
                i10 = 5;
            } else if (exc instanceof SQLiteDatabaseCorruptException) {
                i10 = 6;
            } else if (exc instanceof SQLiteFullException) {
                i10 = 7;
            } else if (exc instanceof SQLiteDiskIOException) {
                i10 = 8;
            } else if (exc instanceof SQLiteException) {
                i10 = 9;
            } else if (exc instanceof OperationApplicationException) {
                i10 = 10;
            } else if (exc instanceof OperationCanceledException) {
                i11 = 11;
            } else {
                parcel.writeException(exc);
                Log.e(TAG, "Writing exception to parcel", exc);
                return;
            }
            z10 = true;
            i11 = i10;
        }
        parcel.writeInt(i11);
        parcel.writeString(exc.getMessage());
        if (z10) {
            Log.e(TAG, "Writing exception to parcel", exc);
        }
    }

    public static void cursorIntToContentValues(Cursor cursor, String str, ContentValues contentValues, String str2) {
        int columnIndex = cursor.getColumnIndex(str);
        if (!cursor.isNull(columnIndex)) {
            contentValues.put(str2, Integer.valueOf(cursor.getInt(columnIndex)));
        } else {
            contentValues.put(str2, (Integer) null);
        }
    }

    public static void cursorLongToContentValues(Cursor cursor, String str, ContentValues contentValues, String str2) {
        int columnIndex = cursor.getColumnIndex(str);
        if (!cursor.isNull(columnIndex)) {
            contentValues.put(str2, Long.valueOf(cursor.getLong(columnIndex)));
        } else {
            contentValues.put(str2, (Long) null);
        }
    }

    public static void cursorStringToContentValues(Cursor cursor, String str, ContentValues contentValues, String str2) {
        contentValues.put(str2, cursor.getString(cursor.getColumnIndexOrThrow(str)));
    }

    public static void dumpCurrentRow(Cursor cursor, PrintStream printStream) {
        String str;
        String[] columnNames = cursor.getColumnNames();
        printStream.println("" + cursor.getPosition() + " {");
        int length = columnNames.length;
        for (int i10 = 0; i10 < length; i10++) {
            try {
                str = cursor.getString(i10);
            } catch (SQLiteException unused) {
                str = "<unprintable>";
            }
            printStream.println("   " + columnNames[i10] + '=' + str);
        }
        printStream.println("}");
    }

    public static void dumpCursor(Cursor cursor, PrintStream printStream) {
        printStream.println(">>>>> Dumping cursor " + cursor);
        if (cursor != null) {
            int position = cursor.getPosition();
            cursor.moveToPosition(-1);
            while (cursor.moveToNext()) {
                dumpCurrentRow(cursor, printStream);
            }
            cursor.moveToPosition(position);
        }
        printStream.println("<<<<<");
    }

    public static long queryNumEntries(SQLiteDatabase sQLiteDatabase, String str, String str2) {
        return queryNumEntries(sQLiteDatabase, str, str2, null);
    }

    public static long queryNumEntries(SQLiteDatabase sQLiteDatabase, String str, String str2, String[] strArr) {
        String str3;
        if (TextUtils.isEmpty(str2)) {
            str3 = "";
        } else {
            str3 = " where " + str2;
        }
        return longForQuery(sQLiteDatabase, "select count(*) from " + str + str3, strArr);
    }

    public static long longForQuery(SQLiteStatement sQLiteStatement, String[] strArr) {
        sQLiteStatement.bindAllArgsAsStrings(strArr);
        return sQLiteStatement.simpleQueryForLong();
    }

    private static final void readExceptionFromParcel(Parcel parcel, String str, int i10) {
        switch (i10) {
            case 2:
                throw new IllegalArgumentException(str);
            case 3:
                throw new UnsupportedOperationException(str);
            case 4:
                throw new SQLiteAbortException(str);
            case 5:
                throw new SQLiteConstraintException(str);
            case 6:
                throw new SQLiteDatabaseCorruptException(str);
            case 7:
                throw new SQLiteFullException(str);
            case 8:
                throw new SQLiteDiskIOException(str);
            case 9:
                throw new SQLiteException(str);
            case 10:
            default:
                parcel.readException(i10, str);
                return;
            case 11:
                throw new OperationCanceledException(str);
        }
    }

    public static String stringForQuery(SQLiteStatement sQLiteStatement, String[] strArr) {
        sQLiteStatement.bindAllArgsAsStrings(strArr);
        return sQLiteStatement.simpleQueryForString();
    }

    public static void createDbFromSqlStatements(Context context, String str, int i10, String str2) {
        createDbFromSqlStatements(context, str, null, null, i10, str2);
    }

    public static void dumpCurrentRow(Cursor cursor, StringBuilder sb2) {
        String str;
        String[] columnNames = cursor.getColumnNames();
        sb2.append("" + cursor.getPosition() + " {\n");
        int length = columnNames.length;
        for (int i10 = 0; i10 < length; i10++) {
            try {
                str = cursor.getString(i10);
            } catch (SQLiteException unused) {
                str = "<unprintable>";
            }
            sb2.append("   " + columnNames[i10] + '=' + str + "\n");
        }
        sb2.append("}\n");
    }

    public static void dumpCursor(Cursor cursor, StringBuilder sb2) {
        sb2.append(">>>>> Dumping cursor " + cursor + "\n");
        if (cursor != null) {
            int position = cursor.getPosition();
            cursor.moveToPosition(-1);
            while (cursor.moveToNext()) {
                dumpCurrentRow(cursor, sb2);
            }
            cursor.moveToPosition(position);
        }
        sb2.append("<<<<<\n");
    }
}
