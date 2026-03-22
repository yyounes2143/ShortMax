package com.bytedance.sdk.openadsdk.api.init;

import android.text.TextUtils;
import com.bytedance.sdk.component.cFZ.tB.tB;
import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.component.utils.awB;
import com.bytedance.sdk.openadsdk.InitConfig;
import com.bytedance.sdk.openadsdk.api.PAGConstant;
import com.bytedance.sdk.openadsdk.core.nke;
import com.bytedance.sdk.openadsdk.utils.HyG;
/* loaded from: classes3.dex */
public final class PAGConfig implements InitConfig {
    private static String kkU;
    private boolean ZYk;
    private boolean cFZ;
    private String dLZ;
    private String jFA;
    private String oJ;

    /* renamed from: so  reason: collision with root package name */
    private String f12939so;
    private int tB;
    private int ex = -1;
    private int Pfn = -1;

    /* renamed from: ba  reason: collision with root package name */
    private int f12938ba = 0;

    public static void debugLog(boolean z10) {
        if (nke.oJ() != null) {
            if (z10) {
                nke.oJ().tB(1);
                nke.oJ().oJ();
                return;
            }
            nke.oJ().tB(0);
            tB.oJ(tB.oJ.OFF);
            awB.tB();
            com.bykv.vk.openvk.oJ.oJ.oJ.cFZ.tB.ZYk();
            QSm.ZYk();
        }
    }

    public static int getGDPRConsent() {
        if (!HyG.jFA("getGdpr")) {
            return -1;
        }
        int ZYk = nke.oJ().ZYk();
        if (ZYk == 1) {
            return 0;
        }
        if (ZYk == 0) {
            return 1;
        }
        return ZYk;
    }

    public static int getPAConsent() {
        if (!HyG.jFA("getPAConsent")) {
            return -1;
        }
        return nke.oJ().Pfn();
    }

    public static void setAppIconId(int i10) {
        if (nke.oJ() != null) {
            nke.oJ().ex(i10);
        }
    }

    public static void setGDPRConsent(@PAGConstant.PAGGDPRConsentType int i10) {
        HyG.jFA("setGdpr");
        if (i10 < -1 || i10 > 1) {
            i10 = -1;
        }
        nke.oJ().ZYk(i10);
    }

    public static void setPAConsent(@PAGConstant.PAGPAConsentType int i10) {
        if (!HyG.jFA("setPAConsent")) {
            return;
        }
        if (i10 != 1 && i10 != 0) {
            nke.oJ().Pfn(-2);
        } else {
            nke.oJ().Pfn(i10);
        }
    }

    public static void setPackageName(String str) {
        kkU = str;
    }

    public static void setUserData(String str) {
        if (nke.oJ() != null) {
            nke.oJ().ZYk(str);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.InitConfig
    public String getAdxId() {
        return this.dLZ;
    }

    @Override // com.bytedance.sdk.openadsdk.InitConfig
    public int getAppIconId() {
        return this.tB;
    }

    @Override // com.bytedance.sdk.openadsdk.InitConfig
    public String getAppId() {
        return this.oJ;
    }

    @Override // com.bytedance.sdk.openadsdk.InitConfig
    public String getData() {
        return this.jFA;
    }

    public boolean getDebugLog() {
        return this.ZYk;
    }

    @Override // com.bytedance.sdk.openadsdk.InitConfig
    public int getGdpr() {
        return this.ex;
    }

    @Override // com.bytedance.sdk.openadsdk.InitConfig
    public int getPA() {
        return this.Pfn;
    }

    @Override // com.bytedance.sdk.openadsdk.InitConfig
    public String getPackageName() {
        if (TextUtils.isEmpty(this.f12939so)) {
            return kkU;
        }
        return this.f12939so;
    }

    @Override // com.bytedance.sdk.openadsdk.InitConfig
    public int getTitleBarTheme() {
        return this.f12938ba;
    }

    @Override // com.bytedance.sdk.openadsdk.InitConfig
    public boolean isSupportMultiProcess() {
        return this.cFZ;
    }

    @Override // com.bytedance.sdk.openadsdk.InitConfig
    public boolean isUseTextureView() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ex(int i10) {
        this.f12938ba = i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tB(int i10) {
        this.Pfn = i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ZYk(String str) {
        this.oJ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ex(String str) {
        this.dLZ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ(String str) {
        this.jFA = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tB(String str) {
        this.f12939so = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ZYk(int i10) {
        if (i10 < -1 || i10 > 1) {
            i10 = -1;
        }
        this.ex = i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ(boolean z10) {
        this.ZYk = z10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ZYk(boolean z10) {
        this.cFZ = z10;
        com.bykv.vk.openvk.oJ.oJ.oJ.tB.oJ(z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ(int i10) {
        this.tB = i10;
    }

    /* loaded from: classes3.dex */
    public static class Builder {
        private boolean ZYk;
        private String jFA;
        private String kkU;
        private String oJ;

        /* renamed from: so  reason: collision with root package name */
        private String[] f12941so;
        private int tB;
        private int ex = -1;
        private int Pfn = -1;

        /* renamed from: ba  reason: collision with root package name */
        private int f12940ba = 0;
        private boolean cFZ = false;
        private String dLZ = "";

        public Builder appIcon(int i10) {
            this.tB = i10;
            return this;
        }

        public Builder appId(String str) {
            this.oJ = str;
            return this;
        }

        public PAGConfig build() {
            PAGConfig pAGConfig = new PAGConfig();
            pAGConfig.ZYk(this.oJ);
            pAGConfig.oJ(this.tB);
            pAGConfig.ex(this.f12940ba);
            pAGConfig.ZYk(this.cFZ);
            pAGConfig.ZYk(this.ex);
            pAGConfig.tB(this.Pfn);
            pAGConfig.oJ(this.ZYk);
            pAGConfig.tB(this.jFA);
            pAGConfig.oJ(this.kkU);
            pAGConfig.ex(this.dLZ);
            return pAGConfig;
        }

        public Builder debugLog(boolean z10) {
            this.ZYk = z10;
            return this;
        }

        public Builder needClearTaskReset(String... strArr) {
            this.f12941so = strArr;
            return this;
        }

        public Builder setAdxId(String str) {
            this.dLZ = str;
            return this;
        }

        public Builder setGDPRConsent(@PAGConstant.PAGGDPRConsentType int i10) {
            this.ex = i10;
            return this;
        }

        public Builder setPAConsent(@PAGConstant.PAGPAConsentType int i10) {
            if (i10 != 0 && i10 != 1) {
                this.Pfn = -2;
            } else {
                this.Pfn = i10;
            }
            return this;
        }

        public Builder setPackageName(String str) {
            this.jFA = str;
            return this;
        }

        public Builder setUserData(String str) {
            this.kkU = str;
            return this;
        }

        public Builder supportMultiProcess(boolean z10) {
            this.cFZ = z10;
            return this;
        }

        public Builder titleBarTheme(int i10) {
            this.f12940ba = i10;
            return this;
        }

        public Builder useTextureView(boolean z10) {
            return this;
        }
    }
}
