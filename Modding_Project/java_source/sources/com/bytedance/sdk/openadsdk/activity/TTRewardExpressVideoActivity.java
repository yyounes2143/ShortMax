package com.bytedance.sdk.openadsdk.activity;

import android.os.Bundle;
import com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB;
import com.bytedance.sdk.openadsdk.common.TTAdDislikeToast;
import com.bytedance.sdk.openadsdk.component.reward.oJ.eZI;
import com.bytedance.sdk.openadsdk.component.reward.view.kkU;
import com.bytedance.sdk.openadsdk.core.model.QSm;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.utils.Jc;
import com.bytedance.sdk.openadsdk.utils.awB;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class TTRewardExpressVideoActivity extends TTRewardVideoActivity {
    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity
    public boolean jr() {
        return true;
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTRewardVideoActivity, com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    public boolean oJ(long j10, boolean z10) {
        com.bytedance.sdk.openadsdk.ex.cFZ cfz;
        kkU kku = this.ZYk.f13026tb;
        if (kku != null && kku.oJ() != null) {
            cfz = this.ZYk.f13026tb.oJ().getAdShowTime();
        } else {
            cfz = new com.bytedance.sdk.openadsdk.ex.cFZ();
        }
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = this.ZYk;
        oJVar.cY.oJ(oJVar.f13026tb.ZYk(), cfz);
        HashMap hashMap = new HashMap();
        kkU kku2 = this.ZYk.f13026tb;
        if (kku2 != null) {
            hashMap.put("dynamic_show_type", Integer.valueOf(kku2.kkU()));
            JSONObject oJ = this.ZYk.f13026tb.oJ((JSONObject) null);
            if (oJ != null) {
                Iterator<String> keys = oJ.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    try {
                        hashMap.put(next, oJ.get(next));
                    } catch (JSONException unused) {
                    }
                }
            }
        }
        this.ZYk.cY.oJ(new tB.oJ() { // from class: com.bytedance.sdk.openadsdk.activity.TTRewardExpressVideoActivity.1
            boolean oJ;

            @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB.oJ
            public void ZYk(long j11, int i10) {
                TTRewardExpressVideoActivity.this.ex.removeMessages(300);
                QSm qSm = TTRewardExpressVideoActivity.this.ZYk.ofl.awB;
                if (qSm != null) {
                    qSm.kkU();
                }
                if (TTRewardExpressVideoActivity.this.ZYk.cY.ba()) {
                    TTRewardExpressVideoActivity.this.QSm();
                    return;
                }
                TTRewardExpressVideoActivity.this.tb();
                TTRewardExpressVideoActivity.this.ZYk.cY.RZ();
                TTRewardExpressVideoActivity tTRewardExpressVideoActivity = TTRewardExpressVideoActivity.this;
                com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar2 = tTRewardExpressVideoActivity.ZYk;
                if (oJVar2.tB) {
                    eZI ezi = oJVar2.cY;
                    ezi.oJ(!ezi.mu(), 2);
                    TTRewardExpressVideoActivity.this.oJ(false, 3);
                } else {
                    tTRewardExpressVideoActivity.finish();
                }
                TTRewardExpressVideoActivity.this.ZYk.f13026tb.oJ(true);
            }

            @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB.oJ
            public void oJ(long j11, int i10) {
                if (this.oJ) {
                    return;
                }
                this.oJ = true;
                TTRewardExpressVideoActivity.this.ex.removeMessages(300);
                TTRewardExpressVideoActivity.this.oq();
                TTRewardExpressVideoActivity.this.ZYk.cY.oJ(j11, j11);
                TTRewardExpressVideoActivity.this.ZYk.f13026tb.ZYk(true);
                ((TTRewardVideoActivity) TTRewardExpressVideoActivity.this).WcQ = (int) (System.currentTimeMillis() / 1000);
                TTRewardExpressVideoActivity.this.tb();
                if (TTRewardExpressVideoActivity.this.ZYk.ZYk.LS() == 36) {
                    com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar2 = TTRewardExpressVideoActivity.this.ZYk;
                    if (oJVar2.tB) {
                        oJVar2.f13021jr.tB().tB(TTRewardExpressVideoActivity.this.ZYk.ZYk);
                        awB.ZYk();
                    }
                }
                if (TTRewardExpressVideoActivity.this.ZYk.ZYk.LS() == 21 && !TTRewardExpressVideoActivity.this.ZYk.ZYk.WcQ()) {
                    TTRewardExpressVideoActivity.this.ZYk.ZYk.ex(true);
                    TTRewardExpressVideoActivity.this.ZYk.ofl.si();
                }
                TTRewardExpressVideoActivity tTRewardExpressVideoActivity = TTRewardExpressVideoActivity.this;
                if (tTRewardExpressVideoActivity.dLZ && tTRewardExpressVideoActivity.ZYk.f13026tb.dLZ()) {
                    return;
                }
                com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar3 = TTRewardExpressVideoActivity.this.ZYk;
                if (oJVar3.tB) {
                    if (oJVar3.ZYk.Qu()) {
                        if (TTRewardExpressVideoActivity.this.ZYk.f13026tb.kkU() == 1) {
                            TTRewardExpressVideoActivity.this.ZYk.f13022mu.tB();
                            return;
                        }
                        return;
                    }
                    TTRewardExpressVideoActivity.this.oJ(false, 5);
                    if (cY.Pfn(TTRewardExpressVideoActivity.this.ZYk.ZYk)) {
                        return;
                    }
                    TTRewardExpressVideoActivity.this.ZYk.cY.oJ("skip", true);
                } else if (oJVar3.ZYk.Qu()) {
                    if (TTRewardExpressVideoActivity.this.ZYk.f13026tb.kkU() == 1) {
                        TTRewardExpressVideoActivity.this.ZYk.f13022mu.tB();
                    }
                } else {
                    if (!cY.Pfn(TTRewardExpressVideoActivity.this.ZYk.ZYk)) {
                        TTRewardExpressVideoActivity.this.ZYk.cY.oJ("skip", true);
                    }
                    TTRewardExpressVideoActivity.this.finish();
                }
            }

            @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB.oJ
            public void oJ() {
                TTRewardExpressVideoActivity.this.ex.removeMessages(300);
                TTRewardExpressVideoActivity.this.oq();
                TTRewardExpressVideoActivity.this.tb();
                TTRewardExpressVideoActivity tTRewardExpressVideoActivity = TTRewardExpressVideoActivity.this;
                com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar2 = tTRewardExpressVideoActivity.ZYk;
                if (oJVar2.tB) {
                    eZI ezi = oJVar2.cY;
                    ezi.oJ(!ezi.mu(), !TTRewardExpressVideoActivity.this.ZYk.cY.mu());
                    TTRewardExpressVideoActivity.this.oJ(false, 6);
                } else {
                    tTRewardExpressVideoActivity.finish();
                }
                TTRewardExpressVideoActivity.this.ZYk.cY.RZ();
            }

            @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB.oJ
            public void oJ(long j11, long j12) {
                com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar2 = TTRewardExpressVideoActivity.this.ZYk;
                if (!oJVar2.Yg && oJVar2.cY.ba()) {
                    TTRewardExpressVideoActivity.this.ZYk.cY.oq();
                }
                if (TTRewardExpressVideoActivity.this.ZYk.kkU.get()) {
                    return;
                }
                TTRewardExpressVideoActivity.this.ex.removeMessages(300);
                if (j11 != TTRewardExpressVideoActivity.this.ZYk.cY.PiB()) {
                    TTRewardExpressVideoActivity.this.oq();
                }
                if (TTRewardExpressVideoActivity.this.ZYk.cY.ba()) {
                    TTRewardExpressVideoActivity.this.ZYk.cY.oJ(j11, j12);
                    int xwf = TTRewardExpressVideoActivity.this.ZYk.ZYk.xwf();
                    boolean z11 = TTRewardExpressVideoActivity.this.ZYk.f13026tb.jFA() && xwf >= 0;
                    TTRewardExpressVideoActivity tTRewardExpressVideoActivity = TTRewardExpressVideoActivity.this;
                    long j13 = j11 / 1000;
                    tTRewardExpressVideoActivity.f12869ba = (int) (tTRewardExpressVideoActivity.ZYk.cY.XAo() - j13);
                    int i10 = (int) j13;
                    if ((TTRewardExpressVideoActivity.this.ZYk.QSm.get() || TTRewardExpressVideoActivity.this.ZYk.dLZ.get()) && TTRewardExpressVideoActivity.this.ZYk.cY.ba()) {
                        TTRewardExpressVideoActivity.this.ZYk.cY.oq();
                    }
                    TTRewardExpressVideoActivity.this.ZYk.ofl.Pfn(i10);
                    if (TTRewardExpressVideoActivity.this.ZYk.cY.ex()) {
                        Jc jc2 = TTRewardExpressVideoActivity.this.jFA;
                        if (jc2 != null) {
                            jc2.oJ(j11);
                            return;
                        }
                        return;
                    }
                    Jc jc3 = TTRewardExpressVideoActivity.this.jFA;
                    if (jc3 == null || !jc3.oJ()) {
                        TTRewardExpressVideoActivity.this.ZYk(j11, j12);
                        kkU kku3 = TTRewardExpressVideoActivity.this.ZYk.f13026tb;
                        if (kku3 != null && kku3.oJ() != null) {
                            TTRewardExpressVideoActivity.this.ZYk.f13026tb.oJ().setTime(String.valueOf(TTRewardExpressVideoActivity.this.f12869ba), i10, 0, false);
                            TTRewardExpressVideoActivity.this.ZYk.f13026tb.oJ().oJ(j11, j12);
                        }
                        TTRewardExpressVideoActivity tTRewardExpressVideoActivity2 = TTRewardExpressVideoActivity.this;
                        int i11 = tTRewardExpressVideoActivity2.f12869ba;
                        if (i11 > 0) {
                            if (!z11) {
                                tTRewardExpressVideoActivity2.ZYk.f13022mu.oJ(String.valueOf(i11), null);
                            } else if (i10 < xwf) {
                                tTRewardExpressVideoActivity2.ZYk.f13022mu.oJ(String.valueOf(i11), null);
                            } else if (tTRewardExpressVideoActivity2.ZYk.ZYk.LS() != 5 && TTRewardExpressVideoActivity.this.ZYk.ZYk.LS() != 33) {
                                TTRewardExpressVideoActivity.this.ZYk.oJ(true);
                                TTRewardExpressVideoActivity tTRewardExpressVideoActivity3 = TTRewardExpressVideoActivity.this;
                                tTRewardExpressVideoActivity3.ZYk.f13022mu.oJ(String.valueOf(tTRewardExpressVideoActivity3.f12869ba), TTAdDislikeToast.getSkipText());
                                TTRewardExpressVideoActivity.this.ZYk.f13022mu.Pfn(true);
                            } else {
                                TTRewardExpressVideoActivity tTRewardExpressVideoActivity4 = TTRewardExpressVideoActivity.this;
                                tTRewardExpressVideoActivity4.ZYk.f13022mu.oJ(String.valueOf(tTRewardExpressVideoActivity4.f12869ba), null);
                            }
                        }
                    }
                }
            }
        });
        boolean oJ2 = this.ZYk.cY.oJ(j10, z10, hashMap, this.tB);
        if (oJ2 && !z10) {
            ((TTRewardVideoActivity) this).PiB = (int) (System.currentTimeMillis() / 1000);
        }
        return oJ2;
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTRewardVideoActivity, com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity, com.bytedance.sdk.openadsdk.activity.TTBaseActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Xe();
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity
    protected void Pfn() {
    }
}
