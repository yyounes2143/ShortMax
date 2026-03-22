package androidx.sqlite.driver;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: AndroidSQLite.android.kt */
@Metadata
/* loaded from: classes2.dex */
public final class ResultCode {
    @NotNull
    public static final ResultCode INSTANCE = new ResultCode();
    public static final int SQLITE_MISUSE = 21;
    public static final int SQLITE_RANGE = 25;

    private ResultCode() {
    }
}
