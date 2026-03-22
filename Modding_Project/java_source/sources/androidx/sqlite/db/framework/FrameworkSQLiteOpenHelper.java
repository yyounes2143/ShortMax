package androidx.sqlite.db.framework;

import android.content.Context;
import android.database.DatabaseErrorHandler;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;
import androidx.sqlite.db.SupportSQLiteCompat;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import androidx.sqlite.db.framework.FrameworkSQLiteOpenHelper;
import androidx.sqlite.util.ProcessLock;
import java.io.File;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: FrameworkSQLiteOpenHelper.android.kt */
@Metadata
/* loaded from: classes2.dex */
public final class FrameworkSQLiteOpenHelper implements SupportSQLiteOpenHelper {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String TAG = "SupportSQLite";
    private final boolean allowDataLossOnRecovery;
    @NotNull
    private final SupportSQLiteOpenHelper.Callback callback;
    @NotNull
    private final Context context;
    @NotNull
    private final i<OpenHelper> lazyDelegate;
    @Nullable
    private final String name;
    private final boolean useNoBackupDirectory;
    private boolean writeAheadLoggingEnabled;

    /* compiled from: FrameworkSQLiteOpenHelper.android.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: FrameworkSQLiteOpenHelper.android.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class DBRefHolder {
        @Nullable

        /* renamed from: db  reason: collision with root package name */
        private FrameworkSQLiteDatabase f1652db;

        public DBRefHolder(@Nullable FrameworkSQLiteDatabase frameworkSQLiteDatabase) {
            this.f1652db = frameworkSQLiteDatabase;
        }

        @Nullable
        public final FrameworkSQLiteDatabase getDb() {
            return this.f1652db;
        }

        public final void setDb(@Nullable FrameworkSQLiteDatabase frameworkSQLiteDatabase) {
            this.f1652db = frameworkSQLiteDatabase;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: FrameworkSQLiteOpenHelper.android.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class OpenHelper extends SQLiteOpenHelper {
        @NotNull
        public static final Companion Companion = new Companion(null);
        private final boolean allowDataLossOnRecovery;
        @NotNull
        private final SupportSQLiteOpenHelper.Callback callback;
        @NotNull
        private final Context context;
        @NotNull
        private final DBRefHolder dbRef;
        @NotNull
        private final ProcessLock lock;
        private boolean migrated;
        private boolean opened;

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: FrameworkSQLiteOpenHelper.android.kt */
        @Metadata
        /* loaded from: classes2.dex */
        public static final class CallbackException extends RuntimeException {
            @NotNull
            private final CallbackName callbackName;
            @NotNull
            private final Throwable cause;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public CallbackException(@NotNull CallbackName callbackName, @NotNull Throwable cause) {
                super(cause);
                Intrinsics.checkNotNullParameter(callbackName, "callbackName");
                Intrinsics.checkNotNullParameter(cause, "cause");
                this.callbackName = callbackName;
                this.cause = cause;
            }

            @NotNull
            public final CallbackName getCallbackName() {
                return this.callbackName;
            }

            @Override // java.lang.Throwable
            @NotNull
            public Throwable getCause() {
                return this.cause;
            }
        }

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        /* compiled from: FrameworkSQLiteOpenHelper.android.kt */
        @Metadata
        /* loaded from: classes2.dex */
        public static final class CallbackName {
            private static final /* synthetic */ ss.a $ENTRIES;
            private static final /* synthetic */ CallbackName[] $VALUES;
            public static final CallbackName ON_CONFIGURE = new CallbackName("ON_CONFIGURE", 0);
            public static final CallbackName ON_CREATE = new CallbackName("ON_CREATE", 1);
            public static final CallbackName ON_UPGRADE = new CallbackName("ON_UPGRADE", 2);
            public static final CallbackName ON_DOWNGRADE = new CallbackName("ON_DOWNGRADE", 3);
            public static final CallbackName ON_OPEN = new CallbackName("ON_OPEN", 4);

            private static final /* synthetic */ CallbackName[] $values() {
                return new CallbackName[]{ON_CONFIGURE, ON_CREATE, ON_UPGRADE, ON_DOWNGRADE, ON_OPEN};
            }

            static {
                CallbackName[] $values = $values();
                $VALUES = $values;
                $ENTRIES = kotlin.enums.a.a($values);
            }

            private CallbackName(String str, int i10) {
            }

            @NotNull
            public static ss.a<CallbackName> getEntries() {
                return $ENTRIES;
            }

            public static CallbackName valueOf(String str) {
                return (CallbackName) Enum.valueOf(CallbackName.class, str);
            }

            public static CallbackName[] values() {
                return (CallbackName[]) $VALUES.clone();
            }
        }

        /* compiled from: FrameworkSQLiteOpenHelper.android.kt */
        @Metadata
        @SourceDebugExtension({"SMAP\nFrameworkSQLiteOpenHelper.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FrameworkSQLiteOpenHelper.android.kt\nandroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,337:1\n1#2:338\n*E\n"})
        /* loaded from: classes2.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            public final FrameworkSQLiteDatabase getWrappedDb(@NotNull DBRefHolder refHolder, @NotNull SQLiteDatabase sqLiteDatabase) {
                Intrinsics.checkNotNullParameter(refHolder, "refHolder");
                Intrinsics.checkNotNullParameter(sqLiteDatabase, "sqLiteDatabase");
                FrameworkSQLiteDatabase db2 = refHolder.getDb();
                if (db2 == null || !db2.isDelegate$sqlite_framework(sqLiteDatabase)) {
                    FrameworkSQLiteDatabase frameworkSQLiteDatabase = new FrameworkSQLiteDatabase(sqLiteDatabase);
                    refHolder.setDb(frameworkSQLiteDatabase);
                    return frameworkSQLiteDatabase;
                }
                return db2;
            }

            private Companion() {
            }
        }

        /* compiled from: FrameworkSQLiteOpenHelper.android.kt */
        @Metadata
        /* loaded from: classes2.dex */
        public static final /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[CallbackName.values().length];
                try {
                    iArr[CallbackName.ON_CONFIGURE.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[CallbackName.ON_CREATE.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[CallbackName.ON_UPGRADE.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[CallbackName.ON_DOWNGRADE.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                try {
                    iArr[CallbackName.ON_OPEN.ordinal()] = 5;
                } catch (NoSuchFieldError unused5) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OpenHelper(@NotNull Context context, @Nullable String str, @NotNull final DBRefHolder dbRef, @NotNull final SupportSQLiteOpenHelper.Callback callback, boolean z10) {
            super(context, str, null, callback.version, new DatabaseErrorHandler() { // from class: androidx.sqlite.db.framework.g
                @Override // android.database.DatabaseErrorHandler
                public final void onCorruption(SQLiteDatabase sQLiteDatabase) {
                    FrameworkSQLiteOpenHelper.OpenHelper._init_$lambda$0(SupportSQLiteOpenHelper.Callback.this, dbRef, sQLiteDatabase);
                }
            });
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(dbRef, "dbRef");
            Intrinsics.checkNotNullParameter(callback, "callback");
            this.context = context;
            this.dbRef = dbRef;
            this.callback = callback;
            this.allowDataLossOnRecovery = z10;
            if (str == null) {
                str = UUID.randomUUID().toString();
                Intrinsics.checkNotNullExpressionValue(str, "toString(...)");
            }
            this.lock = new ProcessLock(str, context.getCacheDir(), false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void _init_$lambda$0(SupportSQLiteOpenHelper.Callback callback, DBRefHolder dBRefHolder, SQLiteDatabase sQLiteDatabase) {
            Companion companion = Companion;
            Intrinsics.checkNotNull(sQLiteDatabase);
            callback.onCorruption(companion.getWrappedDb(dBRefHolder, sQLiteDatabase));
        }

        private final SQLiteDatabase getWritableOrReadableDatabase(boolean z10) {
            if (z10) {
                SQLiteDatabase writableDatabase = super.getWritableDatabase();
                Intrinsics.checkNotNull(writableDatabase);
                return writableDatabase;
            }
            SQLiteDatabase readableDatabase = super.getReadableDatabase();
            Intrinsics.checkNotNull(readableDatabase);
            return readableDatabase;
        }

        private final SQLiteDatabase innerGetDatabase(boolean z10) {
            File parentFile;
            String databaseName = getDatabaseName();
            boolean z11 = this.opened;
            if (databaseName != null && !z11 && (parentFile = this.context.getDatabasePath(databaseName).getParentFile()) != null) {
                parentFile.mkdirs();
                if (!parentFile.isDirectory()) {
                    Log.w(FrameworkSQLiteOpenHelper.TAG, "Invalid database parent file, not a directory: " + parentFile);
                }
            }
            try {
                return getWritableOrReadableDatabase(z10);
            } catch (Throwable unused) {
                try {
                    Thread.sleep(500L);
                } catch (InterruptedException unused2) {
                }
                try {
                    return getWritableOrReadableDatabase(z10);
                } catch (Throwable th2) {
                    th = th2;
                    if (th instanceof CallbackException) {
                        CallbackException callbackException = th;
                        Throwable cause = callbackException.getCause();
                        int i10 = WhenMappings.$EnumSwitchMapping$0[callbackException.getCallbackName().ordinal()];
                        if (i10 != 1 && i10 != 2 && i10 != 3 && i10 != 4) {
                            if (i10 == 5) {
                                if (cause instanceof SQLiteException) {
                                    th = cause;
                                } else {
                                    throw cause;
                                }
                            } else {
                                throw new NoWhenBranchMatchedException();
                            }
                        } else {
                            throw cause;
                        }
                    }
                    if ((th instanceof SQLiteException) && databaseName != null && this.allowDataLossOnRecovery) {
                        this.context.deleteDatabase(databaseName);
                        try {
                            return getWritableOrReadableDatabase(z10);
                        } catch (CallbackException e10) {
                            throw e10.getCause();
                        }
                    }
                    throw th;
                }
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper, java.lang.AutoCloseable
        public void close() {
            try {
                ProcessLock.lock$default(this.lock, false, 1, null);
                super.close();
                this.dbRef.setDb(null);
                this.opened = false;
            } finally {
                this.lock.unlock();
            }
        }

        public final boolean getAllowDataLossOnRecovery() {
            return this.allowDataLossOnRecovery;
        }

        @NotNull
        public final SupportSQLiteOpenHelper.Callback getCallback() {
            return this.callback;
        }

        @NotNull
        public final Context getContext() {
            return this.context;
        }

        @NotNull
        public final DBRefHolder getDbRef() {
            return this.dbRef;
        }

        @NotNull
        public final SupportSQLiteDatabase getSupportDatabase(boolean z10) {
            boolean z11;
            try {
                ProcessLock processLock = this.lock;
                if (!this.opened && getDatabaseName() != null) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                processLock.lock(z11);
                this.migrated = false;
                SQLiteDatabase innerGetDatabase = innerGetDatabase(z10);
                if (this.migrated) {
                    close();
                    SupportSQLiteDatabase supportDatabase = getSupportDatabase(z10);
                    this.lock.unlock();
                    return supportDatabase;
                }
                FrameworkSQLiteDatabase wrappedDb = getWrappedDb(innerGetDatabase);
                this.lock.unlock();
                return wrappedDb;
            } catch (Throwable th2) {
                this.lock.unlock();
                throw th2;
            }
        }

        @NotNull
        public final FrameworkSQLiteDatabase getWrappedDb(@NotNull SQLiteDatabase sqLiteDatabase) {
            Intrinsics.checkNotNullParameter(sqLiteDatabase, "sqLiteDatabase");
            return Companion.getWrappedDb(this.dbRef, sqLiteDatabase);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onConfigure(@NotNull SQLiteDatabase db2) {
            Intrinsics.checkNotNullParameter(db2, "db");
            if (!this.migrated && this.callback.version != db2.getVersion()) {
                db2.setMaxSqlCacheSize(1);
            }
            try {
                this.callback.onConfigure(getWrappedDb(db2));
            } catch (Throwable th2) {
                throw new CallbackException(CallbackName.ON_CONFIGURE, th2);
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(@NotNull SQLiteDatabase sqLiteDatabase) {
            Intrinsics.checkNotNullParameter(sqLiteDatabase, "sqLiteDatabase");
            try {
                this.callback.onCreate(getWrappedDb(sqLiteDatabase));
            } catch (Throwable th2) {
                throw new CallbackException(CallbackName.ON_CREATE, th2);
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onDowngrade(@NotNull SQLiteDatabase db2, int i10, int i11) {
            Intrinsics.checkNotNullParameter(db2, "db");
            this.migrated = true;
            try {
                this.callback.onDowngrade(getWrappedDb(db2), i10, i11);
            } catch (Throwable th2) {
                throw new CallbackException(CallbackName.ON_DOWNGRADE, th2);
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onOpen(@NotNull SQLiteDatabase db2) {
            Intrinsics.checkNotNullParameter(db2, "db");
            if (!this.migrated) {
                try {
                    this.callback.onOpen(getWrappedDb(db2));
                } catch (Throwable th2) {
                    throw new CallbackException(CallbackName.ON_OPEN, th2);
                }
            }
            this.opened = true;
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(@NotNull SQLiteDatabase sqLiteDatabase, int i10, int i11) {
            Intrinsics.checkNotNullParameter(sqLiteDatabase, "sqLiteDatabase");
            this.migrated = true;
            try {
                this.callback.onUpgrade(getWrappedDb(sqLiteDatabase), i10, i11);
            } catch (Throwable th2) {
                throw new CallbackException(CallbackName.ON_UPGRADE, th2);
            }
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public FrameworkSQLiteOpenHelper(@NotNull Context context, @Nullable String str, @NotNull SupportSQLiteOpenHelper.Callback callback) {
        this(context, str, callback, false, false, 24, null);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(callback, "callback");
    }

    private final OpenHelper getDelegate() {
        return this.lazyDelegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final OpenHelper lazyDelegate$lambda$0(FrameworkSQLiteOpenHelper frameworkSQLiteOpenHelper) {
        OpenHelper openHelper;
        if (frameworkSQLiteOpenHelper.name != null && frameworkSQLiteOpenHelper.useNoBackupDirectory) {
            openHelper = new OpenHelper(frameworkSQLiteOpenHelper.context, new File(SupportSQLiteCompat.Api21Impl.getNoBackupFilesDir(frameworkSQLiteOpenHelper.context), frameworkSQLiteOpenHelper.name).getAbsolutePath(), new DBRefHolder(null), frameworkSQLiteOpenHelper.callback, frameworkSQLiteOpenHelper.allowDataLossOnRecovery);
        } else {
            openHelper = new OpenHelper(frameworkSQLiteOpenHelper.context, frameworkSQLiteOpenHelper.name, new DBRefHolder(null), frameworkSQLiteOpenHelper.callback, frameworkSQLiteOpenHelper.allowDataLossOnRecovery);
        }
        openHelper.setWriteAheadLoggingEnabled(frameworkSQLiteOpenHelper.writeAheadLoggingEnabled);
        return openHelper;
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.lazyDelegate.isInitialized()) {
            getDelegate().close();
        }
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper
    @Nullable
    public String getDatabaseName() {
        return this.name;
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper
    @NotNull
    public SupportSQLiteDatabase getReadableDatabase() {
        return getDelegate().getSupportDatabase(false);
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper
    @NotNull
    public SupportSQLiteDatabase getWritableDatabase() {
        return getDelegate().getSupportDatabase(true);
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper
    public void setWriteAheadLoggingEnabled(boolean z10) {
        if (this.lazyDelegate.isInitialized()) {
            getDelegate().setWriteAheadLoggingEnabled(z10);
        }
        this.writeAheadLoggingEnabled = z10;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public FrameworkSQLiteOpenHelper(@NotNull Context context, @Nullable String str, @NotNull SupportSQLiteOpenHelper.Callback callback, boolean z10) {
        this(context, str, callback, z10, false, 16, null);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(callback, "callback");
    }

    public FrameworkSQLiteOpenHelper(@NotNull Context context, @Nullable String str, @NotNull SupportSQLiteOpenHelper.Callback callback, boolean z10, boolean z11) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.context = context;
        this.name = str;
        this.callback = callback;
        this.useNoBackupDirectory = z10;
        this.allowDataLossOnRecovery = z11;
        this.lazyDelegate = kotlin.c.b(new Function0() { // from class: androidx.sqlite.db.framework.f
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                FrameworkSQLiteOpenHelper.OpenHelper lazyDelegate$lambda$0;
                lazyDelegate$lambda$0 = FrameworkSQLiteOpenHelper.lazyDelegate$lambda$0(FrameworkSQLiteOpenHelper.this);
                return lazyDelegate$lambda$0;
            }
        });
    }

    public /* synthetic */ FrameworkSQLiteOpenHelper(Context context, String str, SupportSQLiteOpenHelper.Callback callback, boolean z10, boolean z11, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, str, callback, (i10 & 8) != 0 ? false : z10, (i10 & 16) != 0 ? false : z11);
    }
}
