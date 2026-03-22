package com.bytedance.sdk.openadsdk.core;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import androidx.annotation.Nullable;
import com.bytedance.sdk.component.utils.IUZ;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes3.dex */
public class cFZ extends View implements IUZ.oJ {
    private boolean BTZ;
    private List<View> Pfn;
    private boolean PiB;
    private final Runnable WcQ;
    private boolean ZYk;
    @Nullable

    /* renamed from: ba  reason: collision with root package name */
    private List<View> f13119ba;
    private boolean cFZ;
    private ViewTreeObserver.OnGlobalLayoutListener dLZ;
    private View ex;
    private final Handler jFA;
    private final AtomicBoolean kkU;
    private boolean oJ;

    /* renamed from: so  reason: collision with root package name */
    private int f13120so;
    private oJ tB;

    /* loaded from: classes3.dex */
    public interface oJ {
        void ZYk();

        void oJ();

        void oJ(View view);

        void oJ(boolean z10);
    }

    public cFZ(Context context, View view, boolean z10) {
        super(si.oJ());
        this.jFA = new com.bytedance.sdk.component.utils.IUZ(WcQ.ZYk().getLooper(), this);
        this.kkU = new AtomicBoolean(true);
        this.PiB = false;
        this.WcQ = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.cFZ.3
            @Override // java.lang.Runnable
            public void run() {
                if (cFZ.this.tB != null) {
                    cFZ.this.tB.oJ(cFZ.this.ex);
                }
            }
        };
        this.BTZ = z10;
        this.ex = view;
        setLayoutParams(new ViewGroup.LayoutParams(0, 0));
        this.dLZ = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.bytedance.sdk.openadsdk.core.cFZ.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                if (!cFZ.this.PiB) {
                    cFZ.this.Pfn();
                    cFZ.this.ex();
                }
            }
        };
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.cFZ = false;
        ZYk();
        if (this.dLZ != null) {
            getViewTreeObserver().addOnGlobalLayoutListener(this.dLZ);
        }
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Pfn();
        this.cFZ = true;
        tB();
        oJ(false);
    }

    @Override // android.view.View
    public void onFinishTemporaryDetach() {
        super.onFinishTemporaryDetach();
        ZYk();
    }

    @Override // android.view.View
    public void onStartTemporaryDetach() {
        super.onStartTemporaryDetach();
        tB();
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z10) {
        super.onWindowFocusChanged(z10);
        oJ oJVar = this.tB;
        if (oJVar != null) {
            oJVar.oJ(z10);
        }
    }

    public void setAdType(int i10) {
        this.f13120so = i10;
    }

    public void setCallback(oJ oJVar) {
        this.tB = oJVar;
    }

    public void setNeedCheckingShow(boolean z10) {
        this.ZYk = z10;
        if (!z10 && this.oJ) {
            Pfn();
        } else if (z10 && !this.oJ) {
            ex();
        }
    }

    public void setRefClickViews(List<View> list) {
        this.Pfn = list;
    }

    public void setRefCreativeViews(@Nullable List<View> list) {
        this.f13119ba = list;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Pfn() {
        if (this.oJ) {
            this.jFA.removeCallbacksAndMessages(null);
            this.oJ = false;
        }
    }

    private void ZYk() {
        oJ oJVar;
        if (!this.kkU.getAndSet(false) || (oJVar = this.tB) == null) {
            return;
        }
        oJVar.oJ();
    }

    private boolean ba() {
        View view = this.ex;
        if (view instanceof com.bytedance.sdk.openadsdk.core.so.QSm) {
            return ((com.bytedance.sdk.openadsdk.core.so.QSm) view).cY();
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ex() {
        if (!this.ZYk || this.oJ) {
            return;
        }
        this.oJ = true;
        this.jFA.sendEmptyMessage(1);
    }

    private void tB() {
        oJ oJVar;
        if (this.kkU.getAndSet(true) || (oJVar = this.tB) == null) {
            return;
        }
        oJVar.ZYk();
    }

    public void oJ() {
        oJ(this.Pfn, (com.bytedance.sdk.openadsdk.core.ZYk.tB) null);
        oJ(this.f13119ba, (com.bytedance.sdk.openadsdk.core.ZYk.tB) null);
    }

    public void oJ(List<View> list, com.bytedance.sdk.openadsdk.core.ZYk.tB tBVar) {
        if (com.bytedance.sdk.component.utils.PiB.ZYk(list)) {
            for (View view : list) {
                if (view != null) {
                    view.setOnClickListener(tBVar);
                    view.setOnTouchListener(tBVar);
                }
            }
        }
    }

    @Override // com.bytedance.sdk.component.utils.IUZ.oJ
    public void oJ(Message message) {
        if (message.what == 1 && this.oJ) {
            if (ba() && mu.oJ(this.ex, 20, this.f13120so, this.BTZ)) {
                Pfn();
                this.PiB = true;
                WcQ.tB().post(this.WcQ);
                oJ(true);
                return;
            }
            this.jFA.sendEmptyMessageDelayed(1, 1000L);
        }
    }

    private void oJ(final boolean z10) {
        final ViewTreeObserver viewTreeObserver = getViewTreeObserver();
        com.bytedance.sdk.component.utils.jFA.ZYk().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.cFZ.2
            @Override // java.lang.Runnable
            public void run() {
                ViewTreeObserver viewTreeObserver2;
                if (cFZ.this.dLZ != null && (viewTreeObserver2 = viewTreeObserver) != null) {
                    try {
                        viewTreeObserver2.removeOnGlobalLayoutListener(cFZ.this.dLZ);
                    } catch (Exception unused) {
                    }
                }
                if (z10) {
                    cFZ.this.dLZ = null;
                }
            }
        });
    }
}
