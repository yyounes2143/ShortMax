package com.bytedance.sdk.openadsdk.jr.ZYk;

import android.view.View;
import androidx.core.view.InputDeviceCompat;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.jr.ZYk.Pfn;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes3.dex */
public abstract class ZYk {
    private final AtomicBoolean Pfn;
    protected cY ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private final Pfn.oJ f13368ba;
    private final int cFZ;
    private final AtomicLong ex;
    private volatile boolean jFA = false;
    protected WeakReference<View> oJ;

    /* renamed from: so  reason: collision with root package name */
    private final Integer f13369so;
    protected final AtomicBoolean tB;

    public ZYk(Integer num, View view, cY cYVar, int i10, Pfn.oJ oJVar) {
        this.f13369so = num;
        this.cFZ = i10;
        this.ZYk = cYVar;
        this.f13368ba = oJVar;
        oJ(view);
        this.tB = new AtomicBoolean(false);
        this.ex = new AtomicLong(-1L);
        this.Pfn = new AtomicBoolean(false);
    }

    public static ZYk oJ(boolean z10, Integer num, View view, cY cYVar, Pfn.oJ oJVar) {
        return z10 ? new so(num, view, cYVar, oJVar) : new tB(num, view, cYVar, oJVar);
    }

    public boolean BTZ() {
        return this.tB.get();
    }

    protected oJ Pfn() {
        WeakReference<View> weakReference = this.oJ;
        if (weakReference == null) {
            return new oJ(-1, -1, -1.0f);
        }
        View view = weakReference.get();
        if (view == null) {
            return new oJ(0, 0, 0.0f);
        }
        return new oJ(view.getWidth(), view.getHeight(), view.getAlpha());
    }

    public void PiB() {
        this.tB.set(false);
        so();
    }

    public int ZYk() {
        if (jFA()) {
            return 1;
        }
        WeakReference<View> weakReference = this.oJ;
        View view = weakReference != null ? weakReference.get() : null;
        if (view == null || this.jFA) {
            return 3;
        }
        if (dLZ().equals(view.getTag(InputDeviceCompat.SOURCE_HDMI))) {
            return (dLZ().equals(view.getTag(InputDeviceCompat.SOURCE_HDMI)) && tB()) ? 1 : 2;
        }
        kkU();
        Pfn.ZYk(dLZ());
        return 3;
    }

    protected abstract void ZYk(int i10);

    public abstract int ba();

    public void cFZ() {
        if (jFA()) {
            return;
        }
        if (!this.tB.get()) {
            so();
        } else if (!this.ex.compareAndSet(-1L, System.currentTimeMillis()) && System.currentTimeMillis() - this.ex.get() >= this.cFZ) {
            ex();
        }
    }

    public Integer dLZ() {
        return this.f13369so;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void ex() {
        if (this.Pfn.compareAndSet(false, true)) {
            ex.oJ(this.ZYk, Pfn(), this.f13368ba);
        }
    }

    public boolean jFA() {
        return this.Pfn.get();
    }

    public void kkU() {
        this.jFA = true;
        cFZ.ZYk(this);
    }

    public void so() {
        this.ex.set(-1L);
    }

    protected abstract boolean tB();

    public void oJ() {
        if (this.tB.compareAndSet(false, true)) {
            cFZ.oJ(this);
        }
    }

    public void oJ(int i10) {
        if (i10 == 4) {
            oJ();
        } else if (i10 == 8) {
            PiB();
        } else if (i10 == 9) {
            ex();
        } else {
            ZYk(i10);
        }
    }

    public void oJ(View view) {
        if (view != null) {
            view.setTag(InputDeviceCompat.SOURCE_HDMI, dLZ());
        }
        this.oJ = new WeakReference<>(view);
    }
}
