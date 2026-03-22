package androidx.room;

import androidx.annotation.RestrictTo;
import androidx.room.util.SQLiteConnectionUtil;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.ArrayIteratorKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: EntityDeleteOrUpdateAdapter.kt */
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes2.dex */
public abstract class EntityDeleteOrUpdateAdapter<T> {
    protected abstract void bind(@NotNull SQLiteStatement sQLiteStatement, T t10);

    @NotNull
    protected abstract String createQuery();

    public final int handle(@NotNull SQLiteConnection connection, @Nullable T t10) {
        Intrinsics.checkNotNullParameter(connection, "connection");
        if (t10 == null) {
            return 0;
        }
        SQLiteStatement prepare = connection.prepare(createQuery());
        try {
            bind(prepare, t10);
            prepare.step();
            ys.a.a(prepare, null);
            return SQLiteConnectionUtil.getTotalChangedRows(connection);
        } finally {
        }
    }

    public final int handleMultiple(@NotNull SQLiteConnection connection, @Nullable Iterable<? extends T> iterable) {
        Intrinsics.checkNotNullParameter(connection, "connection");
        int i10 = 0;
        if (iterable == null) {
            return 0;
        }
        SQLiteStatement prepare = connection.prepare(createQuery());
        try {
            for (T t10 : iterable) {
                if (t10 != null) {
                    bind(prepare, t10);
                    prepare.step();
                    prepare.reset();
                    i10 += SQLiteConnectionUtil.getTotalChangedRows(connection);
                }
            }
            Unit unit = Unit.f60915a;
            ys.a.a(prepare, null);
            return i10;
        } finally {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int handleMultiple(@NotNull SQLiteConnection connection, @Nullable T[] tArr) {
        Intrinsics.checkNotNullParameter(connection, "connection");
        int i10 = 0;
        if (tArr == null) {
            return 0;
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
                    i10 += SQLiteConnectionUtil.getTotalChangedRows(connection);
                }
            }
            Unit unit = Unit.f60915a;
            ys.a.a(prepare, null);
            return i10;
        } finally {
        }
    }
}
