package androidx.sqlite.db;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.util.Log;
import android.util.Pair;
import com.tencent.wcdb.database.SQLiteDatabaseConfiguration;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SupportSQLiteOpenHelper.android.kt */
@Metadata
/* loaded from: classes2.dex */
public interface SupportSQLiteOpenHelper extends Closeable {

    /* compiled from: SupportSQLiteOpenHelper.android.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nSupportSQLiteOpenHelper.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SupportSQLiteOpenHelper.android.kt\nandroidx/sqlite/db/SupportSQLiteOpenHelper$Callback\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 Strings.kt\nkotlin/text/StringsKt__StringsKt\n*L\n1#1,366:1\n1#2:367\n1869#3,2:368\n108#4:370\n80#4,22:371\n*S KotlinDebug\n*F\n+ 1 SupportSQLiteOpenHelper.android.kt\nandroidx/sqlite/db/SupportSQLiteOpenHelper$Callback\n*L\n220#1:368,2\n228#1:370\n228#1:371,22\n*E\n"})
    /* loaded from: classes2.dex */
    public static abstract class Callback {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull
        private static final String TAG = "SupportSQLite";
        public final int version;

        /* compiled from: SupportSQLiteOpenHelper.android.kt */
        @Metadata
        /* loaded from: classes2.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }
        }

        public Callback(int i10) {
            this.version = i10;
        }

        private final void deleteDatabaseFile(String str) {
            int i10;
            boolean z10;
            if (!StringsKt.G(str, SQLiteDatabaseConfiguration.MEMORY_DB_PATH, true)) {
                int length = str.length() - 1;
                int i11 = 0;
                boolean z11 = false;
                while (i11 <= length) {
                    if (!z11) {
                        i10 = i11;
                    } else {
                        i10 = length;
                    }
                    if (Intrinsics.compare((int) str.charAt(i10), 32) <= 0) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    if (!z11) {
                        if (!z10) {
                            z11 = true;
                        } else {
                            i11++;
                        }
                    } else if (!z10) {
                        break;
                    } else {
                        length--;
                    }
                }
                if (str.subSequence(i11, length + 1).toString().length() != 0) {
                    Log.w(TAG, "deleting the database file: " + str);
                    try {
                        SQLiteDatabase.deleteDatabase(new File(str));
                    } catch (Exception e10) {
                        Log.w(TAG, "delete failed: ", e10);
                    }
                }
            }
        }

        public void onConfigure(@NotNull SupportSQLiteDatabase db2) {
            Intrinsics.checkNotNullParameter(db2, "db");
        }

        public void onCorruption(@NotNull SupportSQLiteDatabase db2) {
            Intrinsics.checkNotNullParameter(db2, "db");
            Log.e(TAG, "Corruption reported by sqlite on database: " + db2 + ".path");
            if (!db2.isOpen()) {
                String path = db2.getPath();
                if (path != null) {
                    deleteDatabaseFile(path);
                    return;
                }
                return;
            }
            List<Pair<String, String>> list = null;
            try {
                try {
                    list = db2.getAttachedDbs();
                } catch (SQLiteException unused) {
                }
                try {
                    db2.close();
                } catch (IOException unused2) {
                }
            } finally {
                if (list != null) {
                    Iterator<T> it = list.iterator();
                    while (it.hasNext()) {
                        Object second = ((Pair) it.next()).second;
                        Intrinsics.checkNotNullExpressionValue(second, "second");
                        deleteDatabaseFile((String) second);
                    }
                } else {
                    String path2 = db2.getPath();
                    if (path2 != null) {
                        deleteDatabaseFile(path2);
                    }
                }
            }
        }

        public abstract void onCreate(@NotNull SupportSQLiteDatabase supportSQLiteDatabase);

        public void onDowngrade(@NotNull SupportSQLiteDatabase db2, int i10, int i11) {
            Intrinsics.checkNotNullParameter(db2, "db");
            throw new SQLiteException("Can't downgrade database from version " + i10 + " to " + i11);
        }

        public void onOpen(@NotNull SupportSQLiteDatabase db2) {
            Intrinsics.checkNotNullParameter(db2, "db");
        }

        public abstract void onUpgrade(@NotNull SupportSQLiteDatabase supportSQLiteDatabase, int i10, int i11);
    }

    /* compiled from: SupportSQLiteOpenHelper.android.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public interface Factory {
        @NotNull
        SupportSQLiteOpenHelper create(@NotNull Configuration configuration);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close();

    @Nullable
    String getDatabaseName();

    @NotNull
    SupportSQLiteDatabase getReadableDatabase();

    @NotNull
    SupportSQLiteDatabase getWritableDatabase();

    void setWriteAheadLoggingEnabled(boolean z10);

    /* compiled from: SupportSQLiteOpenHelper.android.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Configuration {
        @NotNull
        public static final Companion Companion = new Companion(null);
        public final boolean allowDataLossOnRecovery;
        @NotNull
        public final Callback callback;
        @NotNull
        public final Context context;
        @Nullable
        public final String name;
        public final boolean useNoBackupDirectory;

        /* compiled from: SupportSQLiteOpenHelper.android.kt */
        @Metadata
        @SourceDebugExtension({"SMAP\nSupportSQLiteOpenHelper.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SupportSQLiteOpenHelper.android.kt\nandroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,366:1\n1#2:367\n*E\n"})
        /* loaded from: classes2.dex */
        public static class Builder {
            private boolean allowDataLossOnRecovery;
            @Nullable
            private Callback callback;
            @NotNull
            private final Context context;
            @Nullable
            private String name;
            private boolean useNoBackupDirectory;

            public Builder(@NotNull Context context) {
                Intrinsics.checkNotNullParameter(context, "context");
                this.context = context;
            }

            @NotNull
            public Builder allowDataLossOnRecovery(boolean z10) {
                this.allowDataLossOnRecovery = z10;
                return this;
            }

            @NotNull
            public Configuration build() {
                String str;
                Callback callback = this.callback;
                if (callback != null) {
                    if (this.useNoBackupDirectory && ((str = this.name) == null || str.length() == 0)) {
                        throw new IllegalArgumentException("Must set a non-null database name to a configuration that uses the no backup directory.");
                    }
                    return new Configuration(this.context, this.name, callback, this.useNoBackupDirectory, this.allowDataLossOnRecovery);
                }
                throw new IllegalArgumentException("Must set a callback to create the configuration.");
            }

            @NotNull
            public Builder callback(@NotNull Callback callback) {
                Intrinsics.checkNotNullParameter(callback, "callback");
                this.callback = callback;
                return this;
            }

            @NotNull
            public Builder name(@Nullable String str) {
                this.name = str;
                return this;
            }

            @NotNull
            public Builder noBackupDirectory(boolean z10) {
                this.useNoBackupDirectory = z10;
                return this;
            }
        }

        /* compiled from: SupportSQLiteOpenHelper.android.kt */
        @Metadata
        /* loaded from: classes2.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            public final Builder builder(@NotNull Context context) {
                Intrinsics.checkNotNullParameter(context, "context");
                return new Builder(context);
            }

            private Companion() {
            }
        }

        public Configuration(@NotNull Context context, @Nullable String str, @NotNull Callback callback, boolean z10, boolean z11) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(callback, "callback");
            this.context = context;
            this.name = str;
            this.callback = callback;
            this.useNoBackupDirectory = z10;
            this.allowDataLossOnRecovery = z11;
        }

        @NotNull
        public static final Builder builder(@NotNull Context context) {
            return Companion.builder(context);
        }

        public /* synthetic */ Configuration(Context context, String str, Callback callback, boolean z10, boolean z11, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this(context, str, callback, (i10 & 8) != 0 ? false : z10, (i10 & 16) != 0 ? false : z11);
        }
    }
}
