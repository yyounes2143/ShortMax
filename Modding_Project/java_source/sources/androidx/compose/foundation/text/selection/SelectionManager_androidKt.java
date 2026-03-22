package androidx.compose.foundation.text.selection;

import android.annotation.SuppressLint;
import android.view.KeyEvent;
import androidx.compose.foundation.MagnifierStyle;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: SelectionManager.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class SelectionManager_androidKt {
    /* renamed from: isCopyKeyEvent-ZmokQxo  reason: not valid java name */
    public static final boolean m870isCopyKeyEventZmokQxo(@NotNull KeyEvent keyEvent) {
        Intrinsics.checkNotNullParameter(keyEvent, "keyEvent");
        return false;
    }

    @SuppressLint({"ModifierInspectorInfo"})
    @NotNull
    public static final Modifier selectionMagnifier(@NotNull Modifier modifier, @NotNull SelectionManager manager) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(manager, "manager");
        if (!MagnifierStyle.Companion.getTextDefault().isSupported()) {
            return modifier;
        }
        return ComposedModifierKt.composed$default(modifier, null, new SelectionManager_androidKt$selectionMagnifier$1(manager), 1, null);
    }
}
