package com.inmobi.media;

import android.view.ViewTreeObserver;
import com.inmobi.ads.InMobiAudio;
/* renamed from: com.inmobi.media.q5  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class ViewTreeObserver$OnGlobalLayoutListenerC3126q5 implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ InMobiAudio f25190a;

    public ViewTreeObserver$OnGlobalLayoutListenerC3126q5(InMobiAudio inMobiAudio) {
        this.f25190a = inMobiAudio;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        boolean b10;
        try {
            InMobiAudio inMobiAudio = this.f25190a;
            inMobiAudio.f23379f = B2.b(inMobiAudio.getMeasuredWidth() / U3.b());
            InMobiAudio inMobiAudio2 = this.f25190a;
            inMobiAudio2.f23380g = B2.b(inMobiAudio2.getMeasuredHeight() / U3.b());
            b10 = this.f25190a.b();
            if (b10) {
                this.f25190a.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            }
        } catch (Exception unused) {
            AbstractC2984h7.a((byte) 1, "InMobiAudio", "InMobiAudio$1.onGlobalLayout() handler threw unexpected error");
        }
    }
}
