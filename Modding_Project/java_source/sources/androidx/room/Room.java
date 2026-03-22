package androidx.room;

import android.content.Context;
import androidx.room.RoomDatabase;
import com.tencent.wcdb.database.SQLiteDatabaseConfiguration;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Room.android.kt */
@Metadata
/* loaded from: classes2.dex */
public final class Room {
    @NotNull
    public static final Room INSTANCE = new Room();
    @NotNull
    public static final String LOG_TAG = "ROOM";
    @NotNull
    public static final String MASTER_TABLE_NAME = "room_master_table";

    private Room() {
    }

    @NotNull
    public static final <T extends RoomDatabase> RoomDatabase.Builder<T> databaseBuilder(@NotNull Context context, @NotNull Class<T> klass, @Nullable String str) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(klass, "klass");
        if (!(str == null || StringsKt.t0(str))) {
            if (!Intrinsics.areEqual(str, SQLiteDatabaseConfiguration.MEMORY_DB_PATH)) {
                return new RoomDatabase.Builder<>(context, klass, str);
            }
            throw new IllegalArgumentException("Cannot build a database with the special name ':memory:'. If you are trying to create an in memory database, use Room.inMemoryDatabaseBuilder");
        }
        throw new IllegalArgumentException("Cannot build a database with null or empty name. If you are trying to create an in memory database, use Room.inMemoryDatabaseBuilder");
    }

    public static /* synthetic */ RoomDatabase.Builder databaseBuilder$default(Room room, Context context, String name, Function0 factory, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            Intrinsics.needClassReification();
            factory = Room$databaseBuilder$3.INSTANCE;
        }
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(factory, "factory");
        if (!StringsKt.t0(name)) {
            if (!Intrinsics.areEqual(name, SQLiteDatabaseConfiguration.MEMORY_DB_PATH)) {
                Intrinsics.reifiedOperationMarker(4, "T");
                return new RoomDatabase.Builder(Reflection.getOrCreateKotlinClass(RoomDatabase.class), name, factory, context);
            }
            throw new IllegalArgumentException("Cannot build a database with the special name ':memory:'. If you are trying to create an in memory database, use Room.inMemoryDatabaseBuilder().");
        }
        throw new IllegalArgumentException("Cannot build a database with empty name. If you are trying to create an in memory database, use Room.inMemoryDatabaseBuilder().");
    }

    @NotNull
    public static final <T extends RoomDatabase> RoomDatabase.Builder<T> inMemoryDatabaseBuilder(@NotNull Context context, @NotNull Class<T> klass) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(klass, "klass");
        return new RoomDatabase.Builder<>(context, klass, null);
    }

    public static /* synthetic */ RoomDatabase.Builder inMemoryDatabaseBuilder$default(Room room, Context context, Function0 factory, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            Intrinsics.needClassReification();
            factory = Room$inMemoryDatabaseBuilder$1.INSTANCE;
        }
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(factory, "factory");
        Intrinsics.reifiedOperationMarker(4, "T");
        return new RoomDatabase.Builder(Reflection.getOrCreateKotlinClass(RoomDatabase.class), null, factory, context);
    }

    public final /* synthetic */ <T extends RoomDatabase> RoomDatabase.Builder<T> inMemoryDatabaseBuilder(Context context, Function0<? extends T> factory) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(factory, "factory");
        Intrinsics.reifiedOperationMarker(4, "T");
        return new RoomDatabase.Builder<>(Reflection.getOrCreateKotlinClass(RoomDatabase.class), null, factory, context);
    }

    public final /* synthetic */ <T extends RoomDatabase> RoomDatabase.Builder<T> databaseBuilder(Context context, String name, Function0<? extends T> factory) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(factory, "factory");
        if (!StringsKt.t0(name)) {
            if (!Intrinsics.areEqual(name, SQLiteDatabaseConfiguration.MEMORY_DB_PATH)) {
                Intrinsics.reifiedOperationMarker(4, "T");
                return new RoomDatabase.Builder<>(Reflection.getOrCreateKotlinClass(RoomDatabase.class), name, factory, context);
            }
            throw new IllegalArgumentException("Cannot build a database with the special name ':memory:'. If you are trying to create an in memory database, use Room.inMemoryDatabaseBuilder().");
        }
        throw new IllegalArgumentException("Cannot build a database with empty name. If you are trying to create an in memory database, use Room.inMemoryDatabaseBuilder().");
    }
}
