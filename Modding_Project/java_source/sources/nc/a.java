package nc;

import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.Nullable;
import com.ss.ttvideoengine.AppInfo;
/* compiled from: EngineParams.java */
/* loaded from: classes6.dex */
public class a {
    public static String a() {
        return "china";
    }

    public static String b() {
        return "vod-api-smart-strategy-lite.volcvod.com";
    }

    public static String c() {
        return "vod.bytedanceapi.com";
    }

    @Nullable
    public static String d() {
        lc.a g10 = kc.a.g();
        if (g10 == null) {
            Log.e("TTSDK", "Call Env.init first!", new NullPointerException("TTSDK init config is null!"));
            return null;
        } else if (TextUtils.equals(g10.d(), AppInfo.APP_REGION_MYA)) {
            return "vod.ap-southeast-1.volcengineapi.com";
        } else {
            return "vod.volcengineapi.com";
        }
    }

    @Nullable
    public static String e() {
        lc.a g10 = kc.a.g();
        if (g10 == null) {
            Log.e("TTSDK", "Call Env.init first!", new NullPointerException("TTSDK init config is null!"));
            return null;
        } else if (TextUtils.equals(g10.d(), AppInfo.APP_REGION_MYA)) {
            return "vod-settings.ap-southeast-1.volcvod.com";
        } else {
            return "vod-settings.volcvod.com";
        }
    }
}
