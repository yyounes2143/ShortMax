package androidx.room.util;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: SQLiteUtil.kt */
@Metadata
/* loaded from: classes2.dex */
public final class SQLiteResultCode {
    @NotNull
    public static final SQLiteResultCode INSTANCE = new SQLiteResultCode();
    public static final int SQLITE_BUSY = 5;
    public static final int SQLITE_ERROR = 1;
    public static final int SQLITE_MISUSE = 21;

    private SQLiteResultCode() {
    }
}
