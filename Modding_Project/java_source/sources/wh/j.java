package wh;

import androidx.room.Dao;
import androidx.room.Insert;
import androidx.room.Query;
import com.startshorts.androidplayer.bean.download.ShortTaskInfo;
import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: ShortTaskDao.kt */
@Dao
@Metadata
/* loaded from: classes7.dex */
public interface j {
    @Query("DELETE  FROM short_tasks")
    void a();

    @Insert(onConflict = 1)
    void b(@NotNull ShortTaskInfo shortTaskInfo);

    @Query("SELECT * FROM short_tasks")
    @NotNull
    List<ShortTaskInfo> c();
}
