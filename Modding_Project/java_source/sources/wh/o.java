package wh;

import android.content.Context;
import androidx.room.Room;
import com.startshorts.androidplayer.ui.activity.download.data.ShortTaskDB;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ShortTaskProvide.kt */
@Metadata
/* loaded from: classes7.dex */
public final class o {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final o f69891a = new o();
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private static ShortTaskDB f69892b;

    private o() {
    }

    @NotNull
    public final ShortTaskDB a(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (f69892b == null) {
            f69892b = (ShortTaskDB) Room.databaseBuilder(context, ShortTaskDB.class, "app_download_short").build();
        }
        ShortTaskDB shortTaskDB = f69892b;
        Intrinsics.checkNotNull(shortTaskDB);
        return shortTaskDB;
    }
}
