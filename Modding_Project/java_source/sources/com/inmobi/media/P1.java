package com.inmobi.media;

import android.os.Handler;
import android.os.Message;
import com.inmobi.ads.InMobiBanner;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class P1 extends Handler {

    /* renamed from: a  reason: collision with root package name */
    public final InMobiBanner f23968a;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public P1(com.inmobi.ads.InMobiBanner r4) {
        /*
            r3 = this;
            java.lang.String r0 = "mInmobiBanner"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
            android.os.Looper r1 = android.os.Looper.getMainLooper()
            java.lang.String r2 = "getMainLooper(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r2)
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
            java.lang.String r0 = "looper"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r1, r0)
            r3.<init>(r1)
            r3.f23968a = r4
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.P1.<init>(com.inmobi.ads.InMobiBanner):void");
    }

    @Override // android.os.Handler
    public final void handleMessage(Message msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        if (msg.what == 1) {
            this.f23968a.refreshBanner$media_release();
        } else {
            Intrinsics.checkNotNullExpressionValue("P1", "TAG");
        }
    }
}
