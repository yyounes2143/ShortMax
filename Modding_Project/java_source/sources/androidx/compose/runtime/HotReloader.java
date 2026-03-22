package androidx.compose.runtime;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.TestOnly;
/* compiled from: HotReloader.kt */
@Metadata
/* loaded from: classes.dex */
final class HotReloader {
    @NotNull
    public static final Companion Companion = new Companion(null);

    /* compiled from: HotReloader.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final void loadStateAndCompose(Object obj) {
            Recomposer.Companion.loadStateAndComposeForHotReload$runtime(obj);
        }

        private final Object saveStateAndDispose(Object obj) {
            return Recomposer.Companion.saveStateAndDisposeForHotReload$runtime();
        }

        @TestOnly
        public final void clearErrors() {
            Recomposer.Companion.clearErrors$runtime();
        }

        @TestOnly
        @NotNull
        public final List<RecomposerErrorInfo> getCurrentErrors() {
            return Recomposer.Companion.getCurrentErrors$runtime();
        }

        @TestOnly
        public final void invalidateGroupsWithKey(int i10) {
            Recomposer.Companion.invalidateGroupsWithKey$runtime(i10);
        }

        @TestOnly
        public final void simulateHotReload$runtime(@NotNull Object obj) {
            loadStateAndCompose(saveStateAndDispose(obj));
        }

        private Companion() {
        }
    }
}
