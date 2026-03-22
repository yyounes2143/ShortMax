package com.bytedance.adsdk.ugeno;

import android.content.Context;
import android.graphics.Color;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import com.bytedance.adsdk.ugeno.cFZ.so;
import com.bytedance.adsdk.ugeno.core.BTZ;
import com.bytedance.adsdk.ugeno.ex.ba;
import com.bytedance.adsdk.ugeno.ex.jFA;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.startshorts.androidplayer.bean.shorts.SubtitleDataKt;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class ZYk extends com.bytedance.adsdk.ugeno.ZYk.oJ<com.bytedance.adsdk.ugeno.ba.ZYk> implements com.bytedance.adsdk.ugeno.ba.tB {
    private boolean Amz;
    private boolean BWx;
    private boolean JJ;
    private float LE;
    private String MVA;
    private int NX;
    private float Oof;
    private String Qzd;
    private boolean SB;
    private int UUI;
    private int WGj;
    private String XSu;
    private int YF;
    private boolean ZMY;
    private int Zjw;
    private float Zzm;
    private int eW;
    private boolean edj;
    private float hwh;

    /* renamed from: ib  reason: collision with root package name */
    private float f11619ib;

    /* renamed from: oo  reason: collision with root package name */
    private float f11620oo;

    /* renamed from: rg  reason: collision with root package name */
    private float f11621rg;
    private float sQ;
    private float uaj;

    /* renamed from: uq  reason: collision with root package name */
    private float f11622uq;
    private JSONArray yB;
    private boolean ypD;

    public ZYk(Context context) {
        super(context);
        this.YF = 0;
        this.BWx = true;
        this.JJ = true;
        this.hwh = 500.0f;
        this.f11619ib = 2000.0f;
        this.Qzd = "slide";
        this.MVA = "dot";
        this.sQ = 8.0f;
        this.Zzm = 8.0f;
        this.f11620oo = 50.0f;
        this.f11621rg = 90.0f;
        this.ZMY = false;
        this.NX = Color.parseColor("#666666");
        this.Zjw = Color.parseColor(SubtitleDataKt.DEFAULT_SUBTITLE_TEXT_COLOR);
        this.XSu = "row";
        this.Oof = 1.0f;
        this.f11622uq = 0.0f;
        this.uaj = 0.0f;
        this.LE = 0.0f;
        this.WGj = 0;
        this.UUI = 0;
        this.Amz = true;
        this.ypD = false;
        this.SB = true;
        float oJ = so.oJ(this.ZYk, 8.0f);
        this.sQ = oJ;
        this.Zzm = oJ;
    }

    private void LS() {
        List<com.bytedance.adsdk.ugeno.ZYk.tB<View>> list = ((com.bytedance.adsdk.ugeno.ZYk.oJ) this).oJ;
        if (list != null && !list.isEmpty()) {
            com.bytedance.adsdk.ugeno.ZYk.tB<View> tBVar = ((com.bytedance.adsdk.ugeno.ZYk.oJ) this).oJ.get(0);
            if (this.yB == null) {
                return;
            }
            for (int i10 = 0; i10 < this.yB.length(); i10++) {
                BTZ btz = new BTZ(this.ZYk);
                oJ(btz);
                btz.oJ(this.SCr);
                try {
                    JSONObject optJSONObject = this.yB.optJSONObject(i10);
                    if (optJSONObject != null) {
                        if (optJSONObject.has("$chunk")) {
                            this.ex.put("$item", optJSONObject.optJSONArray("$chunk"));
                        } else {
                            this.ex.put("$item", optJSONObject);
                        }
                        ((com.bytedance.adsdk.ugeno.ba.ZYk) this.Pfn).oJ((com.bytedance.adsdk.ugeno.ba.ZYk) btz.oJ(tBVar.LpP(), this.ex, (JSONObject) null));
                    }
                } catch (Throwable unused) {
                }
            }
        }
    }

    private void NO() {
        for (int i10 = 0; i10 < ((com.bytedance.adsdk.ugeno.ZYk.oJ) this).oJ.size(); i10++) {
            com.bytedance.adsdk.ugeno.ZYk.tB<View> tBVar = ((com.bytedance.adsdk.ugeno.ZYk.oJ) this).oJ.get(i10);
            if (tBVar != null) {
                BTZ btz = new BTZ(this.ZYk);
                oJ(btz);
                btz.oJ(this.SCr);
                ((com.bytedance.adsdk.ugeno.ba.ZYk) this.Pfn).oJ((com.bytedance.adsdk.ugeno.ba.ZYk) btz.oJ(tBVar.LpP(), this.ex, (JSONObject) null));
            }
        }
    }

    private void cFZ(int i10) {
        if (this.XQY == null) {
            return;
        }
        if (this.eW == 0 && i10 == jB() - 1) {
            this.XQY.oJ("SwiperView://reloop", 1);
            Log.d("BaseSwiper", "onPageSelected: reloop monitor FIRST_TO_LAST");
        }
        if (this.eW == jB() - 1 && i10 == 0) {
            this.XQY.oJ("SwiperView://reloop", 0);
            Log.d("BaseSwiper", "onPageSelected: reloop monitor LAST_TO_FIRST");
        }
    }

    private int jB() {
        if (this.WGj == 1) {
            List<com.bytedance.adsdk.ugeno.ZYk.tB<View>> list = ((com.bytedance.adsdk.ugeno.ZYk.oJ) this).oJ;
            if (list == null) {
                return 0;
            }
            return list.size();
        }
        JSONArray jSONArray = this.yB;
        if (jSONArray == null) {
            return 0;
        }
        return jSONArray.length();
    }

    private void so(int i10) {
        jFA jfa = this.XQY;
        if (jfa == null) {
            return;
        }
        jfa.oJ("SwiperView://slide", Integer.valueOf(this.eW), Integer.valueOf(i10), Integer.valueOf(!this.edj ? 1 : 0));
    }

    public void ex() {
        ((com.bytedance.adsdk.ugeno.ba.ZYk) this.Pfn).PiB(((com.bytedance.adsdk.ugeno.ba.ZYk) this.Pfn).getCurrentItem() - 1);
    }

    public void tB() {
        ((com.bytedance.adsdk.ugeno.ba.ZYk) this.Pfn).PiB(((com.bytedance.adsdk.ugeno.ba.ZYk) this.Pfn).getCurrentItem() + 1);
    }

    @Override // com.bytedance.adsdk.ugeno.ZYk.oJ, com.bytedance.adsdk.ugeno.ZYk.tB
    public void ZYk() {
        super.ZYk();
        ((com.bytedance.adsdk.ugeno.ba.ZYk) this.Pfn).tB((int) this.hwh).Pfn(this.ypD).oJ(this.MVA).oJ(this.sQ).ZYk(this.Zzm).tB(this.f11620oo).ex(this.f11621rg).ZYk(this.XSu).oJ(this.YF).ZYk().ex(this.BWx).oJ(this.JJ).ZYk((int) this.hwh).ex((int) this.f11619ib).ZYk(this.Amz).tB(this.ZMY).ba(this.NX).Pfn(this.Zjw).so((int) this.uaj).jFA((int) this.LE).cFZ((int) this.f11622uq).Pfn(this.Oof).tB(this.Qzd).PiB(this.UUI);
        ((com.bytedance.adsdk.ugeno.ba.ZYk) this.Pfn).setOnPageChangeListener(this);
        if (this.WGj == 1) {
            NO();
        } else {
            LS();
        }
        ((com.bytedance.adsdk.ugeno.ba.ZYk) this.Pfn).tB();
    }

    @Override // com.bytedance.adsdk.ugeno.ZYk.tB
    public View oJ() {
        com.bytedance.adsdk.ugeno.ba.ZYk zYk = new com.bytedance.adsdk.ugeno.ba.ZYk(this.ZYk);
        this.Pfn = zYk;
        zYk.oJ((ex) this);
        return this.Pfn;
    }

    @Override // com.bytedance.adsdk.ugeno.ZYk.oJ
    public void oJ(com.bytedance.adsdk.ugeno.ZYk.tB tBVar) {
        if (tBVar == null) {
            return;
        }
        ((com.bytedance.adsdk.ugeno.ZYk.oJ) this).oJ.add(tBVar);
    }

    @Override // com.bytedance.adsdk.ugeno.ZYk.oJ
    public void oJ(com.bytedance.adsdk.ugeno.ZYk.tB tBVar, ViewGroup.LayoutParams layoutParams) {
        if (tBVar == null) {
            return;
        }
        ((com.bytedance.adsdk.ugeno.ZYk.oJ) this).oJ.add(tBVar);
    }

    @Override // com.bytedance.adsdk.ugeno.ZYk.tB
    public void oJ(String str, String str2) {
        super.oJ(str, str2);
        if (TextUtils.isEmpty(str)) {
            return;
        }
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -1593646704:
                if (str.equals("startIndex")) {
                    c10 = 0;
                    break;
                }
                break;
            case -1575751020:
                if (str.equals("indicatorColor")) {
                    c10 = 1;
                    break;
                }
                break;
            case -1560813342:
                if (str.equals("indicatorStyle")) {
                    c10 = 2;
                    break;
                }
                break;
            case -1557466889:
                if (str.equals("indicatorWidth")) {
                    c10 = 3;
                    break;
                }
                break;
            case -1469828074:
                if (str.equals("indicatorHeight")) {
                    c10 = 4;
                    break;
                }
                break;
            case -1453344127:
                if (str.equals("nextMargin")) {
                    c10 = 5;
                    break;
                }
                break;
            case -1367379379:
                if (str.equals("driveMode")) {
                    c10 = 6;
                    break;
                }
                break;
            case -1306084975:
                if (str.equals("effect")) {
                    c10 = 7;
                    break;
                }
                break;
            case -962590849:
                if (str.equals(HiAnalyticsConstant.HaKey.BI_KEY_DIRECTION)) {
                    c10 = '\b';
                    break;
                }
                break;
            case -855614293:
                if (str.equals("disableOnInteraction")) {
                    c10 = '\t';
                    break;
                }
                break;
            case -711999985:
                if (str.equals("indicator")) {
                    c10 = '\n';
                    break;
                }
                break;
            case -597162967:
                if (str.equals("indicatorX")) {
                    c10 = 11;
                    break;
                }
                break;
            case -597162966:
                if (str.equals("indicatorY")) {
                    c10 = '\f';
                    break;
                }
                break;
            case -202057851:
                if (str.equals("previousMargin")) {
                    c10 = '\r';
                    break;
                }
                break;
            case 3327652:
                if (str.equals("loop")) {
                    c10 = 14;
                    break;
                }
                break;
            case 95467907:
                if (str.equals("delay")) {
                    c10 = 15;
                    break;
                }
                break;
            case 109641799:
                if (str.equals("speed")) {
                    c10 = 16;
                    break;
                }
                break;
            case 195414576:
                if (str.equals("indicatorDirection")) {
                    c10 = 17;
                    break;
                }
                break;
            case 497874535:
                if (str.equals("allowTouchMove")) {
                    c10 = 18;
                    break;
                }
                break;
            case 857882560:
                if (str.equals("pageCount")) {
                    c10 = 19;
                    break;
                }
                break;
            case 1097821469:
                if (str.equals("pageMargin")) {
                    c10 = 20;
                    break;
                }
                break;
            case 1196931001:
                if (str.equals("indicatorSelectedColor")) {
                    c10 = 21;
                    break;
                }
                break;
            case 1439562083:
                if (str.equals("autoplay")) {
                    c10 = 22;
                    break;
                }
                break;
            case 1788817256:
                if (str.equals("dataList")) {
                    c10 = 23;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                this.UUI = com.bytedance.adsdk.ugeno.cFZ.tB.oJ(str2, 0);
                return;
            case 1:
                this.NX = com.bytedance.adsdk.ugeno.cFZ.oJ.oJ(str2, this.NX);
                return;
            case 2:
                this.MVA = str2;
                return;
            case 3:
                this.sQ = so.oJ(this.ZYk, com.bytedance.adsdk.ugeno.cFZ.tB.oJ(str2, 8.0f));
                return;
            case 4:
                this.Zzm = so.oJ(this.ZYk, com.bytedance.adsdk.ugeno.cFZ.tB.oJ(str2, 8.0f));
                return;
            case 5:
                this.LE = so.oJ(this.ZYk, com.bytedance.adsdk.ugeno.cFZ.tB.oJ(str2, 0.0f));
                return;
            case 6:
                this.WGj = com.bytedance.adsdk.ugeno.cFZ.tB.oJ(str2, 0);
                return;
            case 7:
                this.Qzd = str2;
                return;
            case '\b':
                if (TextUtils.equals(str2, "vertical")) {
                    this.YF = 1;
                    return;
                } else {
                    this.YF = 0;
                    return;
                }
            case '\t':
                this.ypD = com.bytedance.adsdk.ugeno.cFZ.tB.oJ(str2, false);
                return;
            case '\n':
                this.ZMY = com.bytedance.adsdk.ugeno.cFZ.tB.oJ(str2, false);
                return;
            case 11:
                this.f11620oo = com.bytedance.adsdk.ugeno.cFZ.tB.oJ(str2, 50.0f);
                return;
            case '\f':
                this.f11621rg = com.bytedance.adsdk.ugeno.cFZ.tB.oJ(str2, 90.0f);
                return;
            case '\r':
                this.uaj = so.oJ(this.ZYk, com.bytedance.adsdk.ugeno.cFZ.tB.oJ(str2, 0.0f));
                return;
            case 14:
                this.BWx = com.bytedance.adsdk.ugeno.cFZ.tB.oJ(str2, true);
                return;
            case 15:
                this.f11619ib = com.bytedance.adsdk.ugeno.cFZ.tB.oJ(str2, 2000.0f);
                return;
            case 16:
                this.hwh = com.bytedance.adsdk.ugeno.cFZ.tB.oJ(str2, 500.0f);
                return;
            case 17:
                this.XSu = str2;
                return;
            case 18:
                this.Amz = com.bytedance.adsdk.ugeno.cFZ.tB.oJ(str2, true);
                return;
            case 19:
                this.Oof = com.bytedance.adsdk.ugeno.cFZ.tB.oJ(str2, 1.0f);
                return;
            case 20:
                this.f11622uq = so.oJ(this.ZYk, com.bytedance.adsdk.ugeno.cFZ.tB.oJ(str2, 0.0f));
                return;
            case 21:
                this.Zjw = com.bytedance.adsdk.ugeno.cFZ.oJ.oJ(str2, this.Zjw);
                return;
            case 22:
                this.JJ = com.bytedance.adsdk.ugeno.cFZ.tB.oJ(str2, true);
                return;
            case 23:
                this.yB = com.bytedance.adsdk.ugeno.cFZ.ZYk.oJ(str2, (JSONArray) null);
                return;
            default:
                return;
        }
    }

    public void oJ(int i10) {
        if (((com.bytedance.adsdk.ugeno.ba.ZYk) this.Pfn).getCurrentItem() != i10) {
            ((com.bytedance.adsdk.ugeno.ba.ZYk) this.Pfn).PiB(i10);
        }
    }

    @Override // com.bytedance.adsdk.ugeno.ba.tB
    public void oJ(boolean z10, int i10, float f10, int i11) {
        Log.d("BaseSwiper", "onPageScrolled: loop=" + z10 + "; position=" + i10 + "; positionOffset=" + f10 + "; positionOffsetPixels=" + i11);
        oJ(z10, i10, f10);
    }

    @Override // com.bytedance.adsdk.ugeno.ba.tB
    public void oJ(boolean z10, int i10, int i11, boolean z11, boolean z12) {
        if (this.eW != i10) {
            cFZ(i10);
            so(i10);
            this.eW = i10;
        }
        Log.d("BaseSwiper", "onPageSelected: loop=" + z10 + "; position=" + i10 + "; loopPosition=" + i11 + "; isFirst=" + z11 + "; isLast=" + z12);
    }

    @Override // com.bytedance.adsdk.ugeno.ba.tB
    public void oJ(boolean z10, int i10) {
        if (i10 == 0) {
            if (!z10) {
                this.SB = true;
            }
            this.edj = false;
        } else if (i10 == 1) {
            this.edj = true;
        }
        Log.d("BaseSwiper", "onPageScrollStateChanged: loop=" + z10 + "; state=" + i10);
    }

    private void oJ(boolean z10, int i10, float f10) {
        if (this.XQY != null && !z10 && i10 == jB() - 1 && f10 == 0.0f && this.SB) {
            this.XQY.oJ("SwiperView://finish", new Object[0]);
            Log.d("BaseSwiper", "onPageScrolled: finish monitor");
            this.SB = false;
        }
    }

    private void oJ(BTZ btz) {
        if (this.ypD) {
            btz.oJ(new com.bytedance.adsdk.ugeno.core.Pfn() { // from class: com.bytedance.adsdk.ugeno.ZYk.1
                @Override // com.bytedance.adsdk.ugeno.core.Pfn
                public void oJ(com.bytedance.adsdk.ugeno.ZYk.tB tBVar, String str, List<ba.oJ> list) {
                    if ((TextUtils.equals(str, "tap") || TextUtils.equals(str, "slide") || TextUtils.equals(str, "touchStart") || TextUtils.equals(str, "touchEnd")) && ((com.bytedance.adsdk.ugeno.ZYk.tB) ZYk.this).Pfn != null) {
                        ((com.bytedance.adsdk.ugeno.ba.ZYk) ((com.bytedance.adsdk.ugeno.ZYk.tB) ZYk.this).Pfn).ba();
                    }
                }
            });
        }
    }
}
