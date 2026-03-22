package androidx.sqlite.driver;

import android.database.sqlite.SQLiteDatabase;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteDriver;
import androidx.sqlite.db.framework.FrameworkSQLiteDatabase;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: AndroidSQLiteDriver.android.kt */
@Metadata
/* loaded from: classes2.dex */
public final class AndroidSQLiteDriver implements SQLiteDriver {
    @Override // androidx.sqlite.SQLiteDriver
    public boolean hasConnectionPool() {
        return true;
    }

    @Override // androidx.sqlite.SQLiteDriver
    @NotNull
    public SQLiteConnection open(@NotNull String fileName) {
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        SQLiteDatabase openOrCreateDatabase = SQLiteDatabase.openOrCreateDatabase(fileName, (SQLiteDatabase.CursorFactory) null);
        Intrinsics.checkNotNull(openOrCreateDatabase);
        return new SupportSQLiteConnection(new FrameworkSQLiteDatabase(openOrCreateDatabase));
    }

    public static /* synthetic */ void hasConnectionPool$annotations() {
    }
}
