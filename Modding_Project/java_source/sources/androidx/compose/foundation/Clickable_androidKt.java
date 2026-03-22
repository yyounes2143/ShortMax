package androidx.compose.foundation;

import android.view.KeyEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.input.key.KeyEventType;
import androidx.compose.ui.input.key.KeyEvent_androidKt;
import androidx.compose.ui.input.key.Key_androidKt;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Clickable.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class Clickable_androidKt {
    private static final long TapIndicationDelay = ViewConfiguration.getTapTimeout();

    public static final long getTapIndicationDelay() {
        return TapIndicationDelay;
    }

    /* renamed from: isClick-ZmokQxo  reason: not valid java name */
    public static final boolean m234isClickZmokQxo(@NotNull KeyEvent isClick) {
        int m3086getNativeKeyCodeYVgTNJs;
        Intrinsics.checkNotNullParameter(isClick, "$this$isClick");
        if (KeyEventType.m3069equalsimpl0(KeyEvent_androidKt.m3077getTypeZmokQxo(isClick), KeyEventType.Companion.m3074getKeyUpCS__XNY()) && ((m3086getNativeKeyCodeYVgTNJs = Key_androidKt.m3086getNativeKeyCodeYVgTNJs(KeyEvent_androidKt.m3076getKeyZmokQxo(isClick))) == 23 || m3086getNativeKeyCodeYVgTNJs == 66 || m3086getNativeKeyCodeYVgTNJs == 160)) {
            return true;
        }
        return false;
    }

    @Composable
    @NotNull
    public static final Function0<Boolean> isComposeRootInScrollableContainer(@Nullable Composer composer, int i10) {
        composer.startReplaceableGroup(-1990508712);
        final View view = (View) composer.consume(AndroidCompositionLocals_androidKt.getLocalView());
        Function0<Boolean> function0 = new Function0<Boolean>() { // from class: androidx.compose.foundation.Clickable_androidKt$isComposeRootInScrollableContainer$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Boolean invoke() {
                boolean isInScrollableViewGroup;
                isInScrollableViewGroup = Clickable_androidKt.isInScrollableViewGroup(view);
                return Boolean.valueOf(isInScrollableViewGroup);
            }
        };
        composer.endReplaceableGroup();
        return function0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean isInScrollableViewGroup(View view) {
        ViewParent parent = view.getParent();
        while (parent != null && (parent instanceof ViewGroup)) {
            ViewGroup viewGroup = (ViewGroup) parent;
            if (viewGroup.shouldDelayChildPressedState()) {
                return true;
            }
            parent = viewGroup.getParent();
        }
        return false;
    }
}
