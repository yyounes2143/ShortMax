package androidx.sqlite;

import kotlin.Metadata;
import kotlin.NotImplementedError;
import org.jetbrains.annotations.NotNull;
/* compiled from: SQLiteConnection.kt */
@Metadata
/* loaded from: classes2.dex */
public interface SQLiteConnection extends AutoCloseable {
    @Override // java.lang.AutoCloseable
    void close();

    default boolean inTransaction() {
        throw new NotImplementedError(this + " does not implement inTransaction().");
    }

    @NotNull
    SQLiteStatement prepare(@NotNull String str);
}
