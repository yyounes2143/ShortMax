package com.bytedance.applog.simulate;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.bytedance.applog.AppLog;
import com.bytedance.applog.IPageMeta;
import com.bytedance.applog.annotation.PageMeta;
import com.bytedance.applog.log.AbstractAppLogLogger;
import com.bytedance.applog.log.IAppLogLogger;
import com.bytedance.applog.log.LoggerImpl;
import java.util.Collections;
import org.json.JSONException;
import org.json.JSONObject;
@PageMeta(path = "/simulateLaunch", title = "圈选/埋点验证")
/* loaded from: classes3.dex */
public class SimulateLaunchActivity extends Activity implements IPageMeta {
    public static final String BIND_QUERY = "bind_query";
    public static final String DEBUG_LOG = "debug_log";
    public static final String KEY_URL_PREFIX = "url_prefix";
    public static final String KEY_URL_PREFIX_NO_QR = "url_prefix_no_qr";
    public static final int MODE_NO_QR = 1;
    public static final int MODE_QR = 0;
    public static String entryAppId = "";
    public static int entryMode = 0;
    public static String entryQrParam = "";
    public static String entryType = "";
    public static String entryUrlPrefix = "";

    /* renamed from: a  reason: collision with root package name */
    public TextView f11842a;

    public static void startSimulatorWithoutQR(@NonNull Context context, String str) {
        startSimulatorWithoutQR(context, AppLog.getAppId(), str);
    }

    public final IAppLogLogger a() {
        IAppLogLogger logger = AbstractAppLogLogger.getLogger(entryAppId);
        if (logger == null) {
            return LoggerImpl.global();
        }
        return logger;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x00d5, code lost:
        if (r9.size() > 0) goto L19;
     */
    @Override // android.app.Activity
    @android.annotation.SuppressLint({"SetTextI18n"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onCreate(@androidx.annotation.Nullable android.os.Bundle r9) {
        /*
            Method dump skipped, instructions count: 299
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.applog.simulate.SimulateLaunchActivity.onCreate(android.os.Bundle):void");
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // com.bytedance.applog.IPageMeta
    public JSONObject pageProperties() {
        try {
            return new JSONObject().put("class_name", "SimulateLaunchActivity");
        } catch (JSONException e10) {
            a().debug(Collections.singletonList("SimulateLaunchActivity"), "JSON handle failed", e10);
            return null;
        }
    }

    @Override // com.bytedance.applog.IPageMeta
    public String path() {
        return "/simulateLaunch";
    }

    @Override // com.bytedance.applog.IPageMeta
    public String title() {
        return "圈选/埋点验证";
    }

    public static void startSimulatorWithoutQR(@NonNull Context context, String str, String str2) {
        Intent intent = new Intent(context, SimulateLaunchActivity.class);
        intent.putExtra(KEY_URL_PREFIX_NO_QR, str2);
        intent.putExtra("aid_no_qr", str);
        context.startActivity(intent);
    }
}
