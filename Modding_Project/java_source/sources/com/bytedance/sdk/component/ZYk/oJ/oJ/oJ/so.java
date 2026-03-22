package com.bytedance.sdk.component.ZYk.oJ.oJ.oJ;

import android.text.TextUtils;
import com.bytedance.sdk.component.ZYk.oJ.BTZ;
import com.bytedance.sdk.component.ZYk.oJ.WcQ;
import com.bytedance.sdk.component.ZYk.oJ.awB;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* loaded from: classes3.dex */
public class so extends WcQ {
    public static int oJ = -1;
    String Pfn;
    HttpURLConnection ZYk;
    int ex;
    BTZ tB;

    public so(HttpURLConnection httpURLConnection, BTZ btz) {
        this.ex = oJ;
        this.ZYk = httpURLConnection;
        this.tB = btz;
    }

    @Override // com.bytedance.sdk.component.ZYk.oJ.WcQ
    public String Pfn() throws IOException {
        if (!TextUtils.isEmpty(this.Pfn)) {
            return this.Pfn;
        }
        return this.ZYk.getResponseMessage();
    }

    @Override // com.bytedance.sdk.component.ZYk.oJ.WcQ
    public long ZYk() {
        return 0L;
    }

    @Override // com.bytedance.sdk.component.ZYk.oJ.WcQ
    public awB ba() {
        jFA jfa;
        com.bytedance.sdk.component.tB.oJ.oJ oJVar;
        com.bytedance.sdk.component.tB.oJ.oJ oJVar2;
        BTZ btz = this.tB;
        if (btz != null && (oJVar2 = btz.ZYk) != null) {
            oJVar2.dLZ();
        }
        try {
            try {
                jfa = new jFA(this.ZYk);
            } catch (Exception unused) {
                HttpURLConnection httpURLConnection = this.ZYk;
                jfa = new jFA(httpURLConnection, httpURLConnection.getErrorStream());
            }
        } catch (Throwable th2) {
            th2.getMessage();
            jfa = null;
        }
        BTZ btz2 = this.tB;
        if (btz2 != null && (oJVar = btz2.ZYk) != null) {
            oJVar.PiB();
        }
        return jfa;
    }

    @Override // com.bytedance.sdk.component.ZYk.oJ.WcQ
    public com.bytedance.sdk.component.ZYk.oJ.ba cFZ() {
        if (this.ZYk == null) {
            return new com.bytedance.sdk.component.ZYk.oJ.ba(new String[0]);
        }
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, List<String>> entry : this.ZYk.getHeaderFields().entrySet()) {
            for (String str : entry.getValue()) {
                if (!"Content-Range".equalsIgnoreCase(entry.getKey()) || tB() != 206) {
                    arrayList.add(entry.getKey());
                    arrayList.add(str);
                }
            }
        }
        return new com.bytedance.sdk.component.ZYk.oJ.ba((String[]) arrayList.toArray(new String[arrayList.size()]));
    }

    @Override // com.bytedance.sdk.component.ZYk.oJ.WcQ, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        try {
            ba().close();
        } catch (Exception unused) {
        }
    }

    @Override // com.bytedance.sdk.component.ZYk.oJ.WcQ
    public boolean ex() {
        if (tB() >= 200 && tB() < 300) {
            return true;
        }
        return false;
    }

    public BTZ jFA() {
        return this.tB;
    }

    @Override // com.bytedance.sdk.component.ZYk.oJ.WcQ
    public long oJ() {
        return 0L;
    }

    @Override // com.bytedance.sdk.component.ZYk.oJ.WcQ
    public com.bytedance.sdk.component.ZYk.oJ.kkU so() {
        if (jFA() != null && jFA().ZYk != null) {
            return new com.bytedance.sdk.component.ZYk.oJ.kkU(jFA().ZYk);
        }
        return null;
    }

    @Override // com.bytedance.sdk.component.ZYk.oJ.WcQ
    public int tB() {
        try {
            return this.ZYk.getResponseCode();
        } catch (Exception unused) {
            return this.ex;
        }
    }

    public String toString() {
        return "";
    }

    public so(int i10, String str, BTZ btz) {
        this.Pfn = str;
        this.tB = btz;
        this.ex = i10;
    }
}
