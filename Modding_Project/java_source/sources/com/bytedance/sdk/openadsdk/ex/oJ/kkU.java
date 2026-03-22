package com.bytedance.sdk.openadsdk.ex.oJ;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.openadsdk.BuildConfig;
import com.bytedance.sdk.openadsdk.awB.tB.tB;
import com.bytedance.sdk.openadsdk.core.Id;
import com.bytedance.sdk.openadsdk.core.si;
import com.bytedance.sdk.openadsdk.utils.Xe;
import com.bytedance.sdk.openadsdk.utils.ofl;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class kkU implements com.bytedance.sdk.component.ba.oJ.ZYk.tB {
    private final tB ZYk = tB.oJ();
    public Id<com.bytedance.sdk.openadsdk.ex.oJ> oJ;

    /* JADX INFO: Access modifiers changed from: private */
    public HashMap<String, List<com.bytedance.sdk.component.ba.oJ.ex.oJ>> ex(List<com.bytedance.sdk.component.ba.oJ.ex.oJ> list) {
        HashMap<String, List<com.bytedance.sdk.component.ba.oJ.ex.oJ>> hashMap = new HashMap<>();
        new ArrayList();
        for (int i10 = 0; i10 < list.size(); i10++) {
            com.bytedance.sdk.component.ba.oJ.ex.oJ oJVar = list.get(i10);
            JSONObject cFZ = oJVar.cFZ();
            if (cFZ != null) {
                String optString = cFZ.optString("app_log_url");
                List<com.bytedance.sdk.component.ba.oJ.ex.oJ> list2 = hashMap.get(optString);
                if (list2 == null) {
                    list2 = new ArrayList<>();
                    hashMap.put(optString, list2);
                }
                list2.add(oJVar);
            }
        }
        return hashMap;
    }

    private boolean tB(List<com.bytedance.sdk.openadsdk.ex.oJ> list) {
        JSONObject tB;
        if (list == null || list.size() == 0 || (tB = list.get(0).tB()) == null) {
            return true;
        }
        return TextUtils.isEmpty(tB.optString("app_log_url"));
    }

    public com.bytedance.sdk.openadsdk.ex.Pfn ZYk(List<tB.oJ> list) {
        if (this.oJ == null) {
            this.oJ = si.tB();
        }
        if (list != null && list.size() != 0 && com.bytedance.sdk.openadsdk.core.settings.jFA.oJ()) {
            JSONObject jSONObject = new JSONObject();
            try {
                JSONArray jSONArray = new JSONArray();
                for (tB.oJ oJVar : list) {
                    jSONArray.put(oJVar.ZYk);
                }
                jSONObject.put("stats_list", jSONArray);
                long currentTimeMillis = System.currentTimeMillis();
                long j10 = currentTimeMillis / 1000;
                jSONObject.put(CampaignEx.JSON_KEY_ST_TS, j10);
                jSONObject.put("ts_ms", currentTimeMillis);
                String ex = com.bytedance.sdk.openadsdk.core.jFA.ZYk().ex();
                if (ex == null) {
                    ex = "";
                }
                String oJ = Xe.oJ();
                StringBuilder sb2 = new StringBuilder(oJ);
                sb2.append("-");
                sb2.append(currentTimeMillis);
                jSONObject.put("req_sign", com.bytedance.sdk.component.utils.Pfn.oJ(ex + j10 + BuildConfig.VERSION_NAME));
                jSONObject.put("req_uniq", com.bytedance.sdk.component.utils.Pfn.oJ(sb2.toString()));
                return this.oJ.ZYk(jSONObject);
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    @Override // com.bytedance.sdk.component.ba.oJ.ZYk.tB
    public void oJ(final List<com.bytedance.sdk.component.ba.oJ.ex.oJ> list, @Nullable final com.bytedance.sdk.component.ba.oJ.ZYk.ZYk zYk) {
        com.bytedance.sdk.component.ba.oJ.ex.oJ oJVar;
        if (list == null || list.isEmpty() || !si.ex().YF() || (oJVar = list.get(0)) == null) {
            return;
        }
        byte ex = oJVar.ex();
        final ArrayList arrayList = new ArrayList();
        if (ex == 0) {
            com.bytedance.sdk.openadsdk.si.tB.oJ(new com.bytedance.sdk.openadsdk.si.ex() { // from class: com.bytedance.sdk.openadsdk.ex.oJ.kkU.1
                @Override // com.bytedance.sdk.openadsdk.si.ex
                public com.bytedance.sdk.openadsdk.si.ZYk.oJ generatorModel() {
                    com.bytedance.sdk.openadsdk.si.ZYk.oJ oJVar2 = new com.bytedance.sdk.openadsdk.si.ZYk.oJ();
                    oJVar2.ZYk("applog");
                    return oJVar2;
                }
            });
            ofl.oJ(new com.bytedance.sdk.component.so.tB.ZYk(7, "upload_ad_event") { // from class: com.bytedance.sdk.openadsdk.ex.oJ.kkU.2
                @Override // java.lang.Runnable
                public void run() {
                    Iterator it;
                    try {
                        it = kkU.this.ex(list).entrySet().iterator();
                    } catch (Throwable th2) {
                        QSm.tB("OverSeaEventUploadImp", th2.getMessage());
                        it = null;
                    }
                    if (it == null) {
                        com.bytedance.sdk.component.ba.oJ.ZYk.ZYk zYk2 = zYk;
                        if (zYk2 != null) {
                            zYk2.oJ(arrayList);
                            return;
                        }
                        return;
                    }
                    while (it.hasNext()) {
                        try {
                            oJ.oJ(oJ.ex);
                            List<com.bytedance.sdk.component.ba.oJ.ex.oJ> list2 = (List) ((Map.Entry) it.next()).getValue();
                            ArrayList arrayList2 = new ArrayList();
                            for (com.bytedance.sdk.component.ba.oJ.ex.oJ oJVar2 : list2) {
                                arrayList2.add(new com.bytedance.sdk.openadsdk.ex.oJ(oJVar2.tB(), oJVar2.cFZ()));
                            }
                            com.bytedance.sdk.openadsdk.ex.Pfn oJ = kkU.this.oJ(arrayList2);
                            if (zYk != null && oJ != null) {
                                boolean z10 = oJ.ex;
                                if (kkU.this.oJ(arrayList2, oJ)) {
                                    z10 = true;
                                }
                                arrayList.add(new com.bytedance.sdk.component.ba.oJ.ZYk.tB.oJ(new com.bytedance.sdk.component.ba.oJ.ZYk.tB.ZYk(oJ.oJ, oJ.ZYk, oJ.tB, z10, ""), list2));
                                if (oJ.ZYk == 200) {
                                    oJ.oJ(oJ.ex, true);
                                    com.bytedance.sdk.openadsdk.si.tB.ZYk(new com.bytedance.sdk.openadsdk.si.ex() { // from class: com.bytedance.sdk.openadsdk.ex.oJ.kkU.2.1
                                        @Override // com.bytedance.sdk.openadsdk.si.ex
                                        public com.bytedance.sdk.openadsdk.si.ZYk.oJ generatorModel() {
                                            com.bytedance.sdk.openadsdk.si.ZYk.oJ oJVar3 = new com.bytedance.sdk.openadsdk.si.ZYk.oJ();
                                            oJVar3.ZYk("applog");
                                            return oJVar3;
                                        }
                                    });
                                } else if (z10) {
                                    oJ.oJ(oJ.ex, false);
                                    com.bytedance.sdk.openadsdk.si.tB.tB(new com.bytedance.sdk.openadsdk.si.ex() { // from class: com.bytedance.sdk.openadsdk.ex.oJ.kkU.2.2
                                        @Override // com.bytedance.sdk.openadsdk.si.ex
                                        public com.bytedance.sdk.openadsdk.si.ZYk.oJ generatorModel() {
                                            com.bytedance.sdk.openadsdk.si.ZYk.oJ oJVar3 = new com.bytedance.sdk.openadsdk.si.ZYk.oJ();
                                            oJVar3.ZYk("applog");
                                            return oJVar3;
                                        }
                                    });
                                } else {
                                    com.bytedance.sdk.openadsdk.si.tB.tB(new com.bytedance.sdk.openadsdk.si.ex() { // from class: com.bytedance.sdk.openadsdk.ex.oJ.kkU.2.3
                                        @Override // com.bytedance.sdk.openadsdk.si.ex
                                        public com.bytedance.sdk.openadsdk.si.ZYk.oJ generatorModel() {
                                            com.bytedance.sdk.openadsdk.si.ZYk.oJ oJVar3 = new com.bytedance.sdk.openadsdk.si.ZYk.oJ();
                                            oJVar3.ZYk("applog");
                                            return oJVar3;
                                        }
                                    });
                                }
                            }
                            if (zYk != null && oJ == null) {
                                com.bytedance.sdk.openadsdk.si.tB.tB(new com.bytedance.sdk.openadsdk.si.ex() { // from class: com.bytedance.sdk.openadsdk.ex.oJ.kkU.2.4
                                    @Override // com.bytedance.sdk.openadsdk.si.ex
                                    public com.bytedance.sdk.openadsdk.si.ZYk.oJ generatorModel() {
                                        com.bytedance.sdk.openadsdk.si.ZYk.oJ oJVar3 = new com.bytedance.sdk.openadsdk.si.ZYk.oJ();
                                        oJVar3.ZYk("applog");
                                        return oJVar3;
                                    }
                                });
                            }
                        } catch (Throwable th3) {
                            QSm.tB("OverSeaEventUploadImp", th3.getMessage());
                        }
                    }
                    com.bytedance.sdk.component.ba.oJ.ZYk.ZYk zYk3 = zYk;
                    if (zYk3 != null) {
                        zYk3.oJ(arrayList);
                    }
                }
            });
        } else if (ex == 1) {
            final ArrayList arrayList2 = new ArrayList();
            for (com.bytedance.sdk.component.ba.oJ.ex.oJ oJVar2 : list) {
                arrayList2.add(new tB.oJ(oJVar2.tB(), oJVar2.cFZ()));
            }
            oJ.oJ(oJ.Pfn);
            if (arrayList2.size() > 0) {
                com.bytedance.sdk.openadsdk.si.tB.oJ(new com.bytedance.sdk.openadsdk.si.ex() { // from class: com.bytedance.sdk.openadsdk.ex.oJ.kkU.3
                    @Override // com.bytedance.sdk.openadsdk.si.ex
                    public com.bytedance.sdk.openadsdk.si.ZYk.oJ generatorModel() {
                        com.bytedance.sdk.openadsdk.si.ZYk.oJ oJVar3 = new com.bytedance.sdk.openadsdk.si.ZYk.oJ();
                        oJVar3.ZYk("stats");
                        return oJVar3;
                    }
                });
                ofl.oJ(new com.bytedance.sdk.component.so.tB.ZYk(6, "upload_stats_event") { // from class: com.bytedance.sdk.openadsdk.ex.oJ.kkU.4
                    @Override // java.lang.Runnable
                    public void run() {
                        com.bytedance.sdk.openadsdk.ex.Pfn ZYk = kkU.this.ZYk(arrayList2);
                        if (zYk != null && ZYk != null) {
                            arrayList.add(new com.bytedance.sdk.component.ba.oJ.ZYk.tB.oJ(new com.bytedance.sdk.component.ba.oJ.ZYk.tB.ZYk(ZYk.oJ, ZYk.ZYk, ZYk.tB, ZYk.ex, ""), list));
                            zYk.oJ(arrayList);
                            if (ZYk.ZYk == 200) {
                                oJ.oJ(oJ.Pfn, true);
                                com.bytedance.sdk.openadsdk.si.tB.ZYk(new com.bytedance.sdk.openadsdk.si.ex() { // from class: com.bytedance.sdk.openadsdk.ex.oJ.kkU.4.1
                                    @Override // com.bytedance.sdk.openadsdk.si.ex
                                    public com.bytedance.sdk.openadsdk.si.ZYk.oJ generatorModel() {
                                        com.bytedance.sdk.openadsdk.si.ZYk.oJ oJVar3 = new com.bytedance.sdk.openadsdk.si.ZYk.oJ();
                                        oJVar3.ZYk("stats");
                                        return oJVar3;
                                    }
                                });
                            } else if (ZYk.ex) {
                                oJ.oJ(oJ.Pfn, false);
                                com.bytedance.sdk.openadsdk.si.tB.tB(new com.bytedance.sdk.openadsdk.si.ex() { // from class: com.bytedance.sdk.openadsdk.ex.oJ.kkU.4.2
                                    @Override // com.bytedance.sdk.openadsdk.si.ex
                                    public com.bytedance.sdk.openadsdk.si.ZYk.oJ generatorModel() {
                                        com.bytedance.sdk.openadsdk.si.ZYk.oJ oJVar3 = new com.bytedance.sdk.openadsdk.si.ZYk.oJ();
                                        oJVar3.ZYk("stats");
                                        return oJVar3;
                                    }
                                });
                            } else {
                                com.bytedance.sdk.openadsdk.si.tB.tB(new com.bytedance.sdk.openadsdk.si.ex() { // from class: com.bytedance.sdk.openadsdk.ex.oJ.kkU.4.3
                                    @Override // com.bytedance.sdk.openadsdk.si.ex
                                    public com.bytedance.sdk.openadsdk.si.ZYk.oJ generatorModel() {
                                        com.bytedance.sdk.openadsdk.si.ZYk.oJ oJVar3 = new com.bytedance.sdk.openadsdk.si.ZYk.oJ();
                                        oJVar3.ZYk("stats");
                                        return oJVar3;
                                    }
                                });
                            }
                        }
                        if (zYk != null && ZYk == null) {
                            com.bytedance.sdk.openadsdk.si.tB.tB(new com.bytedance.sdk.openadsdk.si.ex() { // from class: com.bytedance.sdk.openadsdk.ex.oJ.kkU.4.4
                                @Override // com.bytedance.sdk.openadsdk.si.ex
                                public com.bytedance.sdk.openadsdk.si.ZYk.oJ generatorModel() {
                                    com.bytedance.sdk.openadsdk.si.ZYk.oJ oJVar3 = new com.bytedance.sdk.openadsdk.si.ZYk.oJ();
                                    oJVar3.ZYk("stats");
                                    return oJVar3;
                                }
                            });
                        }
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean oJ(List<com.bytedance.sdk.openadsdk.ex.oJ> list, com.bytedance.sdk.openadsdk.ex.Pfn pfn) {
        int i10;
        return !tB(list) && (i10 = pfn.ZYk) >= 400 && i10 < 500;
    }

    public com.bytedance.sdk.openadsdk.ex.Pfn oJ(List<com.bytedance.sdk.openadsdk.ex.oJ> list) {
        if (this.oJ == null) {
            this.oJ = si.tB();
        }
        if (this.oJ == null) {
            return null;
        }
        int yz = com.bytedance.sdk.openadsdk.core.settings.PiB.ib().yz();
        if (3 == yz) {
            return this.oJ.oJ(this.ZYk.oJ(this.ZYk.oJ(list, false), System.currentTimeMillis(), this.ZYk.ZYk(), true), this.ZYk.oJ(list), true);
        } else if (2 == yz) {
            long currentTimeMillis = System.currentTimeMillis();
            JSONObject ZYk = this.ZYk.ZYk();
            this.oJ.oJ(this.ZYk.oJ(this.ZYk.oJ(list, true), currentTimeMillis, ZYk, true), this.ZYk.oJ(list), true);
            return this.oJ.oJ(this.ZYk.oJ(this.ZYk.ZYk(list), currentTimeMillis, ZYk, false), this.ZYk.oJ(list), false);
        } else {
            return this.oJ.oJ(this.ZYk.oJ(list, System.currentTimeMillis(), this.ZYk.ZYk(), false), this.ZYk.oJ(list), false);
        }
    }
}
