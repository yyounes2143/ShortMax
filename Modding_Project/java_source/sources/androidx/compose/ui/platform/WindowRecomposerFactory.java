package androidx.compose.ui.platform;

import android.view.View;
import androidx.compose.runtime.Recomposer;
import androidx.compose.ui.InternalComposeUiApi;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: WindowRecomposer.android.kt */
@Metadata
@InternalComposeUiApi
/* loaded from: classes.dex */
public interface WindowRecomposerFactory {
    @NotNull
    public static final Companion Companion = Companion.$$INSTANCE;

    @NotNull
    Recomposer createRecomposer(@NotNull View view);

    /* compiled from: WindowRecomposer.android.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        @NotNull
        private static final WindowRecomposerFactory LifecycleAware = new WindowRecomposerFactory() { // from class: androidx.compose.ui.platform.WindowRecomposerFactory$Companion$LifecycleAware$1
            @Override // androidx.compose.ui.platform.WindowRecomposerFactory
            @NotNull
            public final Recomposer createRecomposer(@NotNull View rootView) {
                Intrinsics.checkNotNullParameter(rootView, "rootView");
                return WindowRecomposer_androidKt.createLifecycleAwareWindowRecomposer$default(rootView, null, null, 3, null);
            }
        };

        private Companion() {
        }

        @NotNull
        public final WindowRecomposerFactory getLifecycleAware() {
            return LifecycleAware;
        }

        public static /* synthetic */ void getLifecycleAware$annotations() {
        }
    }
}
