package com.inmobi.ads.banner;

import android.view.View;
import android.view.ViewGroup;
import com.inmobi.ads.InMobiBanner;
import com.inmobi.media.C3205v5;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata
/* loaded from: classes5.dex */
public final class InMobiBannerAudioManager {
    @NotNull
    public static final InMobiBannerAudioManager INSTANCE = new InMobiBannerAudioManager();

    public static InMobiBanner a(ViewGroup viewGroup) {
        InMobiBanner a10;
        if (viewGroup instanceof InMobiBanner) {
            if (viewGroup.getVisibility() == 0 && viewGroup.isShown()) {
                return (InMobiBanner) viewGroup;
            }
            return null;
        }
        int childCount = viewGroup.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = viewGroup.getChildAt(i10);
            if ((childAt instanceof ViewGroup) && (a10 = a((ViewGroup) childAt)) != null) {
                return a10;
            }
        }
        return null;
    }

    public static final void setAudioEnabled(boolean z10) {
        C3205v5.f25358d.set(z10);
    }

    public static final <T extends ViewGroup> void setAudioListener(@NotNull T t10, @NotNull AudioListener audioListener) {
        Intrinsics.checkNotNullParameter(t10, "t");
        Intrinsics.checkNotNullParameter(audioListener, "audioListener");
        INSTANCE.getClass();
        InMobiBanner a10 = a(t10);
        if (a10 != null && a10.isAudioAd()) {
            a10.setAudioListener(audioListener);
        }
    }
}
