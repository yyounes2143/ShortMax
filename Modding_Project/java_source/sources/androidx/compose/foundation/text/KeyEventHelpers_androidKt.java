package androidx.compose.foundation.text;

import android.view.KeyEvent;
import androidx.compose.ui.input.key.KeyEventType;
import androidx.compose.ui.input.key.KeyEvent_androidKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: KeyEventHelpers.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class KeyEventHelpers_androidKt {
    /* renamed from: cancelsTextSelection-ZmokQxo  reason: not valid java name */
    public static final boolean m722cancelsTextSelectionZmokQxo(@NotNull KeyEvent cancelsTextSelection) {
        Intrinsics.checkNotNullParameter(cancelsTextSelection, "$this$cancelsTextSelection");
        if (cancelsTextSelection.getKeyCode() == 4 && KeyEventType.m3069equalsimpl0(KeyEvent_androidKt.m3077getTypeZmokQxo(cancelsTextSelection), KeyEventType.Companion.m3074getKeyUpCS__XNY())) {
            return true;
        }
        return false;
    }

    public static final void showCharacterPalette() {
    }
}
