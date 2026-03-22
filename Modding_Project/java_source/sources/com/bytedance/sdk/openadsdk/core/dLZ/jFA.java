package com.bytedance.sdk.openadsdk.core.dLZ;

import android.view.View;
import androidx.annotation.NonNull;
import com.iab.omid.library.bytedance2.adsession.AdEvents;
import com.iab.omid.library.bytedance2.adsession.AdSession;
import com.iab.omid.library.bytedance2.adsession.media.InteractionType;
import com.iab.omid.library.bytedance2.adsession.media.MediaEvents;
import com.iab.omid.library.bytedance2.adsession.media.PlayerState;
import com.iab.omid.library.bytedance2.adsession.media.Position;
import com.iab.omid.library.bytedance2.adsession.media.VastProperties;
/* loaded from: classes3.dex */
public class jFA extends cFZ {
    @NonNull
    private final MediaEvents Pfn;

    /* renamed from: ba  reason: collision with root package name */
    private boolean f13134ba;

    public jFA(@NonNull AdSession adSession, @NonNull AdEvents adEvents, @NonNull View view, @NonNull MediaEvents mediaEvents) {
        super(adSession, adEvents, view);
        this.Pfn = mediaEvents;
    }

    @Override // com.bytedance.sdk.openadsdk.core.dLZ.cFZ
    public void ZYk(int i10) {
        float f10;
        if (!oJ()) {
            return;
        }
        switch (i10) {
            case 0:
                this.Pfn.pause();
                return;
            case 1:
                this.Pfn.resume();
                return;
            case 2:
            case 14:
                this.Pfn.skipped();
                return;
            case 3:
            default:
                return;
            case 4:
                this.Pfn.bufferStart();
                return;
            case 5:
                this.Pfn.bufferFinish();
                return;
            case 6:
                this.Pfn.firstQuartile();
                return;
            case 7:
                this.Pfn.midpoint();
                return;
            case 8:
                this.Pfn.thirdQuartile();
                return;
            case 9:
                this.Pfn.complete();
                return;
            case 10:
                this.Pfn.playerStateChange(PlayerState.FULLSCREEN);
                return;
            case 11:
                this.Pfn.playerStateChange(PlayerState.NORMAL);
                return;
            case 12:
                MediaEvents mediaEvents = this.Pfn;
                if (this.f13134ba) {
                    f10 = 0.0f;
                } else {
                    f10 = 1.0f;
                }
                mediaEvents.volumeChange(f10);
                return;
            case 13:
                this.Pfn.adUserInteraction(InteractionType.CLICK);
                return;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.dLZ.cFZ
    public void oJ(boolean z10, float f10) {
        if (z10) {
            this.ex = VastProperties.createVastPropertiesForSkippableMedia(f10, true, Position.STANDALONE);
        } else {
            this.ex = VastProperties.createVastPropertiesForNonSkippableMedia(true, Position.STANDALONE);
        }
        oJ(2);
    }

    @Override // com.bytedance.sdk.openadsdk.core.dLZ.cFZ
    public void oJ(float f10, boolean z10) {
        if (oJ()) {
            this.Pfn.start(f10, z10 ? 0.0f : 1.0f);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.dLZ.cFZ
    public void oJ(boolean z10) {
        this.f13134ba = z10;
        ZYk(12);
    }
}
