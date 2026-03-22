package com.bytedance.sdk.component.so.oJ;

import android.os.Handler;
import com.bytedance.sdk.component.utils.IUZ;
import com.bytedance.sdk.component.utils.so;
/* loaded from: classes3.dex */
public class oJ {
    private Handler ZYk;
    private final ex<ZYk> oJ;

    /* renamed from: com.bytedance.sdk.component.so.oJ.oJ$oJ  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    private static class C0179oJ {
        private static final oJ oJ = new oJ();
    }

    public Handler ZYk() {
        if (this.ZYk == null) {
            synchronized (oJ.class) {
                try {
                    if (this.ZYk == null) {
                        this.ZYk = oJ("csj_io_handler");
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return this.ZYk;
    }

    private oJ() {
        this.oJ = ex.oJ(2);
    }

    public static oJ oJ() {
        return C0179oJ.oJ;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ(final Handler handler, final Handler handler2) {
        if (handler.getLooper().getQueue().isIdle()) {
            handler.removeCallbacksAndMessages(null);
            handler.getLooper().quit();
            return;
        }
        handler2.postDelayed(new Runnable() { // from class: com.bytedance.sdk.component.so.oJ.oJ.1
            @Override // java.lang.Runnable
            public void run() {
                oJ.this.oJ(handler, handler2);
            }
        }, 1000L);
    }

    private ZYk ZYk(IUZ.oJ oJVar, String str) {
        return new ZYk(so.oJ(str), oJVar);
    }

    public IUZ oJ(IUZ.oJ oJVar, final String str) {
        ZYk oJ = this.oJ.oJ();
        if (oJ != null) {
            oJ.oJ(oJVar);
            oJ.post(new Runnable() { // from class: com.bytedance.sdk.component.so.oJ.oJ.2
                @Override // java.lang.Runnable
                public void run() {
                    Thread.currentThread().setName(str);
                }
            });
            return oJ;
        }
        return ZYk(oJVar, str);
    }

    public IUZ oJ(String str) {
        return oJ((IUZ.oJ) null, str);
    }

    public boolean oJ(IUZ iuz) {
        if (iuz instanceof ZYk) {
            ZYk zYk = (ZYk) iuz;
            if (this.oJ.oJ((ex<ZYk>) zYk)) {
                return true;
            }
            zYk.ZYk();
            return true;
        }
        return false;
    }
}
