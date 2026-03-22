package com.bytedance.sdk.component.ba.oJ.ba;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.bytedance.sdk.component.ba.oJ.so;
import com.mbridge.msdk.foundation.download.Command;
import java.security.SecureRandom;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.UUID;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class tB implements ZYk {
    private final Pfn ZYk;
    private final Context oJ;

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"StaticFieldLeak"})
    /* loaded from: classes3.dex */
    public class oJ extends com.bytedance.sdk.component.ba.oJ.Pfn.Pfn {
        private final ex ZYk;
        private final Map<String, String> ex;
        private final String tB;

        private String tB(String str) {
            if (!TextUtils.isEmpty(str)) {
                if (str.contains("{TS}") || str.contains("__TS__")) {
                    long currentTimeMillis = System.currentTimeMillis();
                    str = str.replace("{TS}", String.valueOf(currentTimeMillis)).replace("__TS__", String.valueOf(currentTimeMillis));
                }
                if ((str.contains("{UID}") || str.contains("__UID__")) && !TextUtils.isEmpty(this.tB)) {
                    return str.replace("{UID}", this.tB).replace("__UID__", this.tB);
                }
                return str;
            }
            return str;
        }

        String ZYk(String str) {
            if (!TextUtils.isEmpty(str)) {
                try {
                    return str.replace("[ss_random]", String.valueOf(tB.ZYk().nextLong())).replace("[ss_timestamp]", String.valueOf(System.currentTimeMillis()));
                } catch (Exception unused) {
                    return str;
                }
            }
            return str;
        }

        boolean oJ(String str) {
            if (!TextUtils.isEmpty(str)) {
                if (str.startsWith("http://") || str.startsWith("https://")) {
                    return true;
                }
                return false;
            }
            return false;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.bytedance.sdk.component.ba.oJ.Pfn.ex exVar;
            com.bytedance.sdk.component.ba.oJ.Pfn eZI = so.cFZ().eZI();
            if (eZI == null || so.cFZ().ba() == null || !eZI.tB() || !oJ(this.ZYk.ZYk())) {
                return;
            }
            if (this.ZYk.ex() >= eZI.tB(this.ZYk.ba())) {
                tB.this.ZYk.tB(this.ZYk);
                return;
            }
            try {
                eZI.PiB();
                if (this.ZYk.dLZ()) {
                    tB.this.ZYk.oJ(this.ZYk);
                }
                if (!eZI.oJ(tB.this.oJ())) {
                    return;
                }
                long currentTimeMillis = System.currentTimeMillis();
                String ZYk = this.ZYk.ZYk();
                if (eZI.ba() == 0) {
                    ZYk = tB(this.ZYk.ZYk());
                    if (this.ZYk.tB()) {
                        ZYk = ZYk(ZYk);
                    }
                }
                com.bytedance.sdk.component.ba.oJ.Pfn.tB kkU = eZI.kkU();
                if (kkU == null) {
                    return;
                }
                kkU.oJ(Command.HTTP_HEADER_USER_AGENT, eZI.jFA());
                kkU.oJ("csj_client_source_from", "1");
                if (this.ex != null) {
                    JSONObject jSONObject = new JSONObject();
                    for (Map.Entry<String, String> entry : this.ex.entrySet()) {
                        jSONObject.put(entry.getKey(), entry.getValue());
                    }
                    kkU.oJ("csj_extra_info", jSONObject.toString());
                }
                kkU.oJ(ZYk);
                try {
                    exVar = kkU.oJ();
                    try {
                        eZI.oJ(exVar.oJ());
                    } catch (Throwable unused) {
                    }
                } catch (Throwable unused2) {
                    exVar = null;
                }
                ex exVar2 = this.ZYk;
                exVar2.oJ(exVar2.ex() + 1);
                if (exVar != null && exVar.oJ()) {
                    tB.this.ZYk.tB(this.ZYk);
                    this.ZYk.ZYk();
                    eZI.oJ(true, 200, System.currentTimeMillis() - currentTimeMillis, this.ZYk);
                    return;
                }
                if (exVar != null) {
                    this.ZYk.ZYk(exVar.ZYk());
                    this.ZYk.tB(exVar.tB());
                }
                if (exVar != null && exVar.ZYk() == 8848) {
                    exVar.tB();
                    tB.this.ZYk.tB(this.ZYk);
                } else {
                    this.ZYk.ZYk();
                    if (this.ZYk.ex() >= eZI.tB(this.ZYk.ba())) {
                        tB.this.ZYk.tB(this.ZYk);
                        this.ZYk.ZYk();
                    } else {
                        tB.this.ZYk.ZYk(this.ZYk);
                    }
                }
                eZI.oJ(false, this.ZYk.so(), System.currentTimeMillis() - currentTimeMillis, this.ZYk);
            } catch (Throwable unused3) {
            }
        }

        private oJ(ex exVar, String str, Map<String, String> map) {
            super("AdsStats");
            this.ZYk = exVar;
            this.tB = str;
            this.ex = map;
        }
    }

    public tB(Context context, Pfn pfn) {
        this.oJ = context;
        this.ZYk = pfn;
    }

    static /* synthetic */ Random ZYk() {
        return tB();
    }

    private static Random tB() {
        SecureRandom instanceStrong;
        if (Build.VERSION.SDK_INT >= 26) {
            try {
                instanceStrong = SecureRandom.getInstanceStrong();
                return instanceStrong;
            } catch (Throwable unused) {
                return new SecureRandom();
            }
        }
        return new SecureRandom();
    }

    public Context oJ() {
        Context context = this.oJ;
        return context == null ? so.cFZ().ba() : context;
    }

    @Override // com.bytedance.sdk.component.ba.oJ.ba.ZYk
    public void oJ(String str, List<String> list, boolean z10, Map<String, String> map, int i10, String str2) {
        com.bytedance.sdk.component.ba.oJ.Pfn eZI = so.cFZ().eZI();
        if (eZI == null || so.cFZ().ba() == null || eZI.ex() == null || !eZI.tB() || list == null || list.size() == 0) {
            return;
        }
        for (String str3 : list) {
            eZI.ex().execute(new oJ(new ex(UUID.randomUUID().toString() + "_" + System.currentTimeMillis(), str3, z10, i10, str2), str, map));
        }
    }

    @Override // com.bytedance.sdk.component.ba.oJ.ba.ZYk
    public Runnable oJ(final ex exVar, final String str, final Map<String, String> map) {
        if (exVar == null || TextUtils.isEmpty(exVar.oJ())) {
            return null;
        }
        return new Runnable() { // from class: com.bytedance.sdk.component.ba.oJ.ba.tB.1
            @Override // java.lang.Runnable
            public void run() {
                if (tB.this.ZYk.oJ(exVar.oJ()) != null) {
                    new oJ(exVar, str, map).run();
                }
            }
        };
    }

    @Override // com.bytedance.sdk.component.ba.oJ.ba.ZYk
    public void oJ(final String str, final boolean z10) {
        com.bytedance.sdk.component.ba.oJ.Pfn eZI = so.cFZ().eZI();
        if (eZI == null || so.cFZ().ba() == null || !eZI.tB()) {
            return;
        }
        com.bytedance.sdk.component.ba.oJ.Pfn.Pfn pfn = new com.bytedance.sdk.component.ba.oJ.Pfn.Pfn("trackFailedUrls") { // from class: com.bytedance.sdk.component.ba.oJ.ba.tB.2
            @Override // java.lang.Runnable
            public void run() {
                tB.this.oJ(tB.this.ZYk.oJ(), str, z10);
            }
        };
        pfn.oJ(1);
        if (eZI.ex() != null) {
            eZI.ex().execute(pfn);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ(List<ex> list, String str, boolean z10) {
        if (list == null || list.size() == 0) {
            return;
        }
        com.bytedance.sdk.component.ba.oJ.Pfn eZI = so.cFZ().eZI();
        for (ex exVar : list) {
            if (eZI != null && eZI.ex() != null) {
                exVar.oJ(z10);
                eZI.ex().execute(new oJ(exVar, str, null));
            }
        }
    }
}
