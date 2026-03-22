package com.bytedance.sdk.openadsdk.component.cFZ;

import android.content.Context;
import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.component.utils.cFZ;
import com.bytedance.sdk.openadsdk.CacheDirFactory;
import com.bytedance.sdk.openadsdk.component.ba;
import com.bytedance.sdk.openadsdk.core.jFA;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.si;
import com.bytedance.sdk.openadsdk.multipro.ZYk;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.io.File;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class oJ {
    public static File ZYk(String str) {
        return oJ(si.oJ(), ba.oJ(si.oJ()).ZYk(), str);
    }

    public static File oJ(String str) {
        return new File(CacheDirFactory.getICacheDir(0).ZYk() + File.separator + str);
    }

    public static File oJ(Context context, String str, String str2) {
        return cFZ.oJ(context, ZYk.tB(), str, str2);
    }

    public static void oJ(File file) {
        if (file == null) {
            return;
        }
        try {
            cFZ.ZYk(file);
        } catch (Throwable unused) {
        }
    }

    public static void oJ(Context context) {
        try {
            ba.oJ(context).oJ();
        } catch (Throwable unused) {
        }
    }

    public static String oJ() {
        return cFZ.oJ(si.oJ(), ZYk.tB(), ba.oJ(si.oJ()).ZYk()).getAbsolutePath();
    }

    public static void oJ(JSONObject jSONObject, int i10, boolean z10) {
        try {
            String so2 = jFA.ZYk().so();
            int jFA = jFA.ZYk().jFA();
            JSONObject jSONObject2 = jSONObject.getJSONObject("creative");
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put(TTVideoEngineInterface.PLAY_API_KEY_APPNAME, so2);
            if (!z10) {
                jSONObject3.put("app_icon_id", "@".concat(String.valueOf(jFA)));
            } else if (jFA.ZYk().jFA() != 0) {
                jSONObject3.put("app_icon_id", "local://pag_open_icon_id");
            }
            jSONObject2.put("open_app_info", jSONObject3);
            if (jSONObject2.optJSONObject("video") == null) {
                JSONObject jSONObject4 = new JSONObject();
                jSONObject4.put("video_duration", si.ex().Id(String.valueOf(i10)));
                jSONObject2.put("video", jSONObject4);
            }
        } catch (Exception e10) {
            QSm.tB("TTAppOpenUtils", e10.getMessage());
        }
    }

    public static int oJ(cY cYVar, int i10) {
        return i10 - cYVar.ms();
    }
}
