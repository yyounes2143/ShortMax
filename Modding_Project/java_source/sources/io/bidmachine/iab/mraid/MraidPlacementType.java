package io.bidmachine.iab.mraid;

import java.util.Locale;
/* loaded from: classes7.dex */
public enum MraidPlacementType {
    INLINE,
    INTERSTITIAL;

    /* JADX INFO: Access modifiers changed from: package-private */
    public String b() {
        return toString().toLowerCase(Locale.US);
    }
}
