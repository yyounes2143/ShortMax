package androidx.room;

import androidx.room.RoomDatabase;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: RoomDatabaseConstructor.kt */
@Metadata
/* loaded from: classes2.dex */
public interface RoomDatabaseConstructor<T extends RoomDatabase> {
    @NotNull
    T initialize();
}
