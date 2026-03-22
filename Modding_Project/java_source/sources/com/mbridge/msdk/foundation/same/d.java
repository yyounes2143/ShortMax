package com.mbridge.msdk.foundation.same;

import android.text.TextUtils;
import com.iab.omid.library.mmadbridge.ScriptInjector;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadRequest;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.n0;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.r0;
import com.mbridge.msdk.foundation.tools.u0;
import com.mbridge.msdk.interstitial.view.MBInterstitialActivity;
import java.io.File;
import java.util.LinkedList;
import java.util.List;
/* compiled from: SameTools.java */
/* loaded from: classes5.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private static final List<String> f27064a = new LinkedList();

    public static int a(CampaignEx campaignEx, String str) {
        int b10;
        if (campaignEx == null) {
            return -1;
        }
        try {
            if (!TextUtils.isEmpty(campaignEx.getMof_template_url())) {
                b10 = u0.b(campaignEx.getMof_template_url());
            } else {
                b10 = u0.b(str);
            }
            return b10;
        } catch (Exception e10) {
            p0.b("SameTools", e10.getMessage());
            return -1;
        }
    }

    public static boolean a(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || TextUtils.equals(str2, com.mbridge.msdk.foundation.same.net.utils.d.h().f27158d) || TextUtils.equals(str2, com.mbridge.msdk.foundation.same.net.utils.d.h().O)) {
            return false;
        }
        return (TextUtils.equals(str, "download_video") || TextUtils.equals(str, "download_image") || TextUtils.equals(str, "download_template") || TextUtils.equals(str, "") || TextUtils.equals(str, "download_other") || TextUtils.equals(str, "download_html") || TextUtils.equals(str, "applets_model") || TextUtils.equals(str, MBInterstitialActivity.INTENT_CAMAPIGN) || TextUtils.equals(str, "bid_request") || TextUtils.equals(str, "more_offer") || TextUtils.equals(str, "mraid_js") || TextUtils.equals(str, "om_sdk") || TextUtils.equals(str, "roas") || TextUtils.equals(str, "web_env_check_js") || TextUtils.equals(str, "setting")) && r0.a().a("request_track", true);
    }

    public static String a(DownloadRequest<?> downloadRequest) {
        if (downloadRequest == null) {
            return "un_known";
        }
        String str = downloadRequest.get("download_scene", "");
        return TextUtils.isEmpty(str) ? "un_known" : str;
    }

    public static String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            String[] split = str.split(";");
            if (split.length > 0) {
                return split[0].trim();
            }
            return str.trim();
        } catch (Exception unused) {
            return "";
        }
    }

    public static void a(String str, File file) {
        if (file == null || !file.exists()) {
            return;
        }
        try {
            List<String> list = f27064a;
            if (list.contains(str)) {
                try {
                    list.add(str);
                    System.gc();
                    Runtime.getRuntime().gc();
                    return;
                } catch (Throwable unused) {
                    return;
                }
            }
            n0.a(com.mbridge.msdk.omsdk.b.a(ScriptInjector.injectScriptContentIntoHtml(MBridgeConstans.OMID_JS_SERVICE_CONTENT, n0.e(file))).getBytes(), file);
            list.add(str);
            System.gc();
            Runtime.getRuntime().gc();
        } catch (Throwable unused2) {
        }
    }

    public static void a(File file) {
        boolean z10;
        if (file != null) {
            try {
                if (file.exists()) {
                    try {
                        z10 = file.delete();
                    } catch (Throwable unused) {
                        z10 = false;
                    }
                    if (z10) {
                        return;
                    }
                    file.deleteOnExit();
                }
            } catch (Throwable unused2) {
            }
        }
    }
}
