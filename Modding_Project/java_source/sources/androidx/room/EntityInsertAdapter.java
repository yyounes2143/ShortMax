package androidx.room;

import androidx.annotation.RestrictTo;
import androidx.room.util.SQLiteConnectionUtil;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.ArrayIteratorKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: EntityInsertAdapter.kt */
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
@SourceDebugExtension({"SMAP\nEntityInsertAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EntityInsertAdapter.kt\nandroidx/room/EntityInsertAdapter\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,270:1\n13472#2,2:271\n1869#3,2:273\n*S KotlinDebug\n*F\n+ 1 EntityInsertAdapter.kt\nandroidx/room/EntityInsertAdapter\n*L\n229#1:271,2\n256#1:273,2\n*E\n"})
/* loaded from: classes2.dex */
public abstract class EntityInsertAdapter<T> {
    protected abstract void bind(@NotNull SQLiteStatement sQLiteStatement, T t10);

    @NotNull
    protected abstract String createQuery();

    public final void insert(@NotNull SQLiteConnection connection, @Nullable T t10) {
        Intrinsics.checkNotNullParameter(connection, "connection");
        if (t10 == null) {
            return;
        }
        SQLiteStatement prepare = connection.prepare(createQuery());
        try {
            bind(prepare, t10);
            prepare.step();
            ys.a.a(prepare, null);
        } finally {
        }
    }

    public final long insertAndReturnId(@NotNull SQLiteConnection connection, @Nullable T t10) {
        Intrinsics.checkNotNullParameter(connection, "connection");
        if (t10 == null) {
            return -1L;
        }
        SQLiteStatement prepare = connection.prepare(createQuery());
        try {
            bind(prepare, t10);
            prepare.step();
            ys.a.a(prepare, null);
            return SQLiteConnectionUtil.getLastInsertedRowId(connection);
        } finally {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public final long[] insertAndReturnIdsArray(@NotNull SQLiteConnection connection, @Nullable Collection<? extends T> collection) {
        long j10;
        Intrinsics.checkNotNullParameter(connection, "connection");
        if (collection == null) {
            return new long[0];
        }
        SQLiteStatement prepare = connection.prepare(createQuery());
        try {
            int size = collection.size();
            long[] jArr = new long[size];
            for (int i10 = 0; i10 < size; i10++) {
                Object l02 = CollectionsKt.l0(collection, i10);
                if (l02 != null) {
                    bind(prepare, l02);
                    prepare.step();
                    prepare.reset();
                    j10 = SQLiteConnectionUtil.getLastInsertedRowId(connection);
                } else {
                    j10 = -1;
                }
                jArr[i10] = j10;
            }
            ys.a.a(prepare, null);
            return jArr;
        } finally {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public final Long[] insertAndReturnIdsArrayBox(@NotNull SQLiteConnection connection, @Nullable Collection<? extends T> collection) {
        long j10;
        Intrinsics.checkNotNullParameter(connection, "connection");
        if (collection == null) {
            return new Long[0];
        }
        SQLiteStatement prepare = connection.prepare(createQuery());
        try {
            int size = collection.size();
            Long[] lArr = new Long[size];
            for (int i10 = 0; i10 < size; i10++) {
                Object l02 = CollectionsKt.l0(collection, i10);
                if (l02 != null) {
                    bind(prepare, l02);
                    prepare.step();
                    prepare.reset();
                    j10 = SQLiteConnectionUtil.getLastInsertedRowId(connection);
                } else {
                    j10 = -1;
                }
                lArr[i10] = Long.valueOf(j10);
            }
            ys.a.a(prepare, null);
            return lArr;
        } finally {
        }
    }

    @NotNull
    public final List<Long> insertAndReturnIdsList(@NotNull SQLiteConnection connection, @Nullable T[] tArr) {
        Intrinsics.checkNotNullParameter(connection, "connection");
        if (tArr == null) {
            return CollectionsKt.n();
        }
        List c10 = CollectionsKt.c();
        SQLiteStatement prepare = connection.prepare(createQuery());
        try {
            for (T t10 : tArr) {
                if (t10 != null) {
                    bind(prepare, t10);
                    prepare.step();
                    prepare.reset();
                    c10.add(Long.valueOf(SQLiteConnectionUtil.getLastInsertedRowId(connection)));
                } else {
                    c10.add(-1L);
                }
            }
            Unit unit = Unit.f60915a;
            ys.a.a(prepare, null);
            return CollectionsKt.a(c10);
        } finally {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void insert(@NotNull SQLiteConnection connection, @Nullable T[] tArr) {
        Intrinsics.checkNotNullParameter(connection, "connection");
        if (tArr == null) {
            return;
        }
        SQLiteStatement prepare = connection.prepare(createQuery());
        try {
            Iterator it = ArrayIteratorKt.iterator(tArr);
            while (it.hasNext()) {
                Object next = it.next();
                if (next != null) {
                    bind(prepare, next);
                    prepare.step();
                    prepare.reset();
                }
            }
            Unit unit = Unit.f60915a;
            ys.a.a(prepare, null);
        } finally {
        }
    }

    @NotNull
    public final long[] insertAndReturnIdsArray(@NotNull SQLiteConnection connection, @Nullable T[] tArr) {
        long j10;
        Intrinsics.checkNotNullParameter(connection, "connection");
        if (tArr == null) {
            return new long[0];
        }
        SQLiteStatement prepare = connection.prepare(createQuery());
        try {
            int length = tArr.length;
            long[] jArr = new long[length];
            for (int i10 = 0; i10 < length; i10++) {
                T t10 = tArr[i10];
                if (t10 != null) {
                    bind(prepare, t10);
                    prepare.step();
                    prepare.reset();
                    j10 = SQLiteConnectionUtil.getLastInsertedRowId(connection);
                } else {
                    j10 = -1;
                }
                jArr[i10] = j10;
            }
            ys.a.a(prepare, null);
            return jArr;
        } finally {
        }
    }

    @NotNull
    public final Long[] insertAndReturnIdsArrayBox(@NotNull SQLiteConnection connection, @Nullable T[] tArr) {
        long j10;
        Intrinsics.checkNotNullParameter(connection, "connection");
        if (tArr == null) {
            return new Long[0];
        }
        SQLiteStatement prepare = connection.prepare(createQuery());
        try {
            int length = tArr.length;
            Long[] lArr = new Long[length];
            for (int i10 = 0; i10 < length; i10++) {
                T t10 = tArr[i10];
                if (t10 != null) {
                    bind(prepare, t10);
                    prepare.step();
                    prepare.reset();
                    j10 = SQLiteConnectionUtil.getLastInsertedRowId(connection);
                } else {
                    j10 = -1;
                }
                lArr[i10] = Long.valueOf(j10);
            }
            ys.a.a(prepare, null);
            return lArr;
        } finally {
        }
    }

    public final void insert(@NotNull SQLiteConnection connection, @Nullable Iterable<? extends T> iterable) {
        Intrinsics.checkNotNullParameter(connection, "connection");
        if (iterable == null) {
            return;
        }
        SQLiteStatement prepare = connection.prepare(createQuery());
        try {
            for (T t10 : iterable) {
                if (t10 != null) {
                    bind(prepare, t10);
                    prepare.step();
                    prepare.reset();
                }
            }
            Unit unit = Unit.f60915a;
            ys.a.a(prepare, null);
        } finally {
        }
    }

    @NotNull
    public final List<Long> insertAndReturnIdsList(@NotNull SQLiteConnection connection, @Nullable Collection<? extends T> collection) {
        Intrinsics.checkNotNullParameter(connection, "connection");
        if (collection == null) {
            return CollectionsKt.n();
        }
        List c10 = CollectionsKt.c();
        SQLiteStatement prepare = connection.prepare(createQuery());
        try {
            for (T t10 : collection) {
                if (t10 != null) {
                    bind(prepare, t10);
                    prepare.step();
                    prepare.reset();
                    c10.add(Long.valueOf(SQLiteConnectionUtil.getLastInsertedRowId(connection)));
                } else {
                    c10.add(-1L);
                }
            }
            Unit unit = Unit.f60915a;
            ys.a.a(prepare, null);
            return CollectionsKt.a(c10);
        } finally {
        }
    }
}
