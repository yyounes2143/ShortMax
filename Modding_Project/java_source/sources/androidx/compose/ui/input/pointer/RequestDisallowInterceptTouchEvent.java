package androidx.compose.ui.input.pointer;

import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.ExperimentalComposeUiApi;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.Nullable;
/* compiled from: PointerInteropFilter.android.kt */
@StabilityInferred(parameters = 0)
@ExperimentalComposeUiApi
@Metadata
/* loaded from: classes.dex */
public final class RequestDisallowInterceptTouchEvent implements Function1<Boolean, Unit> {
    public static final int $stable = 8;
    @Nullable
    private PointerInteropFilter pointerInteropFilter;

    @Nullable
    public final PointerInteropFilter getPointerInteropFilter$ui_release() {
        return this.pointerInteropFilter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
        invoke(bool.booleanValue());
        return Unit.f60915a;
    }

    public final void setPointerInteropFilter$ui_release(@Nullable PointerInteropFilter pointerInteropFilter) {
        this.pointerInteropFilter = pointerInteropFilter;
    }

    public void invoke(boolean z10) {
        PointerInteropFilter pointerInteropFilter = this.pointerInteropFilter;
        if (pointerInteropFilter == null) {
            return;
        }
        pointerInteropFilter.setDisallowIntercept$ui_release(z10);
    }
}
