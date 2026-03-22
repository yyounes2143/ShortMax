package com.bytedance.sdk.component.adexpress.dynamic.Pfn;

import android.text.TextUtils;
import com.bytedance.sdk.component.adexpress.ZYk.PiB;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.ss.texturerender.TextureRenderKeys;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class ZYk {
    private double Pfn;

    /* renamed from: ba  reason: collision with root package name */
    private int f12669ba;
    private double cFZ;
    private PiB jFA;

    /* renamed from: so  reason: collision with root package name */
    private String f12670so;
    public Map<String, tB> oJ = new HashMap();
    public Map<String, tB> ZYk = new HashMap();
    public Map<String, tB> tB = new HashMap();
    private double ex = Math.random();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bytedance.sdk.component.adexpress.dynamic.Pfn.ZYk$ZYk  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static class C0168ZYk {
        float Pfn;
        int ZYk;
        double ex;
        float oJ;
        int tB;

        C0168ZYk() {
        }

        static JSONObject oJ(C0168ZYk c0168ZYk) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put(TtmlNode.ATTR_TTS_FONT_SIZE, c0168ZYk.oJ);
                jSONObject.put("letterSpacing", c0168ZYk.ZYk);
                jSONObject.put("lineHeight", c0168ZYk.ex);
                jSONObject.put("maxWidth", c0168ZYk.Pfn);
                jSONObject.put(TtmlNode.ATTR_TTS_FONT_WEIGHT, c0168ZYk.tB);
            } catch (JSONException unused) {
            }
            return jSONObject;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class oJ implements Cloneable {
        boolean ZYk;
        float oJ;
        float tB;

        oJ() {
        }

        public Object clone() {
            try {
                return (oJ) super.clone();
            } catch (CloneNotSupportedException unused) {
                return null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class tB {
        float ZYk;
        float oJ;

        public tB() {
        }

        public String toString() {
            return "UnitSize{width=" + this.oJ + ", height=" + this.ZYk + '}';
        }

        public tB(float f10, float f11) {
            this.oJ = f10;
            this.ZYk = f11;
        }
    }

    public ZYk(double d10, int i10, double d11, String str, PiB piB) {
        this.Pfn = d10;
        this.f12669ba = i10;
        this.cFZ = d11;
        this.f12670so = str;
        this.jFA = piB;
    }

    private tB Pfn(com.bytedance.sdk.component.adexpress.dynamic.ex.so soVar, float f10, float f11) {
        String str = soVar.tB() + "_" + f10 + "_" + f11;
        if (this.tB.containsKey(str)) {
            return this.tB.get(str);
        }
        tB ba2 = ba(soVar, f10, f11);
        this.tB.put(str, ba2);
        return ba2;
    }

    private tB ba(com.bytedance.sdk.component.adexpress.dynamic.ex.so soVar, float f10, float f11) {
        new tB();
        com.bytedance.sdk.component.adexpress.dynamic.ex.ba Pfn = soVar.kkU().Pfn();
        soVar.kkU().tB();
        Pfn.LS();
        float Ry = Pfn.Ry();
        int oTd = Pfn.oTd();
        double mwH = Pfn.mwH();
        int NO = Pfn.NO();
        boolean Jm = Pfn.Jm();
        boolean jB = Pfn.jB();
        int Qu = Pfn.Qu();
        C0168ZYk c0168ZYk = new C0168ZYk();
        c0168ZYk.oJ = Ry;
        c0168ZYk.ZYk = oTd;
        c0168ZYk.tB = NO;
        c0168ZYk.ex = mwH;
        c0168ZYk.Pfn = f10;
        return oJ(soVar.kkU().tB(), c0168ZYk, Jm, jB, Qu, soVar);
    }

    public tB ZYk(com.bytedance.sdk.component.adexpress.dynamic.ex.so soVar, float f10, float f11) {
        tB tBVar = new tB();
        if (soVar.kkU().Pfn() == null) {
            return tBVar;
        }
        tB Pfn = Pfn(soVar, f10, f11);
        float f12 = Pfn.oJ;
        float f13 = Pfn.ZYk;
        tBVar.oJ = Math.min(f12, f10);
        tBVar.ZYk = Math.min(f13, f11);
        return tBVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00ec  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0115  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0120  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.bytedance.sdk.component.adexpress.dynamic.Pfn.ZYk.tB ex(com.bytedance.sdk.component.adexpress.dynamic.ex.so r21, float r22, float r23) {
        /*
            Method dump skipped, instructions count: 331
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.component.adexpress.dynamic.Pfn.ZYk.ex(com.bytedance.sdk.component.adexpress.dynamic.ex.so, float, float):com.bytedance.sdk.component.adexpress.dynamic.Pfn.ZYk$tB");
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00d9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.bytedance.sdk.component.adexpress.dynamic.Pfn.ZYk.tB oJ(com.bytedance.sdk.component.adexpress.dynamic.ex.so r13, float r14, float r15) {
        /*
            r12 = this;
            com.bytedance.sdk.component.adexpress.dynamic.ex.Pfn r0 = r13.kkU()
            java.lang.String r0 = r0.tB()
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            r1 = 0
            if (r0 == 0) goto L23
            com.bytedance.sdk.component.adexpress.dynamic.ex.Pfn r0 = r13.kkU()
            com.bytedance.sdk.component.adexpress.dynamic.ex.ba r0 = r0.Pfn()
            java.lang.String r0 = r0.UK()
            if (r0 != 0) goto L23
            com.bytedance.sdk.component.adexpress.dynamic.Pfn.ZYk$tB r13 = new com.bytedance.sdk.component.adexpress.dynamic.Pfn.ZYk$tB
            r13.<init>(r1, r1)
            return r13
        L23:
            com.bytedance.sdk.component.adexpress.dynamic.ex.Pfn r0 = r13.kkU()
            java.lang.String r0 = r0.ZYk()
            java.lang.String r2 = "creative-playable-bait"
            boolean r0 = android.text.TextUtils.equals(r0, r2)
            if (r0 == 0) goto L39
            com.bytedance.sdk.component.adexpress.dynamic.Pfn.ZYk$tB r13 = new com.bytedance.sdk.component.adexpress.dynamic.Pfn.ZYk$tB
            r13.<init>(r1, r1)
            return r13
        L39:
            float r0 = r13.so()
            float r1 = r13.jFA()
            com.bytedance.sdk.component.adexpress.dynamic.ex.Pfn r2 = r13.kkU()
            com.bytedance.sdk.component.adexpress.dynamic.ex.ba r2 = r2.Pfn()
            java.lang.String r3 = r2.IUZ()
            java.lang.String r2 = r2.HL()
            int r4 = r13.PiB()
            float r4 = (float) r4
            int r5 = r13.WcQ()
            float r5 = (float) r5
            float r6 = r13.awB()
            float r7 = r13.eZI()
            java.lang.String r8 = "fixed"
            boolean r9 = android.text.TextUtils.equals(r3, r8)
            java.lang.String r10 = "flex"
            java.lang.String r11 = "auto"
            if (r9 == 0) goto L86
            float r14 = java.lang.Math.min(r0, r14)
            boolean r0 = android.text.TextUtils.equals(r2, r11)
            if (r0 == 0) goto Lb7
            float r0 = r14 - r6
            float r1 = r15 - r7
            com.bytedance.sdk.component.adexpress.dynamic.Pfn.ZYk$tB r13 = r12.ZYk(r13, r0, r1)
            float r13 = r13.ZYk
        L83:
            float r1 = r13 + r7
            goto Lb7
        L86:
            boolean r9 = android.text.TextUtils.equals(r3, r11)
            if (r9 == 0) goto L9f
            float r14 = r14 - r6
            float r0 = r15 - r7
            com.bytedance.sdk.component.adexpress.dynamic.Pfn.ZYk$tB r13 = r12.ZYk(r13, r14, r0)
            float r14 = r13.oJ
            float r14 = r14 + r6
            boolean r0 = android.text.TextUtils.equals(r2, r11)
            if (r0 == 0) goto Lb7
            float r13 = r13.ZYk
            goto L83
        L9f:
            boolean r3 = android.text.TextUtils.equals(r3, r10)
            if (r3 == 0) goto Lb6
            boolean r0 = android.text.TextUtils.equals(r2, r11)
            if (r0 == 0) goto Lb7
            float r0 = r14 - r6
            float r1 = r15 - r7
            com.bytedance.sdk.component.adexpress.dynamic.Pfn.ZYk$tB r13 = r12.ZYk(r13, r0, r1)
            float r13 = r13.ZYk
            goto L83
        Lb6:
            r14 = r0
        Lb7:
            java.lang.String r13 = "scale"
            boolean r13 = android.text.TextUtils.equals(r2, r13)
            if (r13 == 0) goto Ld9
            float r13 = r14 - r4
            float r13 = r13 / r1
            int r13 = java.lang.Math.round(r13)
            float r13 = (float) r13
            float r13 = r13 + r5
            int r0 = (r13 > r15 ? 1 : (r13 == r15 ? 0 : -1))
            if (r0 <= 0) goto Ld7
            float r13 = r15 - r5
            float r13 = r13 * r1
            int r13 = java.lang.Math.round(r13)
            float r13 = (float) r13
            float r14 = r13 + r4
            goto Led
        Ld7:
            r15 = r13
            goto Led
        Ld9:
            boolean r13 = android.text.TextUtils.equals(r2, r8)
            if (r13 == 0) goto Le5
            float r1 = r1 + r5
            float r15 = java.lang.Math.min(r1, r15)
            goto Led
        Le5:
            boolean r13 = android.text.TextUtils.equals(r2, r10)
            if (r13 == 0) goto Lec
            goto Led
        Lec:
            r15 = r1
        Led:
            com.bytedance.sdk.component.adexpress.dynamic.Pfn.ZYk$tB r13 = new com.bytedance.sdk.component.adexpress.dynamic.Pfn.ZYk$tB
            r13.<init>()
            r13.oJ = r14
            r13.ZYk = r15
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.component.adexpress.dynamic.Pfn.ZYk.oJ(com.bytedance.sdk.component.adexpress.dynamic.ex.so, float, float):com.bytedance.sdk.component.adexpress.dynamic.Pfn.ZYk$tB");
    }

    public tB tB(com.bytedance.sdk.component.adexpress.dynamic.ex.so soVar, float f10, float f11) {
        if (soVar == null) {
            return null;
        }
        tB oJ2 = oJ(soVar);
        if (oJ2 == null || (oJ2.oJ == 0.0f && oJ2.ZYk == 0.0f)) {
            tB ex = ex(soVar, f10, f11);
            oJ(soVar, ex);
            return ex;
        }
        return oJ2;
    }

    private tB tB(List<com.bytedance.sdk.component.adexpress.dynamic.ex.so> list, float f10, float f11) {
        float f12;
        ex(list);
        tB tBVar = new tB();
        ArrayList<com.bytedance.sdk.component.adexpress.dynamic.ex.so> arrayList = new ArrayList();
        ArrayList<com.bytedance.sdk.component.adexpress.dynamic.ex.so> arrayList2 = new ArrayList();
        for (com.bytedance.sdk.component.adexpress.dynamic.ex.so soVar : list) {
            com.bytedance.sdk.component.adexpress.dynamic.ex.ba Pfn = soVar.kkU().Pfn();
            if (Pfn.yz() == 1 || Pfn.yz() == 2) {
                arrayList.add(soVar);
            }
            if (Pfn.yz() != 1 && Pfn.yz() != 2) {
                arrayList2.add(soVar);
            }
        }
        for (com.bytedance.sdk.component.adexpress.dynamic.ex.so soVar2 : arrayList) {
            tB(soVar2, f10, f11);
        }
        if (arrayList2.size() <= 0) {
            return tBVar;
        }
        ArrayList arrayList3 = new ArrayList();
        for (com.bytedance.sdk.component.adexpress.dynamic.ex.so soVar3 : arrayList2) {
            arrayList3.add(Float.valueOf(tB(soVar3, f10, f11).oJ));
        }
        ArrayList arrayList4 = new ArrayList();
        int i10 = 0;
        while (true) {
            if (i10 >= arrayList2.size()) {
                break;
            }
            com.bytedance.sdk.component.adexpress.dynamic.ex.so soVar4 = arrayList2.get(i10);
            String IUZ = soVar4.kkU().Pfn().IUZ();
            float so2 = soVar4.so();
            boolean equals = TextUtils.equals(IUZ, "flex");
            if (TextUtils.equals(IUZ, "auto")) {
                List<List<com.bytedance.sdk.component.adexpress.dynamic.ex.so>> si2 = soVar4.si();
                if (si2 != null && si2.size() > 0) {
                    for (List<com.bytedance.sdk.component.adexpress.dynamic.ex.so> list2 : si2) {
                        if (ZYk(list2)) {
                            equals = true;
                            break;
                        }
                    }
                }
                equals = false;
            }
            oJ oJVar = new oJ();
            if (!equals) {
                so2 = ((Float) arrayList3.get(i10)).floatValue();
            }
            oJVar.oJ = so2;
            oJVar.ZYk = !equals;
            if (equals) {
                f12 = ((Float) arrayList3.get(i10)).floatValue();
            }
            oJVar.tB = f12;
            arrayList4.add(oJVar);
            i10++;
        }
        oJ(arrayList4, f10, arrayList2);
        List<oJ> oJ2 = kkU.oJ(f10, arrayList4);
        float f13 = 0.0f;
        for (int i11 = 0; i11 < arrayList2.size(); i11++) {
            f13 += oJ2.get(i11).oJ;
            if (((Float) arrayList3.get(i11)).floatValue() != oJ2.get(i11).oJ) {
                ex(arrayList2.get(i11));
            }
        }
        Iterator<com.bytedance.sdk.component.adexpress.dynamic.ex.so> it = arrayList2.iterator();
        int i12 = 0;
        boolean z10 = false;
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            i12++;
            if (!ZYk(it.next())) {
                z10 = false;
                break;
            } else if (i12 == arrayList2.size()) {
                z10 = true;
            }
        }
        f12 = z10 ? f11 : 0.0f;
        ArrayList<tB> arrayList5 = new ArrayList();
        for (int i13 = 0; i13 < arrayList2.size(); i13++) {
            com.bytedance.sdk.component.adexpress.dynamic.ex.so soVar5 = arrayList2.get(i13);
            tB tB2 = tB(soVar5, oJ2.get(i13).oJ, f11);
            if (!ZYk(soVar5)) {
                f12 = Math.max(f12, tB2.ZYk);
            }
            arrayList5.add(tB2);
        }
        ArrayList arrayList6 = new ArrayList();
        for (tB tBVar2 : arrayList5) {
            arrayList6.add(Float.valueOf(tBVar2.ZYk));
        }
        if (!z10) {
            for (int i14 = 0; i14 < arrayList2.size(); i14++) {
                com.bytedance.sdk.component.adexpress.dynamic.ex.so soVar6 = arrayList2.get(i14);
                if (ZYk(soVar6) && ((Float) arrayList6.get(i14)).floatValue() != f12) {
                    ex(soVar6);
                    tB(soVar6, oJ2.get(i14).oJ, f12);
                }
            }
        }
        tBVar.oJ = f13;
        tBVar.ZYk = f12;
        return tBVar;
    }

    private boolean ZYk(List<com.bytedance.sdk.component.adexpress.dynamic.ex.so> list) {
        List<List<com.bytedance.sdk.component.adexpress.dynamic.ex.so>> si2;
        for (com.bytedance.sdk.component.adexpress.dynamic.ex.so soVar : list) {
            if (TextUtils.equals(soVar.kkU().Pfn().IUZ(), "flex")) {
                return true;
            }
        }
        while (true) {
            boolean z10 = false;
            for (com.bytedance.sdk.component.adexpress.dynamic.ex.so soVar2 : list) {
                if (TextUtils.equals(soVar2.kkU().Pfn().IUZ(), "auto") && (si2 = soVar2.si()) != null) {
                    int i10 = 0;
                    for (List<com.bytedance.sdk.component.adexpress.dynamic.ex.so> list2 : si2) {
                        i10++;
                        if (!ZYk(list2)) {
                            break;
                        } else if (i10 == list2.size()) {
                            z10 = true;
                        }
                    }
                    continue;
                }
            }
            return z10;
        }
    }

    private String Pfn(com.bytedance.sdk.component.adexpress.dynamic.ex.so soVar) {
        return soVar.tB();
    }

    private tB ZYk(List<com.bytedance.sdk.component.adexpress.dynamic.ex.so> list, float f10, float f11) {
        tB oJ2 = oJ(list);
        if (oJ2 == null || (oJ2.oJ == 0.0f && oJ2.ZYk == 0.0f)) {
            tB tB2 = tB(list, f10, f11);
            oJ(list, tB2);
            return tB2;
        }
        return oJ2;
    }

    private boolean ZYk(com.bytedance.sdk.component.adexpress.dynamic.ex.so soVar) {
        if (soVar == null) {
            return false;
        }
        if (TextUtils.equals(soVar.kkU().Pfn().HL(), "flex")) {
            return true;
        }
        return tB(soVar);
    }

    private tB oJ(String str, C0168ZYk c0168ZYk, boolean z10, boolean z11, int i10, com.bytedance.sdk.component.adexpress.dynamic.ex.so soVar) {
        return dLZ.oJ(str, soVar.kkU().ZYk(), C0168ZYk.oJ(c0168ZYk).toString(), z10, z11, i10, soVar, this.Pfn, this.f12669ba, this.cFZ, this.f12670so, this.jFA);
    }

    private void oJ(List<List<com.bytedance.sdk.component.adexpress.dynamic.ex.so>> list, float f10, float f11) {
        if (list == null || list.size() <= 0) {
            return;
        }
        boolean z10 = false;
        for (List<com.bytedance.sdk.component.adexpress.dynamic.ex.so> list2 : list) {
            if (oJ(list2, false)) {
                z10 = true;
            }
        }
        ArrayList arrayList = new ArrayList();
        for (List<com.bytedance.sdk.component.adexpress.dynamic.ex.so> list3 : list) {
            oJ oJVar = new oJ();
            boolean oJ2 = oJ(list3, !z10);
            oJVar.oJ = oJ2 ? 1.0f : ZYk(list3, f10, f11).ZYk;
            oJVar.ZYk = !oJ2;
            arrayList.add(oJVar);
        }
        List<oJ> oJ3 = kkU.oJ(f11, arrayList);
        for (int i10 = 0; i10 < list.size(); i10++) {
            if (((oJ) arrayList.get(i10)).oJ != oJ3.get(i10).oJ) {
                List<com.bytedance.sdk.component.adexpress.dynamic.ex.so> list4 = list.get(i10);
                tB(list4);
                ZYk(list4, f10, oJ3.get(i10).oJ);
            }
        }
    }

    private void ex(com.bytedance.sdk.component.adexpress.dynamic.ex.so soVar) {
        this.oJ.remove(Pfn(soVar));
        List<List<com.bytedance.sdk.component.adexpress.dynamic.ex.so>> si2 = soVar.si();
        if (si2 == null || si2.size() <= 0) {
            return;
        }
        for (List<com.bytedance.sdk.component.adexpress.dynamic.ex.so> list : si2) {
            tB(list);
        }
    }

    private String ex(List<com.bytedance.sdk.component.adexpress.dynamic.ex.so> list) {
        StringBuilder sb2 = new StringBuilder();
        for (int i10 = 0; i10 < list.size(); i10++) {
            String tB2 = list.get(i10).tB();
            if (i10 < list.size() - 1) {
                sb2.append(tB2);
                sb2.append("-");
            } else {
                sb2.append(tB2);
            }
        }
        return sb2.toString();
    }

    private boolean oJ(List<com.bytedance.sdk.component.adexpress.dynamic.ex.so> list, boolean z10) {
        for (com.bytedance.sdk.component.adexpress.dynamic.ex.so soVar : list) {
            com.bytedance.sdk.component.adexpress.dynamic.ex.ba Pfn = soVar.kkU().Pfn();
            String HL = Pfn.HL();
            if (TextUtils.equals(HL, "flex") || (z10 && ((TextUtils.equals(Pfn.IUZ(), "flex") && TextUtils.equals(Pfn.HL(), TextureRenderKeys.KEY_IS_SCALE) && com.bytedance.sdk.component.adexpress.dynamic.ex.Pfn.oJ.get(soVar.kkU().ZYk()).intValue() == 7) || TextUtils.equals(HL, "flex")))) {
                return true;
            }
        }
        for (com.bytedance.sdk.component.adexpress.dynamic.ex.so soVar2 : list) {
            if (tB(soVar2)) {
                return true;
            }
        }
        return false;
    }

    private boolean tB(com.bytedance.sdk.component.adexpress.dynamic.ex.so soVar) {
        List<List<com.bytedance.sdk.component.adexpress.dynamic.ex.so>> si2;
        if (!soVar.Ry() && TextUtils.equals(soVar.kkU().Pfn().HL(), "auto") && (si2 = soVar.si()) != null && si2.size() > 0) {
            if (si2.size() == 1) {
                for (com.bytedance.sdk.component.adexpress.dynamic.ex.so soVar2 : si2.get(0)) {
                    if (!ZYk(soVar2)) {
                        return false;
                    }
                }
                return true;
            }
            for (List<com.bytedance.sdk.component.adexpress.dynamic.ex.so> list : si2) {
                if (oJ(list, true)) {
                    return true;
                }
            }
        }
        return false;
    }

    private void oJ(List<oJ> list, float f10, List<com.bytedance.sdk.component.adexpress.dynamic.ex.so> list2) {
        float f11 = 0.0f;
        for (oJ oJVar : list) {
            if (oJVar.ZYk) {
                f11 += oJVar.oJ;
            }
        }
        if (f11 > f10) {
            int i10 = 0;
            for (int i11 = 0; i11 < list2.size(); i11++) {
                if (list.get(i11).ZYk && list2.get(i11).Id()) {
                    i10++;
                }
            }
            if (i10 > 0) {
                float ceil = (float) (Math.ceil(((f11 - f10) / i10) * 1000.0f) / 1000.0d);
                for (int i12 = 0; i12 < list2.size(); i12++) {
                    oJ oJVar2 = list.get(i12);
                    if (oJVar2.ZYk && list2.get(i12).Id()) {
                        oJVar2.oJ -= ceil;
                    }
                }
            }
        }
    }

    private void tB(List<com.bytedance.sdk.component.adexpress.dynamic.ex.so> list) {
        if (list == null || list.size() <= 0) {
            return;
        }
        this.ZYk.remove(ex(list));
        for (com.bytedance.sdk.component.adexpress.dynamic.ex.so soVar : list) {
            ex(soVar);
        }
    }

    public void oJ() {
        this.tB.clear();
        this.oJ.clear();
        this.ZYk.clear();
    }

    public tB oJ(com.bytedance.sdk.component.adexpress.dynamic.ex.so soVar) {
        return this.oJ.get(Pfn(soVar));
    }

    public tB oJ(List<com.bytedance.sdk.component.adexpress.dynamic.ex.so> list) {
        return this.ZYk.get(ex(list));
    }

    private void oJ(com.bytedance.sdk.component.adexpress.dynamic.ex.so soVar, tB tBVar) {
        this.oJ.put(Pfn(soVar), tBVar);
    }

    private void oJ(List<com.bytedance.sdk.component.adexpress.dynamic.ex.so> list, tB tBVar) {
        this.ZYk.put(ex(list), tBVar);
    }
}
