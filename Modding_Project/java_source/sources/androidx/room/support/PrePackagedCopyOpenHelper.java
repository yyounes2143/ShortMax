package androidx.room.support;

import android.content.Context;
import android.util.Log;
import androidx.room.DatabaseConfiguration;
import androidx.room.DelegatingOpenHelper;
import androidx.room.Room;
import androidx.room.RoomDatabase;
import androidx.room.util.DBUtil;
import androidx.room.util.FileUtil;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import androidx.sqlite.db.framework.FrameworkSQLiteOpenHelperFactory;
import androidx.sqlite.util.ProcessLock;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.channels.Channels;
import java.nio.channels.FileChannel;
import java.nio.channels.ReadableByteChannel;
import java.util.concurrent.Callable;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PrePackagedCopyOpenHelper.android.kt */
@Metadata
/* loaded from: classes2.dex */
public final class PrePackagedCopyOpenHelper implements SupportSQLiteOpenHelper, DelegatingOpenHelper {
    @NotNull
    private final Context context;
    @Nullable
    private final String copyFromAssetPath;
    @Nullable
    private final File copyFromFile;
    @Nullable
    private final Callable<InputStream> copyFromInputStream;
    private DatabaseConfiguration databaseConfiguration;
    private final int databaseVersion;
    @NotNull
    private final SupportSQLiteOpenHelper delegate;
    private boolean verified;

    public PrePackagedCopyOpenHelper(@NotNull Context context, @Nullable String str, @Nullable File file, @Nullable Callable<InputStream> callable, int i10, @NotNull SupportSQLiteOpenHelper delegate) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        this.context = context;
        this.copyFromAssetPath = str;
        this.copyFromFile = file;
        this.copyFromInputStream = callable;
        this.databaseVersion = i10;
        this.delegate = delegate;
    }

    private final void copyDatabaseFile(File file, boolean z10) throws IOException {
        ReadableByteChannel newChannel;
        if (this.copyFromAssetPath != null) {
            newChannel = Channels.newChannel(this.context.getAssets().open(this.copyFromAssetPath));
            Intrinsics.checkNotNullExpressionValue(newChannel, "newChannel(...)");
        } else if (this.copyFromFile != null) {
            newChannel = new FileInputStream(this.copyFromFile).getChannel();
            Intrinsics.checkNotNullExpressionValue(newChannel, "getChannel(...)");
        } else {
            Callable<InputStream> callable = this.copyFromInputStream;
            if (callable != null) {
                try {
                    newChannel = Channels.newChannel(callable.call());
                    Intrinsics.checkNotNullExpressionValue(newChannel, "newChannel(...)");
                } catch (Exception e10) {
                    throw new IOException("inputStreamCallable exception on call", e10);
                }
            } else {
                throw new IllegalStateException("copyFromAssetPath, copyFromFile and copyFromInputStream are all null!");
            }
        }
        File createTempFile = File.createTempFile("room-copy-helper", ".tmp", this.context.getCacheDir());
        createTempFile.deleteOnExit();
        FileChannel channel = new FileOutputStream(createTempFile).getChannel();
        Intrinsics.checkNotNull(channel);
        FileUtil.copy(newChannel, channel);
        File parentFile = file.getParentFile();
        if (parentFile != null && !parentFile.exists() && !parentFile.mkdirs()) {
            throw new IOException("Failed to create directories for " + file.getAbsolutePath());
        }
        Intrinsics.checkNotNull(createTempFile);
        dispatchOnOpenPrepackagedDatabase(createTempFile, z10);
        if (createTempFile.renameTo(file)) {
            return;
        }
        throw new IOException("Failed to move intermediate file (" + createTempFile.getAbsolutePath() + ") to destination (" + file.getAbsolutePath() + ").");
    }

    private final SupportSQLiteOpenHelper createFrameworkOpenHelper(File file) {
        try {
            final int readVersion = DBUtil.readVersion(file);
            FrameworkSQLiteOpenHelperFactory frameworkSQLiteOpenHelperFactory = new FrameworkSQLiteOpenHelperFactory();
            SupportSQLiteOpenHelper.Configuration.Builder name = SupportSQLiteOpenHelper.Configuration.Companion.builder(this.context).name(file.getAbsolutePath());
            final int e10 = kotlin.ranges.e.e(readVersion, 1);
            return frameworkSQLiteOpenHelperFactory.create(name.callback(new SupportSQLiteOpenHelper.Callback(e10) { // from class: androidx.room.support.PrePackagedCopyOpenHelper$createFrameworkOpenHelper$configuration$1
                @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.Callback
                public void onCreate(SupportSQLiteDatabase db2) {
                    Intrinsics.checkNotNullParameter(db2, "db");
                }

                @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.Callback
                public void onOpen(SupportSQLiteDatabase db2) {
                    Intrinsics.checkNotNullParameter(db2, "db");
                    int i10 = readVersion;
                    if (i10 < 1) {
                        db2.setVersion(i10);
                    }
                }

                @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.Callback
                public void onUpgrade(SupportSQLiteDatabase db2, int i10, int i11) {
                    Intrinsics.checkNotNullParameter(db2, "db");
                }
            }).build());
        } catch (IOException e11) {
            throw new RuntimeException("Malformed database file, unable to read version.", e11);
        }
    }

    private final void dispatchOnOpenPrepackagedDatabase(File file, boolean z10) {
        SupportSQLiteDatabase readableDatabase;
        DatabaseConfiguration databaseConfiguration = this.databaseConfiguration;
        if (databaseConfiguration == null) {
            Intrinsics.throwUninitializedPropertyAccessException("databaseConfiguration");
            databaseConfiguration = null;
        }
        if (databaseConfiguration.prepackagedDatabaseCallback == null) {
            return;
        }
        SupportSQLiteOpenHelper createFrameworkOpenHelper = createFrameworkOpenHelper(file);
        try {
            if (z10) {
                readableDatabase = createFrameworkOpenHelper.getWritableDatabase();
            } else {
                readableDatabase = createFrameworkOpenHelper.getReadableDatabase();
            }
            DatabaseConfiguration databaseConfiguration2 = this.databaseConfiguration;
            if (databaseConfiguration2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("databaseConfiguration");
                databaseConfiguration2 = null;
            }
            RoomDatabase.PrepackagedDatabaseCallback prepackagedDatabaseCallback = databaseConfiguration2.prepackagedDatabaseCallback;
            Intrinsics.checkNotNull(prepackagedDatabaseCallback);
            prepackagedDatabaseCallback.onOpenPrepackagedDatabase(readableDatabase);
            Unit unit = Unit.f60915a;
            ws.b.a(createFrameworkOpenHelper, null);
        } finally {
        }
    }

    private final void verifyDatabaseFile(boolean z10) {
        String databaseName = getDatabaseName();
        if (databaseName != null) {
            File databasePath = this.context.getDatabasePath(databaseName);
            DatabaseConfiguration databaseConfiguration = this.databaseConfiguration;
            DatabaseConfiguration databaseConfiguration2 = null;
            if (databaseConfiguration == null) {
                Intrinsics.throwUninitializedPropertyAccessException("databaseConfiguration");
                databaseConfiguration = null;
            }
            ProcessLock processLock = new ProcessLock(databaseName, this.context.getFilesDir(), databaseConfiguration.multiInstanceInvalidation);
            try {
                ProcessLock.lock$default(processLock, false, 1, null);
                if (!databasePath.exists()) {
                    try {
                        Intrinsics.checkNotNull(databasePath);
                        copyDatabaseFile(databasePath, z10);
                        processLock.unlock();
                        return;
                    } catch (IOException e10) {
                        throw new RuntimeException("Unable to copy database file.", e10);
                    }
                }
                try {
                    Intrinsics.checkNotNull(databasePath);
                    int readVersion = DBUtil.readVersion(databasePath);
                    if (readVersion == this.databaseVersion) {
                        processLock.unlock();
                        return;
                    }
                    DatabaseConfiguration databaseConfiguration3 = this.databaseConfiguration;
                    if (databaseConfiguration3 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("databaseConfiguration");
                        databaseConfiguration3 = null;
                    }
                    if (databaseConfiguration3.migrationContainer.findMigrationPath(readVersion, this.databaseVersion) != null) {
                        processLock.unlock();
                        return;
                    }
                    DatabaseConfiguration databaseConfiguration4 = this.databaseConfiguration;
                    if (databaseConfiguration4 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("databaseConfiguration");
                    } else {
                        databaseConfiguration2 = databaseConfiguration4;
                    }
                    if (databaseConfiguration2.isMigrationRequired(readVersion, this.databaseVersion)) {
                        processLock.unlock();
                        return;
                    }
                    if (this.context.deleteDatabase(databaseName)) {
                        try {
                            copyDatabaseFile(databasePath, z10);
                            Unit unit = Unit.f60915a;
                        } catch (IOException e11) {
                            Log.w(Room.LOG_TAG, "Unable to copy database file.", e11);
                        }
                    } else {
                        Log.w(Room.LOG_TAG, "Failed to delete database file (" + databaseName + ") for a copy destructive migration.");
                    }
                    processLock.unlock();
                    return;
                } catch (IOException e12) {
                    Log.w(Room.LOG_TAG, "Unable to read database version.", e12);
                    processLock.unlock();
                    return;
                }
            } catch (Throwable th2) {
                processLock.unlock();
                throw th2;
            }
            processLock.unlock();
            throw th2;
        }
        throw new IllegalStateException("Required value was null.");
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper, java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() {
        getDelegate().close();
        this.verified = false;
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper
    @Nullable
    public String getDatabaseName() {
        return getDelegate().getDatabaseName();
    }

    @Override // androidx.room.DelegatingOpenHelper
    @NotNull
    public SupportSQLiteOpenHelper getDelegate() {
        return this.delegate;
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper
    @NotNull
    public SupportSQLiteDatabase getReadableDatabase() {
        if (!this.verified) {
            verifyDatabaseFile(false);
            this.verified = true;
        }
        return getDelegate().getReadableDatabase();
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper
    @NotNull
    public SupportSQLiteDatabase getWritableDatabase() {
        if (!this.verified) {
            verifyDatabaseFile(true);
            this.verified = true;
        }
        return getDelegate().getWritableDatabase();
    }

    public final void setDatabaseConfiguration(@NotNull DatabaseConfiguration databaseConfiguration) {
        Intrinsics.checkNotNullParameter(databaseConfiguration, "databaseConfiguration");
        this.databaseConfiguration = databaseConfiguration;
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper
    public void setWriteAheadLoggingEnabled(boolean z10) {
        getDelegate().setWriteAheadLoggingEnabled(z10);
    }
}
