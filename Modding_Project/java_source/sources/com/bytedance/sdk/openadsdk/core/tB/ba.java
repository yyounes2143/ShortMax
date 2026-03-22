package com.bytedance.sdk.openadsdk.core.tB;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewTreeObserver;
import com.bytedance.sdk.component.utils.IUZ;
import com.bytedance.sdk.openadsdk.core.WcQ;
import com.bytedance.sdk.openadsdk.core.mu;
import com.bytedance.sdk.openadsdk.utils.ofl;
/* loaded from: classes3.dex */
public class ba extends com.bytedance.adsdk.ugeno.ba.oJ<View> implements IUZ.oJ {
    private long Pfn;

    /* renamed from: ba  reason: collision with root package name */
    private boolean f13286ba;
    private boolean cFZ;
    private final ViewTreeObserver.OnScrollChangedListener dLZ;
    private final Handler ex;
    private oJ jFA;
    private final Runnable kkU;

    /* renamed from: so  reason: collision with root package name */
    private ZYk f13287so;

    /* loaded from: classes3.dex */
    public interface ZYk {
        void oJ(boolean z10);
    }

    /* loaded from: classes3.dex */
    public interface oJ {
        void oJ(boolean z10);
    }

    public ba(Context context) {
        super(context);
        this.ex = new IUZ(WcQ.ZYk().getLooper(), this);
        this.f13286ba = true;
        this.cFZ = true;
        this.kkU = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.tB.ba.1
            @Override // java.lang.Runnable
            public void run() {
                if (ba.this.jFA != null) {
                    ba.this.jFA.oJ(ba.this.cFZ);
                }
            }
        };
        this.dLZ = new ViewTreeObserver.OnScrollChangedListener() { // from class: com.bytedance.sdk.openadsdk.core.tB.ba.2
            @Override // android.view.ViewTreeObserver.OnScrollChangedListener
            public void onScrollChanged() {
                long elapsedRealtime = SystemClock.elapsedRealtime();
                if (elapsedRealtime - ba.this.Pfn > 500) {
                    ba.this.Pfn = elapsedRealtime;
                    ba.this.ex.sendEmptyMessageDelayed(1, 500L);
                }
            }
        };
    }

    private void cFZ() {
        boolean oJ2 = mu.oJ(this, 50, -1, false);
        this.cFZ = oJ2;
        if (oJ2 == this.f13286ba) {
            return;
        }
        this.f13286ba = oJ2;
        ofl.oJ(this.kkU);
    }

    @Override // com.bytedance.adsdk.ugeno.ba.oJ
    public View kkU(int i10) {
        return (View) this.oJ.get(i10);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        getViewTreeObserver().addOnScrollChangedListener(this.dLZ);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ViewTreeObserver viewTreeObserver = getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnScrollChangedListener(this.dLZ);
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z10) {
        super.onWindowFocusChanged(z10);
        ZYk zYk = this.f13287so;
        if (zYk != null) {
            zYk.oJ(z10);
        }
    }

    public void setSwiperVisibleChangeListener(oJ oJVar) {
        this.jFA = oJVar;
    }

    public void setSwiperWindowFocusChangedListener(ZYk zYk) {
        this.f13287so = zYk;
    }

    @Override // com.bytedance.sdk.component.utils.IUZ.oJ
    public void oJ(Message message) {
        if (message.what == 1) {
            cFZ();
        }
    }
}
