package com.inmobi.media;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import androidx.webkit.ProxyConfig;
import com.huawei.hms.support.api.entity.common.CommonConstant;
import com.huawei.hms.support.api.entity.core.CommonCode;
import java.net.URISyntaxException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.z2  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public abstract class AbstractC3266z2 {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ int f25477a = 0;

    public static boolean a(Context context, String str) {
        if (str != null) {
            if (context != null) {
                try {
                    Uri parse = Uri.parse(str);
                    Intrinsics.checkNotNullExpressionValue(parse, "Uri.parse(this)");
                    if (new Intent(CommonConstant.ACTION.HWID_SCHEME_URL, parse).resolveActivity(context.getPackageManager()) != null) {
                        return true;
                    }
                } catch (Exception unused) {
                }
            } else {
                Uri parse2 = Uri.parse(str);
                Intrinsics.checkNotNullExpressionValue(parse2, "Uri.parse(this)");
                return a(parse2);
            }
        }
        return false;
    }

    public static final String b(Context context, R7 r72, String str, String str2) {
        String str3;
        if (B2.a(str)) {
            Intrinsics.checkNotNull(str);
            return a(context, r72, str, (String) null);
        }
        try {
            Uri parse = Uri.parse(str2);
            Intrinsics.checkNotNullExpressionValue(parse, "Uri.parse(this)");
            try {
                str3 = Intent.parseUri(str2, 1).getStringExtra("browser_fallback_url");
            } catch (URISyntaxException unused) {
                Intrinsics.checkNotNullExpressionValue("z2", "TAG");
                str3 = null;
            }
            if (Intrinsics.areEqual(CommonCode.Resolution.HAS_RESOLUTION_FROM_APK, parse.getScheme()) && B2.a(str3)) {
                String decode = URLDecoder.decode(str3, "UTF-8");
                Intrinsics.checkNotNullExpressionValue(decode, "decode(...)");
                return a(context, r72, decode, (String) null);
            }
        } catch (Exception unused2) {
            Intrinsics.checkNotNullExpressionValue("z2", "TAG");
        }
        return null;
    }

    public static int a(Context context, String url, ResolveInfo resolveInfo, InterfaceC3259yb redirectionValidator, String api) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(redirectionValidator, "redirectionValidator");
        Intrinsics.checkNotNullParameter(api, "api");
        if (context == null) {
            return 7;
        }
        if (!redirectionValidator.d()) {
            redirectionValidator.a("EX_" + api);
            return 8;
        }
        Intent parseUri = Intent.parseUri(url, 3);
        Intrinsics.checkNotNullExpressionValue(parseUri, "parseUri(...)");
        if ((resolveInfo != null ? resolveInfo.activityInfo : null) != null) {
            ActivityInfo activityInfo = resolveInfo.activityInfo;
            if ((activityInfo != null ? activityInfo.packageName : null) != null) {
                if ((activityInfo != null ? activityInfo.name : null) != null) {
                    parseUri.setClassName(activityInfo.packageName, activityInfo.name);
                }
            }
        }
        parseUri.setFlags(268435456);
        context.startActivity(parseUri);
        return 0;
    }

    public static List b(Context context, String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        if (url.length() == 0 || context == null) {
            return CollectionsKt.n();
        }
        Intent parseUri = Intent.parseUri(url, 3);
        Intrinsics.checkNotNullExpressionValue(parseUri, "parseUri(...)");
        List<ResolveInfo> queryIntentActivityOptions = context.getPackageManager().queryIntentActivityOptions(null, null, parseUri, 0);
        Intrinsics.checkNotNullExpressionValue(queryIntentActivityOptions, "queryIntentActivityOptions(...)");
        ArrayList arrayList = new ArrayList();
        for (Object obj : queryIntentActivityOptions) {
            if (((ResolveInfo) obj).activityInfo.exported) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public static int a(Context context, String url, InterfaceC3259yb redirectionValidator, String api) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(redirectionValidator, "redirectionValidator");
        Intrinsics.checkNotNullParameter(api, "api");
        if (context == null) {
            return 7;
        }
        if (!redirectionValidator.d()) {
            redirectionValidator.a("EX_" + api);
            return 8;
        }
        String str = null;
        try {
            Intent parseUri = Intent.parseUri(url, 0);
            parseUri.setFlags(268435456);
            context.startActivity(parseUri);
            return 0;
        } catch (ActivityNotFoundException e10) {
            Uri parse = Uri.parse(url);
            Intrinsics.checkNotNullExpressionValue(parse, "Uri.parse(this)");
            try {
                str = Intent.parseUri(url, 1).getStringExtra("browser_fallback_url");
            } catch (URISyntaxException unused) {
                Intrinsics.checkNotNullExpressionValue("z2", "TAG");
            }
            if (Intrinsics.areEqual(CommonCode.Resolution.HAS_RESOLUTION_FROM_APK, parse.getScheme()) && str != null && str.length() != 0) {
                return a(context, str, redirectionValidator, api);
            }
            throw e10;
        } catch (NullPointerException e11) {
            Uri parse2 = Uri.parse(url);
            Intrinsics.checkNotNullExpressionValue(parse2, "Uri.parse(this)");
            try {
                str = Intent.parseUri(url, 1).getStringExtra("browser_fallback_url");
            } catch (URISyntaxException unused2) {
                Intrinsics.checkNotNullExpressionValue("z2", "TAG");
            }
            if (Intrinsics.areEqual(CommonCode.Resolution.HAS_RESOLUTION_FROM_APK, parse2.getScheme()) && str != null && str.length() != 0) {
                return a(context, str, redirectionValidator, api);
            }
            throw e11;
        }
    }

    public static String a(Context context, R7 redirectionValidator, String url, String str) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(redirectionValidator, "redirectionValidator");
        Intrinsics.checkNotNullParameter("NATIVE", "api");
        if (context == null) {
            return null;
        }
        redirectionValidator.getClass();
        try {
            Intent parseUri = Intent.parseUri(url, 0);
            if (parseUri.resolveActivity(context.getPackageManager()) != null) {
                parseUri.setFlags(268435456);
                context.startActivity(parseUri);
            } else {
                Intrinsics.checkNotNullExpressionValue("z2", "TAG");
                url = b(context, redirectionValidator, str, url);
            }
            return url;
        } catch (Exception unused) {
            Intrinsics.checkNotNullExpressionValue("z2", "TAG");
            return b(context, redirectionValidator, str, url);
        }
    }

    public static boolean a(Uri uri) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        return Intrinsics.areEqual(ProxyConfig.MATCH_HTTP, uri.getScheme()) || Intrinsics.areEqual("https", uri.getScheme());
    }

    public static boolean a(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        Uri parse = Uri.parse(url);
        Intrinsics.checkNotNullExpressionValue(parse, "Uri.parse(this)");
        return (!a(parse) || Intrinsics.areEqual("play.google.com", parse.getHost()) || Intrinsics.areEqual("market.android.com", parse.getHost()) || Intrinsics.areEqual("market", parse.getScheme())) ? false : true;
    }
}
