package androidx.compose.ui.input.key;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: KeyEvent.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class KeyEvent_androidKt {
    /* renamed from: getKey-ZmokQxo  reason: not valid java name */
    public static final long m3076getKeyZmokQxo(@NotNull android.view.KeyEvent key) {
        Intrinsics.checkNotNullParameter(key, "$this$key");
        return Key_androidKt.Key(key.getKeyCode());
    }

    /* renamed from: getType-ZmokQxo  reason: not valid java name */
    public static final int m3077getTypeZmokQxo(@NotNull android.view.KeyEvent type) {
        Intrinsics.checkNotNullParameter(type, "$this$type");
        int action = type.getAction();
        if (action != 0) {
            if (action != 1) {
                return KeyEventType.Companion.m3075getUnknownCS__XNY();
            }
            return KeyEventType.Companion.m3074getKeyUpCS__XNY();
        }
        return KeyEventType.Companion.m3073getKeyDownCS__XNY();
    }

    /* renamed from: getUtf16CodePoint-ZmokQxo  reason: not valid java name */
    public static final int m3078getUtf16CodePointZmokQxo(@NotNull android.view.KeyEvent utf16CodePoint) {
        Intrinsics.checkNotNullParameter(utf16CodePoint, "$this$utf16CodePoint");
        return utf16CodePoint.getUnicodeChar();
    }

    /* renamed from: isAltPressed-ZmokQxo  reason: not valid java name */
    public static final boolean m3079isAltPressedZmokQxo(@NotNull android.view.KeyEvent isAltPressed) {
        Intrinsics.checkNotNullParameter(isAltPressed, "$this$isAltPressed");
        return isAltPressed.isAltPressed();
    }

    /* renamed from: isCtrlPressed-ZmokQxo  reason: not valid java name */
    public static final boolean m3080isCtrlPressedZmokQxo(@NotNull android.view.KeyEvent isCtrlPressed) {
        Intrinsics.checkNotNullParameter(isCtrlPressed, "$this$isCtrlPressed");
        return isCtrlPressed.isCtrlPressed();
    }

    /* renamed from: isMetaPressed-ZmokQxo  reason: not valid java name */
    public static final boolean m3081isMetaPressedZmokQxo(@NotNull android.view.KeyEvent isMetaPressed) {
        Intrinsics.checkNotNullParameter(isMetaPressed, "$this$isMetaPressed");
        return isMetaPressed.isMetaPressed();
    }

    /* renamed from: isShiftPressed-ZmokQxo  reason: not valid java name */
    public static final boolean m3082isShiftPressedZmokQxo(@NotNull android.view.KeyEvent isShiftPressed) {
        Intrinsics.checkNotNullParameter(isShiftPressed, "$this$isShiftPressed");
        return isShiftPressed.isShiftPressed();
    }
}
