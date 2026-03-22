package androidx.compose.ui.node;

import android.view.KeyEvent;
import androidx.compose.ui.semantics.SemanticsOwner;
import androidx.compose.ui.text.input.TextInputService;
import androidx.compose.ui.unit.Density;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: RootForTest.kt */
@Metadata
/* loaded from: classes.dex */
public interface RootForTest {
    @NotNull
    Density getDensity();

    @NotNull
    SemanticsOwner getSemanticsOwner();

    @NotNull
    TextInputService getTextInputService();

    /* renamed from: sendKeyEvent-ZmokQxo  reason: not valid java name */
    boolean mo3511sendKeyEventZmokQxo(@NotNull KeyEvent keyEvent);
}
