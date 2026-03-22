package com.bytedance.sdk.openadsdk.core.jFA;

import android.content.Context;
import android.text.TextUtils;
import android.view.MotionEvent;
import androidx.annotation.Nullable;
import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.openadsdk.BuildConfig;
import com.bytedance.sdk.openadsdk.core.BTZ;
import com.bytedance.sdk.openadsdk.core.WcQ;
import com.bytedance.sdk.openadsdk.core.jFA;
import com.bytedance.sdk.openadsdk.core.settings.PiB;
import com.bytedance.sdk.openadsdk.core.si;
import com.bytedance.sdk.openadsdk.multipro.ex.ex;
import com.bytedance.sdk.openadsdk.utils.HyG;
import com.pgl.ssdk.ces.out.PglSSCallBack;
import com.pgl.ssdk.ces.out.PglSSConfig;
import com.pgl.ssdk.ces.out.PglSSManager;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class oJ {
    private volatile boolean ZYk;
    private PglSSManager oJ;
    private volatile boolean tB = true;
    private volatile boolean ex = false;

    public oJ() {
        oJ();
    }

    private void jFA() {
        if (this.oJ == null) {
            this.oJ = PglSSManager.getInstance();
        }
    }

    private Class kkU() {
        Class<PglSSManager> cls;
        try {
            cls = PglSSManager.class;
            String str = PglSSManager.REPORT_SCENE_ADSHOW;
        } catch (Throwable unused) {
            cls = null;
        }
        try {
            this.tB = true;
        } catch (Throwable unused2) {
            this.tB = false;
            return cls;
        }
        return cls;
    }

    private boolean so() {
        if (!this.ZYk && this.tB) {
            oJ();
        }
        return this.ZYk;
    }

    public String Pfn() {
        if (!so()) {
            return "";
        }
        jFA();
        PglSSManager pglSSManager = this.oJ;
        if (pglSSManager == null) {
            return "";
        }
        return pglSSManager.getSofChara();
    }

    public boolean ZYk() {
        return this.ZYk;
    }

    public long ba() {
        if (!so()) {
            return 0L;
        }
        jFA();
        PglSSManager pglSSManager = this.oJ;
        if (pglSSManager == null) {
            return 0L;
        }
        return pglSSManager.getECForBidding();
    }

    public int cFZ() {
        if (this.tB) {
            return PglSSManager.getInitStatus();
        }
        return 5;
    }

    public String ex() {
        if (!so()) {
            return "";
        }
        jFA();
        PglSSManager pglSSManager = this.oJ;
        if (pglSSManager == null) {
            return "";
        }
        return pglSSManager.getToken();
    }

    public void tB() {
        if (so()) {
            jFA();
            if (this.oJ != null) {
                WcQ.ZYk().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.jFA.oJ.3
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            HashMap hashMap = new HashMap();
                            hashMap.put(PglSSConfig.CUSTOMINFO_KEY_CHECKCLAZZ, si.ex().Uf());
                            oJ.this.oJ.setCustomInfo(hashMap);
                        } catch (Throwable th2) {
                            QSm.tB("MSSdkImpl", "setCustomInfo", th2.getMessage());
                        }
                    }
                });
            }
        }
    }

    public void ZYk(String str) {
        if (so()) {
            jFA();
            PglSSManager pglSSManager = this.oJ;
            if (pglSSManager != null) {
                pglSSManager.setDeviceId(str);
            }
        }
    }

    public synchronized void oJ() {
        if (this.ZYk) {
            return;
        }
        Context oJ = si.oJ();
        String ex = jFA.ZYk().ex();
        if (TextUtils.isEmpty(ex)) {
            ex = jFA.oJ("app_id", Long.MAX_VALUE);
        }
        if (TextUtils.isEmpty(ex)) {
            return;
        }
        String oJ2 = BTZ.oJ(oJ);
        String ZYk = com.bytedance.sdk.openadsdk.RZ.oJ.ZYk.oJ.oJ().ZYk();
        PglSSConfig build = PglSSConfig.builder().setAppId(ex).setOVRegionType(2).setAdsdkVersion(BuildConfig.VERSION_NAME).build();
        String ZYk2 = ex.ZYk("ttopenadsdk", PglSSConfig.CUSTOMINFO_KEY_IPV6, "");
        HashMap hashMap = new HashMap();
        if (!TextUtils.isEmpty(ZYk2)) {
            hashMap.put(PglSSConfig.CUSTOMINFO_KEY_IPV6, ZYk2);
        }
        Set<String> XQY = PiB.ib().XQY();
        if (XQY != null && !XQY.isEmpty()) {
            hashMap.put(PglSSConfig.CUSTOMINFO_KEY_ALLOWED_FIELDS, XQY);
        }
        String Ry = HyG.Ry();
        if (!TextUtils.isEmpty(Ry)) {
            hashMap.put(PglSSConfig.CUSTOMINFO_KEY_TRANSFER_HOST, Ry);
        }
        hashMap.put(PglSSConfig.CUSTOMINFO_KEY_TARGET_IDC, PiB.ib().JJ());
        String oJ3 = com.bytedance.sdk.openadsdk.oq.oJ.oJ(PglSSConfig.CUSTOMINFO_KEY_SEC_CONFIG_STR, "");
        if (!TextUtils.isEmpty(oJ3)) {
            hashMap.put(PglSSConfig.CUSTOMINFO_KEY_SEC_CONFIG_STR, oJ3);
        }
        build.setCustomInfo(hashMap);
        build.setCallBack(new PglSSCallBack() { // from class: com.bytedance.sdk.openadsdk.core.jFA.oJ.1
            @Override // com.pgl.ssdk.ces.out.PglSSCallBack
            public void reportSoftDecData(final String str, final String str2) {
                com.bytedance.sdk.openadsdk.awB.tB.oJ(str, false, new com.bytedance.sdk.openadsdk.awB.ZYk() { // from class: com.bytedance.sdk.openadsdk.core.jFA.oJ.1.1
                    @Override // com.bytedance.sdk.openadsdk.awB.ZYk
                    @Nullable
                    public com.bytedance.sdk.openadsdk.awB.oJ.tB getLogStats() throws Exception {
                        return com.bytedance.sdk.openadsdk.awB.oJ.ex.ZYk().oJ(str).ZYk(str2);
                    }
                });
            }
        });
        PglSSManager.init(oJ, build, null, null, oJ2, ZYk);
        jFA();
        this.ZYk = true;
        if (this.tB) {
            tB(PglSSManager.getLoadError());
        }
    }

    private void tB(final String str) {
        if (this.ex || TextUtils.isEmpty(str)) {
            return;
        }
        si.Pfn().oJ(new com.bytedance.sdk.openadsdk.awB.ZYk() { // from class: com.bytedance.sdk.openadsdk.core.jFA.oJ.4
            @Override // com.bytedance.sdk.openadsdk.awB.ZYk
            public com.bytedance.sdk.openadsdk.awB.oJ.tB getLogStats() throws Exception {
                return com.bytedance.sdk.openadsdk.awB.oJ.ex.ZYk().oJ("secsdk_init_error").ZYk(str);
            }
        }, false);
        this.ex = true;
    }

    public void oJ(String str) {
        if (so()) {
            jFA();
            PglSSManager pglSSManager = this.oJ;
            if (pglSSManager != null) {
                pglSSManager.setGaid(str);
            }
        }
    }

    public void oJ(final Map<String, Object> map) {
        if (so()) {
            jFA();
            if (this.oJ != null) {
                WcQ.ZYk().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.jFA.oJ.2
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            oJ.this.oJ.setCustomInfo(map);
                        } catch (Throwable th2) {
                            QSm.tB("MSSdkImpl", "setCustomInfo", th2.getMessage());
                        }
                    }
                });
            }
        }
    }

    public void oJ(String str, Map<String, Object> map) {
        if (so()) {
            jFA();
            PglSSManager pglSSManager = this.oJ;
            if (pglSSManager != null) {
                pglSSManager.reportNow(str, map);
            }
        }
    }

    public void oJ(MotionEvent motionEvent) {
        if (ZYk()) {
            jFA();
            PglSSManager pglSSManager = this.oJ;
            if (pglSSManager != null) {
                pglSSManager.checkEventVirtual(motionEvent);
            }
        }
    }

    public Map<String, String> oJ(String str, byte[] bArr) {
        Map<String, String> featureHash;
        return (!so() || (featureHash = this.oJ.getFeatureHash(str, bArr)) == null) ? new HashMap() : featureHash;
    }
}
