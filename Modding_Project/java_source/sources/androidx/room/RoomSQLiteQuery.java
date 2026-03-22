package androidx.room;

import android.annotation.SuppressLint;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.sqlite.SQLiteStatement;
import androidx.sqlite.db.SupportSQLiteProgram;
import androidx.sqlite.db.SupportSQLiteQuery;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RoomSQLiteQuery.android.kt */
@Metadata
@SuppressLint({"WrongConstant"})
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes2.dex */
public final class RoomSQLiteQuery implements SupportSQLiteQuery, SupportSQLiteProgram {
    private static final int BLOB = 5;
    public static final int DESIRED_POOL_SIZE = 10;
    private static final int DOUBLE = 3;
    private static final int LONG = 2;
    private static final int NULL = 1;
    public static final int POOL_LIMIT = 15;
    private static final int STRING = 4;
    private int argCount;
    @NotNull
    private final int[] bindingTypes;
    @NotNull
    public final byte[][] blobBindings;
    @VisibleForTesting
    private final int capacity;
    @NotNull
    public final double[] doubleBindings;
    @NotNull
    public final long[] longBindings;
    @Nullable
    private volatile String query;
    @NotNull
    public final String[] stringBindings;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final TreeMap<Integer, RoomSQLiteQuery> queryPool = new TreeMap<>();

    /* compiled from: RoomSQLiteQuery.android.kt */
    @Retention(RetentionPolicy.SOURCE)
    @Metadata
    /* loaded from: classes2.dex */
    public @interface Binding {
    }

    /* compiled from: RoomSQLiteQuery.android.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final RoomSQLiteQuery acquire(@NotNull String query, int i10) {
            Intrinsics.checkNotNullParameter(query, "query");
            TreeMap<Integer, RoomSQLiteQuery> treeMap = RoomSQLiteQuery.queryPool;
            synchronized (treeMap) {
                Map.Entry<Integer, RoomSQLiteQuery> ceilingEntry = treeMap.ceilingEntry(Integer.valueOf(i10));
                if (ceilingEntry != null) {
                    treeMap.remove(ceilingEntry.getKey());
                    RoomSQLiteQuery value = ceilingEntry.getValue();
                    value.init(query, i10);
                    Intrinsics.checkNotNull(value);
                    return value;
                }
                Unit unit = Unit.f60915a;
                RoomSQLiteQuery roomSQLiteQuery = new RoomSQLiteQuery(i10, null);
                roomSQLiteQuery.init(query, i10);
                return roomSQLiteQuery;
            }
        }

        @NotNull
        public final RoomSQLiteQuery copyFrom(@NotNull SupportSQLiteQuery supportSQLiteQuery) {
            Intrinsics.checkNotNullParameter(supportSQLiteQuery, "supportSQLiteQuery");
            final RoomSQLiteQuery acquire = acquire(supportSQLiteQuery.getSql(), supportSQLiteQuery.getArgCount());
            supportSQLiteQuery.bindTo(new SupportSQLiteProgram() { // from class: androidx.room.RoomSQLiteQuery$Companion$copyFrom$1
                @Override // androidx.sqlite.db.SupportSQLiteProgram
                public void bindBlob(int i10, byte[] value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    RoomSQLiteQuery.this.bindBlob(i10, value);
                }

                @Override // androidx.sqlite.db.SupportSQLiteProgram
                public void bindDouble(int i10, double d10) {
                    RoomSQLiteQuery.this.bindDouble(i10, d10);
                }

                @Override // androidx.sqlite.db.SupportSQLiteProgram
                public void bindLong(int i10, long j10) {
                    RoomSQLiteQuery.this.bindLong(i10, j10);
                }

                @Override // androidx.sqlite.db.SupportSQLiteProgram
                public void bindNull(int i10) {
                    RoomSQLiteQuery.this.bindNull(i10);
                }

                @Override // androidx.sqlite.db.SupportSQLiteProgram
                public void bindString(int i10, String value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    RoomSQLiteQuery.this.bindString(i10, value);
                }

                @Override // androidx.sqlite.db.SupportSQLiteProgram
                public void clearBindings() {
                    RoomSQLiteQuery.this.clearBindings();
                }

                @Override // java.io.Closeable, java.lang.AutoCloseable
                public void close() {
                    RoomSQLiteQuery.this.close();
                }
            });
            return acquire;
        }

        public final void prunePoolLocked$room_runtime() {
            TreeMap<Integer, RoomSQLiteQuery> treeMap = RoomSQLiteQuery.queryPool;
            if (treeMap.size() > 15) {
                int size = treeMap.size() - 10;
                Iterator<Integer> it = treeMap.descendingKeySet().iterator();
                Intrinsics.checkNotNullExpressionValue(it, "iterator(...)");
                while (true) {
                    int i10 = size - 1;
                    if (size > 0) {
                        it.next();
                        it.remove();
                        size = i10;
                    } else {
                        return;
                    }
                }
            }
        }

        private Companion() {
        }

        @VisibleForTesting
        public static /* synthetic */ void getDESIRED_POOL_SIZE$annotations() {
        }

        @VisibleForTesting
        public static /* synthetic */ void getPOOL_LIMIT$annotations() {
        }

        @VisibleForTesting
        public static /* synthetic */ void getQueryPool$annotations() {
        }
    }

    public /* synthetic */ RoomSQLiteQuery(int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10);
    }

    @NotNull
    public static final RoomSQLiteQuery acquire(@NotNull String str, int i10) {
        return Companion.acquire(str, i10);
    }

    @NotNull
    public static final RoomSQLiteQuery copyFrom(@NotNull SupportSQLiteQuery supportSQLiteQuery) {
        return Companion.copyFrom(supportSQLiteQuery);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit toRoomRawQuery$lambda$1(RoomSQLiteQuery roomSQLiteQuery, SQLiteStatement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        roomSQLiteQuery.bindTo(it);
        return Unit.f60915a;
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void bindBlob(int i10, @NotNull byte[] value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.bindingTypes[i10] = 5;
        this.blobBindings[i10] = value;
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void bindDouble(int i10, double d10) {
        this.bindingTypes[i10] = 3;
        this.doubleBindings[i10] = d10;
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void bindLong(int i10, long j10) {
        this.bindingTypes[i10] = 2;
        this.longBindings[i10] = j10;
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void bindNull(int i10) {
        this.bindingTypes[i10] = 1;
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void bindString(int i10, @NotNull String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.bindingTypes[i10] = 4;
        this.stringBindings[i10] = value;
    }

    public final void bindText(int i10, @NotNull String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        bindString(i10, value);
    }

    @Override // androidx.sqlite.db.SupportSQLiteQuery
    public void bindTo(@NotNull SupportSQLiteProgram statement) {
        Intrinsics.checkNotNullParameter(statement, "statement");
        int argCount = getArgCount();
        if (1 > argCount) {
            return;
        }
        int i10 = 1;
        while (true) {
            int i11 = this.bindingTypes[i10];
            if (i11 == 1) {
                statement.bindNull(i10);
            } else if (i11 == 2) {
                statement.bindLong(i10, this.longBindings[i10]);
            } else if (i11 == 3) {
                statement.bindDouble(i10, this.doubleBindings[i10]);
            } else if (i11 == 4) {
                String str = this.stringBindings[i10];
                if (str == null) {
                    throw new IllegalArgumentException("Required value was null.");
                }
                statement.bindString(i10, str);
            } else if (i11 == 5) {
                byte[] bArr = this.blobBindings[i10];
                if (bArr == null) {
                    throw new IllegalArgumentException("Required value was null.");
                }
                statement.bindBlob(i10, bArr);
            }
            if (i10 == argCount) {
                return;
            }
            i10++;
        }
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void clearBindings() {
        kotlin.collections.n.F(this.bindingTypes, 1, 0, 0, 6, null);
        kotlin.collections.n.H(this.stringBindings, null, 0, 0, 6, null);
        kotlin.collections.n.H(this.blobBindings, null, 0, 0, 6, null);
        this.query = null;
    }

    public final void copyArgumentsFrom(@NotNull RoomSQLiteQuery other) {
        Intrinsics.checkNotNullParameter(other, "other");
        int argCount = other.getArgCount() + 1;
        System.arraycopy(other.bindingTypes, 0, this.bindingTypes, 0, argCount);
        System.arraycopy(other.longBindings, 0, this.longBindings, 0, argCount);
        System.arraycopy(other.stringBindings, 0, this.stringBindings, 0, argCount);
        System.arraycopy(other.blobBindings, 0, this.blobBindings, 0, argCount);
        System.arraycopy(other.doubleBindings, 0, this.doubleBindings, 0, argCount);
    }

    @Override // androidx.sqlite.db.SupportSQLiteQuery
    public int getArgCount() {
        return this.argCount;
    }

    public final int getCapacity() {
        return this.capacity;
    }

    @Override // androidx.sqlite.db.SupportSQLiteQuery
    @NotNull
    public String getSql() {
        String str = this.query;
        if (str != null) {
            return str;
        }
        throw new IllegalStateException("Required value was null.");
    }

    public final void init(@NotNull String query, int i10) {
        Intrinsics.checkNotNullParameter(query, "query");
        this.query = query;
        this.argCount = i10;
    }

    public final void release() {
        TreeMap<Integer, RoomSQLiteQuery> treeMap = queryPool;
        synchronized (treeMap) {
            treeMap.put(Integer.valueOf(this.capacity), this);
            Companion.prunePoolLocked$room_runtime();
            Unit unit = Unit.f60915a;
        }
    }

    @NotNull
    public final RoomRawQuery toRoomRawQuery() {
        return new RoomRawQuery(getSql(), new Function1() { // from class: androidx.room.p
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit roomRawQuery$lambda$1;
                roomRawQuery$lambda$1 = RoomSQLiteQuery.toRoomRawQuery$lambda$1(RoomSQLiteQuery.this, (SQLiteStatement) obj);
                return roomRawQuery$lambda$1;
            }
        });
    }

    private RoomSQLiteQuery(int i10) {
        this.capacity = i10;
        int i11 = i10 + 1;
        this.bindingTypes = new int[i11];
        this.longBindings = new long[i11];
        this.doubleBindings = new double[i11];
        this.stringBindings = new String[i11];
        this.blobBindings = new byte[i11];
    }

    public final void bindTo(@NotNull SQLiteStatement statement) {
        Intrinsics.checkNotNullParameter(statement, "statement");
        int argCount = getArgCount();
        if (1 > argCount) {
            return;
        }
        int i10 = 1;
        while (true) {
            int i11 = this.bindingTypes[i10];
            if (i11 == 1) {
                statement.mo4332bindNull(i10);
            } else if (i11 == 2) {
                statement.mo4331bindLong(i10, this.longBindings[i10]);
            } else if (i11 == 3) {
                statement.mo4330bindDouble(i10, this.doubleBindings[i10]);
            } else if (i11 == 4) {
                String str = this.stringBindings[i10];
                if (str == null) {
                    throw new IllegalArgumentException("Required value was null.");
                }
                statement.mo4333bindText(i10, str);
            } else if (i11 == 5) {
                byte[] bArr = this.blobBindings[i10];
                if (bArr == null) {
                    throw new IllegalArgumentException("Required value was null.");
                }
                statement.mo4329bindBlob(i10, bArr);
            }
            if (i10 == argCount) {
                return;
            }
            i10++;
        }
    }

    private static /* synthetic */ void getBindingTypes$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getBlobBindings$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getDoubleBindings$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getLongBindings$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getStringBindings$annotations() {
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }
}
