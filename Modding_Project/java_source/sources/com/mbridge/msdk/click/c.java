package com.mbridge.msdk.click;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.ContextThemeWrapper;
import android.widget.Toast;
import com.huawei.hms.support.api.entity.common.CommonConstant;
import com.huawei.hms.support.api.entity.core.CommonCode;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.activity.MBCommonActivity;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.e0;
import com.mbridge.msdk.foundation.tools.l0;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.mbbid.common.BidResponsedEx;
import com.mbridge.msdk.setting.b;
import java.lang.reflect.Method;
import java.util.List;
import java.util.Map;
/* compiled from: CommonClickUtil.java */
/* loaded from: classes4.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    static Handler f25987a = new a(Looper.getMainLooper());

    /* compiled from: CommonClickUtil.java */
    /* loaded from: classes4.dex */
    class a extends Handler {
        a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            String str;
            String str2;
            String str3;
            super.handleMessage(message);
            try {
                if (message.what == 1000) {
                    int i10 = message.arg1;
                    int i11 = message.arg2;
                    Bundle data = message.getData();
                    if (data != null) {
                        String string = data.getString("rid");
                        String string2 = data.getString("rid_n");
                        str3 = data.getString(BidResponsedEx.KEY_CID);
                        str = string;
                        str2 = string2;
                    } else {
                        str = "";
                        str2 = str;
                        str3 = str2;
                    }
                    new com.mbridge.msdk.foundation.same.report.h(com.mbridge.msdk.foundation.controller.c.m().d()).a(i10, i11, str, str2, str3);
                }
            } catch (Throwable th2) {
                if (MBridgeConstans.DEBUG) {
                    th2.printStackTrace();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CommonClickUtil.java */
    /* loaded from: classes4.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f25988a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f25989b;

        b(Context context, String str) {
            this.f25988a = context;
            this.f25989b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Method method = e0.class.getMethod("mia", Context.class, String.class);
                Context context = this.f25988a;
                if (context != null) {
                    method.invoke(null, context, this.f25989b);
                } else {
                    p0.b("CommonClickUtil", "Context is null");
                }
            } catch (Throwable th2) {
                p0.b("CommonClickUtil", th2.getMessage());
            }
        }
    }

    public static boolean a(CampaignEx campaignEx) {
        return d.a(campaignEx);
    }

    public static void b(Context context, String str) {
        Intent launchIntentForPackage;
        List<ResolveInfo> queryIntentActivities;
        ResolveInfo next;
        try {
            if (!TextUtils.isEmpty(str) && a(context, str) && (launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(str)) != null && (queryIntentActivities = context.getPackageManager().queryIntentActivities(launchIntentForPackage, 0)) != null && queryIntentActivities.size() > 0 && (next = queryIntentActivities.iterator().next()) != null) {
                ActivityInfo activityInfo = next.activityInfo;
                ComponentName componentName = new ComponentName(activityInfo.packageName, activityInfo.name);
                Intent intent = new Intent();
                intent.setComponent(componentName);
                intent.addFlags(268435456);
                context.startActivity(intent);
            }
        } catch (Exception e10) {
            if (com.mbridge.msdk.util.b.a()) {
                Toast.makeText(context, "The app connot start up", 0).show();
            }
            e10.printStackTrace();
        }
    }

    public static void c(Context context, String str) {
        if (str != null && context != null) {
            try {
                Intent intent = new Intent(CommonConstant.ACTION.HWID_SCHEME_URL, Uri.parse(str));
                intent.addFlags(268435456);
                ResolveInfo resolveActivity = context.getPackageManager().resolveActivity(intent, 65536);
                if (resolveActivity != null) {
                    ActivityInfo activityInfo = resolveActivity.activityInfo;
                    intent.setClassName(activityInfo.packageName, activityInfo.name);
                }
                context.startActivity(intent);
            } catch (Exception e10) {
                e10.printStackTrace();
                try {
                    Intent intent2 = new Intent(CommonConstant.ACTION.HWID_SCHEME_URL, Uri.parse(str));
                    intent2.addFlags(268435456);
                    context.startActivity(intent2);
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
            }
        }
    }

    public static boolean d(Context context, String str) {
        Intent intent;
        try {
            if (!TextUtils.isEmpty(str)) {
                Uri parse = Uri.parse(str);
                if (parse.getScheme().equals(CommonCode.Resolution.HAS_RESOLUTION_FROM_APK)) {
                    intent = Intent.parseUri(str, 1);
                } else if (parse.getScheme().equals("android-app")) {
                    intent = Intent.parseUri(str, 2);
                } else {
                    intent = new Intent(CommonConstant.ACTION.HWID_SCHEME_URL, parse);
                    intent.setData(parse);
                }
                if (intent != null) {
                    intent.setComponent(null);
                    intent.setSelector(null);
                    if (a(context, intent)) {
                        return true;
                    }
                    intent.setFlags(268435456);
                    context.startActivity(intent);
                    return true;
                }
            }
        } catch (Throwable th2) {
            p0.b("CommonClickUtil", th2.getMessage(), th2);
        }
        return false;
    }

    public static void e(Context context, String str) {
        if (context != null && str != null) {
            try {
                int i10 = MBCommonActivity.f25724e;
                Intent intent = new Intent(context, MBCommonActivity.class);
                intent.putExtra("url", str);
                if (!(context instanceof ContextThemeWrapper)) {
                    intent.setFlags(268435456);
                }
                context.startActivity(intent);
            } catch (ClassNotFoundException e10) {
                p0.b("CommonClickUtil", e10.getMessage());
            } catch (Throwable th2) {
                p0.b("CommonClickUtil", th2.getMessage());
            }
        }
    }

    public static String a(String str, String str2, String str3) {
        Map<String, b.a> l10;
        try {
            if (TextUtils.isEmpty(str)) {
                return str;
            }
            String host = Uri.parse(str).getHost();
            com.mbridge.msdk.setting.g d10 = com.mbridge.msdk.setting.h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
            if (d10 == null || (l10 = d10.l()) == null || TextUtils.isEmpty(host)) {
                return str;
            }
            for (Map.Entry<String, b.a> entry : l10.entrySet()) {
                String key = entry.getKey();
                if (!TextUtils.isEmpty(key) && host.contains(key)) {
                    b.a aVar = l10.get(key);
                    return aVar != null ? a(a(a(a(str, aVar.a(), String.valueOf(l0.m(com.mbridge.msdk.foundation.controller.c.m().d()))), aVar.b(), String.valueOf(l0.n(com.mbridge.msdk.foundation.controller.c.m().d()))), aVar.c(), str2), aVar.d(), str3) : str;
                }
            }
            return str;
        } catch (Exception e10) {
            e10.printStackTrace();
            return str;
        }
    }

    private static String a(String str, List<String> list, String str2) {
        if (list != null) {
            for (String str3 : list) {
                if (!TextUtils.isEmpty(str3)) {
                    str = str.replaceAll(str3, str2);
                }
            }
        }
        return str;
    }

    public static boolean a(Context context, String str) {
        if (str != null && !"".equals(str)) {
            try {
                PackageInfo packageInfo = context.getPackageManager().getPackageInfo(str, 8192);
                if (packageInfo != null) {
                    return str.equals(packageInfo.packageName);
                }
            } catch (Exception unused) {
            }
        }
        return false;
    }

    public static boolean a(Context context, Intent intent) {
        try {
        } catch (Throwable th2) {
            p0.b("CommonClickUtil", th2.getMessage(), th2);
        }
        if (context instanceof Activity) {
            context.startActivity(intent);
            return true;
        }
        if (com.mbridge.msdk.foundation.controller.c.m().f() != null) {
            Context f10 = com.mbridge.msdk.foundation.controller.c.m().f();
            if (f10 instanceof Activity) {
                f10.startActivity(intent);
                return true;
            }
            return false;
        }
        return false;
    }

    public static void a(Context context, int i10, String str) {
        if (i10 == 0) {
            return;
        }
        try {
            com.mbridge.msdk.foundation.same.threadpool.a.b().execute(new b(context, str));
        } catch (Throwable th2) {
            p0.b("CommonClickUtil", th2.getMessage());
        }
    }
}
