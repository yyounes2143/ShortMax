package da;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata
/* loaded from: classes5.dex */
public interface c {

    @Metadata
    /* loaded from: classes5.dex */
    public static final class a {
        public static void a(@NotNull c cVar, @NotNull String preloadId, @NotNull String responseId, @NotNull ca.e adUnitIds, int i10) {
            Intrinsics.checkNotNullParameter(preloadId, "preloadId");
            Intrinsics.checkNotNullParameter(responseId, "responseId");
            Intrinsics.checkNotNullParameter(adUnitIds, "adUnitIds");
        }

        public static void b(@NotNull c cVar, @NotNull String preloadId, @Nullable ca.e eVar, int i10) {
            Intrinsics.checkNotNullParameter(preloadId, "preloadId");
        }
    }

    void a(@NotNull String str, @Nullable ca.e eVar, int i10);

    void b(@NotNull String str, @NotNull String str2, @NotNull ca.e eVar, int i10);
}
