package com.bytedance.adsdk.ugeno.core.ZYk;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import android.view.MotionEvent;
import com.bytedance.adsdk.ugeno.cFZ.so;
import com.bytedance.adsdk.ugeno.core.PiB;
import com.bytedance.adsdk.ugeno.core.awB;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes3.dex */
public class Pfn {
    private boolean BTZ;
    private oJ PiB;
    private PiB cFZ;
    private boolean dLZ;
    private String jFA;
    private Context kkU;

    /* renamed from: so  reason: collision with root package name */
    private PiB f11657so;
    private float oJ = Float.MIN_VALUE;
    private float ZYk = Float.MIN_VALUE;
    private int tB = 0;
    private int ex = Integer.MAX_VALUE;
    private int Pfn = Integer.MAX_VALUE;

    /* renamed from: ba  reason: collision with root package name */
    private AtomicBoolean f11656ba = new AtomicBoolean(true);

    public Pfn(Context context, PiB piB, boolean z10, boolean z11) {
        this.kkU = context;
        this.cFZ = piB;
        this.dLZ = z10;
        this.BTZ = z11;
        tB();
    }

    private void tB() {
        if (this.BTZ) {
            this.PiB = new oJ();
        }
        PiB piB = this.cFZ;
        if (piB == null) {
            return;
        }
        this.tB = piB.tB().optInt("slideThreshold");
        this.jFA = this.cFZ.tB().optString("slideDirection");
        this.ex = this.cFZ.tB().optInt("frequency", Integer.MAX_VALUE);
        this.Pfn = this.cFZ.tB().optInt("effectiveDuration", Integer.MAX_VALUE);
        Log.d("GesThrough_UGSREvent", "mFrequency: " + this.ex + ", mEffectiveDuration: " + this.Pfn + ", inEffectiveDuation: " + this.f11656ba.get());
    }

    public void ZYk() {
        this.oJ = Float.MIN_VALUE;
        this.ZYk = Float.MIN_VALUE;
    }

    public void oJ() {
        if (this.Pfn == Integer.MAX_VALUE) {
            return;
        }
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.bytedance.adsdk.ugeno.core.ZYk.Pfn.1
            @Override // java.lang.Runnable
            public void run() {
                Pfn.this.f11656ba.set(false);
                Log.d("GesThrough_UGSREvent", "inEffectiveDuation -> false");
            }
        }, this.Pfn);
    }

    public boolean oJ(awB awb, com.bytedance.adsdk.ugeno.ZYk.tB tBVar, MotionEvent motionEvent, boolean z10) {
        oJ oJVar = this.PiB;
        if (oJVar != null) {
            if (oJVar.oJ(motionEvent)) {
                Log.d("GesThrough_UGSREvent", "mockEvent，skip");
                return false;
            }
            this.PiB.oJ(tBVar, motionEvent);
        }
        int action = motionEvent.getAction();
        if (action != 0) {
            if (action != 1) {
                if (action == 3) {
                    if (this.oJ != Float.MIN_VALUE && this.ZYk != Float.MIN_VALUE) {
                        Log.d("GesThrough_UGSREvent", "Sequence CANCEL, processed as UP event");
                    } else {
                        Log.d("GesThrough_UGSREvent", "Sequence CANCEL, don't handle");
                        return false;
                    }
                }
            }
            float x10 = motionEvent.getX();
            float y10 = motionEvent.getY();
            if (this.dLZ && Math.abs(x10 - this.oJ) <= 10.0f && Math.abs(y10 - this.ZYk) <= 10.0f && awb != null) {
                ZYk();
                awb.oJ(this.f11657so, tBVar, tBVar);
                return true;
            } else if (this.tB == 0 && awb != null) {
                ZYk();
                oJ(awb, this.cFZ, tBVar);
                return true;
            } else {
                int ZYk = so.ZYk(this.kkU, x10 - this.oJ);
                int ZYk2 = so.ZYk(this.kkU, y10 - this.ZYk);
                if (TextUtils.equals(this.jFA, "up")) {
                    ZYk = -ZYk2;
                } else if (TextUtils.equals(this.jFA, "down")) {
                    ZYk = ZYk2;
                } else if (TextUtils.equals(this.jFA, TtmlNode.LEFT)) {
                    ZYk = -ZYk;
                } else if (!TextUtils.equals(this.jFA, TtmlNode.RIGHT)) {
                    ZYk = (int) Math.abs(Math.sqrt(Math.pow(ZYk, 2.0d) + Math.pow(ZYk2, 2.0d)));
                }
                if (ZYk >= this.tB) {
                    Log.d("GesThrough_UGSREvent", "Right-slide event, direct handling");
                    if (awb != null) {
                        ZYk();
                        oJ(awb, this.cFZ, tBVar);
                        return true;
                    }
                    ZYk();
                } else {
                    ZYk();
                    Log.d("GesThrough_UGSREvent", "Non-right-slide event");
                    oJ(tBVar);
                    return false;
                }
            }
        } else {
            this.oJ = motionEvent.getX();
            this.ZYk = motionEvent.getY();
        }
        return true;
    }

    public Pfn(Context context, PiB piB, PiB piB2, boolean z10, boolean z11) {
        this.kkU = context;
        this.cFZ = piB;
        this.f11657so = piB2;
        this.dLZ = z10;
        this.BTZ = z11;
        tB();
    }

    private void oJ(com.bytedance.adsdk.ugeno.ZYk.tB tBVar) {
        if (this.PiB != null) {
            Log.d("GesThrough_UGSREvent", "need gesture through, replayGestureMotions");
            this.PiB.oJ(tBVar);
        }
    }

    private void oJ(awB awb, PiB piB, com.bytedance.adsdk.ugeno.ZYk.tB tBVar) {
        if (this.ex <= 0) {
            Log.d("GesThrough_UGSREvent", "frequency <= 0, no trigger slide");
            oJ(tBVar);
        } else if (!this.f11656ba.get()) {
            Log.d("GesThrough_UGSREvent", "not in effective duration, no trigger slide");
            oJ(tBVar);
        } else {
            awb.oJ(piB, tBVar, tBVar);
            int i10 = this.ex;
            if (i10 != Integer.MAX_VALUE) {
                this.ex = i10 - 1;
            }
        }
    }
}
