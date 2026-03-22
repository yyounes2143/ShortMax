package com.bytedance.sdk.openadsdk.core.BTZ.Pfn;

import android.os.SystemClock;
import android.text.TextUtils;
import com.bykv.vk.openvk.oJ.oJ.oJ.Pfn.oJ;
import com.bykv.vk.openvk.oJ.oJ.oJ.tB.tB;
import com.bytedance.sdk.component.ZYk.oJ.cFZ;
import com.bytedance.sdk.component.so.so;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.si;
import com.bytedance.sdk.openadsdk.ex.Pfn.ZYk.BTZ;
import com.bytedance.sdk.openadsdk.ex.Pfn.ZYk.dLZ;
import com.bytedance.sdk.openadsdk.ex.Pfn.ZYk.jFA;
import com.bytedance.sdk.openadsdk.ex.Pfn.ZYk.kkU;
import com.bytedance.sdk.openadsdk.utils.HyG;
import com.bytedance.sdk.openadsdk.utils.ofl;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class oJ {
    public static final com.bykv.vk.openvk.oJ.oJ.oJ.Pfn.oJ oJ = new com.bykv.vk.openvk.oJ.oJ.ZYk.oJ.ZYk.oJ();

    private static void ZYk(tB tBVar, cY cYVar, AdSlot adSlot) {
        if (oJ(tBVar)) {
            com.bytedance.sdk.openadsdk.awB.tB.oJ("load_video_start", new com.bytedance.sdk.openadsdk.ex.Pfn.ZYk.oJ(cYVar, HyG.tB(adSlot.getDurationSlotType()), com.bytedance.sdk.openadsdk.ex.Pfn.oJ.oJ.oJ(cYVar, (String) null, -1, tBVar), new dLZ(tBVar.eZI(), tBVar.PiB() ? tBVar.BTZ() : tBVar.ba())));
        }
    }

    private static boolean oJ(tB tBVar) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void tB(tB tBVar, cY cYVar, AdSlot adSlot) {
        if (!oJ(tBVar)) {
            return;
        }
        com.bytedance.sdk.openadsdk.ex.Pfn.oJ.oJ.ZYk(new com.bytedance.sdk.openadsdk.ex.Pfn.ZYk.oJ(cYVar, HyG.tB(adSlot.getDurationSlotType()), com.bytedance.sdk.openadsdk.ex.Pfn.oJ.oJ.oJ(cYVar, (String) null, -1, tBVar), new jFA(tBVar.eZI(), tBVar.ba())));
    }

    public static void oJ(final tB tBVar, final oJ.InterfaceC0133oJ interfaceC0133oJ) {
        cY cYVar;
        AdSlot adSlot;
        if ((tBVar.ba() > 0 || tBVar.PiB()) && tBVar.Ry() != -2) {
            boolean z10 = true;
            if (tBVar.Ry() != 1) {
                tBVar.Pfn(6000);
                tBVar.ba(6000);
                tBVar.cFZ(6000);
                boolean z11 = tBVar.Pfn("material_meta") != null && (tBVar.Pfn("material_meta") instanceof cY);
                if (tBVar.Pfn("ad_slot") == null || !(tBVar.Pfn("ad_slot") instanceof AdSlot)) {
                    z10 = false;
                }
                if (z11 && z10) {
                    cYVar = (cY) tBVar.Pfn("material_meta");
                    AdSlot adSlot2 = (AdSlot) tBVar.Pfn("ad_slot");
                    ZYk(tBVar, cYVar, adSlot2);
                    adSlot = adSlot2;
                } else {
                    cYVar = null;
                    adSlot = null;
                }
                final long elapsedRealtime = SystemClock.elapsedRealtime();
                final cY cYVar2 = cYVar;
                final AdSlot adSlot3 = adSlot;
                final oJ.InterfaceC0133oJ interfaceC0133oJ2 = new oJ.InterfaceC0133oJ() { // from class: com.bytedance.sdk.openadsdk.core.BTZ.Pfn.oJ.1
                    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.Pfn.oJ.InterfaceC0133oJ
                    public void ZYk(tB tBVar2, int i10) {
                        AdSlot adSlot4;
                        oJ.InterfaceC0133oJ interfaceC0133oJ3 = oJ.InterfaceC0133oJ.this;
                        if (interfaceC0133oJ3 != null) {
                            interfaceC0133oJ3.oJ(tBVar2, i10);
                        }
                        cY cYVar3 = cYVar2;
                        if (cYVar3 != null && (adSlot4 = adSlot3) != null) {
                            oJ.tB(tBVar, cYVar3, adSlot4);
                        }
                        tBVar.si();
                    }

                    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.Pfn.oJ.InterfaceC0133oJ
                    public void oJ(tB tBVar2, int i10) {
                        oJ.InterfaceC0133oJ interfaceC0133oJ3 = oJ.InterfaceC0133oJ.this;
                        if (interfaceC0133oJ3 != null) {
                            interfaceC0133oJ3.oJ(tBVar2, i10);
                        }
                        if (cYVar2 == null || adSlot3 == null) {
                            return;
                        }
                        oJ.ZYk(tBVar, cYVar2, adSlot3, SystemClock.elapsedRealtime() - elapsedRealtime);
                    }

                    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.Pfn.oJ.InterfaceC0133oJ
                    public void oJ(tB tBVar2, int i10, String str) {
                        oJ.InterfaceC0133oJ interfaceC0133oJ3 = oJ.InterfaceC0133oJ.this;
                        if (interfaceC0133oJ3 != null) {
                            interfaceC0133oJ3.oJ(tBVar2, i10, str);
                        }
                        if (cYVar2 == null || adSlot3 == null) {
                            return;
                        }
                        oJ.ZYk(tBVar, cYVar2, adSlot3, SystemClock.elapsedRealtime() - elapsedRealtime, i10, str);
                    }
                };
                if (!oJ(tBVar.eZI())) {
                    if (interfaceC0133oJ != null) {
                        interfaceC0133oJ.oJ(tBVar, 404, "unexpected url: " + tBVar.eZI());
                    }
                    ZYk(tBVar, cYVar, adSlot, SystemClock.elapsedRealtime() - elapsedRealtime, -1, "video url is invalid");
                    return;
                }
                so soVar = new so("VideoPreload") { // from class: com.bytedance.sdk.openadsdk.core.BTZ.Pfn.oJ.2
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            oJ.oJ.oJ(si.oJ(), tBVar, interfaceC0133oJ2);
                        } catch (Throwable th2) {
                            th2.getMessage();
                        }
                    }
                };
                if (ofl.ba()) {
                    ofl.ZYk(soVar);
                    return;
                } else {
                    soVar.run();
                    return;
                }
            }
        }
        if (interfaceC0133oJ != null) {
            interfaceC0133oJ.oJ(tBVar, 100);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void ZYk(tB tBVar, cY cYVar, AdSlot adSlot, long j10, int i10, String str) {
        if (oJ(tBVar)) {
            String tB = HyG.tB(adSlot.getDurationSlotType());
            JSONObject oJ2 = com.bytedance.sdk.openadsdk.ex.Pfn.oJ.oJ.oJ(cYVar, (String) null, -1, tBVar);
            kkU kku = new kkU();
            kku.oJ(tBVar.eZI());
            kku.oJ(tBVar.ba());
            kku.ZYk(j10);
            kku.oJ(i10);
            if (TextUtils.isEmpty(str)) {
                str = "";
            }
            kku.ZYk(str);
            kku.tB("");
            com.bytedance.sdk.openadsdk.ex.Pfn.oJ.oJ.oJ(new com.bytedance.sdk.openadsdk.ex.Pfn.ZYk.oJ(cYVar, tB, oJ2, kku));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void ZYk(tB tBVar, cY cYVar, AdSlot adSlot, long j10) {
        if (oJ(tBVar)) {
            String tB = HyG.tB(adSlot.getDurationSlotType());
            JSONObject oJ2 = com.bytedance.sdk.openadsdk.ex.Pfn.oJ.oJ.oJ(cYVar, (String) null, -1, tBVar);
            BTZ btz = new BTZ();
            btz.oJ(tBVar.eZI());
            btz.oJ(tBVar.ba());
            btz.ZYk(j10);
            if (tBVar.Id() == 1) {
                btz.tB(1L);
            } else {
                btz.tB(0L);
            }
            com.bytedance.sdk.openadsdk.awB.tB.oJ("load_video_success", new com.bytedance.sdk.openadsdk.ex.Pfn.ZYk.oJ(cYVar, tB, oJ2, btz));
        }
    }

    public static boolean oJ(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        if (str.regionMatches(true, 0, "ws:", 0, 3)) {
            str = "http:" + str.substring(3);
        } else if (str.regionMatches(true, 0, "wss:", 0, 4)) {
            str = "https:" + str.substring(4);
        }
        return cFZ.tB(str) != null;
    }
}
