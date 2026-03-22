package androidx.compose.ui.input.pointer;

import kotlin.Metadata;
/* compiled from: PointerInputEventProcessor.kt */
@Metadata
/* loaded from: classes.dex */
public final class PointerInputEventProcessorKt {
    public static final int ProcessResult(boolean z10, boolean z11) {
        int i10;
        if (z11) {
            i10 = 2;
        } else {
            i10 = 0;
        }
        return ProcessResult.m3291constructorimpl((z10 ? 1 : 0) | i10);
    }
}
