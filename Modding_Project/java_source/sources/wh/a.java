package wh;

import androidx.room.Dao;
import androidx.room.Delete;
import androidx.room.Insert;
import androidx.room.Query;
import com.startshorts.androidplayer.bean.download.DownloadTaskInfo;
import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: DownloadTaskDao.kt */
@Dao
@Metadata
/* loaded from: classes7.dex */
public interface a {
    @Query("DELETE  FROM download_tasks")
    void a();

    @Delete
    void b(@NotNull DownloadTaskInfo downloadTaskInfo);

    @Insert(onConflict = 1)
    void c(@NotNull DownloadTaskInfo downloadTaskInfo);

    @Query("SELECT * FROM download_tasks")
    @NotNull
    List<DownloadTaskInfo> d();

    @Query("DELETE FROM download_tasks WHERE downloadState = :downloadState")
    int e(int i10);

    @Insert(onConflict = 1)
    void f(@NotNull List<DownloadTaskInfo> list);
}
