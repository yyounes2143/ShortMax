package androidx.room.coroutines;

import androidx.sqlite.SQLiteConnection;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: ConnectionPool.kt */
@Metadata
/* loaded from: classes2.dex */
public interface RawConnectionAccessor {
    @NotNull
    SQLiteConnection getRawConnection();
}
