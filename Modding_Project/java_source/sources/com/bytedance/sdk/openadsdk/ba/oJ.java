package com.bytedance.sdk.openadsdk.ba;

import com.bytedance.sdk.openadsdk.core.WcQ;
import com.bytedance.sdk.openadsdk.core.tB;
import com.huawei.hms.framework.common.ContainerUtils;
/* loaded from: classes3.dex */
public class oJ {
    private static volatile oJ oJ;
    private int[] BTZ;
    private int[] Pfn;
    private boolean PiB;
    private boolean WcQ;
    private boolean ZYk;
    private int awB;

    /* renamed from: ba  reason: collision with root package name */
    private int[] f12951ba;
    private int[] cFZ;
    private boolean dLZ;
    private boolean eZI;
    private boolean ex;
    private int[] jFA;
    private boolean kkU;

    /* renamed from: si  reason: collision with root package name */
    private boolean f12952si;

    /* renamed from: so  reason: collision with root package name */
    private int[] f12953so;
    private boolean tB;

    private oJ() {
        ZYk();
    }

    public int[] BTZ() {
        return this.f12953so;
    }

    public int[] PiB() {
        return this.jFA;
    }

    public boolean Ry() {
        return this.f12952si;
    }

    public boolean WcQ() {
        return this.kkU;
    }

    public boolean awB() {
        return this.dLZ;
    }

    public int[] dLZ() {
        return this.cFZ;
    }

    public int[] eZI() {
        return this.BTZ;
    }

    public int[] kkU() {
        return this.f12951ba;
    }

    public boolean si() {
        return this.PiB;
    }

    public boolean cFZ() {
        return this.tB;
    }

    public int[] jFA() {
        return this.Pfn;
    }

    public boolean so() {
        return this.ex;
    }

    public boolean Pfn() {
        return this.eZI;
    }

    public boolean ba() {
        return this.ZYk;
    }

    public int ex() {
        return this.awB;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int[] tB(String[] strArr) {
        int length = strArr.length;
        int[] iArr = new int[length];
        int i10 = 0;
        for (String str : strArr) {
            try {
                int parseInt = Integer.parseInt(str);
                iArr[i10] = parseInt;
                if (parseInt > 0) {
                    i10++;
                }
            } catch (NumberFormatException unused) {
            }
        }
        if (i10 != length) {
            int[] iArr2 = new int[i10];
            System.arraycopy(iArr, 0, iArr2, 0, i10);
            return iArr2;
        }
        return iArr;
    }

    public void ZYk() {
        WcQ.ZYk().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.ba.oJ.1
            @Override // java.lang.Runnable
            public void run() {
                oJ.this.WcQ = com.bytedance.sdk.openadsdk.oq.oJ.oJ("feature_switch", false);
                if (!oJ.this.WcQ) {
                    return;
                }
                try {
                    oJ.this.f12952si = com.bytedance.sdk.openadsdk.oq.oJ.oJ("exclude_banner_native", false);
                    oJ.this.awB = com.bytedance.sdk.openadsdk.oq.oJ.oJ("feature_timer_interval", 10000);
                    oJ.this.eZI = com.bytedance.sdk.openadsdk.oq.oJ.oJ("enable_feature_cids", true);
                    String[] split = com.bytedance.sdk.openadsdk.oq.oJ.oJ("pag_ad_show_cnt", "1,3,5&session").split(ContainerUtils.FIELD_DELIMITER);
                    String[] split2 = com.bytedance.sdk.openadsdk.oq.oJ.oJ("pag_ad_click_cnt", "1,3,5&session").split(ContainerUtils.FIELD_DELIMITER);
                    String[] split3 = com.bytedance.sdk.openadsdk.oq.oJ.oJ("pag_video_play_cnt", "1,3,5&session").split(ContainerUtils.FIELD_DELIMITER);
                    String[] split4 = com.bytedance.sdk.openadsdk.oq.oJ.oJ("pag_dislike_cnt", "1,3,5session").split(",");
                    oJ oJVar = oJ.this;
                    oJVar.ZYk = oJVar.oJ(split);
                    oJ oJVar2 = oJ.this;
                    oJVar2.tB = oJVar2.oJ(split2);
                    oJ oJVar3 = oJ.this;
                    oJVar3.ex = oJVar3.oJ(split3);
                    oJ oJVar4 = oJ.this;
                    oJVar4.Pfn = oJVar4.ZYk(split);
                    oJ oJVar5 = oJ.this;
                    oJVar5.f12951ba = oJVar5.ZYk(split2);
                    oJ oJVar6 = oJ.this;
                    oJVar6.cFZ = oJVar6.ZYk(split3);
                    oJ oJVar7 = oJ.this;
                    oJVar7.BTZ = oJVar7.tB(split4);
                    String[] split5 = com.bytedance.sdk.openadsdk.oq.oJ.oJ("pag_landingPage_stay_time", "1,3,5&session").split(ContainerUtils.FIELD_DELIMITER);
                    String[] split6 = com.bytedance.sdk.openadsdk.oq.oJ.oJ("pag_video_stay_time", "1,3,5&session").split(ContainerUtils.FIELD_DELIMITER);
                    oJ oJVar8 = oJ.this;
                    oJVar8.kkU = oJVar8.oJ(split5);
                    oJ oJVar9 = oJ.this;
                    oJVar9.dLZ = oJVar9.oJ(split6);
                    oJ oJVar10 = oJ.this;
                    oJVar10.f12953so = oJVar10.ZYk(split5);
                    oJ oJVar11 = oJ.this;
                    oJVar11.jFA = oJVar11.ZYk(split6);
                    oJ.this.PiB = com.bytedance.sdk.openadsdk.oq.oJ.oJ("pag_video_30p_session", true);
                } catch (Throwable unused) {
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int[] ZYk(String[] strArr) {
        if (strArr.length > 0) {
            return tB(strArr[0].split(","));
        }
        return new int[0];
    }

    public static oJ oJ() {
        if (oJ == null) {
            synchronized (tB.class) {
                try {
                    if (oJ == null) {
                        oJ = new oJ();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return oJ;
    }

    public boolean tB() {
        return this.WcQ;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean oJ(String[] strArr) {
        if (strArr.length == 2) {
            return "session".equals(strArr[1]);
        }
        if (strArr.length == 1) {
            return "session".equals(strArr[0]);
        }
        return false;
    }
}
