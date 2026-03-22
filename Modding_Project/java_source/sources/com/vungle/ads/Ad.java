package com.vungle.ads;

import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;
/* compiled from: BaseAd.kt */
@Metadata
/* loaded from: classes7.dex */
public interface Ad {

    /* compiled from: BaseAd.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class DefaultImpls {
        public static /* synthetic */ void load$default(Ad ad2, String str, int i10, Object obj) {
            if (obj == null) {
                if ((i10 & 1) != 0) {
                    str = null;
                }
                ad2.load(str);
                return;
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: load");
        }
    }

    @Nullable
    Boolean canPlayAd();

    void load(@Nullable String str);
}
