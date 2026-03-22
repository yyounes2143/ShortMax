package xh;

import androidx.room.Dao;
import androidx.room.Insert;
import androidx.room.Query;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DownloadEpisodesDao.kt */
@Dao
@Metadata
/* loaded from: classes7.dex */
public interface a {
    @Query("DELETE  FROM download_episodes")
    void a();

    @Insert(onConflict = 1)
    void b(@NotNull f fVar);

    @Query("SELECT * FROM download_episodes WHERE shortPlayId = :shortPlayId")
    @Nullable
    f c(int i10);
}
