package androidx.room;

import android.database.SQLException;
import androidx.annotation.RestrictTo;
import androidx.sqlite.SQLiteConnection;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: EntityUpsertAdapter.kt */
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
@SourceDebugExtension({"SMAP\nEntityUpsertAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EntityUpsertAdapter.kt\nandroidx/room/EntityUpsertAdapter\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,244:1\n13472#2,2:245\n13472#2,2:249\n1869#3,2:247\n1869#3,2:251\n*S KotlinDebug\n*F\n+ 1 EntityUpsertAdapter.kt\nandroidx/room/EntityUpsertAdapter\n*L\n61#1:245,2\n145#1:249,2\n73#1:247,2\n163#1:251,2\n*E\n"})
/* loaded from: classes2.dex */
public final class EntityUpsertAdapter<T> {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String ErrorMsg = "unique";
    @NotNull
    private static final String SQLITE_CONSTRAINT_PRIMARYKEY = "1555";
    @NotNull
    private static final String SQLITE_CONSTRAINT_UNIQUE = "2067";
    @NotNull
    private final EntityInsertAdapter<T> entityInsertAdapter;
    @NotNull
    private final EntityDeleteOrUpdateAdapter<T> updateAdapter;

    /* compiled from: EntityUpsertAdapter.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public EntityUpsertAdapter(@NotNull EntityInsertAdapter<T> entityInsertAdapter, @NotNull EntityDeleteOrUpdateAdapter<T> updateAdapter) {
        Intrinsics.checkNotNullParameter(entityInsertAdapter, "entityInsertAdapter");
        Intrinsics.checkNotNullParameter(updateAdapter, "updateAdapter");
        this.entityInsertAdapter = entityInsertAdapter;
        this.updateAdapter = updateAdapter;
    }

    private final void checkUniquenessException(SQLException sQLException) {
        String message = sQLException.getMessage();
        if (message != null) {
            if (!StringsKt.Z(message, ErrorMsg, true) && !StringsKt.b0(message, SQLITE_CONSTRAINT_UNIQUE, false, 2, null) && !StringsKt.b0(message, SQLITE_CONSTRAINT_PRIMARYKEY, false, 2, null)) {
                throw sQLException;
            }
            return;
        }
        throw sQLException;
    }

    public final void upsert(@NotNull SQLiteConnection connection, @Nullable T t10) {
        Intrinsics.checkNotNullParameter(connection, "connection");
        try {
            this.entityInsertAdapter.insert(connection, (SQLiteConnection) t10);
        } catch (SQLException e10) {
            checkUniquenessException(e10);
            this.updateAdapter.handle(connection, t10);
        }
    }

    public final long upsertAndReturnId(@NotNull SQLiteConnection connection, @Nullable T t10) {
        Intrinsics.checkNotNullParameter(connection, "connection");
        try {
            return this.entityInsertAdapter.insertAndReturnId(connection, t10);
        } catch (SQLException e10) {
            checkUniquenessException(e10);
            this.updateAdapter.handle(connection, t10);
            return -1L;
        }
    }

    @NotNull
    public final long[] upsertAndReturnIdsArray(@NotNull SQLiteConnection connection, @Nullable T[] tArr) {
        long j10;
        Intrinsics.checkNotNullParameter(connection, "connection");
        if (tArr == null) {
            return new long[0];
        }
        int length = tArr.length;
        long[] jArr = new long[length];
        for (int i10 = 0; i10 < length; i10++) {
            try {
                j10 = this.entityInsertAdapter.insertAndReturnId(connection, tArr[i10]);
            } catch (SQLException e10) {
                checkUniquenessException(e10);
                this.updateAdapter.handle(connection, tArr[i10]);
                j10 = -1;
            }
            jArr[i10] = j10;
        }
        return jArr;
    }

    @NotNull
    public final Long[] upsertAndReturnIdsArrayBox(@NotNull SQLiteConnection connection, @Nullable T[] tArr) {
        long j10;
        Intrinsics.checkNotNullParameter(connection, "connection");
        if (tArr == null) {
            return new Long[0];
        }
        int length = tArr.length;
        Long[] lArr = new Long[length];
        for (int i10 = 0; i10 < length; i10++) {
            try {
                j10 = this.entityInsertAdapter.insertAndReturnId(connection, tArr[i10]);
            } catch (SQLException e10) {
                checkUniquenessException(e10);
                this.updateAdapter.handle(connection, tArr[i10]);
                j10 = -1;
            }
            lArr[i10] = Long.valueOf(j10);
        }
        return lArr;
    }

    @NotNull
    public final List<Long> upsertAndReturnIdsList(@NotNull SQLiteConnection connection, @Nullable T[] tArr) {
        Intrinsics.checkNotNullParameter(connection, "connection");
        if (tArr == null) {
            return CollectionsKt.n();
        }
        List c10 = CollectionsKt.c();
        for (T t10 : tArr) {
            try {
                c10.add(Long.valueOf(this.entityInsertAdapter.insertAndReturnId(connection, t10)));
            } catch (SQLException e10) {
                checkUniquenessException(e10);
                this.updateAdapter.handle(connection, t10);
                c10.add(-1L);
            }
        }
        return CollectionsKt.a(c10);
    }

    public final void upsert(@NotNull SQLiteConnection connection, @Nullable T[] tArr) {
        Intrinsics.checkNotNullParameter(connection, "connection");
        if (tArr == null) {
            return;
        }
        for (T t10 : tArr) {
            try {
                this.entityInsertAdapter.insert(connection, (SQLiteConnection) t10);
            } catch (SQLException e10) {
                checkUniquenessException(e10);
                this.updateAdapter.handle(connection, t10);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public final long[] upsertAndReturnIdsArray(@NotNull SQLiteConnection connection, @Nullable Collection<? extends T> collection) {
        long j10;
        Intrinsics.checkNotNullParameter(connection, "connection");
        if (collection == null) {
            return new long[0];
        }
        int size = collection.size();
        long[] jArr = new long[size];
        for (int i10 = 0; i10 < size; i10++) {
            try {
                j10 = this.entityInsertAdapter.insertAndReturnId(connection, CollectionsKt.l0(collection, i10));
            } catch (SQLException e10) {
                checkUniquenessException(e10);
                this.updateAdapter.handle(connection, CollectionsKt.l0(collection, i10));
                j10 = -1;
            }
            jArr[i10] = j10;
        }
        return jArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public final Long[] upsertAndReturnIdsArrayBox(@NotNull SQLiteConnection connection, @Nullable Collection<? extends T> collection) {
        long j10;
        Intrinsics.checkNotNullParameter(connection, "connection");
        if (collection == null) {
            return new Long[0];
        }
        int size = collection.size();
        Long[] lArr = new Long[size];
        for (int i10 = 0; i10 < size; i10++) {
            try {
                j10 = this.entityInsertAdapter.insertAndReturnId(connection, CollectionsKt.l0(collection, i10));
            } catch (SQLException e10) {
                checkUniquenessException(e10);
                this.updateAdapter.handle(connection, CollectionsKt.l0(collection, i10));
                j10 = -1;
            }
            lArr[i10] = Long.valueOf(j10);
        }
        return lArr;
    }

    public final void upsert(@NotNull SQLiteConnection connection, @Nullable Iterable<? extends T> iterable) {
        Intrinsics.checkNotNullParameter(connection, "connection");
        if (iterable == null) {
            return;
        }
        for (T t10 : iterable) {
            try {
                this.entityInsertAdapter.insert(connection, (SQLiteConnection) t10);
            } catch (SQLException e10) {
                checkUniquenessException(e10);
                this.updateAdapter.handle(connection, t10);
            }
        }
    }

    @NotNull
    public final List<Long> upsertAndReturnIdsList(@NotNull SQLiteConnection connection, @Nullable Collection<? extends T> collection) {
        Intrinsics.checkNotNullParameter(connection, "connection");
        if (collection == null) {
            return CollectionsKt.n();
        }
        List c10 = CollectionsKt.c();
        for (T t10 : collection) {
            try {
                c10.add(Long.valueOf(this.entityInsertAdapter.insertAndReturnId(connection, t10)));
            } catch (SQLException e10) {
                checkUniquenessException(e10);
                this.updateAdapter.handle(connection, t10);
                c10.add(-1L);
            }
        }
        return CollectionsKt.a(c10);
    }
}
