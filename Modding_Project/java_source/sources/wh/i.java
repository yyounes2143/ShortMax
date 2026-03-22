package wh;

import android.content.Context;
import androidx.room.Room;
import com.startshorts.androidplayer.ui.activity.download.data.DownloadTaskDB;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DownloadTaskProvide.kt */
@Metadata
/* loaded from: classes7.dex */
public final class i {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final i f69880a = new i();
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private static DownloadTaskDB f69881b;

    private i() {
    }

    @NotNull
    public final DownloadTaskDB a(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (f69881b == null) {
            f69881b = (DownloadTaskDB) Room.databaseBuilder(context, DownloadTaskDB.class, "app_download_drama").build();
        }
        DownloadTaskDB downloadTaskDB = f69881b;
        Intrinsics.checkNotNull(downloadTaskDB);
        return downloadTaskDB;
    }
}
