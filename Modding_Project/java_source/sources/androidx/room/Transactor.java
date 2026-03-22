package androidx.room;

import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Transactor.kt */
@Metadata
/* loaded from: classes2.dex */
public interface Transactor extends PooledConnection {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: Transactor.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class SQLiteTransactionType {
        private static final /* synthetic */ ss.a $ENTRIES;
        private static final /* synthetic */ SQLiteTransactionType[] $VALUES;
        public static final SQLiteTransactionType DEFERRED = new SQLiteTransactionType("DEFERRED", 0);
        public static final SQLiteTransactionType IMMEDIATE = new SQLiteTransactionType("IMMEDIATE", 1);
        public static final SQLiteTransactionType EXCLUSIVE = new SQLiteTransactionType("EXCLUSIVE", 2);

        private static final /* synthetic */ SQLiteTransactionType[] $values() {
            return new SQLiteTransactionType[]{DEFERRED, IMMEDIATE, EXCLUSIVE};
        }

        static {
            SQLiteTransactionType[] $values = $values();
            $VALUES = $values;
            $ENTRIES = kotlin.enums.a.a($values);
        }

        private SQLiteTransactionType(String str, int i10) {
        }

        @NotNull
        public static ss.a<SQLiteTransactionType> getEntries() {
            return $ENTRIES;
        }

        public static SQLiteTransactionType valueOf(String str) {
            return (SQLiteTransactionType) Enum.valueOf(SQLiteTransactionType.class, str);
        }

        public static SQLiteTransactionType[] values() {
            return (SQLiteTransactionType[]) $VALUES.clone();
        }
    }

    @Nullable
    Object inTransaction(@NotNull rs.c<? super Boolean> cVar);

    @Nullable
    <R> Object withTransaction(@NotNull SQLiteTransactionType sQLiteTransactionType, @NotNull Function2<? super TransactionScope<R>, ? super rs.c<? super R>, ? extends Object> function2, @NotNull rs.c<? super R> cVar);
}
