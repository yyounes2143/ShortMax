package com.google.android.material.transition.platform;

import androidx.annotation.RequiresApi;
@RequiresApi(21)
/* loaded from: classes5.dex */
class FadeModeResult {
    final int endAlpha;
    final boolean endOnTop;
    final int startAlpha;

    private FadeModeResult(int i10, int i11, boolean z10) {
        this.startAlpha = i10;
        this.endAlpha = i11;
        this.endOnTop = z10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static FadeModeResult endOnTop(int i10, int i11) {
        return new FadeModeResult(i10, i11, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static FadeModeResult startOnTop(int i10, int i11) {
        return new FadeModeResult(i10, i11, false);
    }
}
