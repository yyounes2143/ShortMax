package xh;

import android.content.Context;
import androidx.room.Room;
import com.startshorts.androidplayer.ui.activity.download.data.episodes.DownloadEpisodesDB;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DownloadEpisodesProvide.kt */
@Metadata
/* loaded from: classes7.dex */
public final class g {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final g f70473a = new g();
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private static DownloadEpisodesDB f70474b;

    private g() {
    }

    @NotNull
    public final DownloadEpisodesDB a(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (f70474b == null) {
            f70474b = (DownloadEpisodesDB) Room.databaseBuilder(context, DownloadEpisodesDB.class, "app_download_episodes").build();
        }
        DownloadEpisodesDB downloadEpisodesDB = f70474b;
        Intrinsics.checkNotNull(downloadEpisodesDB);
        return downloadEpisodesDB;
    }
}
