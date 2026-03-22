package androidx.sqlite;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: SQLiteDriver.kt */
@Metadata
/* loaded from: classes2.dex */
public interface SQLiteDriver {
    default boolean hasConnectionPool() {
        return false;
    }

    @NotNull
    SQLiteConnection open(@NotNull String str);

    static /* synthetic */ void hasConnectionPool$annotations() {
    }
}
