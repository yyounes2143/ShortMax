package com.inmobi.media;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import com.huawei.hms.support.api.entity.common.CommonConstant;
import com.inmobi.commons.core.configs.TelemetryConfig;
import java.net.URISyntaxException;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public abstract class C3 {
    public static int a(Context context, String url, InterfaceC3259yb redirectionValidator, String api, InterfaceC3269z5 interfaceC3269z5) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(redirectionValidator, "redirectionValidator");
        Intrinsics.checkNotNullParameter(api, "api");
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("DeeplinkHandler", "In appLinkOrDeepLinkHandled");
        }
        if (url.length() == 0) {
            if (interfaceC3269z5 != null) {
                ((A5) interfaceC3269z5).c("DeeplinkHandler", "AppLink url is Empty or null");
                return 2;
            }
            return 2;
        }
        try {
            List b10 = AbstractC3266z2.b(context, url);
            if (!b10.isEmpty()) {
                if (interfaceC3269z5 != null) {
                    ((A5) interfaceC3269z5).c("DeeplinkHandler", "Resolve Info " + ((ResolveInfo) b10.get(0)).activityInfo.name);
                }
                return a(context, url, (ResolveInfo) b10.get(0), redirectionValidator, api, interfaceC3269z5);
            }
            if (interfaceC3269z5 != null) {
                ((A5) interfaceC3269z5).c("DeeplinkHandler", " Resolve Info Empty");
            }
            try {
                return AbstractC3266z2.a(context, url, redirectionValidator, api);
            } catch (ActivityNotFoundException unused) {
                return a(context, url, null, redirectionValidator, api, interfaceC3269z5);
            } catch (NullPointerException unused2) {
                return a(context, url, null, redirectionValidator, api, interfaceC3269z5);
            } catch (SecurityException unused3) {
                if (interfaceC3269z5 != null) {
                    ((A5) interfaceC3269z5).b("DeeplinkHandler", "SecurityException");
                }
                return 12;
            } catch (URISyntaxException unused4) {
                if (interfaceC3269z5 != null) {
                    ((A5) interfaceC3269z5).b("DeeplinkHandler", "uriSyntaxException");
                    return 5;
                }
                return 5;
            } catch (Exception e10) {
                if (interfaceC3269z5 != null) {
                    ((A5) interfaceC3269z5).b("DeeplinkHandler", "Exception: " + e10);
                }
                return 9;
            }
        } catch (URISyntaxException unused5) {
            if (interfaceC3269z5 != null) {
                ((A5) interfaceC3269z5).b("DeeplinkHandler", "URISyntaxException for url: ".concat(url));
            }
            return 5;
        }
    }

    public static boolean a(String url, Context context, InterfaceC3259yb redirectionValidator, InterfaceC3269z5 interfaceC3269z5) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(redirectionValidator, "redirectionValidator");
        if (L3.f23796a.z() && redirectionValidator.a()) {
            LinkedHashMap linkedHashMap = O2.f23923a;
            if (((TelemetryConfig) AbstractC3110p5.a("telemetry", "null cannot be cast to non-null type com.inmobi.commons.core.configs.TelemetryConfig", null)).getLpConfig().getUniversalLinkEnabled()) {
                try {
                    Uri parse = Uri.parse(url);
                    Intrinsics.checkNotNullExpressionValue(parse, "Uri.parse(this)");
                    Intent intent = new Intent(CommonConstant.ACTION.HWID_SCHEME_URL, parse);
                    Intrinsics.checkNotNullParameter(intent, "<this>");
                    intent.addCategory("android.intent.category.BROWSABLE");
                    Intrinsics.checkNotNullParameter(intent, "<this>");
                    intent.setFlags(268436992);
                    Intrinsics.checkNotNullParameter(intent, "<this>");
                    Intrinsics.checkNotNullParameter(context, "context");
                    context.startActivity(intent);
                    if (interfaceC3269z5 != null) {
                        ((A5) interfaceC3269z5).a("DeeplinkHandler", "openDefaultApplication: SUCCESS");
                        return true;
                    }
                    return true;
                } catch (ActivityNotFoundException unused) {
                    if (interfaceC3269z5 != null) {
                        ((A5) interfaceC3269z5).b("DeeplinkHandler", "openDefaultApplication: ActivityNotFoundException");
                    }
                    return false;
                } catch (NullPointerException unused2) {
                    if (interfaceC3269z5 != null) {
                        ((A5) interfaceC3269z5).b("DeeplinkHandler", "openDefaultApplication: NullPointerException");
                    }
                    return false;
                }
            }
            return false;
        }
        return false;
    }

    public static int a(Context context, String str, ResolveInfo resolveInfo, InterfaceC3259yb interfaceC3259yb, String str2, InterfaceC3269z5 interfaceC3269z5) {
        try {
            return AbstractC3266z2.a(context, str, resolveInfo, interfaceC3259yb, str2);
        } catch (ActivityNotFoundException unused) {
            if (interfaceC3269z5 != null) {
                ((A5) interfaceC3269z5).b("DeeplinkHandler", AbstractC2977h0.a("ActivityNotFoundException for url: ", str));
            }
            return 6;
        } catch (NullPointerException unused2) {
            if (interfaceC3269z5 != null) {
                ((A5) interfaceC3269z5).b("DeeplinkHandler", AbstractC2977h0.a("NullPointerException for url: ", str));
            }
            return 13;
        } catch (SecurityException unused3) {
            if (interfaceC3269z5 != null) {
                ((A5) interfaceC3269z5).b("DeeplinkHandler", AbstractC2977h0.a("SecurityException for url: ", str));
            }
            return 12;
        } catch (URISyntaxException unused4) {
            if (interfaceC3269z5 != null) {
                ((A5) interfaceC3269z5).b("DeeplinkHandler", AbstractC2977h0.a("URISyntaxException for url: ", str));
            }
            return 5;
        } catch (Exception e10) {
            if (interfaceC3269z5 != null) {
                ((A5) interfaceC3269z5).b("DeeplinkHandler", "Exception: " + e10);
            }
            return 9;
        }
    }
}
