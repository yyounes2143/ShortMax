package com.mbridge.msdk.video.dynview.util;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.l0;
/* compiled from: UIControlUtil.java */
/* loaded from: classes6.dex */
public class a {
    public static int a(CampaignEx campaignEx) {
        if (campaignEx == null || campaignEx.getRewardTemplateMode() == null) {
            return 1;
        }
        return campaignEx.getRewardTemplateMode().b();
    }

    public static int b(CampaignEx campaignEx) {
        if (campaignEx != null && campaignEx.getRewardTemplateMode() != null) {
            int f10 = campaignEx.getRewardTemplateMode().f();
            if (f10 != 302 && f10 != 802 && f10 != 902) {
                if (f10 == 904) {
                    if (!a(campaignEx.getRewardTemplateMode().e())) {
                        return -1;
                    }
                }
            }
            return -3;
        }
        return 100;
    }

    public static boolean a(Context context) {
        return context.getResources().getConfiguration().orientation == 2;
    }

    public static String a(long j10, Context context) {
        String p10 = l0.p(context);
        if (p10.startsWith("zh")) {
            if (!p10.contains("TW") && !p10.contains("HK")) {
                return j10 + " 秒后自动播放";
            }
            return j10 + " 秒後自動播放";
        } else if (p10.startsWith("ja")) {
            return j10 + " 秒後自動的に再生 ";
        } else if (p10.startsWith(DownloadCommon.DOWNLOAD_REPORT_DOWNLOAD_ERROR)) {
            return "Automatische Wiedergabe nach " + j10 + " Sekunden";
        } else if (p10.startsWith("ko")) {
            return j10 + " 초 후 자동 재생 ";
        } else if (p10.startsWith("fr")) {
            return "Lecture de vidéo dans " + j10 + " secondes";
        } else if (p10.startsWith("ar")) {
            return " ثوان" + j10 + "لعب تلقائيا بعد ";
        } else if (p10.startsWith("ru")) {
            return "Автовоспроизведение через " + j10 + " секунд";
        } else {
            return "Auto play after " + j10 + " s";
        }
    }

    public static String a(Context context, int i10) {
        String str;
        if (i10 == 1) {
            str = "_por";
        } else {
            str = "_land";
        }
        String p10 = l0.p(context);
        if (p10.startsWith("zh")) {
            if (!p10.contains("TW") && !p10.contains("HK")) {
                return "mbridge_reward_two_title_zh";
            }
            return "mbridge_reward_two_title_zh_trad";
        } else if (p10.startsWith("ja")) {
            return "mbridge_reward_two_title_japan" + str;
        } else if (p10.startsWith(DownloadCommon.DOWNLOAD_REPORT_DOWNLOAD_ERROR)) {
            return "mbridge_reward_two_title_germany" + str;
        } else if (p10.startsWith("ko")) {
            return "mbridge_reward_two_title_korea" + str;
        } else if (p10.startsWith("fr")) {
            return "mbridge_reward_two_title_france" + str;
        } else if (p10.startsWith("ar")) {
            return "mbridge_reward_two_title_arabia" + str;
        } else if (p10.startsWith("ru")) {
            return "mbridge_reward_two_title_russian" + str;
        } else {
            return "mbridge_reward_two_title_en" + str;
        }
    }

    public static boolean a(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            Uri parse = Uri.parse(str);
            if (parse != null) {
                String queryParameter = parse.getQueryParameter("alecfc");
                if (TextUtils.isEmpty(queryParameter)) {
                    return false;
                }
                return queryParameter.equals("1");
            }
            return false;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static String a(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            Uri parse = Uri.parse(str);
            if (parse != null) {
                String queryParameter = parse.getQueryParameter(str2);
                if (!TextUtils.isEmpty(queryParameter)) {
                    return queryParameter;
                }
            }
            return "";
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                e10.printStackTrace();
            }
            return "";
        }
    }
}
