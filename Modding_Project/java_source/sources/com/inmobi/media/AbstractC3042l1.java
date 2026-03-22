package com.inmobi.media;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import com.huawei.hms.support.api.entity.common.CommonConstant;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.l1  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public abstract class AbstractC3042l1 {
    public static boolean a(Context context, String url, InterfaceC3259yb redirectionValidator, String api, InterfaceC3269z5 interfaceC3269z5) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(redirectionValidator, "redirectionValidator");
        Intrinsics.checkNotNullParameter(api, "api");
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("AppstoreLinkHandler", "In appStoreLinkHandled");
        }
        Intrinsics.checkNotNullParameter(url, "url");
        if (url.length() != 0) {
            Uri parse = Uri.parse(url);
            if (Intrinsics.areEqual("market", parse.getScheme()) || Intrinsics.areEqual("play.google.com", parse.getHost()) || Intrinsics.areEqual("market.android.com", parse.getHost())) {
                Uri parse2 = Uri.parse(url);
                if (context != null) {
                    try {
                        context.getPackageManager().getPackageInfo("com.android.vending", 0);
                        if (!redirectionValidator.d()) {
                            redirectionValidator.a("EX_" + api);
                            return false;
                        }
                        try {
                            Intent intent = new Intent(CommonConstant.ACTION.HWID_SCHEME_URL, parse2);
                            intent.setPackage("com.android.vending");
                            intent.addFlags(268435456);
                            context.startActivity(intent);
                            if (interfaceC3269z5 != null) {
                                ((A5) interfaceC3269z5).c("AppstoreLinkHandler", "Playstore link handled successfully");
                            }
                            return true;
                        } catch (Exception e10) {
                            if (interfaceC3269z5 == null) {
                                return false;
                            }
                            ((A5) interfaceC3269z5).c("AppstoreLinkHandler", rf.a(e10, new StringBuilder("Error message in processing appStoreLinkHandling: ")));
                            return false;
                        }
                    } catch (PackageManager.NameNotFoundException e11) {
                        e11.printStackTrace();
                    }
                }
                int a10 = C3.a(context, url, redirectionValidator, api, interfaceC3269z5);
                if (a10 != 0 && a10 != 1) {
                    return false;
                }
                if (interfaceC3269z5 != null) {
                    ((A5) interfaceC3269z5).c("AppstoreLinkHandler", "Playstore link handled successfully");
                }
                return true;
            }
        }
        return false;
    }
}
