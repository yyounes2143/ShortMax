package tp;

import android.content.Context;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata
/* loaded from: classes8.dex */
public final class a {
    @NotNull
    public static final c0 a(@NotNull rq.f fVar, @NotNull Context context, @NotNull lq.a repository) {
        Intrinsics.checkNotNullParameter(fVar, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(repository, "repository");
        return new c0(context, repository, fVar);
    }
}
