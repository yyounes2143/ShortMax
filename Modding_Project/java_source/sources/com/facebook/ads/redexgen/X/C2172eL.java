package com.facebook.ads.redexgen.X;

import android.widget.MediaController;
/* renamed from: com.facebook.ads.redexgen.X.eL  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2172eL implements MediaController.MediaPlayerControl {
    public final /* synthetic */ CM A00;

    public C2172eL(CM cm2) {
        this.A00 = cm2;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public final boolean canPause() {
        return true;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public final boolean canSeekBackward() {
        return true;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public final boolean canSeekForward() {
        return true;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public final int getAudioSessionId() {
        C2166eF c2166eF;
        C2166eF c2166eF2;
        c2166eF = this.A00.A0C;
        if (c2166eF != null) {
            c2166eF2 = this.A00.A0C;
            return c2166eF2.A04();
        }
        return 0;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public final int getBufferPercentage() {
        C2166eF c2166eF;
        C2166eF c2166eF2;
        c2166eF = this.A00.A0C;
        if (c2166eF != null) {
            c2166eF2 = this.A00.A0C;
            return c2166eF2.A05();
        }
        return 0;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public final int getCurrentPosition() {
        return this.A00.getCurrentPosition();
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public final int getDuration() {
        return this.A00.getDuration();
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public final boolean isPlaying() {
        C2166eF c2166eF;
        C2166eF c2166eF2;
        c2166eF = this.A00.A0C;
        if (c2166eF != null) {
            c2166eF2 = this.A00.A0C;
            if (c2166eF2.A0J()) {
                return true;
            }
        }
        return false;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public final void pause() {
        InterfaceC2182eV interfaceC2182eV;
        InterfaceC2182eV interfaceC2182eV2;
        interfaceC2182eV = this.A00.A0F;
        if (interfaceC2182eV != null) {
            interfaceC2182eV2 = this.A00.A0F;
            interfaceC2182eV2.AE9();
        }
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public final void seekTo(int i10) {
        this.A00.seekTo(i10);
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public final void start() {
        InterfaceC2182eV interfaceC2182eV;
        InterfaceC2182eV interfaceC2182eV2;
        interfaceC2182eV = this.A00.A0F;
        if (interfaceC2182eV != null) {
            interfaceC2182eV2 = this.A00.A0F;
            interfaceC2182eV2.AEA();
        }
    }
}
