package gq;

import android.content.Context;
import android.net.Uri;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import sq.k;
@Metadata
/* loaded from: classes8.dex */
public interface b {
    default void a(@NotNull Context context, @NotNull String url, @Nullable yq.d<Boolean> dVar) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(url, "url");
        b(context, k.d(url), dVar);
    }

    boolean a(@NotNull Uri uri);

    void b(@NotNull Context context, @NotNull Uri uri, @Nullable yq.d<Boolean> dVar);
}
