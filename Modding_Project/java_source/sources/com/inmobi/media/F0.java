package com.inmobi.media;

import androidx.annotation.UiThread;
import com.inmobi.ads.AdMetaInfo;
import com.inmobi.ads.InMobiAdRequestStatus;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* loaded from: classes5.dex */
public abstract class F0 {
    @UiThread
    public void a(int i10, int i11, @Nullable GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec) {
    }

    public abstract void a(AdMetaInfo adMetaInfo);

    public abstract void a(InMobiAdRequestStatus inMobiAdRequestStatus);

    public abstract void a(D1 d12);

    public abstract void a(S0 s02, InMobiAdRequestStatus inMobiAdRequestStatus);

    public abstract void a(Yd yd2);

    public abstract void a(String str);

    public abstract void a(Map map);

    public abstract void a(byte[] bArr);

    public abstract void b();

    public abstract void b(AdMetaInfo adMetaInfo);

    public abstract void b(InMobiAdRequestStatus inMobiAdRequestStatus);

    public abstract void b(Map map);

    public void c() {
    }

    public abstract void c(AdMetaInfo adMetaInfo);

    public abstract void e();

    public abstract void h();

    public void a(boolean z10) {
    }

    public boolean a() {
        return true;
    }

    public void a(@NotNull Z placement, @NotNull C3248y0 adSet) {
        Intrinsics.checkNotNullParameter(placement, "placement");
        Intrinsics.checkNotNullParameter(adSet, "adSet");
    }

    public void d() {
    }

    public void f() {
    }

    public void g() {
    }

    public void i() {
    }
}
