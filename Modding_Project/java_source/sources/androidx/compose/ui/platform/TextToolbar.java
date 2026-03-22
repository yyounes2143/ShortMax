package androidx.compose.ui.platform;

import androidx.compose.ui.geometry.Rect;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TextToolbar.kt */
@Metadata
/* loaded from: classes.dex */
public interface TextToolbar {

    /* compiled from: TextToolbar.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
    }

    static /* synthetic */ void showMenu$default(TextToolbar textToolbar, Rect rect, Function0 function0, Function0 function02, Function0 function03, Function0 function04, int i10, Object obj) {
        Function0 function05;
        Function0 function06;
        Function0 function07;
        Function0 function08;
        if (obj == null) {
            if ((i10 & 2) != 0) {
                function05 = null;
            } else {
                function05 = function0;
            }
            if ((i10 & 4) != 0) {
                function06 = null;
            } else {
                function06 = function02;
            }
            if ((i10 & 8) != 0) {
                function07 = null;
            } else {
                function07 = function03;
            }
            if ((i10 & 16) != 0) {
                function08 = null;
            } else {
                function08 = function04;
            }
            textToolbar.showMenu(rect, function05, function06, function07, function08);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: showMenu");
    }

    @NotNull
    TextToolbarStatus getStatus();

    void hide();

    void showMenu(@NotNull Rect rect, @Nullable Function0<Unit> function0, @Nullable Function0<Unit> function02, @Nullable Function0<Unit> function03, @Nullable Function0<Unit> function04);
}
