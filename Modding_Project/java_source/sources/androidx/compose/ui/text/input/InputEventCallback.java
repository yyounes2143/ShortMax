package androidx.compose.ui.text.input;

import java.util.List;
import kotlin.Metadata;
import ms.c;
import org.jetbrains.annotations.NotNull;
/* compiled from: InputEventCallback.kt */
@c
@Metadata
/* loaded from: classes.dex */
public interface InputEventCallback {
    void onEditCommands(@NotNull List<? extends EditCommand> list);

    /* renamed from: onImeAction-KlQnJC8  reason: not valid java name */
    void m3840onImeActionKlQnJC8(int i10);
}
