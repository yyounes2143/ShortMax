package androidx.room;

import androidx.annotation.RestrictTo;
import androidx.sqlite.db.SupportSQLiteStatement;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.ArrayIteratorKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: EntityInsertionAdapter.android.kt */
@ms.c
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
@SourceDebugExtension({"SMAP\nEntityInsertionAdapter.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EntityInsertionAdapter.android.kt\nandroidx/room/EntityInsertionAdapter\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,232:1\n13472#2,2:233\n13537#2,3:240\n13472#2,2:243\n1869#3,2:235\n1878#3,3:237\n1869#3,2:245\n*S KotlinDebug\n*F\n+ 1 EntityInsertionAdapter.android.kt\nandroidx/room/EntityInsertionAdapter\n*L\n66#1:233,2\n138#1:240,3\n202#1:243,2\n83#1:235,2\n118#1:237,3\n222#1:245,2\n*E\n"})
/* loaded from: classes2.dex */
public abstract class EntityInsertionAdapter<T> extends SharedSQLiteStatement {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EntityInsertionAdapter(@NotNull RoomDatabase database) {
        super(database);
        Intrinsics.checkNotNullParameter(database, "database");
    }

    protected abstract void bind(@NotNull SupportSQLiteStatement supportSQLiteStatement, T t10);

    public final void insert(T t10) {
        SupportSQLiteStatement acquire = acquire();
        try {
            bind(acquire, t10);
            acquire.executeInsert();
        } finally {
            release(acquire);
        }
    }

    public final long insertAndReturnId(T t10) {
        SupportSQLiteStatement acquire = acquire();
        try {
            bind(acquire, t10);
            return acquire.executeInsert();
        } finally {
            release(acquire);
        }
    }

    @NotNull
    public final long[] insertAndReturnIdsArray(@NotNull Collection<? extends T> entities) {
        Intrinsics.checkNotNullParameter(entities, "entities");
        SupportSQLiteStatement acquire = acquire();
        try {
            long[] jArr = new long[entities.size()];
            int i10 = 0;
            for (T t10 : entities) {
                int i11 = i10 + 1;
                if (i10 < 0) {
                    CollectionsKt.y();
                }
                bind(acquire, t10);
                jArr[i10] = acquire.executeInsert();
                i10 = i11;
            }
            release(acquire);
            return jArr;
        } catch (Throwable th2) {
            release(acquire);
            throw th2;
        }
    }

    @NotNull
    public final Long[] insertAndReturnIdsArrayBox(@NotNull Collection<? extends T> entities) {
        Intrinsics.checkNotNullParameter(entities, "entities");
        SupportSQLiteStatement acquire = acquire();
        Iterator<? extends T> it = entities.iterator();
        try {
            int size = entities.size();
            Long[] lArr = new Long[size];
            for (int i10 = 0; i10 < size; i10++) {
                bind(acquire, it.next());
                lArr[i10] = Long.valueOf(acquire.executeInsert());
            }
            return lArr;
        } finally {
            release(acquire);
        }
    }

    @NotNull
    public final List<Long> insertAndReturnIdsList(@NotNull T[] entities) {
        Intrinsics.checkNotNullParameter(entities, "entities");
        SupportSQLiteStatement acquire = acquire();
        try {
            List c10 = CollectionsKt.c();
            for (T t10 : entities) {
                bind(acquire, t10);
                c10.add(Long.valueOf(acquire.executeInsert()));
            }
            List<Long> a10 = CollectionsKt.a(c10);
            release(acquire);
            return a10;
        } catch (Throwable th2) {
            release(acquire);
            throw th2;
        }
    }

    public final void insert(@NotNull T[] entities) {
        Intrinsics.checkNotNullParameter(entities, "entities");
        SupportSQLiteStatement acquire = acquire();
        try {
            for (T t10 : entities) {
                bind(acquire, t10);
                acquire.executeInsert();
            }
        } finally {
            release(acquire);
        }
    }

    @NotNull
    public final long[] insertAndReturnIdsArray(@NotNull T[] entities) {
        Intrinsics.checkNotNullParameter(entities, "entities");
        SupportSQLiteStatement acquire = acquire();
        try {
            long[] jArr = new long[entities.length];
            int length = entities.length;
            int i10 = 0;
            int i11 = 0;
            while (i10 < length) {
                int i12 = i11 + 1;
                bind(acquire, entities[i10]);
                jArr[i11] = acquire.executeInsert();
                i10++;
                i11 = i12;
            }
            return jArr;
        } finally {
            release(acquire);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public final Long[] insertAndReturnIdsArrayBox(@NotNull T[] entities) {
        Intrinsics.checkNotNullParameter(entities, "entities");
        SupportSQLiteStatement acquire = acquire();
        Iterator it = ArrayIteratorKt.iterator(entities);
        try {
            int length = entities.length;
            Long[] lArr = new Long[length];
            for (int i10 = 0; i10 < length; i10++) {
                bind(acquire, it.next());
                lArr[i10] = Long.valueOf(acquire.executeInsert());
            }
            return lArr;
        } finally {
            release(acquire);
        }
    }

    @NotNull
    public final List<Long> insertAndReturnIdsList(@NotNull Collection<? extends T> entities) {
        Intrinsics.checkNotNullParameter(entities, "entities");
        SupportSQLiteStatement acquire = acquire();
        try {
            List c10 = CollectionsKt.c();
            for (T t10 : entities) {
                bind(acquire, t10);
                c10.add(Long.valueOf(acquire.executeInsert()));
            }
            List<Long> a10 = CollectionsKt.a(c10);
            release(acquire);
            return a10;
        } catch (Throwable th2) {
            release(acquire);
            throw th2;
        }
    }

    public final void insert(@NotNull Iterable<? extends T> entities) {
        Intrinsics.checkNotNullParameter(entities, "entities");
        SupportSQLiteStatement acquire = acquire();
        try {
            for (T t10 : entities) {
                bind(acquire, t10);
                acquire.executeInsert();
            }
        } finally {
            release(acquire);
        }
    }
}
