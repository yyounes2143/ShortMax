package com.bytedance.sdk.openadsdk.core.dLZ;

import android.util.Pair;
import android.view.View;
import com.iab.omid.library.bytedance2.adsession.AdEvents;
import com.iab.omid.library.bytedance2.adsession.AdSession;
import com.iab.omid.library.bytedance2.adsession.FriendlyObstructionPurpose;
import com.iab.omid.library.bytedance2.adsession.media.Position;
import com.iab.omid.library.bytedance2.adsession.media.VastProperties;
import java.util.Set;
/* loaded from: classes3.dex */
public class cFZ {
    private final AdSession Pfn;

    /* renamed from: ba  reason: collision with root package name */
    private final AdEvents f13129ba;
    protected VastProperties ex;
    protected String tB;
    private boolean cFZ = false;
    protected boolean oJ = false;
    protected int ZYk = 0;

    public cFZ(AdSession adSession, AdEvents adEvents, View view) {
        this.Pfn = adSession;
        this.f13129ba = adEvents;
        this.tB = adSession.getAdSessionId();
        oJ(view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void ZYk(int i10) {
    }

    public void ex() {
        oJ(3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void oJ(float f10, boolean z10) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void tB() {
        oJ(4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void ZYk() {
        oJ(1);
    }

    public void oJ(boolean z10) {
    }

    public void oJ(boolean z10, float f10) {
    }

    void oJ(View view) {
        AdSession adSession;
        if (view == null || (adSession = this.Pfn) == null) {
            return;
        }
        adSession.registerAdView(view);
    }

    public void oJ(View view, FriendlyObstructionPurpose friendlyObstructionPurpose) {
        AdSession adSession = this.Pfn;
        if (adSession != null) {
            adSession.addFriendlyObstruction(view, friendlyObstructionPurpose, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean oJ() {
        return this.oJ;
    }

    public void oJ(int i10) {
        int i11;
        if (this.Pfn == null || this.f13129ba == null || !Pfn.tB()) {
            return;
        }
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 != 4 || (i11 = this.ZYk) == 0 || i11 == 4) {
                        return;
                    }
                    this.Pfn.finish();
                    this.oJ = false;
                } else if (this.cFZ) {
                    return;
                } else {
                    int i12 = this.ZYk;
                    if (i12 != 1 && i12 != 2) {
                        return;
                    }
                    this.f13129ba.impressionOccurred();
                    this.cFZ = true;
                }
            } else if (this.ZYk != 0) {
                return;
            } else {
                this.Pfn.start();
                if (this.ex == null) {
                    this.ex = VastProperties.createVastPropertiesForNonSkippableMedia(true, Position.STANDALONE);
                }
                this.f13129ba.loaded(this.ex);
                this.oJ = true;
                this.ex = null;
            }
        } else if (this.ZYk != 0) {
            return;
        } else {
            this.Pfn.start();
            this.f13129ba.loaded();
            this.oJ = true;
        }
        this.ZYk = i10;
    }

    public void oJ(Set<Pair<View, FriendlyObstructionPurpose>> set) {
        for (Pair<View, FriendlyObstructionPurpose> pair : set) {
            oJ((View) pair.first, (FriendlyObstructionPurpose) pair.second);
        }
    }
}
