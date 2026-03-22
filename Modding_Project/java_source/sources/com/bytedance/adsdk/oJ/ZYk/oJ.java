package com.bytedance.adsdk.oJ.ZYk;

import com.bytedance.adsdk.oJ.ZYk.tB.oJ.Pfn;
import com.bytedance.adsdk.oJ.ZYk.tB.oJ.ZYk;
import com.bytedance.adsdk.oJ.ZYk.tB.oJ.ba;
import com.bytedance.adsdk.oJ.ZYk.tB.oJ.cFZ;
import com.bytedance.adsdk.oJ.ZYk.tB.oJ.ex;
import com.bytedance.adsdk.oJ.ZYk.tB.oJ.jFA;
import com.bytedance.adsdk.oJ.ZYk.tB.oJ.kkU;
import com.bytedance.adsdk.oJ.ZYk.tB.oJ.so;
import com.bytedance.adsdk.oJ.ZYk.tB.oJ.tB;
import java.util.ArrayList;
import java.util.Deque;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class oJ {
    private static final com.bytedance.adsdk.oJ.ZYk.tB.oJ oJ;
    private String Pfn;
    private final com.bytedance.adsdk.oJ.ZYk.tB.oJ ZYk;
    private Deque<com.bytedance.adsdk.oJ.ZYk.ZYk.oJ> ex = new LinkedList();
    private com.bytedance.adsdk.oJ.ZYk.ZYk.oJ tB;

    static {
        int i10 = 8;
        ba[] baVarArr = {new kkU(), new ex(), new jFA(), new ZYk(), new Pfn(), new com.bytedance.adsdk.oJ.ZYk.tB.oJ.oJ(), new cFZ(), new tB(), new so()};
        final com.bytedance.adsdk.oJ.ZYk.tB.oJ oJVar = new com.bytedance.adsdk.oJ.ZYk.tB.oJ() { // from class: com.bytedance.adsdk.oJ.ZYk.oJ.1
            @Override // com.bytedance.adsdk.oJ.ZYk.tB.oJ
            public int oJ(String str, int i11, Deque<com.bytedance.adsdk.oJ.ZYk.ZYk.oJ> deque) {
                return i11;
            }
        };
        while (i10 >= 0) {
            final ba baVar = baVarArr[i10];
            i10--;
            oJVar = new com.bytedance.adsdk.oJ.ZYk.tB.oJ() { // from class: com.bytedance.adsdk.oJ.ZYk.oJ.2
                @Override // com.bytedance.adsdk.oJ.ZYk.tB.oJ
                public int oJ(String str, int i11, Deque<com.bytedance.adsdk.oJ.ZYk.ZYk.oJ> deque) {
                    return ba.this.oJ(str, i11, deque, oJVar);
                }
            };
        }
        oJ = oJVar;
    }

    private oJ(String str, com.bytedance.adsdk.oJ.ZYk.tB.oJ oJVar) {
        this.ZYk = oJVar;
        this.Pfn = str;
        try {
            oJ();
        } catch (Exception e10) {
            throw new com.bytedance.adsdk.oJ.oJ.ZYk(str, e10);
        }
    }

    public static oJ oJ(String str) {
        return new oJ(str, oJ);
    }

    private void oJ() {
        int length = this.Pfn.length();
        int i10 = 0;
        while (i10 < length) {
            int oJ2 = this.ZYk.oJ(this.Pfn, i10, this.ex);
            if (oJ2 == i10) {
                throw new IllegalArgumentException("Unrecognized expression, unrecognized characters encountered during parsing:" + this.Pfn.substring(0, i10));
            }
            i10 = oJ2;
        }
        ArrayList arrayList = new ArrayList();
        while (true) {
            com.bytedance.adsdk.oJ.ZYk.ZYk.oJ pollFirst = this.ex.pollFirst();
            if (pollFirst != null) {
                arrayList.add(0, pollFirst);
            } else {
                this.tB = com.bytedance.adsdk.oJ.ZYk.Pfn.ZYk.oJ(arrayList, this.Pfn, i10);
                this.ex = null;
                return;
            }
        }
    }

    public <T> T oJ(JSONObject jSONObject) {
        HashMap hashMap = new HashMap();
        hashMap.put("default_key", jSONObject);
        return (T) oJ(hashMap);
    }

    public <T> T oJ(Map<String, JSONObject> map) {
        return (T) this.tB.oJ(map);
    }
}
