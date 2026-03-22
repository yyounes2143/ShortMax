package com.bytedance.sdk.openadsdk.utils;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes3.dex */
public class jFA implements WcQ, Runnable {
    private long Pfn;
    private final Activity ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private boolean f13422ba;
    private final oJ cFZ;
    private long ex;

    /* renamed from: so  reason: collision with root package name */
    private boolean f13423so;
    private final AtomicBoolean jFA = new AtomicBoolean(false);
    private final Handler tB = new Handler(Looper.getMainLooper());
    private View oJ = ex();

    /* loaded from: classes3.dex */
    public interface oJ {
        void ZYk();

        View oJ();
    }

    private jFA(Activity activity, int i10, oJ oJVar) {
        this.cFZ = oJVar;
        this.ZYk = activity;
        this.ex = i10;
    }

    private void Pfn() {
        this.f13423so = false;
        this.Pfn = SystemClock.elapsedRealtime();
        Handler handler = this.tB;
        if (handler != null) {
            handler.postDelayed(this, this.ex);
        }
    }

    private void ba() {
        Activity activity;
        View childAt;
        if (this.f13422ba || (activity = this.ZYk) == null || activity.isFinishing() || this.ZYk.isDestroyed()) {
            return;
        }
        if (this.oJ == null) {
            this.oJ = ex();
        }
        View view = this.oJ;
        if (view != null) {
            if (ZYk(view)) {
                oJ(this.oJ);
                View view2 = this.oJ;
                if ((view2 instanceof ViewGroup) && ((ViewGroup) view2).getChildCount() > 0 && (childAt = ((ViewGroup) this.oJ).getChildAt(0)) != null && ZYk(childAt)) {
                    oJ(childAt);
                }
                oJ oJVar = this.cFZ;
                if (oJVar != null) {
                    oJVar.ZYk();
                }
            }
            cFZ();
        }
        this.f13422ba = true;
    }

    private void cFZ() {
        ViewParent parent = this.oJ.getParent();
        if (parent instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) parent;
            if (viewGroup.indexOfChild(this.oJ) != viewGroup.getChildCount() - 1) {
                this.oJ.bringToFront();
            }
        }
    }

    private View ex() {
        oJ oJVar = this.cFZ;
        if (oJVar != null) {
            return oJVar.oJ();
        }
        return null;
    }

    public static WcQ oJ(Activity activity, oJ oJVar) {
        int Wek = com.bytedance.sdk.openadsdk.core.settings.PiB.ib().Wek();
        if (Wek < 0) {
            return new WcQ() { // from class: com.bytedance.sdk.openadsdk.utils.jFA.1
                @Override // com.bytedance.sdk.openadsdk.utils.WcQ
                public void oJ() {
                }

                @Override // com.bytedance.sdk.openadsdk.utils.WcQ
                public void oJ(long j10) {
                }

                @Override // com.bytedance.sdk.openadsdk.utils.WcQ
                public void ZYk() {
                }

                @Override // com.bytedance.sdk.openadsdk.utils.WcQ
                public void tB() {
                }
            };
        }
        return new jFA(activity, Math.min(Wek, 50) * 1000, oJVar);
    }

    @Override // com.bytedance.sdk.openadsdk.utils.WcQ
    public void ZYk() {
        if (this.Pfn <= 0 || this.f13422ba) {
            return;
        }
        if (!this.f13423so) {
            this.ex -= SystemClock.elapsedRealtime() - this.Pfn;
        }
        this.f13423so = true;
        if (this.ex <= 0) {
            ba();
            return;
        }
        Handler handler = this.tB;
        if (handler != null) {
            try {
                handler.removeCallbacks(this);
            } catch (Throwable th2) {
                com.bytedance.sdk.component.utils.QSm.tB(th2.getMessage(), new Object[0]);
            }
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        ba();
    }

    @Override // com.bytedance.sdk.openadsdk.utils.WcQ
    public void tB() {
        if (this.f13422ba) {
            return;
        }
        this.f13422ba = true;
        Handler handler = this.tB;
        if (handler != null) {
            try {
                handler.removeCallbacks(this);
            } catch (Throwable th2) {
                com.bytedance.sdk.component.utils.QSm.tB(th2.getMessage(), new Object[0]);
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.utils.WcQ
    public void oJ(long j10) {
        if (this.jFA.compareAndSet(false, true)) {
            if (j10 < 0) {
                j10 = 0;
            }
            this.ex += j10;
            Pfn();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.utils.WcQ
    public void oJ() {
        if (this.Pfn == 0 || !this.f13423so) {
            return;
        }
        Pfn();
    }

    private void oJ(View view) {
        view.setVisibility(0);
        view.setAlpha(1.0f);
    }

    private boolean ZYk(View view) {
        if (view == null) {
            return true;
        }
        return !view.isShown() || ((double) view.getAlpha()) <= 0.9d;
    }
}
