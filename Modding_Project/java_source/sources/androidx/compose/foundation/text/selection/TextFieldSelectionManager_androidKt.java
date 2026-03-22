package androidx.compose.foundation.text.selection;

import android.annotation.SuppressLint;
import androidx.compose.foundation.MagnifierStyle;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.input.pointer.PointerEvent;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: TextFieldSelectionManager.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class TextFieldSelectionManager_androidKt {
    public static final boolean isShiftPressed(@NotNull PointerEvent pointerEvent) {
        Intrinsics.checkNotNullParameter(pointerEvent, "<this>");
        return false;
    }

    @SuppressLint({"ModifierInspectorInfo"})
    @NotNull
    public static final Modifier textFieldMagnifier(@NotNull Modifier modifier, @NotNull TextFieldSelectionManager manager) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(manager, "manager");
        if (!MagnifierStyle.Companion.getTextDefault().isSupported()) {
            return modifier;
        }
        return ComposedModifierKt.composed$default(modifier, null, new TextFieldSelectionManager_androidKt$textFieldMagnifier$1(manager), 1, null);
    }
}
