package com.bytedance.adsdk.ugeno.ex;

import android.text.TextUtils;
import android.view.MotionEvent;
import com.bytedance.adsdk.ugeno.ex.ZYk.oJ;
import com.bytedance.adsdk.ugeno.ex.ba;
import com.bytedance.adsdk.ugeno.ex.ex.tB;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class jFA implements dLZ {
    private boolean Pfn;
    private Map<String, List<com.bytedance.adsdk.ugeno.ex.ex.tB>> ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private boolean f11675ba;
    private com.bytedance.adsdk.ugeno.core.Pfn ex;
    private oJ oJ;
    private com.bytedance.adsdk.ugeno.ZYk.tB tB;

    /* loaded from: classes3.dex */
    public static class oJ {
        public Map<String, com.bytedance.adsdk.ugeno.ex.ex.tB> ZYk;
        public Map<String, List<com.bytedance.adsdk.ugeno.ex.ex.tB>> oJ;

        public oJ(Map<String, List<com.bytedance.adsdk.ugeno.ex.ex.tB>> map, Map<String, com.bytedance.adsdk.ugeno.ex.ex.tB> map2) {
            this.oJ = map;
            this.ZYk = map2;
        }
    }

    public jFA(com.bytedance.adsdk.ugeno.ZYk.tB tBVar, oJ oJVar) {
        this.tB = tBVar;
        this.oJ = oJVar;
        if (oJVar != null) {
            this.ZYk = oJVar.oJ;
        }
    }

    public void Pfn() {
        List<com.bytedance.adsdk.ugeno.ex.ex.tB> oJ2 = oJ("timer");
        if (oJ2 != null && !oJ2.isEmpty()) {
            for (com.bytedance.adsdk.ugeno.ex.ex.tB tBVar : oJ2) {
                if (tBVar != null) {
                    tBVar.oJ(this);
                    tBVar.oJ(new Object[0]);
                }
            }
        }
    }

    public void ZYk() {
        List<com.bytedance.adsdk.ugeno.ex.ex.tB> oJ2 = oJ("twist");
        if (oJ2 == null || oJ2.isEmpty()) {
            return;
        }
        for (com.bytedance.adsdk.ugeno.ex.ex.tB tBVar : oJ2) {
            if (tBVar != null) {
                tBVar.oJ(this);
                tBVar.oJ(new Object[0]);
            }
        }
    }

    public void ex() {
        List<com.bytedance.adsdk.ugeno.ex.ex.tB> oJ2 = oJ("animateState");
        if (oJ2 != null && !oJ2.isEmpty()) {
            for (com.bytedance.adsdk.ugeno.ex.ex.tB tBVar : oJ2) {
                if (tBVar != null) {
                    tBVar.oJ(this);
                    tBVar.oJ(new Object[0]);
                }
            }
        }
    }

    public void oJ(com.bytedance.adsdk.ugeno.core.Pfn pfn) {
        this.ex = pfn;
    }

    public void tB() {
        List<com.bytedance.adsdk.ugeno.ex.ex.tB> value;
        oJ oJVar = this.oJ;
        if (oJVar == null) {
            return;
        }
        for (Map.Entry<String, List<com.bytedance.adsdk.ugeno.ex.ex.tB>> entry : oJVar.oJ.entrySet()) {
            if (entry != null && (value = entry.getValue()) != null && !value.isEmpty()) {
                for (com.bytedance.adsdk.ugeno.ex.ex.tB tBVar : value) {
                    if (tBVar instanceof com.bytedance.adsdk.ugeno.ex.ex.ex) {
                        tBVar.oJ(this);
                        tBVar.oJ(new Object[0]);
                    }
                }
            }
        }
    }

    public void oJ() {
        List<com.bytedance.adsdk.ugeno.ex.ex.tB> oJ2 = oJ("shake");
        if (oJ2 == null || oJ2.isEmpty()) {
            return;
        }
        for (com.bytedance.adsdk.ugeno.ex.ex.tB tBVar : oJ2) {
            if (tBVar != null) {
                tBVar.oJ(this);
                tBVar.oJ(new Object[0]);
            }
        }
    }

    public com.bytedance.adsdk.ugeno.ex.ex.tB ZYk(String str) {
        Map<String, com.bytedance.adsdk.ugeno.ex.ex.tB> map;
        if (this.oJ == null || TextUtils.isEmpty(str) || (map = this.oJ.ZYk) == null) {
            return null;
        }
        return map.get(str);
    }

    public boolean oJ(MotionEvent motionEvent) {
        List<com.bytedance.adsdk.ugeno.ex.ex.tB> oJ2 = oJ("touchStart");
        if (oJ2 != null && !oJ2.isEmpty()) {
            for (com.bytedance.adsdk.ugeno.ex.ex.tB tBVar : oJ2) {
                if (tBVar instanceof com.bytedance.adsdk.ugeno.ex.ex.BTZ) {
                    tBVar.oJ(this);
                    tBVar.oJ(motionEvent);
                }
            }
        }
        List<com.bytedance.adsdk.ugeno.ex.ex.tB> oJ3 = oJ("touchEnd");
        List<com.bytedance.adsdk.ugeno.ex.ex.tB> oJ4 = oJ("tap");
        List<com.bytedance.adsdk.ugeno.ex.ex.tB> oJ5 = oJ("slide");
        if (oJ2 != null && !oJ2.isEmpty()) {
            for (com.bytedance.adsdk.ugeno.ex.ex.tB tBVar2 : oJ3) {
                if (tBVar2 instanceof com.bytedance.adsdk.ugeno.ex.ex.dLZ) {
                    tBVar2.oJ(this);
                    this.f11675ba = tBVar2.oJ(motionEvent);
                }
            }
        }
        if ((oJ4 != null && !oJ4.isEmpty()) || (oJ5 != null && !oJ5.isEmpty())) {
            if (this.f11675ba && motionEvent.getAction() == 1) {
                return true;
            }
            if (oJ4 != null && !oJ4.isEmpty()) {
                for (com.bytedance.adsdk.ugeno.ex.ex.tB tBVar3 : oJ4) {
                    if (tBVar3 instanceof com.bytedance.adsdk.ugeno.ex.ex.jFA) {
                        tBVar3.oJ(this);
                        this.Pfn = tBVar3.oJ(motionEvent);
                    }
                }
            }
            if (this.Pfn) {
                return true;
            }
            if (oJ5 != null && !oJ5.isEmpty()) {
                for (com.bytedance.adsdk.ugeno.ex.ex.tB tBVar4 : oJ5) {
                    if (tBVar4 instanceof com.bytedance.adsdk.ugeno.ex.ex.Pfn) {
                        tBVar4.oJ(this);
                        return tBVar4.oJ(motionEvent);
                    }
                }
            }
            return this.Pfn;
        }
        return this.f11675ba;
    }

    private void oJ(String str, List<ba.oJ> list) {
        com.bytedance.adsdk.ugeno.ex.ZYk.oJ oJ2;
        if (list == null || list.isEmpty()) {
            return;
        }
        for (ba.oJ oJVar : list) {
            if (oJVar != null && (oJ2 = oJ.C0145oJ.oJ(this.tB, str, oJVar)) != null) {
                oJ2.oJ();
                oJ2.ZYk();
            }
        }
    }

    public List<com.bytedance.adsdk.ugeno.ex.ex.tB> oJ(String str) {
        Map<String, List<com.bytedance.adsdk.ugeno.ex.ex.tB>> map = this.ZYk;
        if (map == null || map.isEmpty() || TextUtils.isEmpty(str)) {
            return null;
        }
        return this.ZYk.get(str);
    }

    public void oJ(String str, Object... objArr) {
        com.bytedance.adsdk.ugeno.ex.ex.tB ZYk = ZYk(str);
        if (ZYk != null) {
            ZYk.oJ(this);
            ZYk.oJ(objArr);
        }
    }

    @Override // com.bytedance.adsdk.ugeno.ex.dLZ
    public void oJ(com.bytedance.adsdk.ugeno.ZYk.tB tBVar, String str, List<ba.oJ> list) {
        com.bytedance.adsdk.ugeno.core.Pfn pfn = this.ex;
        if (pfn != null) {
            pfn.oJ(tBVar, str, list);
        }
        oJ(str, list);
    }

    public static jFA oJ(com.bytedance.adsdk.ugeno.ZYk.tB tBVar, String str) {
        com.bytedance.adsdk.ugeno.ex.ex.tB oJ2;
        if (tBVar != null && !TextUtils.isEmpty(str)) {
            try {
                JSONArray jSONArray = new JSONArray(str);
                if (jSONArray.length() <= 0) {
                    return null;
                }
                oJ oJVar = new oJ(new HashMap(), new HashMap());
                for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                    JSONObject optJSONObject = jSONArray.optJSONObject(i10);
                    if (optJSONObject != null && (oJ2 = tB.oJ.oJ(tBVar.dLZ().getContext(), tBVar, optJSONObject, tBVar.BTZ())) != null) {
                        if (oJVar.oJ.containsKey(oJ2.ex())) {
                            List<com.bytedance.adsdk.ugeno.ex.ex.tB> list = oJVar.oJ.get(oJ2.ex());
                            if (list == null) {
                                ArrayList arrayList = new ArrayList();
                                arrayList.add(oJ2);
                                oJVar.oJ.put(oJ2.ex(), arrayList);
                            } else {
                                list.add(oJ2);
                            }
                        } else {
                            ArrayList arrayList2 = new ArrayList();
                            arrayList2.add(oJ2);
                            oJVar.oJ.put(oJ2.ex(), arrayList2);
                        }
                        oJVar.ZYk.put(oJ2.Pfn(), oJ2);
                    }
                }
                return new jFA(tBVar, oJVar);
            } catch (JSONException unused) {
            }
        }
        return null;
    }
}
