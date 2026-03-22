package com.facebook.ads.redexgen.X;

import android.net.Uri;
import android.view.View;
/* renamed from: com.facebook.ads.redexgen.X.eS  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public interface InterfaceC2179eS {
    void A9V();

    boolean A9i();

    boolean A9j();

    boolean AAT();

    void AG7(boolean z10, int i10);

    void AJH(int i10);

    void AJM(EnumC2127db enumC2127db, int i10);

    void AJU(int i10);

    void destroy();

    int getCurrentPosition();

    int getDuration();

    long getInitialBufferTime();

    EnumC2127db getStartReason();

    EnumC2181eU getState();

    int getVideoHeight();

    int getVideoWidth();

    View getView();

    float getVolume();

    void seekTo(int i10);

    void setBackgroundPlaybackEnabled(boolean z10);

    void setControlsAnchorView(View view);

    void setFullScreen(boolean z10);

    void setRequestedVolume(float f10);

    void setVideoMPD(String str);

    void setVideoStateChangeListener(InterfaceC2182eV interfaceC2182eV);

    void setup(Uri uri);
}
