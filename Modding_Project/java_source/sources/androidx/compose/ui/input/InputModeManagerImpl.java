package androidx.compose.ui.input;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.ExperimentalComposeUiApi;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: InputModeManager.kt */
@Metadata
/* loaded from: classes.dex */
public final class InputModeManagerImpl implements InputModeManager {
    @NotNull
    private final MutableState inputMode$delegate;
    @NotNull
    private final Function1<InputMode, Boolean> onRequestInputModeChange;

    public /* synthetic */ InputModeManagerImpl(int i10, Function1 function1, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, function1);
    }

    @Override // androidx.compose.ui.input.InputModeManager
    /* renamed from: getInputMode-aOaMEAU */
    public int mo2475getInputModeaOaMEAU() {
        return ((InputMode) this.inputMode$delegate.getValue()).m2472unboximpl();
    }

    @Override // androidx.compose.ui.input.InputModeManager
    @ExperimentalComposeUiApi
    /* renamed from: requestInputMode-iuPiT84 */
    public boolean mo2476requestInputModeiuPiT84(int i10) {
        return this.onRequestInputModeChange.invoke(InputMode.m2466boximpl(i10)).booleanValue();
    }

    /* renamed from: setInputMode-iuPiT84  reason: not valid java name */
    public void m2477setInputModeiuPiT84(int i10) {
        this.inputMode$delegate.setValue(InputMode.m2466boximpl(i10));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private InputModeManagerImpl(int i10, Function1<? super InputMode, Boolean> function1) {
        MutableState mutableStateOf$default;
        this.onRequestInputModeChange = function1;
        mutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(InputMode.m2466boximpl(i10), null, 2, null);
        this.inputMode$delegate = mutableStateOf$default;
    }
}
