package androidx.sqlite.driver;

import android.database.Cursor;
import androidx.annotation.VisibleForTesting;
import androidx.sqlite.SQLite;
import androidx.sqlite.SQLiteStatement;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.db.SupportSQLiteProgram;
import androidx.sqlite.db.SupportSQLiteQuery;
import androidx.sqlite.driver.SupportSQLiteStatement;
import java.util.Arrays;
import java.util.Locale;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import ss.a;
/* compiled from: SupportSQLiteStatement.android.kt */
@Metadata
/* loaded from: classes2.dex */
public abstract class SupportSQLiteStatement implements SQLiteStatement {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull

    /* renamed from: db  reason: collision with root package name */
    private final SupportSQLiteDatabase f1661db;
    private boolean isClosed;
    @NotNull
    private final String sql;

    /* compiled from: SupportSQLiteStatement.android.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Companion {

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        /* compiled from: SupportSQLiteStatement.android.kt */
        @Metadata
        /* loaded from: classes2.dex */
        public static final class TransactionOperation {
            private static final /* synthetic */ a $ENTRIES;
            private static final /* synthetic */ TransactionOperation[] $VALUES;
            public static final TransactionOperation END = new TransactionOperation("END", 0);
            public static final TransactionOperation ROLLBACK = new TransactionOperation("ROLLBACK", 1);
            public static final TransactionOperation BEGIN_EXCLUSIVE = new TransactionOperation("BEGIN_EXCLUSIVE", 2);
            public static final TransactionOperation BEGIN_IMMEDIATE = new TransactionOperation("BEGIN_IMMEDIATE", 3);
            public static final TransactionOperation BEGIN_DEFERRED = new TransactionOperation("BEGIN_DEFERRED", 4);

            private static final /* synthetic */ TransactionOperation[] $values() {
                return new TransactionOperation[]{END, ROLLBACK, BEGIN_EXCLUSIVE, BEGIN_IMMEDIATE, BEGIN_DEFERRED};
            }

            static {
                TransactionOperation[] $values = $values();
                $VALUES = $values;
                $ENTRIES = kotlin.enums.a.a($values);
            }

            private TransactionOperation(String str, int i10) {
            }

            @NotNull
            public static a<TransactionOperation> getEntries() {
                return $ENTRIES;
            }

            public static TransactionOperation valueOf(String str) {
                return (TransactionOperation) Enum.valueOf(TransactionOperation.class, str);
            }

            public static TransactionOperation[] values() {
                return (TransactionOperation[]) $VALUES.clone();
            }
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final int getStatementPrefixIndex(String str) {
            int i10;
            int length = str.length() - 2;
            if (length < 0) {
                return -1;
            }
            int i11 = 0;
            while (i11 < length) {
                char charAt = str.charAt(i11);
                if (Intrinsics.compare((int) charAt, 32) > 0) {
                    if (charAt == '-') {
                        if (str.charAt(i11 + 1) != '-') {
                            return i11;
                        }
                        i11 = StringsKt.p0(str, '\n', i11 + 2, false, 4, null);
                        if (i11 < 0) {
                            return -1;
                        }
                    } else if (charAt == '/') {
                        int i12 = i11 + 1;
                        if (str.charAt(i12) != '*') {
                            return i11;
                        }
                        do {
                            i12 = StringsKt.p0(str, '*', i12 + 1, false, 4, null);
                            if (i12 < 0) {
                                return -1;
                            }
                            i10 = i12 + 1;
                            if (i10 >= length) {
                                break;
                            }
                        } while (str.charAt(i10) != '/');
                        i11 = i12 + 2;
                    } else {
                        return i11;
                    }
                }
                i11++;
            }
            return -1;
        }

        private final TransactionOperation getTransactionOperation(String str, String str2) {
            switch (str.hashCode()) {
                case 65636:
                    if (!str.equals("BEG")) {
                        return null;
                    }
                    if (StringsKt.b0(str2, "EXCLUSIVE", false, 2, null)) {
                        return TransactionOperation.BEGIN_EXCLUSIVE;
                    }
                    if (StringsKt.b0(str2, "IMMEDIATE", false, 2, null)) {
                        return TransactionOperation.BEGIN_IMMEDIATE;
                    }
                    return TransactionOperation.BEGIN_DEFERRED;
                case 66913:
                    if (!str.equals("COM")) {
                        return null;
                    }
                    break;
                case 68795:
                    if (!str.equals("END")) {
                        return null;
                    }
                    break;
                case 81327:
                    if (!str.equals("ROL") || StringsKt.b0(str2, " TO ", false, 2, null)) {
                        return null;
                    }
                    return TransactionOperation.ROLLBACK;
                default:
                    return null;
            }
            return TransactionOperation.END;
        }

        private final boolean isRowStatement(String str) {
            int hashCode = str.hashCode();
            if (hashCode == 79487 ? str.equals("PRA") : !(hashCode == 81978 ? !str.equals("SEL") : !(hashCode == 85954 && str.equals("WIT")))) {
                return true;
            }
            return false;
        }

        @NotNull
        public final SupportSQLiteStatement create(@NotNull SupportSQLiteDatabase db2, @NotNull String sql) {
            Intrinsics.checkNotNullParameter(db2, "db");
            Intrinsics.checkNotNullParameter(sql, "sql");
            String upperCase = StringsKt.v1(sql).toString().toUpperCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
            String statementPrefix$sqlite_framework = getStatementPrefix$sqlite_framework(upperCase);
            if (statementPrefix$sqlite_framework == null) {
                return new OtherSQLiteStatement(db2, sql);
            }
            TransactionOperation transactionOperation = getTransactionOperation(statementPrefix$sqlite_framework, upperCase);
            if (transactionOperation != null) {
                return new TransactionSQLiteStatement(db2, sql, transactionOperation);
            }
            if (isRowStatement(statementPrefix$sqlite_framework)) {
                return new RowSQLiteStatement(db2, sql);
            }
            return new OtherSQLiteStatement(db2, sql);
        }

        @VisibleForTesting
        @Nullable
        public final String getStatementPrefix$sqlite_framework(@NotNull String sql) {
            Intrinsics.checkNotNullParameter(sql, "sql");
            int statementPrefixIndex = getStatementPrefixIndex(sql);
            if (statementPrefixIndex >= 0 && statementPrefixIndex <= sql.length()) {
                String substring = sql.substring(statementPrefixIndex, Math.min(statementPrefixIndex + 3, sql.length()));
                Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
                return substring;
            }
            return null;
        }

        private Companion() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SupportSQLiteStatement.android.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class OtherSQLiteStatement extends SupportSQLiteStatement {
        @NotNull
        private final androidx.sqlite.db.SupportSQLiteStatement delegate;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OtherSQLiteStatement(@NotNull SupportSQLiteDatabase db2, @NotNull String sql) {
            super(db2, sql, null);
            Intrinsics.checkNotNullParameter(db2, "db");
            Intrinsics.checkNotNullParameter(sql, "sql");
            this.delegate = db2.compileStatement(sql);
        }

        @Override // androidx.sqlite.SQLiteStatement
        /* renamed from: bindBlob */
        public void mo4329bindBlob(int i10, @NotNull byte[] value) {
            Intrinsics.checkNotNullParameter(value, "value");
            throwIfClosed();
            this.delegate.bindBlob(i10, value);
        }

        @Override // androidx.sqlite.SQLiteStatement
        /* renamed from: bindDouble */
        public void mo4330bindDouble(int i10, double d10) {
            throwIfClosed();
            this.delegate.bindDouble(i10, d10);
        }

        @Override // androidx.sqlite.SQLiteStatement
        /* renamed from: bindLong */
        public void mo4331bindLong(int i10, long j10) {
            throwIfClosed();
            this.delegate.bindLong(i10, j10);
        }

        @Override // androidx.sqlite.SQLiteStatement
        /* renamed from: bindNull */
        public void mo4332bindNull(int i10) {
            throwIfClosed();
            this.delegate.bindNull(i10);
        }

        @Override // androidx.sqlite.SQLiteStatement
        /* renamed from: bindText */
        public void mo4333bindText(int i10, @NotNull String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            throwIfClosed();
            this.delegate.bindString(i10, value);
        }

        @Override // androidx.sqlite.SQLiteStatement
        /* renamed from: clearBindings */
        public void mo4334clearBindings() {
            throwIfClosed();
            this.delegate.clearBindings();
        }

        @Override // androidx.sqlite.SQLiteStatement, java.lang.AutoCloseable
        public void close() {
            this.delegate.close();
            setClosed(true);
        }

        @Override // androidx.sqlite.SQLiteStatement
        @NotNull
        public byte[] getBlob(int i10) {
            throwIfClosed();
            SQLite.throwSQLiteException(21, "no row");
            throw new KotlinNothingValueException();
        }

        @Override // androidx.sqlite.SQLiteStatement
        public int getColumnCount() {
            throwIfClosed();
            return 0;
        }

        @Override // androidx.sqlite.SQLiteStatement
        @NotNull
        public String getColumnName(int i10) {
            throwIfClosed();
            SQLite.throwSQLiteException(21, "no row");
            throw new KotlinNothingValueException();
        }

        @Override // androidx.sqlite.SQLiteStatement
        public int getColumnType(int i10) {
            throwIfClosed();
            SQLite.throwSQLiteException(21, "no row");
            throw new KotlinNothingValueException();
        }

        @Override // androidx.sqlite.SQLiteStatement
        public double getDouble(int i10) {
            throwIfClosed();
            SQLite.throwSQLiteException(21, "no row");
            throw new KotlinNothingValueException();
        }

        @Override // androidx.sqlite.SQLiteStatement
        public long getLong(int i10) {
            throwIfClosed();
            SQLite.throwSQLiteException(21, "no row");
            throw new KotlinNothingValueException();
        }

        @Override // androidx.sqlite.SQLiteStatement
        @NotNull
        public String getText(int i10) {
            throwIfClosed();
            SQLite.throwSQLiteException(21, "no row");
            throw new KotlinNothingValueException();
        }

        @Override // androidx.sqlite.SQLiteStatement
        public boolean isNull(int i10) {
            throwIfClosed();
            SQLite.throwSQLiteException(21, "no row");
            throw new KotlinNothingValueException();
        }

        @Override // androidx.sqlite.SQLiteStatement
        public void reset() {
            throwIfClosed();
        }

        @Override // androidx.sqlite.SQLiteStatement
        public boolean step() {
            throwIfClosed();
            this.delegate.execute();
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SupportSQLiteStatement.android.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class RowSQLiteStatement extends SupportSQLiteStatement {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull
        private int[] bindingTypes;
        @NotNull
        private byte[][] blobBindings;
        @Nullable
        private Cursor cursor;
        @NotNull
        private double[] doubleBindings;
        @NotNull
        private long[] longBindings;
        @NotNull
        private String[] stringBindings;

        /* compiled from: SupportSQLiteStatement.android.kt */
        @Metadata
        /* loaded from: classes2.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final int getDataType(Cursor cursor, int i10) {
                int type = cursor.getType(i10);
                int type2 = cursor.getType(i10);
                if (type2 != 0) {
                    if (type2 == 1) {
                        return 1;
                    }
                    if (type2 == 2) {
                        return 2;
                    }
                    if (type2 == 3) {
                        return 3;
                    }
                    if (type2 == 4) {
                        return 4;
                    }
                    throw new IllegalStateException(("Unknown field type: " + type).toString());
                }
                return 5;
            }

            private Companion() {
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public RowSQLiteStatement(@NotNull SupportSQLiteDatabase db2, @NotNull String sql) {
            super(db2, sql, null);
            Intrinsics.checkNotNullParameter(db2, "db");
            Intrinsics.checkNotNullParameter(sql, "sql");
            this.bindingTypes = new int[0];
            this.longBindings = new long[0];
            this.doubleBindings = new double[0];
            this.stringBindings = new String[0];
            this.blobBindings = new byte[0];
        }

        private final void ensureCapacity(int i10, int i11) {
            int i12 = i11 + 1;
            int[] iArr = this.bindingTypes;
            if (iArr.length < i12) {
                int[] copyOf = Arrays.copyOf(iArr, i12);
                Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
                this.bindingTypes = copyOf;
            }
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 == 4) {
                            byte[][] bArr = this.blobBindings;
                            if (bArr.length < i12) {
                                Object[] copyOf2 = Arrays.copyOf(bArr, i12);
                                Intrinsics.checkNotNullExpressionValue(copyOf2, "copyOf(...)");
                                this.blobBindings = (byte[][]) copyOf2;
                                return;
                            }
                            return;
                        }
                        return;
                    }
                    String[] strArr = this.stringBindings;
                    if (strArr.length < i12) {
                        Object[] copyOf3 = Arrays.copyOf(strArr, i12);
                        Intrinsics.checkNotNullExpressionValue(copyOf3, "copyOf(...)");
                        this.stringBindings = (String[]) copyOf3;
                        return;
                    }
                    return;
                }
                double[] dArr = this.doubleBindings;
                if (dArr.length < i12) {
                    double[] copyOf4 = Arrays.copyOf(dArr, i12);
                    Intrinsics.checkNotNullExpressionValue(copyOf4, "copyOf(...)");
                    this.doubleBindings = copyOf4;
                    return;
                }
                return;
            }
            long[] jArr = this.longBindings;
            if (jArr.length < i12) {
                long[] copyOf5 = Arrays.copyOf(jArr, i12);
                Intrinsics.checkNotNullExpressionValue(copyOf5, "copyOf(...)");
                this.longBindings = copyOf5;
            }
        }

        private final void ensureCursor() {
            if (this.cursor == null) {
                this.cursor = getDb().query(new SupportSQLiteQuery() { // from class: androidx.sqlite.driver.SupportSQLiteStatement$RowSQLiteStatement$ensureCursor$1
                    @Override // androidx.sqlite.db.SupportSQLiteQuery
                    public void bindTo(SupportSQLiteProgram statement) {
                        int[] iArr;
                        int[] iArr2;
                        long[] jArr;
                        double[] dArr;
                        String[] strArr;
                        byte[][] bArr;
                        Intrinsics.checkNotNullParameter(statement, "statement");
                        iArr = SupportSQLiteStatement.RowSQLiteStatement.this.bindingTypes;
                        int length = iArr.length;
                        for (int i10 = 1; i10 < length; i10++) {
                            iArr2 = SupportSQLiteStatement.RowSQLiteStatement.this.bindingTypes;
                            int i11 = iArr2[i10];
                            if (i11 == 1) {
                                jArr = SupportSQLiteStatement.RowSQLiteStatement.this.longBindings;
                                statement.bindLong(i10, jArr[i10]);
                            } else if (i11 == 2) {
                                dArr = SupportSQLiteStatement.RowSQLiteStatement.this.doubleBindings;
                                statement.bindDouble(i10, dArr[i10]);
                            } else if (i11 == 3) {
                                strArr = SupportSQLiteStatement.RowSQLiteStatement.this.stringBindings;
                                String str = strArr[i10];
                                Intrinsics.checkNotNull(str);
                                statement.bindString(i10, str);
                            } else if (i11 == 4) {
                                bArr = SupportSQLiteStatement.RowSQLiteStatement.this.blobBindings;
                                byte[] bArr2 = bArr[i10];
                                Intrinsics.checkNotNull(bArr2);
                                statement.bindBlob(i10, bArr2);
                            } else if (i11 == 5) {
                                statement.bindNull(i10);
                            }
                        }
                    }

                    @Override // androidx.sqlite.db.SupportSQLiteQuery
                    public int getArgCount() {
                        int[] iArr;
                        iArr = SupportSQLiteStatement.RowSQLiteStatement.this.bindingTypes;
                        return iArr.length;
                    }

                    @Override // androidx.sqlite.db.SupportSQLiteQuery
                    public String getSql() {
                        return SupportSQLiteStatement.RowSQLiteStatement.this.getSql();
                    }
                });
            }
        }

        private final void throwIfInvalidColumn(Cursor cursor, int i10) {
            if (i10 >= 0 && i10 < cursor.getColumnCount()) {
                return;
            }
            SQLite.throwSQLiteException(25, "column index out of range");
            throw new KotlinNothingValueException();
        }

        private final Cursor throwIfNoRow() {
            Cursor cursor = this.cursor;
            if (cursor != null) {
                return cursor;
            }
            SQLite.throwSQLiteException(21, "no row");
            throw new KotlinNothingValueException();
        }

        @Override // androidx.sqlite.SQLiteStatement
        /* renamed from: bindBlob */
        public void mo4329bindBlob(int i10, @NotNull byte[] value) {
            Intrinsics.checkNotNullParameter(value, "value");
            throwIfClosed();
            ensureCapacity(4, i10);
            this.bindingTypes[i10] = 4;
            this.blobBindings[i10] = value;
        }

        @Override // androidx.sqlite.SQLiteStatement
        /* renamed from: bindDouble */
        public void mo4330bindDouble(int i10, double d10) {
            throwIfClosed();
            ensureCapacity(2, i10);
            this.bindingTypes[i10] = 2;
            this.doubleBindings[i10] = d10;
        }

        @Override // androidx.sqlite.SQLiteStatement
        /* renamed from: bindLong */
        public void mo4331bindLong(int i10, long j10) {
            throwIfClosed();
            ensureCapacity(1, i10);
            this.bindingTypes[i10] = 1;
            this.longBindings[i10] = j10;
        }

        @Override // androidx.sqlite.SQLiteStatement
        /* renamed from: bindNull */
        public void mo4332bindNull(int i10) {
            throwIfClosed();
            ensureCapacity(5, i10);
            this.bindingTypes[i10] = 5;
        }

        @Override // androidx.sqlite.SQLiteStatement
        /* renamed from: bindText */
        public void mo4333bindText(int i10, @NotNull String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            throwIfClosed();
            ensureCapacity(3, i10);
            this.bindingTypes[i10] = 3;
            this.stringBindings[i10] = value;
        }

        @Override // androidx.sqlite.SQLiteStatement
        /* renamed from: clearBindings */
        public void mo4334clearBindings() {
            throwIfClosed();
            this.bindingTypes = new int[0];
            this.longBindings = new long[0];
            this.doubleBindings = new double[0];
            this.stringBindings = new String[0];
            this.blobBindings = new byte[0];
        }

        @Override // androidx.sqlite.SQLiteStatement, java.lang.AutoCloseable
        public void close() {
            if (!isClosed()) {
                mo4334clearBindings();
                reset();
            }
            setClosed(true);
        }

        @Override // androidx.sqlite.SQLiteStatement
        @NotNull
        public byte[] getBlob(int i10) {
            throwIfClosed();
            Cursor throwIfNoRow = throwIfNoRow();
            throwIfInvalidColumn(throwIfNoRow, i10);
            byte[] blob = throwIfNoRow.getBlob(i10);
            Intrinsics.checkNotNullExpressionValue(blob, "getBlob(...)");
            return blob;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public int getColumnCount() {
            throwIfClosed();
            ensureCursor();
            Cursor cursor = this.cursor;
            if (cursor != null) {
                return cursor.getColumnCount();
            }
            return 0;
        }

        @Override // androidx.sqlite.SQLiteStatement
        @NotNull
        public String getColumnName(int i10) {
            throwIfClosed();
            ensureCursor();
            Cursor cursor = this.cursor;
            if (cursor != null) {
                throwIfInvalidColumn(cursor, i10);
                String columnName = cursor.getColumnName(i10);
                Intrinsics.checkNotNullExpressionValue(columnName, "getColumnName(...)");
                return columnName;
            }
            throw new IllegalStateException("Required value was null.");
        }

        @Override // androidx.sqlite.SQLiteStatement
        public int getColumnType(int i10) {
            throwIfClosed();
            ensureCursor();
            Cursor cursor = this.cursor;
            if (cursor != null) {
                throwIfInvalidColumn(cursor, i10);
                return Companion.getDataType(cursor, i10);
            }
            throw new IllegalStateException("Required value was null.");
        }

        @Override // androidx.sqlite.SQLiteStatement
        public double getDouble(int i10) {
            throwIfClosed();
            Cursor throwIfNoRow = throwIfNoRow();
            throwIfInvalidColumn(throwIfNoRow, i10);
            return throwIfNoRow.getDouble(i10);
        }

        @Override // androidx.sqlite.SQLiteStatement
        public long getLong(int i10) {
            throwIfClosed();
            Cursor throwIfNoRow = throwIfNoRow();
            throwIfInvalidColumn(throwIfNoRow, i10);
            return throwIfNoRow.getLong(i10);
        }

        @Override // androidx.sqlite.SQLiteStatement
        @NotNull
        public String getText(int i10) {
            throwIfClosed();
            Cursor throwIfNoRow = throwIfNoRow();
            throwIfInvalidColumn(throwIfNoRow, i10);
            String string = throwIfNoRow.getString(i10);
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            return string;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public boolean isNull(int i10) {
            throwIfClosed();
            Cursor throwIfNoRow = throwIfNoRow();
            throwIfInvalidColumn(throwIfNoRow, i10);
            return throwIfNoRow.isNull(i10);
        }

        @Override // androidx.sqlite.SQLiteStatement
        public void reset() {
            throwIfClosed();
            Cursor cursor = this.cursor;
            if (cursor != null) {
                cursor.close();
            }
            this.cursor = null;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public boolean step() {
            throwIfClosed();
            ensureCursor();
            Cursor cursor = this.cursor;
            if (cursor != null) {
                return cursor.moveToNext();
            }
            throw new IllegalStateException("Required value was null.");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SupportSQLiteStatement.android.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class TransactionSQLiteStatement extends SupportSQLiteStatement {
        @NotNull
        private final Companion.TransactionOperation operation;

        /* compiled from: SupportSQLiteStatement.android.kt */
        @Metadata
        /* loaded from: classes2.dex */
        public static final /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[Companion.TransactionOperation.values().length];
                try {
                    iArr[Companion.TransactionOperation.END.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[Companion.TransactionOperation.ROLLBACK.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[Companion.TransactionOperation.BEGIN_EXCLUSIVE.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[Companion.TransactionOperation.BEGIN_IMMEDIATE.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                try {
                    iArr[Companion.TransactionOperation.BEGIN_DEFERRED.ordinal()] = 5;
                } catch (NoSuchFieldError unused5) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TransactionSQLiteStatement(@NotNull SupportSQLiteDatabase db2, @NotNull String sql, @NotNull Companion.TransactionOperation operation) {
            super(db2, sql, null);
            Intrinsics.checkNotNullParameter(db2, "db");
            Intrinsics.checkNotNullParameter(sql, "sql");
            Intrinsics.checkNotNullParameter(operation, "operation");
            this.operation = operation;
        }

        @Override // androidx.sqlite.SQLiteStatement
        /* renamed from: bindBlob */
        public void mo4329bindBlob(int i10, @NotNull byte[] value) {
            Intrinsics.checkNotNullParameter(value, "value");
            throwIfClosed();
            SQLite.throwSQLiteException(25, "column index out of range");
            throw new KotlinNothingValueException();
        }

        @Override // androidx.sqlite.SQLiteStatement
        /* renamed from: bindDouble */
        public void mo4330bindDouble(int i10, double d10) {
            throwIfClosed();
            SQLite.throwSQLiteException(25, "column index out of range");
            throw new KotlinNothingValueException();
        }

        @Override // androidx.sqlite.SQLiteStatement
        /* renamed from: bindLong */
        public void mo4331bindLong(int i10, long j10) {
            throwIfClosed();
            SQLite.throwSQLiteException(25, "column index out of range");
            throw new KotlinNothingValueException();
        }

        @Override // androidx.sqlite.SQLiteStatement
        /* renamed from: bindNull */
        public void mo4332bindNull(int i10) {
            throwIfClosed();
            SQLite.throwSQLiteException(25, "column index out of range");
            throw new KotlinNothingValueException();
        }

        @Override // androidx.sqlite.SQLiteStatement
        /* renamed from: bindText */
        public void mo4333bindText(int i10, @NotNull String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            throwIfClosed();
            SQLite.throwSQLiteException(25, "column index out of range");
            throw new KotlinNothingValueException();
        }

        @Override // androidx.sqlite.SQLiteStatement
        /* renamed from: clearBindings */
        public void mo4334clearBindings() {
            throwIfClosed();
        }

        @Override // androidx.sqlite.SQLiteStatement, java.lang.AutoCloseable
        public void close() {
            setClosed(true);
        }

        @Override // androidx.sqlite.SQLiteStatement
        @NotNull
        public byte[] getBlob(int i10) {
            throwIfClosed();
            SQLite.throwSQLiteException(21, "no row");
            throw new KotlinNothingValueException();
        }

        @Override // androidx.sqlite.SQLiteStatement
        public int getColumnCount() {
            throwIfClosed();
            return 0;
        }

        @Override // androidx.sqlite.SQLiteStatement
        @NotNull
        public String getColumnName(int i10) {
            throwIfClosed();
            SQLite.throwSQLiteException(21, "no row");
            throw new KotlinNothingValueException();
        }

        @Override // androidx.sqlite.SQLiteStatement
        public int getColumnType(int i10) {
            throwIfClosed();
            SQLite.throwSQLiteException(21, "no row");
            throw new KotlinNothingValueException();
        }

        @Override // androidx.sqlite.SQLiteStatement
        public double getDouble(int i10) {
            throwIfClosed();
            SQLite.throwSQLiteException(21, "no row");
            throw new KotlinNothingValueException();
        }

        @Override // androidx.sqlite.SQLiteStatement
        public long getLong(int i10) {
            throwIfClosed();
            SQLite.throwSQLiteException(21, "no row");
            throw new KotlinNothingValueException();
        }

        @NotNull
        public final Companion.TransactionOperation getOperation() {
            return this.operation;
        }

        @Override // androidx.sqlite.SQLiteStatement
        @NotNull
        public String getText(int i10) {
            throwIfClosed();
            SQLite.throwSQLiteException(21, "no row");
            throw new KotlinNothingValueException();
        }

        @Override // androidx.sqlite.SQLiteStatement
        public boolean isNull(int i10) {
            throwIfClosed();
            SQLite.throwSQLiteException(21, "no row");
            throw new KotlinNothingValueException();
        }

        @Override // androidx.sqlite.SQLiteStatement
        public void reset() {
            throwIfClosed();
        }

        @Override // androidx.sqlite.SQLiteStatement
        public boolean step() {
            int i10 = WhenMappings.$EnumSwitchMapping$0[this.operation.ordinal()];
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 != 4) {
                            if (i10 == 5) {
                                getDb().beginTransactionReadOnly();
                                return false;
                            }
                            throw new NoWhenBranchMatchedException();
                        }
                        getDb().beginTransactionNonExclusive();
                        return false;
                    }
                    getDb().beginTransaction();
                    return false;
                }
                getDb().endTransaction();
                return false;
            }
            getDb().setTransactionSuccessful();
            getDb().endTransaction();
            return false;
        }
    }

    public /* synthetic */ SupportSQLiteStatement(SupportSQLiteDatabase supportSQLiteDatabase, String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(supportSQLiteDatabase, str);
    }

    @NotNull
    protected final SupportSQLiteDatabase getDb() {
        return this.f1661db;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NotNull
    public final String getSql() {
        return this.sql;
    }

    protected final boolean isClosed() {
        return this.isClosed;
    }

    protected final void setClosed(boolean z10) {
        this.isClosed = z10;
    }

    protected final void throwIfClosed() {
        if (!this.isClosed) {
            return;
        }
        SQLite.throwSQLiteException(21, "statement is closed");
        throw new KotlinNothingValueException();
    }

    private SupportSQLiteStatement(SupportSQLiteDatabase supportSQLiteDatabase, String str) {
        this.f1661db = supportSQLiteDatabase;
        this.sql = str;
    }
}
