package androidx.compose.ui.input.pointer;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: PointerIcon.kt */
@Metadata
/* loaded from: classes.dex */
public interface PointerIconService {
    @NotNull
    PointerIcon getCurrent();

    void setCurrent(@NotNull PointerIcon pointerIcon);
}
