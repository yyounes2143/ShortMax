package com.bytedance.sdk.openadsdk.core;

import android.text.TextUtils;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes3.dex */
public class HL {
    public static ConcurrentHashMap<Integer, HL> oJ = new ConcurrentHashMap<>();
    private int Pfn;

    /* renamed from: ba  reason: collision with root package name */
    private String f13090ba;
    private int ex;
    private String ZYk = "";
    private String tB = "";

    private void ba() {
        this.ZYk = "";
        this.tB = "";
        this.ex = 0;
        this.Pfn = 0;
    }

    public int Pfn() {
        return this.Pfn;
    }

    public String ZYk() {
        return this.ZYk;
    }

    public int ex() {
        return this.ex;
    }

    public String oJ() {
        return this.f13090ba;
    }

    public String tB() {
        return this.tB;
    }

    public static void tB(int i10) {
        HL hl2;
        if (i10 == 0) {
            return;
        }
        if (oJ == null) {
            oJ = new ConcurrentHashMap<>();
        }
        if (!oJ.containsKey(Integer.valueOf(i10)) || (hl2 = oJ.get(Integer.valueOf(i10))) == null) {
            return;
        }
        hl2.ZYk(1);
    }

    public void ZYk(int i10) {
        this.Pfn = i10;
    }

    public void oJ(int i10) {
        this.ex = i10;
    }

    public static void ZYk(com.bytedance.sdk.openadsdk.core.model.cY cYVar) {
        if (cYVar == null || TextUtils.isEmpty(cYVar.pe())) {
            return;
        }
        int uv = cYVar.uv();
        Integer valueOf = Integer.valueOf(uv);
        if (uv == 0) {
            return;
        }
        if (oJ == null) {
            oJ = new ConcurrentHashMap<>();
        }
        HL hl2 = oJ.containsKey(valueOf) ? oJ.get(valueOf) : null;
        if (hl2 == null) {
            hl2 = new HL();
        }
        String iPr = cYVar.iPr();
        if (TextUtils.isEmpty(iPr) || !iPr.equals(hl2.oJ())) {
            hl2.ba();
            hl2.oJ(cYVar);
            oJ.put(valueOf, hl2);
        }
    }

    public void oJ(com.bytedance.sdk.openadsdk.core.model.cY cYVar) {
        if (cYVar != null) {
            String iPr = cYVar.iPr();
            if (!TextUtils.isEmpty(iPr)) {
                this.f13090ba = iPr;
            }
            String Oof = cYVar.Oof();
            if (TextUtils.isEmpty(Oof) && cYVar.Br()) {
                Oof = cYVar.Du().jFA();
            }
            if (!TextUtils.isEmpty(Oof)) {
                String[] split = Oof.split(DomExceptionUtils.SEPARATOR);
                if (split.length >= 3) {
                    this.ZYk = split[2];
                }
            }
            if (cYVar.Wd() == null || TextUtils.isEmpty(cYVar.Wd().tB())) {
                return;
            }
            this.tB = cYVar.Wd().tB();
        }
    }

    public static void tB(com.bytedance.sdk.openadsdk.core.model.cY cYVar) {
        HL hl2;
        if (cYVar == null) {
            return;
        }
        int uv = cYVar.uv();
        Integer valueOf = Integer.valueOf(uv);
        if (uv == 0) {
            return;
        }
        if (oJ == null) {
            oJ = new ConcurrentHashMap<>();
        }
        if (!oJ.containsKey(valueOf) || (hl2 = oJ.get(valueOf)) == null) {
            return;
        }
        hl2.oJ(1);
    }
}
