package com.mbridge.msdk.foundation.tools;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.huawei.hms.support.api.entity.common.CommonConstant;
import com.mbridge.msdk.activity.MBCommonActivity;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.webview.BrowserView;
import com.mbridge.msdk.out.BaseTrackingListener;
import com.mbridge.msdk.out.Campaign;
import com.mbridge.msdk.out.NativeListener;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* compiled from: SameSDKTool.java */
/* loaded from: classes5.dex */
public class t0 extends w {

    /* renamed from: a  reason: collision with root package name */
    public static char[] f27510a = {'a', 'n', 'd', 'r', 'o', 'i', 'd', 'c', 'o', 'n', 't', 'e', 'n', 't', 'p', 'm', 'g', 'e', 't', 'C', 'o', 'n', 't', 'e', 'x', 't'};

    /* renamed from: b  reason: collision with root package name */
    public static boolean f27511b = false;

    /* renamed from: c  reason: collision with root package name */
    public static LinearLayout f27512c;

    /* compiled from: SameSDKTool.java */
    /* loaded from: classes5.dex */
    public static class a {
        public static boolean a(Context context, String str, NativeListener.NativeTrackingListener nativeTrackingListener) {
            try {
                List<ResolveInfo> a10 = a(context);
                if (a10 != null && a10.size() > 0) {
                    String a11 = a(str);
                    if (TextUtils.isEmpty(a11)) {
                        return false;
                    }
                    Intent b10 = b(context);
                    b10.setData(Uri.parse(a11));
                    b10.addFlags(268435456);
                    Iterator<ResolveInfo> it = a10.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        } else if (it.next().activityInfo.packageName.equals("com.android.vending")) {
                            b10.setPackage("com.android.vending");
                            break;
                        }
                    }
                    context.startActivity(b10);
                    t0.a(nativeTrackingListener);
                    return true;
                }
                return false;
            } catch (Throwable th2) {
                p0.b("SDKUtil", Log.getStackTraceString(th2));
                return false;
            }
        }

        public static Intent b(Context context) {
            return new Intent(CommonConstant.ACTION.HWID_SCHEME_URL, Uri.parse("market://details?id=com.package.name"));
        }

        public static boolean c(String str) {
            Uri parse;
            try {
                if (TextUtils.isEmpty(str) || (parse = Uri.parse(str)) == null || TextUtils.isEmpty(parse.getHost())) {
                    return false;
                }
                if (!parse.getHost().equals("play.google.com")) {
                    if (!parse.getHost().equals("market.android.com")) {
                        return false;
                    }
                }
                return true;
            } catch (Throwable th2) {
                p0.b("SDKUtil", Log.getStackTraceString(th2));
            }
            return false;
        }

        public static boolean d(String str) {
            try {
                if (!TextUtils.isEmpty(str)) {
                    return Uri.parse(str).getScheme().equals("market");
                }
                return false;
            } catch (Throwable th2) {
                p0.b("SDKUtil", Log.getStackTraceString(th2));
                return false;
            }
        }

        public static boolean b(String str) {
            return d(str) || c(str);
        }

        public static List<ResolveInfo> a(Context context) {
            try {
                return context.getPackageManager().queryIntentActivities(b(context), 0);
            } catch (Exception e10) {
                e10.printStackTrace();
                return null;
            }
        }

        public static String a(String str) {
            if (d(str)) {
                return str;
            }
            if (c(str)) {
                String substring = str.substring(str.indexOf("details?id="));
                return "market://" + substring;
            }
            return null;
        }
    }

    public static String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return new File(com.mbridge.msdk.foundation.same.directory.e.a(com.mbridge.msdk.foundation.same.directory.c.MBRIDGE_700_IMG), b(str)).getAbsolutePath();
    }

    public static String b(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        if (str.lastIndexOf(DomExceptionUtils.SEPARATOR) == -1) {
            return str.hashCode() + "";
        }
        return (str.hashCode() + str.substring(str.lastIndexOf(DomExceptionUtils.SEPARATOR) + 1).hashCode()) + "";
    }

    public static void a(Context context, String str, NativeListener.NativeTrackingListener nativeTrackingListener) {
        try {
            Intent intent = new Intent(CommonConstant.ACTION.HWID_SCHEME_URL, Uri.parse(str));
            intent.addFlags(268435456);
            List<ResolveInfo> queryIntentActivities = context.getPackageManager().queryIntentActivities(intent, 0);
            boolean z10 = queryIntentActivities.size() > 0;
            if (!str.startsWith("market://")) {
                if (str.startsWith("https://play.google.com/")) {
                    String replace = str.replace("https://play.google.com/store/apps/details?id=", "");
                    a(context, "market://details?id=" + replace, nativeTrackingListener);
                }
            } else if (!z10) {
                String replace2 = str.replace("market://details?id=", "");
                a(context, "https://play.google.com/store/apps/details?id=" + replace2, (BaseTrackingListener) nativeTrackingListener);
            } else {
                for (ResolveInfo resolveInfo : queryIntentActivities) {
                    if (resolveInfo.activityInfo.packageName.equals("com.android.vending")) {
                        intent.setClassName("com.android.vending", "com.android.vending.AssetBrowserActivity");
                        break;
                    }
                }
                try {
                    context.startActivity(intent);
                    a(nativeTrackingListener);
                } catch (Exception unused) {
                    String replace3 = str.replace("market://details?id=", "");
                    a(context, "https://play.google.com/store/apps/details?id=" + replace3, (BaseTrackingListener) nativeTrackingListener);
                }
            }
        } catch (Exception e10) {
            p0.b("SDKUtil", e10.getMessage());
        }
    }

    public static void b(Campaign campaign, ViewGroup viewGroup) {
        a(campaign, viewGroup, 0, 0);
    }

    public static void a(Campaign campaign, ViewGroup viewGroup) {
        if (campaign != null) {
            CampaignEx campaignEx = (CampaignEx) campaign;
            if (campaignEx.getLinkType() == 8 && campaignEx.getAabEntity() != null && campaignEx.getAabEntity().getHlp() == 1) {
                if (viewGroup == null) {
                    p0.d("SDKUtil", "hide linkType==8 loading view failed. viewGroup is null");
                    return;
                }
                try {
                    LinearLayout linearLayout = f27512c;
                    if (linearLayout == null) {
                        return;
                    }
                    viewGroup.removeView(linearLayout);
                } catch (Throwable th2) {
                    th2.printStackTrace();
                }
            }
        }
    }

    public static void a(Context context, String str, BaseTrackingListener baseTrackingListener) {
        a(context, str, baseTrackingListener, (CampaignEx) null, new ArrayList());
    }

    public static void a(Context context, String str, CampaignEx campaignEx, NativeListener.NativeTrackingListener nativeTrackingListener, List<String> list) {
        Intent intent;
        if (context == null) {
            return;
        }
        com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
        if (list != null) {
            list.add("web_view");
        }
        if (f27511b) {
            a(context, str, nativeTrackingListener, campaignEx, list);
            return;
        }
        try {
            int i10 = MBCommonActivity.f25724e;
            intent = new Intent(context, MBCommonActivity.class);
        } catch (Exception unused) {
            eVar.a("result", 2);
            a(context, str, nativeTrackingListener, campaignEx, list);
        }
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (a.d(str)) {
            str = "https://play.google.com/store/apps/details?id=" + str.replace("market://details?id=", "");
        }
        intent.putExtra("url", str);
        p0.c("url", "webview url = " + str);
        intent.setFlags(268435456);
        intent.putExtra("mvcommon", campaignEx);
        context.startActivity(intent);
        eVar.a("result", 1);
        eVar.a("type", 9);
        if (list != null) {
            eVar.a("click_path", list.toString());
        }
        com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000150", campaignEx, eVar);
    }

    public static void a(Context context, String str, BaseTrackingListener baseTrackingListener, CampaignEx campaignEx, List<String> list) {
        if (str == null || context == null) {
            return;
        }
        if (list != null) {
            list.add("browser");
        }
        com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
        try {
            if (a.d(str)) {
                str = "https://play.google.com/store/apps/details?id=" + str.replace("market://details?id=", "");
            }
            Intent intent = new Intent(CommonConstant.ACTION.HWID_SCHEME_URL, Uri.parse(str));
            intent.setComponent(null);
            intent.setSelector(null);
            intent.addFlags(268435456);
            ResolveInfo resolveActivity = context.getPackageManager().resolveActivity(intent, 65536);
            if (resolveActivity != null) {
                ActivityInfo activityInfo = resolveActivity.activityInfo;
                intent.setClassName(activityInfo.packageName, activityInfo.name);
            }
            context.startActivity(intent);
            a(baseTrackingListener);
            eVar.a("result", 1);
        } catch (Exception e10) {
            e10.printStackTrace();
            try {
                Intent intent2 = new Intent(CommonConstant.ACTION.HWID_SCHEME_URL, Uri.parse(str));
                intent2.addFlags(268468224);
                context.startActivity(intent2);
                a(baseTrackingListener);
                eVar.a("result", 1);
            } catch (Exception e11) {
                e11.printStackTrace();
                eVar.a("result", 2);
            }
        }
        try {
            eVar.a("type", 5);
            if (list != null) {
                eVar.a("click_path", list.toString());
            }
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000150", campaignEx, eVar);
        } catch (Exception unused) {
        }
    }

    public static void a(BaseTrackingListener baseTrackingListener) {
        if (baseTrackingListener instanceof NativeListener.TrackingExListener) {
            ((NativeListener.TrackingExListener) baseTrackingListener).onLeaveApp();
        }
    }

    public static void a(Context context, String str, CampaignEx campaignEx, com.mbridge.msdk.click.a aVar, BaseTrackingListener baseTrackingListener, List<String> list) {
        com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
        eVar.a("type", 9);
        try {
            BrowserView browserView = new BrowserView(com.mbridge.msdk.foundation.controller.c.m().d(), campaignEx);
            browserView.setLayoutParams(new LinearLayout.LayoutParams(l0.n(context), l0.m(context)));
            browserView.setListener(new com.mbridge.msdk.foundation.webview.a(context, campaignEx, aVar, browserView, baseTrackingListener));
            browserView.loadUrl(str);
            eVar.a("result", "1");
        } catch (Exception e10) {
            p0.b("SDKUtil", e10.getMessage());
            eVar.a("result", "2");
        }
        if (list != null) {
            eVar.a("click_path", list.toString());
        }
        com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000150", campaignEx, eVar);
    }

    public static void a(Campaign campaign, ViewGroup viewGroup, int i10, int i11) {
        if (campaign != null) {
            CampaignEx campaignEx = (CampaignEx) campaign;
            if (campaignEx.getLinkType() == 8 && campaignEx.getAabEntity() != null && campaignEx.getAabEntity().getHlp() == 1) {
                if (viewGroup == null) {
                    p0.d("SDKUtil", "show linkType==8 loading view failed. viewGroup is null");
                    return;
                }
                try {
                    if (f27512c == null) {
                        Context d10 = com.mbridge.msdk.foundation.controller.c.m().d();
                        if (d10 instanceof Activity) {
                            f27512c = (LinearLayout) LayoutInflater.from(d10.getApplicationContext()).inflate(h0.a(d10.getApplicationContext(), "mbridge_cm_loading_layout", TtmlNode.TAG_LAYOUT), (ViewGroup) null);
                        } else {
                            f27512c = (LinearLayout) LayoutInflater.from(d10).inflate(h0.a(d10, "mbridge_cm_loading_layout", TtmlNode.TAG_LAYOUT), (ViewGroup) null);
                        }
                    }
                    int min = Math.min(viewGroup.getWidth(), viewGroup.getHeight());
                    int min2 = Math.min(Math.max(min / 4, 70), min);
                    if (viewGroup instanceof FrameLayout) {
                        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(min2, min2);
                        layoutParams.gravity = 17;
                        e1.a(f27512c);
                        viewGroup.addView(f27512c, layoutParams);
                        return;
                    }
                    RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(min2, min2);
                    if (i11 == 0 && i10 == 0) {
                        layoutParams2.addRule(13);
                    } else {
                        layoutParams2.leftMargin = i11;
                        layoutParams2.topMargin = i10;
                    }
                    e1.a(f27512c);
                    viewGroup.addView(f27512c, layoutParams2);
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }
    }
}
