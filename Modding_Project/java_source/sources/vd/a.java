package vd;

import androidx.room.Dao;
import androidx.room.Insert;
import androidx.room.Query;
import com.startshorts.androidplayer.db.model.DbEvent;
import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: EventDao.kt */
@Dao
@Metadata
/* loaded from: classes6.dex */
public interface a {
    @Query("DELETE FROM DbEvent WHERE localId in(:ids)")
    int a(@NotNull List<Long> list);

    @Query("SELECT * FROM DbEvent ORDER BY localId ASC")
    @Nullable
    List<DbEvent> b();

    @Insert(onConflict = 1)
    long c(@NotNull DbEvent dbEvent);

    @Insert(onConflict = 1)
    @NotNull
    long[] d(@NotNull List<DbEvent> list);
}
