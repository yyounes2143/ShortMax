package androidx.compose.ui.platform;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.ExperimentalComposeUiApi;
import androidx.compose.ui.text.input.TextInputService;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LocalSoftwareKeyboardController.kt */
@StabilityInferred(parameters = 0)
@ExperimentalComposeUiApi
@Metadata
/* loaded from: classes.dex */
public final class LocalSoftwareKeyboardController {
    public static final int $stable = 0;
    @NotNull
    public static final LocalSoftwareKeyboardController INSTANCE = new LocalSoftwareKeyboardController();
    @NotNull
    private static final ProvidableCompositionLocal<SoftwareKeyboardController> LocalSoftwareKeyboardController = CompositionLocalKt.compositionLocalOf$default(null, new Function0<SoftwareKeyboardController>() { // from class: androidx.compose.ui.platform.LocalSoftwareKeyboardController$LocalSoftwareKeyboardController$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        @Nullable
        public final SoftwareKeyboardController invoke() {
            return null;
        }
    }, 1, null);

    private LocalSoftwareKeyboardController() {
    }

    @Composable
    private final SoftwareKeyboardController delegatingController(Composer composer, int i10) {
        composer.startReplaceableGroup(1835581880);
        TextInputService textInputService = (TextInputService) composer.consume(CompositionLocalsKt.getLocalTextInputService());
        if (textInputService == null) {
            composer.endReplaceableGroup();
            return null;
        }
        composer.startReplaceableGroup(1157296644);
        boolean changed = composer.changed(textInputService);
        Object rememberedValue = composer.rememberedValue();
        if (changed || rememberedValue == Composer.Companion.getEmpty()) {
            rememberedValue = new DelegatingSoftwareKeyboardController(textInputService);
            composer.updateRememberedValue(rememberedValue);
        }
        composer.endReplaceableGroup();
        DelegatingSoftwareKeyboardController delegatingSoftwareKeyboardController = (DelegatingSoftwareKeyboardController) rememberedValue;
        composer.endReplaceableGroup();
        return delegatingSoftwareKeyboardController;
    }

    @Composable
    @Nullable
    public final SoftwareKeyboardController getCurrent(@Nullable Composer composer, int i10) {
        composer.startReplaceableGroup(-1059476185);
        SoftwareKeyboardController softwareKeyboardController = (SoftwareKeyboardController) composer.consume(LocalSoftwareKeyboardController);
        if (softwareKeyboardController == null) {
            softwareKeyboardController = delegatingController(composer, i10 & 14);
        }
        composer.endReplaceableGroup();
        return softwareKeyboardController;
    }

    @NotNull
    public final ProvidedValue<SoftwareKeyboardController> provides(@NotNull SoftwareKeyboardController softwareKeyboardController) {
        Intrinsics.checkNotNullParameter(softwareKeyboardController, "softwareKeyboardController");
        return LocalSoftwareKeyboardController.provides(softwareKeyboardController);
    }

    @ExperimentalComposeUiApi
    public static /* synthetic */ void getCurrent$annotations() {
    }
}
