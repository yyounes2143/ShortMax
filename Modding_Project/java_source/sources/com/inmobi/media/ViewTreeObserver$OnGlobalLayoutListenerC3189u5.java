package com.inmobi.media;

import android.view.ViewTreeObserver;
import com.inmobi.ads.InMobiBanner;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.u5  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class ViewTreeObserver$OnGlobalLayoutListenerC3189u5 implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ InMobiBanner f25319a;

    public ViewTreeObserver$OnGlobalLayoutListenerC3189u5(InMobiBanner inMobiBanner) {
        this.f25319a = inMobiBanner;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        InterfaceC3269z5 p10;
        boolean b10;
        try {
            InMobiBanner inMobiBanner = this.f25319a;
            inMobiBanner.f23389i = B2.b(inMobiBanner.getMeasuredWidth() / U3.b());
            InMobiBanner inMobiBanner2 = this.f25319a;
            inMobiBanner2.f23390j = B2.b(inMobiBanner2.getMeasuredHeight() / U3.b());
            b10 = this.f25319a.b();
            if (b10) {
                this.f25319a.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            }
        } catch (Exception e10) {
            R1 mAdManager$media_release = this.f25319a.getMAdManager$media_release();
            if (mAdManager$media_release != null && (p10 = mAdManager$media_release.p()) != null) {
                String access$getTAG$cp = InMobiBanner.access$getTAG$cp();
                Intrinsics.checkNotNullExpressionValue(access$getTAG$cp, "access$getTAG$cp(...)");
                ((A5) p10).a(access$getTAG$cp, "InMobiBanner$1.onGlobalLayout() handler threw unexpected error: ", e10);
            }
        }
    }
}
