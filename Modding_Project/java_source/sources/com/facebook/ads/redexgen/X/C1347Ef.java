package com.facebook.ads.redexgen.X;

import android.app.Activity;
import android.app.Application;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.ViewGroup;
import com.facebook.ads.redexgen.X.C1347Ef;
import com.facebook.ads.redexgen.X.C2111dL;
import java.util.List;
/* renamed from: com.facebook.ads.redexgen.X.Ef  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1347Ef extends QC<EY> {
    public int A01;
    public final int A02;
    public final C11556g A05;
    public final C2111dL A06;
    public final KE A07;
    public final List<String> A09;
    public int A00 = 0;
    public final Application.ActivityLifecycleCallbacks A03 = new Application.ActivityLifecycleCallbacks() { // from class: com.facebook.ads.internal.view.rewardedvideo.EndCardV2ScreenshotRecyclerAdapter$1
        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityCreated(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityDestroyed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityPaused(Activity activity) {
            C2111dL c2111dL;
            Handler handler;
            Runnable runnable;
            c2111dL = C1347Ef.this.A06;
            if (activity == c2111dL.A0E()) {
                handler = C1347Ef.this.A04;
                runnable = C1347Ef.this.A08;
                handler.removeCallbacks(runnable);
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityResumed(Activity activity) {
            Handler handler;
            Runnable runnable;
            handler = C1347Ef.this.A04;
            runnable = C1347Ef.this.A08;
            handler.post(runnable);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStarted(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStopped(Activity activity) {
        }
    };
    public final Handler A04 = new Handler(Looper.getMainLooper());
    public final Runnable A08 = new RunnableC2105dF(this);

    public C1347Ef(C2111dL c2111dL, List<String> screenshotUrls, int i10, C11556g c11556g, KE ke2, int i11) {
        this.A09 = screenshotUrls;
        this.A02 = i10;
        this.A06 = c2111dL;
        this.A05 = c11556g;
        this.A07 = ke2;
        this.A01 = i11;
        this.A04.post(this.A08);
        if (Build.VERSION.SDK_INT >= 29 && this.A06.A0E() != null) {
            this.A06.A0E().registerActivityLifecycleCallbacks(this.A03);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.QC
    /* renamed from: A05 */
    public final EY A0F(ViewGroup viewGroup, int i10) {
        EW ew = new EW(this.A06);
        if (U7.A1C(this.A06)) {
            ew.setOnClickListener(new View$OnClickListenerC2106dG(this));
        }
        return new EY(ew);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.QC
    /* renamed from: A07 */
    public final void A0K(EY ey, int i10) {
        int size = i10 % this.A09.size();
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(400, -1);
        int i11 = this.A02;
        int actualPosition = this.A02;
        marginLayoutParams.setMargins(i11, 0, actualPosition, 0);
        ey.A0p().setLayoutParams(marginLayoutParams);
        ey.A0p().setUrl(this.A09.get(size));
    }

    @Override // com.facebook.ads.redexgen.X.QC
    public final int A0B() {
        return this.A09.size() * 1000;
    }

    @Override // com.facebook.ads.redexgen.X.QC
    public final void A0L(C11556g c11556g) {
        super.A0L(c11556g);
        this.A04.removeCallbacks(this.A08);
        if (Build.VERSION.SDK_INT >= 29 && this.A06.A0E() != null) {
            this.A06.A0E().unregisterActivityLifecycleCallbacks(this.A03);
        }
    }

    public final void A0O(int i10) {
        this.A01 = i10;
    }
}
