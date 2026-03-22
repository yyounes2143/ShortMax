package com.vungle.ads;

import android.content.Context;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;
/* compiled from: BaseAd.kt */
@Metadata
/* loaded from: classes7.dex */
public interface FullscreenAd extends Ad {

    /* compiled from: BaseAd.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class DefaultImpls {
        public static /* synthetic */ void play$default(FullscreenAd fullscreenAd, Context context, int i10, Object obj) {
            if (obj == null) {
                if ((i10 & 1) != 0) {
                    context = null;
                }
                fullscreenAd.play(context);
                return;
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: play");
        }
    }

    void play(@Nullable Context context);
}
