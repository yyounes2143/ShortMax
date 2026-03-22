package com.bytedance.sdk.component.cFZ.ZYk;

import android.text.TextUtils;
import com.bytedance.sdk.component.ZYk.oJ.BTZ;
import com.bytedance.sdk.component.ZYk.oJ.dLZ;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
/* loaded from: classes3.dex */
public abstract class tB {
    String Pfn;

    /* renamed from: ba  reason: collision with root package name */
    int f12774ba;
    protected dLZ tB;
    protected String ex = null;
    protected final Map<String, String> cFZ = new HashMap();

    /* renamed from: so  reason: collision with root package name */
    protected String f12775so = null;
    protected boolean jFA = false;

    public tB(dLZ dlz) {
        this.tB = dlz;
        try {
            tB(UUID.randomUUID().toString());
        } catch (Throwable th2) {
            th2.getMessage();
        }
    }

    public void ZYk(String str) {
        this.f12775so = str;
    }

    public void ex(Map<String, String> map) {
        if (map != null) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                this.cFZ.put(entry.getKey(), entry.getValue());
            }
        }
    }

    public void oJ(String str) {
        this.Pfn = str;
    }

    public void tB(String str) {
        this.ex = str;
    }

    public void ZYk(String str, String str2) {
        this.cFZ.put(str, str2);
    }

    public void oJ(int i10) {
        this.f12774ba = i10;
    }

    public String tB() {
        return this.ex;
    }

    public void ZYk() {
        dLZ dlz;
        if (this.ex == null || (dlz = this.tB) == null) {
            return;
        }
        com.bytedance.sdk.component.ZYk.oJ.ex oJ = dlz.oJ();
        synchronized (oJ) {
            try {
                for (com.bytedance.sdk.component.ZYk.oJ.ZYk zYk : oJ.tB()) {
                    if (this.ex.equals(zYk.oJ().oJ())) {
                        zYk.tB();
                    }
                }
                for (com.bytedance.sdk.component.ZYk.oJ.ZYk zYk2 : oJ.ex()) {
                    if (this.ex.equals(zYk2.oJ().oJ())) {
                        zYk2.tB();
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public String ex() {
        return this.f12775so;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void oJ(BTZ.oJ oJVar) {
        if (oJVar != null && this.cFZ.size() > 0) {
            for (Map.Entry<String, String> entry : this.cFZ.entrySet()) {
                String key = entry.getKey();
                if (!TextUtils.isEmpty(key)) {
                    String value = entry.getValue();
                    if (value == null) {
                        value = "";
                    }
                    oJVar.ZYk(key, value);
                }
            }
        }
    }
}
