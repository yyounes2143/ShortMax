package com.inmobi.ads;

import com.inmobi.ads.InMobiAdRequestStatus;
import com.inmobi.media.AbstractC2984h7;
import com.inmobi.media.H1;
import com.inmobi.media.O1;
import com.inmobi.media.R1;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class e implements PreloadManager {

    /* renamed from: a  reason: collision with root package name */
    public final O1 f23422a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ InMobiBanner f23423b;

    public e(InMobiBanner inMobiBanner) {
        this.f23423b = inMobiBanner;
        this.f23422a = new O1(inMobiBanner);
    }

    @Override // com.inmobi.ads.PreloadManager
    public final void load() {
        try {
            R1 mAdManager$media_release = this.f23423b.getMAdManager$media_release();
            if (mAdManager$media_release != null) {
                mAdManager$media_release.G();
            }
        } catch (IllegalStateException e10) {
            String access$getTAG$cp = InMobiBanner.access$getTAG$cp();
            Intrinsics.checkNotNullExpressionValue(access$getTAG$cp, "access$getTAG$cp(...)");
            AbstractC2984h7.a((byte) 1, access$getTAG$cp, e10.getMessage());
            H1 mPubListener$media_release = this.f23423b.getMPubListener$media_release();
            if (mPubListener$media_release != null) {
                mPubListener$media_release.a(this.f23423b, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR));
            }
        }
    }

    @Override // com.inmobi.ads.PreloadManager
    public final void preload() {
        this.f23423b.setEnableAutoRefresh(false);
        this.f23423b.a(this.f23422a, "Preload", false);
    }
}
