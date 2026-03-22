package androidx.compose.foundation;

import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Indication.kt */
@Metadata
/* loaded from: classes.dex */
final class NoIndication implements Indication {
    @NotNull
    public static final NoIndication INSTANCE = new NoIndication();

    /* compiled from: Indication.kt */
    @Metadata
    /* loaded from: classes.dex */
    private static final class NoIndicationInstance implements IndicationInstance {
        @NotNull
        public static final NoIndicationInstance INSTANCE = new NoIndicationInstance();

        private NoIndicationInstance() {
        }

        @Override // androidx.compose.foundation.IndicationInstance
        public void drawIndication(@NotNull ContentDrawScope contentDrawScope) {
            Intrinsics.checkNotNullParameter(contentDrawScope, "<this>");
            contentDrawScope.drawContent();
        }
    }

    private NoIndication() {
    }

    @Override // androidx.compose.foundation.Indication
    @Composable
    @NotNull
    public IndicationInstance rememberUpdatedInstance(@NotNull InteractionSource interactionSource, @Nullable Composer composer, int i10) {
        Intrinsics.checkNotNullParameter(interactionSource, "interactionSource");
        composer.startReplaceableGroup(285654452);
        NoIndicationInstance noIndicationInstance = NoIndicationInstance.INSTANCE;
        composer.endReplaceableGroup();
        return noIndicationInstance;
    }
}
