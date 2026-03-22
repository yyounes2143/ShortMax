package androidx.room;

import android.database.sqlite.SQLiteConstraintException;
import androidx.annotation.RestrictTo;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: EntityUpsertionAdapter.android.kt */
@ms.c
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
@SourceDebugExtension({"SMAP\nEntityUpsertionAdapter.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EntityUpsertionAdapter.android.kt\nandroidx/room/EntityUpsertionAdapter\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,217:1\n13472#2,2:218\n13472#2,2:222\n1869#3,2:220\n1869#3,2:224\n*S KotlinDebug\n*F\n+ 1 EntityUpsertionAdapter.android.kt\nandroidx/room/EntityUpsertionAdapter\n*L\n73#1:218,2\n145#1:222,2\n84#1:220,2\n159#1:224,2\n*E\n"})
/* loaded from: classes2.dex */
public final class EntityUpsertionAdapter<T> {
    @NotNull
    private final EntityInsertionAdapter<T> insertionAdapter;
    @NotNull
    private final EntityDeletionOrUpdateAdapter<T> updateAdapter;

    public EntityUpsertionAdapter(@NotNull EntityInsertionAdapter<T> insertionAdapter, @NotNull EntityDeletionOrUpdateAdapter<T> updateAdapter) {
        Intrinsics.checkNotNullParameter(insertionAdapter, "insertionAdapter");
        Intrinsics.checkNotNullParameter(updateAdapter, "updateAdapter");
        this.insertionAdapter = insertionAdapter;
        this.updateAdapter = updateAdapter;
    }

    private final void checkUniquenessException(SQLiteConstraintException sQLiteConstraintException) {
        String message = sQLiteConstraintException.getMessage();
        if (message != null) {
            if (!StringsKt.Z(message, "unique", true) && !StringsKt.b0(message, "2067", false, 2, null) && !StringsKt.b0(message, "1555", false, 2, null)) {
                throw sQLiteConstraintException;
            }
            return;
        }
        throw sQLiteConstraintException;
    }

    public final void upsert(T t10) {
        try {
            this.insertionAdapter.insert((EntityInsertionAdapter<T>) t10);
        } catch (SQLiteConstraintException e10) {
            checkUniquenessException(e10);
            this.updateAdapter.handle(t10);
        }
    }

    public final long upsertAndReturnId(T t10) {
        try {
            return this.insertionAdapter.insertAndReturnId(t10);
        } catch (SQLiteConstraintException e10) {
            checkUniquenessException(e10);
            this.updateAdapter.handle(t10);
            return -1L;
        }
    }

    @NotNull
    public final long[] upsertAndReturnIdsArray(@NotNull T[] entities) {
        long j10;
        Intrinsics.checkNotNullParameter(entities, "entities");
        int length = entities.length;
        long[] jArr = new long[length];
        for (int i10 = 0; i10 < length; i10++) {
            try {
                j10 = this.insertionAdapter.insertAndReturnId(entities[i10]);
            } catch (SQLiteConstraintException e10) {
                checkUniquenessException(e10);
                this.updateAdapter.handle(entities[i10]);
                j10 = -1;
            }
            jArr[i10] = j10;
        }
        return jArr;
    }

    @NotNull
    public final Long[] upsertAndReturnIdsArrayBox(@NotNull T[] entities) {
        long j10;
        Intrinsics.checkNotNullParameter(entities, "entities");
        int length = entities.length;
        Long[] lArr = new Long[length];
        for (int i10 = 0; i10 < length; i10++) {
            try {
                j10 = this.insertionAdapter.insertAndReturnId(entities[i10]);
            } catch (SQLiteConstraintException e10) {
                checkUniquenessException(e10);
                this.updateAdapter.handle(entities[i10]);
                j10 = -1;
            }
            lArr[i10] = Long.valueOf(j10);
        }
        return lArr;
    }

    @NotNull
    public final List<Long> upsertAndReturnIdsList(@NotNull T[] entities) {
        Intrinsics.checkNotNullParameter(entities, "entities");
        List c10 = CollectionsKt.c();
        for (T t10 : entities) {
            try {
                c10.add(Long.valueOf(this.insertionAdapter.insertAndReturnId(t10)));
            } catch (SQLiteConstraintException e10) {
                checkUniquenessException(e10);
                this.updateAdapter.handle(t10);
                c10.add(-1L);
            }
        }
        return CollectionsKt.a(c10);
    }

    public final void upsert(@NotNull T[] entities) {
        Intrinsics.checkNotNullParameter(entities, "entities");
        for (T t10 : entities) {
            try {
                this.insertionAdapter.insert((EntityInsertionAdapter<T>) t10);
            } catch (SQLiteConstraintException e10) {
                checkUniquenessException(e10);
                this.updateAdapter.handle(t10);
            }
        }
    }

    @NotNull
    public final long[] upsertAndReturnIdsArray(@NotNull Collection<? extends T> entities) {
        long j10;
        Intrinsics.checkNotNullParameter(entities, "entities");
        Iterator<? extends T> it = entities.iterator();
        int size = entities.size();
        long[] jArr = new long[size];
        for (int i10 = 0; i10 < size; i10++) {
            T next = it.next();
            try {
                j10 = this.insertionAdapter.insertAndReturnId(next);
            } catch (SQLiteConstraintException e10) {
                checkUniquenessException(e10);
                this.updateAdapter.handle(next);
                j10 = -1;
            }
            jArr[i10] = j10;
        }
        return jArr;
    }

    @NotNull
    public final Long[] upsertAndReturnIdsArrayBox(@NotNull Collection<? extends T> entities) {
        long j10;
        Intrinsics.checkNotNullParameter(entities, "entities");
        Iterator<? extends T> it = entities.iterator();
        int size = entities.size();
        Long[] lArr = new Long[size];
        for (int i10 = 0; i10 < size; i10++) {
            T next = it.next();
            try {
                j10 = this.insertionAdapter.insertAndReturnId(next);
            } catch (SQLiteConstraintException e10) {
                checkUniquenessException(e10);
                this.updateAdapter.handle(next);
                j10 = -1;
            }
            lArr[i10] = Long.valueOf(j10);
        }
        return lArr;
    }

    public final void upsert(@NotNull Iterable<? extends T> entities) {
        Intrinsics.checkNotNullParameter(entities, "entities");
        for (T t10 : entities) {
            try {
                this.insertionAdapter.insert((EntityInsertionAdapter<T>) t10);
            } catch (SQLiteConstraintException e10) {
                checkUniquenessException(e10);
                this.updateAdapter.handle(t10);
            }
        }
    }

    @NotNull
    public final List<Long> upsertAndReturnIdsList(@NotNull Collection<? extends T> entities) {
        Intrinsics.checkNotNullParameter(entities, "entities");
        List c10 = CollectionsKt.c();
        for (T t10 : entities) {
            try {
                c10.add(Long.valueOf(this.insertionAdapter.insertAndReturnId(t10)));
            } catch (SQLiteConstraintException e10) {
                checkUniquenessException(e10);
                this.updateAdapter.handle(t10);
                c10.add(-1L);
            }
        }
        return CollectionsKt.a(c10);
    }
}
