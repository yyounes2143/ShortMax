package com.bytedance.sdk.openadsdk.component.ba;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.NonNull;
/* loaded from: classes3.dex */
public class ZYk implements Handler.Callback {
    private boolean BTZ;
    private final com.bytedance.sdk.openadsdk.component.so.oJ ZYk;
    private boolean cFZ;
    private long dLZ;
    private long kkU;
    private oJ tB;
    private Handler oJ = new Handler(Looper.myLooper(), this);
    private int ex = 0;
    private int Pfn = 5;

    /* renamed from: ba  reason: collision with root package name */
    private int f12975ba = 0;

    /* renamed from: so  reason: collision with root package name */
    private final int f12976so = 1000;
    private int jFA = 1000;

    public ZYk(com.bytedance.sdk.openadsdk.component.so.oJ oJVar) {
        this.ZYk = oJVar;
    }

    public void Pfn() {
        this.oJ.removeCallbacksAndMessages(null);
        this.oJ = null;
    }

    public void ZYk(int i10) {
        this.f12975ba = Math.min(i10, this.Pfn);
    }

    public void ex() {
        Handler handler = this.oJ;
        if (handler != null) {
            handler.removeMessages(100);
        }
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(@NonNull Message message) {
        if (message.what == 100 && this.oJ != null) {
            int i10 = message.arg1;
            oJ(i10);
            if (i10 > 0) {
                Message obtain = Message.obtain();
                obtain.what = 100;
                obtain.arg1 = i10 - 1;
                this.oJ.sendMessageDelayed(obtain, this.jFA);
            }
        }
        return true;
    }

    public void oJ(int i10) {
        this.ex = i10;
        int i11 = this.Pfn - i10;
        this.ZYk.ZYk(i11);
        boolean z10 = true;
        if (i10 <= 0) {
            oJ oJVar = this.tB;
            if (oJVar != null && !this.cFZ) {
                oJVar.ZYk();
                this.cFZ = true;
            }
            i10 = 0;
        }
        oJ oJVar2 = this.tB;
        if (oJVar2 != null) {
            int i12 = this.f12975ba;
            int i13 = i12 - i11;
            if (i10 != 0 && i11 < i12) {
                z10 = false;
            }
            oJVar2.oJ(i13, z10);
        }
    }

    public void tB() {
        if (this.oJ != null) {
            Message obtain = Message.obtain();
            obtain.what = 100;
            obtain.arg1 = this.ex;
            this.oJ.sendMessage(obtain);
        }
    }

    public void ZYk() {
        Handler handler = this.oJ;
        if (handler != null) {
            handler.sendMessage(handler.obtainMessage(100, this.Pfn, 0));
        }
    }

    public void oJ(float f10) {
        int i10 = (int) f10;
        this.Pfn = i10;
        if (i10 <= 0) {
            this.Pfn = 5;
        }
    }

    public void oJ(oJ oJVar) {
        this.tB = oJVar;
    }

    public int oJ() {
        return this.f12975ba;
    }

    public void oJ(int i10, float f10, boolean z10) {
        com.bytedance.sdk.openadsdk.component.so.oJ oJVar;
        if ((i10 == 1 || i10 == 2) && this.BTZ != z10) {
            this.BTZ = z10;
            if (i10 == 1 && (oJVar = this.ZYk) != null) {
                oJVar.oJ(z10);
            }
            if (z10) {
                try {
                    this.jFA = (int) (1000.0f / f10);
                    this.dLZ = System.currentTimeMillis();
                    return;
                } catch (Throwable unused) {
                }
            } else {
                long currentTimeMillis = this.kkU + (System.currentTimeMillis() - this.dLZ);
                this.kkU = currentTimeMillis;
                com.bytedance.sdk.openadsdk.component.so.oJ oJVar2 = this.ZYk;
                if (oJVar2 != null) {
                    oJVar2.oJ(currentTimeMillis);
                }
            }
            this.jFA = 1000;
        }
    }
}
