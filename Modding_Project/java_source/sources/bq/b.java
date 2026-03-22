package bq;

import android.net.Uri;
import android.view.View;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import tp.u;
import tp.w;
import tp.z;
@Metadata
/* loaded from: classes8.dex */
public interface b extends u, w, z {
    void a();

    void a(@NotNull Uri uri);

    void d(@Nullable d dVar);

    long g();

    float getVolume();

    @NotNull
    View n();

    void pause();

    void play();

    void prepare();
}
