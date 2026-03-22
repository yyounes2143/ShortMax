package com.bytedance.sdk.component.ba.oJ.ba;

import android.text.TextUtils;
import java.util.Map;
/* loaded from: classes3.dex */
public class ex {
    private final int Pfn;
    private final String ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private final String f12753ba;
    private String cFZ;
    private boolean dLZ;
    private int ex = -1;
    private int jFA = 0;
    private String kkU = null;
    private final String oJ;

    /* renamed from: so  reason: collision with root package name */
    private String f12754so;
    private final boolean tB;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ex(String str, String str2, boolean z10, int i10, String str3) {
        this.oJ = str;
        this.ZYk = str2;
        this.tB = z10;
        this.Pfn = i10;
        this.f12753ba = str3;
    }

    public int Pfn() {
        return this.Pfn;
    }

    public String ZYk() {
        return this.ZYk;
    }

    public String ba() {
        return this.f12753ba;
    }

    public String cFZ() {
        return this.cFZ;
    }

    public boolean dLZ() {
        if (this.ex == -1) {
            return true;
        }
        return false;
    }

    public int ex() {
        return this.ex;
    }

    public String jFA() {
        return this.f12754so;
    }

    public boolean kkU() {
        return this.dLZ;
    }

    public String oJ() {
        return this.oJ;
    }

    public int so() {
        return this.jFA;
    }

    public boolean tB() {
        return this.tB;
    }

    public void ZYk(int i10) {
        this.jFA = i10;
        if (i10 == 0) {
            return;
        }
        if (TextUtils.isEmpty(this.cFZ)) {
            this.cFZ = String.valueOf(this.jFA);
            return;
        }
        this.cFZ += "," + this.jFA;
    }

    public void oJ(int i10) {
        this.ex = i10;
    }

    public void tB(String str) {
        this.kkU = str;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (TextUtils.isEmpty(this.f12754so)) {
            this.f12754so = String.valueOf(this.kkU);
            return;
        }
        this.f12754so += "," + this.kkU;
    }

    public void oJ(String str) {
        this.cFZ = str;
    }

    public void oJ(boolean z10) {
        this.dLZ = z10;
    }

    public Runnable oJ(String str, Map<String, String> map) {
        return oJ.oJ().oJ(this, str, map);
    }

    public void ZYk(String str) {
        this.f12754so = str;
    }
}
