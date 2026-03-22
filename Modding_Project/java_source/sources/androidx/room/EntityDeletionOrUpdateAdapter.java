package androidx.room;

import androidx.annotation.RestrictTo;
import androidx.sqlite.db.SupportSQLiteStatement;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: EntityDeletionOrUpdateAdapter.android.kt */
@ms.c
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
@SourceDebugExtension({"SMAP\nEntityDeletionOrUpdateAdapter.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EntityDeletionOrUpdateAdapter.android.kt\nandroidx/room/EntityDeletionOrUpdateAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,105:1\n1869#2,2:106\n13472#3,2:108\n*S KotlinDebug\n*F\n+ 1 EntityDeletionOrUpdateAdapter.android.kt\nandroidx/room/EntityDeletionOrUpdateAdapter\n*L\n75#1:106,2\n95#1:108,2\n*E\n"})
/* loaded from: classes2.dex */
public abstract class EntityDeletionOrUpdateAdapter<T> extends SharedSQLiteStatement {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EntityDeletionOrUpdateAdapter(@NotNull RoomDatabase database) {
        super(database);
        Intrinsics.checkNotNullParameter(database, "database");
    }

    protected abstract void bind(@NotNull SupportSQLiteStatement supportSQLiteStatement, T t10);

    @Override // androidx.room.SharedSQLiteStatement
    @NotNull
    protected abstract String createQuery();

    public final int handle(T t10) {
        SupportSQLiteStatement acquire = acquire();
        try {
            bind(acquire, t10);
            return acquire.executeUpdateDelete();
        } finally {
            release(acquire);
        }
    }

    public final int handleMultiple(@NotNull Iterable<? extends T> entities) {
        Intrinsics.checkNotNullParameter(entities, "entities");
        SupportSQLiteStatement acquire = acquire();
        try {
            int i10 = 0;
            for (T t10 : entities) {
                bind(acquire, t10);
                i10 += acquire.executeUpdateDelete();
            }
            return i10;
        } finally {
            release(acquire);
        }
    }

    public final int handleMultiple(@NotNull T[] entities) {
        Intrinsics.checkNotNullParameter(entities, "entities");
        SupportSQLiteStatement acquire = acquire();
        try {
            int i10 = 0;
            for (T t10 : entities) {
                bind(acquire, t10);
                i10 += acquire.executeUpdateDelete();
            }
            return i10;
        } finally {
            release(acquire);
        }
    }
}
