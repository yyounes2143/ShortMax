package com.bytedance.sdk.openadsdk.core.jFA;

import android.text.TextUtils;
import android.view.MotionEvent;
import androidx.annotation.NonNull;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3.dex */
public class ZYk {
    private static com.bytedance.sdk.openadsdk.core.jFA.oJ oJ;
    private String ZYk;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class oJ {
        private static final ZYk oJ = new ZYk();
    }

    public String Pfn() {
        com.bytedance.sdk.openadsdk.core.jFA.oJ oJVar = oJ;
        if (oJVar != null) {
            return oJVar.Pfn();
        }
        return "";
    }

    public void ZYk(String str) {
        com.bytedance.sdk.openadsdk.core.jFA.oJ oJVar;
        if (TextUtils.isEmpty(str) || (oJVar = oJ) == null) {
            return;
        }
        oJVar.ZYk(str);
    }

    public long ba() {
        com.bytedance.sdk.openadsdk.core.jFA.oJ oJVar = oJ;
        if (oJVar != null) {
            return oJVar.ba();
        }
        return 0L;
    }

    public int cFZ() {
        com.bytedance.sdk.openadsdk.core.jFA.oJ oJVar = oJ;
        if (oJVar != null) {
            return oJVar.cFZ();
        }
        return 1;
    }

    public String ex() {
        String ex;
        com.bytedance.sdk.openadsdk.core.jFA.oJ oJVar = oJ;
        if (oJVar != null && (ex = oJVar.ex()) != null) {
            return ex;
        }
        return "";
    }

    public void oJ(String str) {
        com.bytedance.sdk.openadsdk.core.jFA.oJ oJVar;
        if (TextUtils.isEmpty(str) || (oJVar = oJ) == null) {
            return;
        }
        oJVar.oJ(str);
    }

    public boolean tB() {
        com.bytedance.sdk.openadsdk.core.jFA.oJ oJVar = oJ;
        if (oJVar == null) {
            return false;
        }
        return oJVar.ZYk();
    }

    private ZYk() {
        this.ZYk = null;
        oJ = new com.bytedance.sdk.openadsdk.core.jFA.oJ();
    }

    public static ZYk ZYk() {
        return oJ.oJ;
    }

    public void oJ(Map<String, Object> map) {
        com.bytedance.sdk.openadsdk.core.jFA.oJ oJVar = oJ;
        if (oJVar != null) {
            oJVar.oJ(map);
        }
    }

    public void oJ() {
        com.bytedance.sdk.openadsdk.core.jFA.oJ oJVar = oJ;
        if (oJVar != null) {
            oJVar.tB();
        }
    }

    public void oJ(@NonNull String str, Map<String, Object> map) {
        com.bytedance.sdk.openadsdk.core.jFA.oJ oJVar = oJ;
        if (oJVar != null) {
            oJVar.oJ(str, map);
        }
    }

    public Map<String, String> oJ(String str, byte[] bArr) {
        com.bytedance.sdk.openadsdk.core.jFA.oJ oJVar = oJ;
        if (oJVar != null) {
            return oJVar.oJ(str, bArr);
        }
        return new HashMap();
    }

    public void oJ(MotionEvent motionEvent) {
        com.bytedance.sdk.openadsdk.core.jFA.oJ oJVar = oJ;
        if (oJVar != null) {
            oJVar.oJ(motionEvent);
        }
    }
}
