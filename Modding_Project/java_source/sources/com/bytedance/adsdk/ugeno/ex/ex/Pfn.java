package com.bytedance.adsdk.ugeno.ex.ex;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import android.view.MotionEvent;
import com.bytedance.vodsetting.Module;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes3.dex */
public class Pfn extends tB {
    private float BTZ;
    private int PiB;
    private com.bytedance.adsdk.ugeno.core.ZYk.oJ Ry;
    private int WcQ;
    private int awB;
    private float dLZ;
    private AtomicBoolean eZI;

    /* renamed from: si  reason: collision with root package name */
    private String f11672si;

    public Pfn(Context context) {
        super(context);
        this.PiB = 0;
        this.WcQ = Integer.MAX_VALUE;
        this.awB = Integer.MAX_VALUE;
        this.eZI = new AtomicBoolean(true);
        this.f11672si = "up";
    }

    private void ZYk(com.bytedance.adsdk.ugeno.ZYk.tB tBVar) {
        if (this.Ry != null) {
            Log.d("GesThrough_UGSlideEvent", "need gesture through, replayGestureMotions");
            this.Ry.oJ(tBVar);
        }
    }

    private void tB(com.bytedance.adsdk.ugeno.ZYk.tB tBVar) {
        if (this.WcQ <= 0) {
            Log.d("GesThrough_UGSlideEvent", "frequency <= 0, no trigger slide");
            ZYk(tBVar);
        } else if (!this.eZI.get()) {
            Log.d("GesThrough_UGSlideEvent", "not in effective duration, no trigger slide");
            ZYk(tBVar);
        } else {
            this.oJ.oJ(tBVar, this.f11673ba, this.tB.ZYk());
            int i10 = this.WcQ;
            if (i10 != Integer.MAX_VALUE) {
                this.WcQ = i10 - 1;
            }
        }
    }

    @Override // com.bytedance.adsdk.ugeno.ex.ex.tB
    public boolean oJ(Object... objArr) {
        if (objArr == null || objArr.length <= 0) {
            return false;
        }
        Map<String, String> map = this.Pfn;
        if (map != null) {
            this.f11672si = TextUtils.isEmpty(map.get(HiAnalyticsConstant.HaKey.BI_KEY_DIRECTION)) ? Module.ALL : this.Pfn.get(HiAnalyticsConstant.HaKey.BI_KEY_DIRECTION);
            this.PiB = com.bytedance.adsdk.ugeno.cFZ.tB.oJ(this.Pfn.get("distance"), 0);
            if (this.WcQ == Integer.MAX_VALUE) {
                this.WcQ = com.bytedance.adsdk.ugeno.cFZ.tB.oJ(this.Pfn.get("frequency"), Integer.MAX_VALUE);
            }
            if (this.awB == Integer.MAX_VALUE) {
                this.awB = com.bytedance.adsdk.ugeno.cFZ.tB.oJ(this.Pfn.get("effectiveDuration"), Integer.MAX_VALUE);
            }
            Log.d("GesThrough_UGSlideEvent", "mFrequency: " + this.WcQ + ", mEffectiveDuration: " + this.awB + ", inEffectiveDuation: " + this.eZI.get());
        }
        com.bytedance.adsdk.ugeno.ZYk.tB tBVar = this.ZYk;
        if (tBVar != null && tBVar.oTd() && this.Ry == null) {
            this.Ry = new com.bytedance.adsdk.ugeno.core.ZYk.oJ();
        }
        oJ();
        return oJ(this.ZYk, (MotionEvent) objArr[0]);
    }

    private void oJ() {
        if (this.awB == Integer.MAX_VALUE || this.ZYk == null || System.currentTimeMillis() - this.ZYk.Xe() < this.awB) {
            return;
        }
        this.eZI.set(false);
        Log.d("GesThrough_UGSlideEvent", "inEffectiveDuation -> false");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private boolean oJ(com.bytedance.adsdk.ugeno.ZYk.tB tBVar, MotionEvent motionEvent) {
        char c10;
        com.bytedance.adsdk.ugeno.core.ZYk.oJ oJVar = this.Ry;
        if (oJVar != null) {
            if (oJVar.oJ(motionEvent)) {
                Log.d("GesThrough_UGSlideEvent", "mockEvent，skip");
                return false;
            }
            this.Ry.oJ(tBVar, motionEvent);
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            this.dLZ = motionEvent.getX();
            this.BTZ = motionEvent.getY();
        } else if (action == 1 || action == 3) {
            float x10 = motionEvent.getX();
            float y10 = motionEvent.getY();
            if (this.PiB == 0 && this.oJ != null) {
                tB(tBVar);
                return true;
            }
            int ZYk = com.bytedance.adsdk.ugeno.cFZ.so.ZYk(this.kkU, x10 - this.dLZ);
            int ZYk2 = com.bytedance.adsdk.ugeno.cFZ.so.ZYk(this.kkU, y10 - this.BTZ);
            String str = this.f11672si;
            switch (str.hashCode()) {
                case 3739:
                    if (str.equals("up")) {
                        c10 = 0;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 96673:
                    if (str.equals(Module.ALL)) {
                        c10 = 4;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 3089570:
                    if (str.equals("down")) {
                        c10 = 1;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 3317767:
                    if (str.equals(TtmlNode.LEFT)) {
                        c10 = 2;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 108511772:
                    if (str.equals(TtmlNode.RIGHT)) {
                        c10 = 3;
                        break;
                    }
                    c10 = 65535;
                    break;
                default:
                    c10 = 65535;
                    break;
            }
            if (c10 == 0) {
                ZYk = -ZYk2;
            } else if (c10 == 1) {
                ZYk = ZYk2;
            } else if (c10 == 2) {
                ZYk = -ZYk;
            } else if (c10 != 3) {
                ZYk = (int) Math.abs(Math.sqrt(Math.pow(ZYk, 2.0d) + Math.pow(ZYk2, 2.0d)));
            }
            if (ZYk >= this.PiB) {
                Log.d("GesThrough_UGSlideEvent", "Slide event, direct handling");
                if (this.oJ != null) {
                    this.dLZ = 0.0f;
                    this.BTZ = 0.0f;
                    tB(tBVar);
                    return true;
                }
            } else {
                Log.d("GesThrough_UGSlideEvent", "Non-slide event");
                ZYk(tBVar);
                return false;
            }
        }
        return true;
    }
}
