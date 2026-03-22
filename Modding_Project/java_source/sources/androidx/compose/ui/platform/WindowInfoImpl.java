package androidx.compose.ui.platform;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: WindowInfo.kt */
@Metadata
/* loaded from: classes.dex */
public final class WindowInfoImpl implements WindowInfo {
    @NotNull
    private final MutableState<Boolean> _isWindowFocused;

    public WindowInfoImpl() {
        MutableState<Boolean> mutableStateOf$default;
        mutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.FALSE, null, 2, null);
        this._isWindowFocused = mutableStateOf$default;
    }

    @Override // androidx.compose.ui.platform.WindowInfo
    public boolean isWindowFocused() {
        return this._isWindowFocused.getValue().booleanValue();
    }

    public void setWindowFocused(boolean z10) {
        this._isWindowFocused.setValue(Boolean.valueOf(z10));
    }
}
