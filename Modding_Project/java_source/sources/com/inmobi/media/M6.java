package com.inmobi.media;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.SparseArray;
import android.webkit.URLUtil;
import androidx.webkit.ProxyConfig;
import com.inmobi.ads.rendering.InMobiAdActivity;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import com.vungle.ads.internal.presenter.MRAIDPresenter;
import java.io.UnsupportedEncodingException;
import java.lang.ref.WeakReference;
import java.net.URISyntaxException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.UUID;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
/* loaded from: classes5.dex */
public final class M6 {

    /* renamed from: i  reason: collision with root package name */
    public static final /* synthetic */ int f23838i = 0;

    /* renamed from: a  reason: collision with root package name */
    public final Context f23839a;

    /* renamed from: b  reason: collision with root package name */
    public final N6 f23840b;

    /* renamed from: c  reason: collision with root package name */
    public final InterfaceC2931e2 f23841c;

    /* renamed from: d  reason: collision with root package name */
    public final Ub f23842d;

    /* renamed from: e  reason: collision with root package name */
    public final X1 f23843e;

    /* renamed from: f  reason: collision with root package name */
    public final S6 f23844f;

    /* renamed from: g  reason: collision with root package name */
    public final InterfaceC3269z5 f23845g;

    /* renamed from: h  reason: collision with root package name */
    public int f23846h;

    public M6(Context context, N6 landingPageState, InterfaceC2931e2 interfaceC2931e2, Ub ub2, InterfaceC3259yb redirectionValidator, S6 s62, InterfaceC3269z5 interfaceC3269z5) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(landingPageState, "landingPageState");
        Intrinsics.checkNotNullParameter(redirectionValidator, "redirectionValidator");
        this.f23839a = context;
        this.f23840b = landingPageState;
        this.f23841c = interfaceC2931e2;
        this.f23842d = ub2;
        this.f23843e = (X1) redirectionValidator;
        this.f23844f = s62;
        this.f23845g = interfaceC3269z5;
    }

    /* JADX WARN: Code restructure failed: missing block: B:110:0x01e3, code lost:
        if (r6.equals("DEFAULT") == false) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x01f8, code lost:
        r5 = r16.f23845g;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x01fa, code lost:
        if (r5 == null) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x01fc, code lost:
        kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue("M6", "TAG");
        ((com.inmobi.media.A5) r5).c("M6", "default - internal native");
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x0206, code lost:
        r7 = r16.c(r17, r18, r19, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0144, code lost:
        if (r6.equals("IN_NATIVE") == false) goto L83;
     */
    /* JADX WARN: Removed duplicated region for block: B:113:0x01e9  */
    /* JADX WARN: Type inference failed for: r13v5, types: [com.inmobi.media.X1, com.inmobi.media.yb] */
    /* JADX WARN: Type inference failed for: r14v4, types: [com.inmobi.media.X1, com.inmobi.media.yb] */
    /* JADX WARN: Type inference failed for: r15v1, types: [com.inmobi.media.X1, com.inmobi.media.yb] */
    /* JADX WARN: Type inference failed for: r7v5, types: [com.inmobi.media.X1, com.inmobi.media.yb] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.inmobi.media.K6 a(com.inmobi.media.M6 r16, java.lang.String r17, java.lang.String r18, java.lang.String r19, com.inmobi.media.R6 r20, boolean r21, int r22) {
        /*
            Method dump skipped, instructions count: 743
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.M6.a(com.inmobi.media.M6, java.lang.String, java.lang.String, java.lang.String, com.inmobi.media.R6, boolean, int):com.inmobi.media.K6");
    }

    /* JADX WARN: Type inference failed for: r11v0, types: [com.inmobi.media.X1, com.inmobi.media.yb] */
    /* JADX WARN: Type inference failed for: r15v0, types: [com.inmobi.media.X1, com.inmobi.media.yb] */
    public final K6 b(String str, String str2, String str3, R6 r62) {
        InterfaceC3269z5 interfaceC3269z5 = this.f23845g;
        if (interfaceC3269z5 != null) {
            Intrinsics.checkNotNullExpressionValue("M6", "TAG");
            ((A5) interfaceC3269z5).c("M6", "In processInMobiNativeBrowserScheme");
        }
        String queryParameter = Uri.parse(str3).getQueryParameter("url");
        if (queryParameter != null && queryParameter.length() != 0) {
            if (r62 != null) {
                r62.f24066g = "EX_NATIVE";
            }
            if (C3.a(str3, this.f23839a, this.f23843e, this.f23845g)) {
                F6 f62 = F6.f23636f;
                J6.a(f62, r62, (Integer) null, G6.a(f62, "funnelState", this));
                c(str, str2, str3);
                InterfaceC3269z5 interfaceC3269z52 = this.f23845g;
                if (interfaceC3269z52 != null) {
                    Intrinsics.checkNotNullExpressionValue("M6", "TAG");
                    ((A5) interfaceC3269z52).c("M6", "InmobiNativeBrowser scheme url handled successfully");
                }
                return new K6(1);
            }
            int a10 = C3.a(this.f23839a, queryParameter, this.f23843e, str, this.f23845g);
            if (a10 != 0 && a10 != 1) {
                Ub ub2 = this.f23842d;
                if (ub2 != null) {
                    Intrinsics.checkNotNullParameter("Invalid URL", "message");
                    ub2.f24266a.a(str2, "Invalid URL", str);
                }
                InterfaceC3269z5 interfaceC3269z53 = this.f23845g;
                if (interfaceC3269z53 != null) {
                    Intrinsics.checkNotNullExpressionValue("M6", "TAG");
                    ((A5) interfaceC3269z53).c("M6", "InmobiNativeBrowser scheme url handling failed");
                }
                F6 f63 = F6.f23637g;
                J6.a(f63, r62, Integer.valueOf(a10), G6.a(f63, "funnelState", this));
                return new K6(2, Integer.valueOf(a10));
            }
            F6 f64 = F6.f23636f;
            J6.a(f64, r62, (Integer) null, G6.a(f64, "funnelState", this));
            c(str, str2, str3);
            InterfaceC3269z5 interfaceC3269z54 = this.f23845g;
            if (interfaceC3269z54 != null) {
                Intrinsics.checkNotNullExpressionValue("M6", "TAG");
                ((A5) interfaceC3269z54).c("M6", "InmobiNativeBrowser scheme url handled successfully");
            }
            return new K6(1);
        }
        Ub ub3 = this.f23842d;
        if (ub3 != null) {
            Intrinsics.checkNotNullParameter("Invalid URL", "message");
            ub3.f24266a.a(str2, "Invalid URL", str);
        }
        InterfaceC3269z5 interfaceC3269z55 = this.f23845g;
        if (interfaceC3269z55 != null) {
            Intrinsics.checkNotNullExpressionValue("M6", "TAG");
            ((A5) interfaceC3269z55).c("M6", "InMobiNativeBrowserScheme url is Empty or null");
        }
        F6 f65 = F6.f23635e;
        J6.a(f65, r62, (Integer) 8001, (Function2) G6.a(f65, "funnelState", this));
        return new K6(3, 8001);
    }

    public final int c(String str, String str2, String str3, R6 r62) {
        InterfaceC3269z5 interfaceC3269z5 = this.f23845g;
        if (interfaceC3269z5 != null) {
            Intrinsics.checkNotNullExpressionValue("M6", "TAG");
            ((A5) interfaceC3269z5).a("M6", "In processInternalNativeRequest");
        }
        try {
            return d(str, str2, str3, r62);
        } catch (Exception e10) {
            Ub ub2 = this.f23842d;
            if (ub2 != null) {
                Intrinsics.checkNotNullParameter("Unexpected error", "message");
                ub2.f24266a.a(str2, "Unexpected error", MRAIDPresenter.OPEN);
            }
            AbstractC2984h7.a((byte) 1, "InMobi", "Failed to open URL SDK encountered unexpected error");
            InterfaceC3269z5 interfaceC3269z52 = this.f23845g;
            if (interfaceC3269z52 != null) {
                ((A5) interfaceC3269z52).b("M6", rf.a(e10, H6.a("M6", "TAG", "SDK encountered unexpected error in handling open() request from creative ")));
            }
            return 9;
        }
    }

    /* JADX WARN: Type inference failed for: r3v7, types: [com.inmobi.media.X1, com.inmobi.media.yb] */
    /* JADX WARN: Type inference failed for: r7v0, types: [com.inmobi.media.X1, com.inmobi.media.yb] */
    public final int d(String api, String str, String str2, R6 r62) {
        boolean z10;
        Intrinsics.checkNotNullParameter(api, "api");
        InterfaceC3269z5 interfaceC3269z5 = this.f23845g;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("M6", I6.a("M6", "TAG", "processOpenCCTRequest - url - ", str2));
        }
        if (r62 != null) {
            r62.f24066g = "IN_NATIVE";
        }
        if (str2 != null) {
            Integer num = null;
            if (!StringsKt.V(str2, ProxyConfig.MATCH_HTTP, false, 2, null) || URLUtil.isValidUrl(str2)) {
                String a10 = AbstractC3235x3.a(this.f23839a);
                try {
                    z10 = this.f23840b.f23882c;
                } catch (Exception unused) {
                    num = null;
                }
                try {
                    if (a10 != null && z10) {
                        new C3027k2(str2, null, this.f23839a, this.f23841c, this.f23843e, r62, api).a();
                        InterfaceC3269z5 interfaceC3269z52 = this.f23845g;
                        if (interfaceC3269z52 != null) {
                            Intrinsics.checkNotNullExpressionValue("M6", "TAG");
                            ((A5) interfaceC3269z52).c("M6", "Default and Internal Native handled successfully");
                        }
                        return 0;
                    }
                    InterfaceC3269z5 interfaceC3269z53 = this.f23845g;
                    if (interfaceC3269z53 != null) {
                        Intrinsics.checkNotNullExpressionValue("M6", "TAG");
                        ((A5) interfaceC3269z53).a("M6", "ChromeCustomTab fallback to Embedded");
                    }
                    if (r62 != null) {
                        r62.f24066g = "IN_CUSTOM";
                    }
                    return a(str2, api, r62);
                } catch (Exception unused2) {
                    try {
                        int a11 = AbstractC3266z2.a(this.f23839a, str2, (InterfaceC3259yb) this.f23843e, api);
                        if (a11 == 0 || a11 == 1) {
                            c(api, str, str2);
                            if (r62 != null) {
                                r62.f24066g = "EX_NATIVE";
                            }
                            F6 funnelState = F6.f23636f;
                            Intrinsics.checkNotNullParameter(funnelState, "funnelState");
                            J6.a(funnelState, r62, num, new L6(this));
                            return a11;
                        }
                        return a11;
                    } catch (Exception e10) {
                        InterfaceC3269z5 interfaceC3269z54 = this.f23845g;
                        if (interfaceC3269z54 != null) {
                            Intrinsics.checkNotNullExpressionValue("M6", "TAG");
                            ((A5) interfaceC3269z54).a("M6", "Exception occurred while opening External ", e10);
                        }
                        return 9;
                    }
                }
            }
        }
        InterfaceC3269z5 interfaceC3269z55 = this.f23845g;
        if (interfaceC3269z55 != null) {
            Intrinsics.checkNotNullExpressionValue("M6", "TAG");
            ((A5) interfaceC3269z55).c("M6", api + " called with invalid url (" + str2 + ')');
        }
        Ub ub2 = this.f23842d;
        if (ub2 != null) {
            Intrinsics.checkNotNullParameter("Invalid URL", "message");
            ub2.f24266a.a(str, "Invalid URL", api);
        }
        F6 f62 = F6.f23635e;
        J6.a(f62, r62, (Integer) 3, (Function2) G6.a(f62, "funnelState", this));
        return 3;
    }

    /* JADX WARN: Type inference failed for: r3v3, types: [com.inmobi.media.X1, com.inmobi.media.yb] */
    public final void e(String str, String str2, String str3, R6 r62) {
        try {
            AbstractC3266z2.a(this.f23839a, str2, (InterfaceC3259yb) this.f23843e, "openExternal");
            F6 f62 = F6.f23636f;
            J6.a(f62, r62, (Integer) null, G6.a(f62, "funnelState", this));
            c("openExternal", str, str2);
        } catch (ActivityNotFoundException e10) {
            a(this, str, str2, str3, r62, e10);
        } catch (NullPointerException e11) {
            a(this, str, str2, str3, r62, e11);
        } catch (URISyntaxException e12) {
            a(this, str, str2, str3, r62, e12);
        } catch (Exception e13) {
            F6 f63 = F6.f23637g;
            J6.a(f63, r62, (Integer) 9, (Function2) G6.a(f63, "funnelState", this));
            Ub ub2 = this.f23842d;
            if (ub2 != null) {
                Intrinsics.checkNotNullParameter("Unexpected error", "message");
                ub2.f24266a.a(str, "Unexpected error", "openExternal");
            }
            Intrinsics.checkNotNullExpressionValue("M6", "TAG");
            AbstractC2984h7.a((byte) 1, "M6", "Could not open URL SDK encountered an unexpected error");
            InterfaceC3269z5 interfaceC3269z5 = this.f23845g;
            if (interfaceC3269z5 != null) {
                ((A5) interfaceC3269z5).b("M6", rf.a(e13, H6.a("M6", "TAG", "SDK encountered unexpected error in handling openExternal() request from creative ")));
            }
        }
    }

    public final void c(String str, String str2, String str3) {
        Ub ub2 = this.f23842d;
        if (ub2 != null) {
            ub2.f24266a.getListener().a();
        }
        Ub ub3 = this.f23842d;
        if (ub3 != null) {
            GestureDetector$OnGestureListenerC2941ec.a(ub3.f24266a, str, str2, str3);
        }
    }

    public final void b(String str, String str2, String str3) {
        InterfaceC3269z5 interfaceC3269z5 = this.f23845g;
        if (interfaceC3269z5 != null) {
            Intrinsics.checkNotNullExpressionValue("M6", "TAG");
            ((A5) interfaceC3269z5).c("M6", str + " called with invalid url (" + str3 + ')');
        }
        Ub ub2 = this.f23842d;
        if (ub2 != null) {
            Intrinsics.checkNotNullParameter("Invalid URL", "message");
            ub2.f24266a.a(str2, "Invalid URL", str);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0055, code lost:
        if (a(r21, r22, r23, r24).f23777a == 1) goto L12;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0137 A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0139  */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v3 */
    /* JADX WARN: Type inference failed for: r2v6, types: [com.inmobi.media.X1, com.inmobi.media.yb] */
    /* JADX WARN: Type inference failed for: r2v9, types: [com.inmobi.media.X1, com.inmobi.media.yb] */
    /* JADX WARN: Type inference failed for: r3v14, types: [com.inmobi.media.X1, com.inmobi.media.yb] */
    /* JADX WARN: Type inference failed for: r3v4, types: [com.inmobi.media.X1, com.inmobi.media.yb] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int a(java.lang.String r21, java.lang.String r22, java.lang.String r23, com.inmobi.media.R6 r24, com.inmobi.media.C2995i2 r25) {
        /*
            Method dump skipped, instructions count: 431
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.M6.a(java.lang.String, java.lang.String, java.lang.String, com.inmobi.media.R6, com.inmobi.media.i2):int");
    }

    public final K6 a(String str, String str2, String str3, R6 r62) {
        InterfaceC3269z5 interfaceC3269z5 = this.f23845g;
        if (interfaceC3269z5 != null) {
            Intrinsics.checkNotNullExpressionValue("M6", "TAG");
            ((A5) interfaceC3269z5).a("M6", "In processInMobiDeepLinkScheme");
        }
        Uri parse = Uri.parse(str3);
        int a10 = a(str, parse.getQueryParameter("primaryUrl"), parse.getQueryParameter("primaryTrackingUrl"));
        if (a10 != 0 && a10 != 1) {
            int a11 = a(str, parse.getQueryParameter("fallbackUrl"), parse.getQueryParameter("fallbackTrackingUrl"));
            if (r62 != null) {
                r62.f24066g = "EX_NATIVE";
            }
            if (a11 != 0 && a11 != 1) {
                Ub ub2 = this.f23842d;
                if (ub2 != null) {
                    Intrinsics.checkNotNullParameter("Invalid URL", "message");
                    ub2.f24266a.a(str2, "Invalid URL", str);
                }
                InterfaceC3269z5 interfaceC3269z52 = this.f23845g;
                if (interfaceC3269z52 != null) {
                    Intrinsics.checkNotNullExpressionValue("M6", "TAG");
                    ((A5) interfaceC3269z52).c("M6", "InMobiDeepLinkScheme Fallback Url handling failed");
                }
                F6 f62 = F6.f23637g;
                J6.a(f62, r62, Integer.valueOf(a11), G6.a(f62, "funnelState", this));
                return new K6(2, Integer.valueOf(a11));
            }
            InterfaceC3269z5 interfaceC3269z53 = this.f23845g;
            if (interfaceC3269z53 != null) {
                Intrinsics.checkNotNullExpressionValue("M6", "TAG");
                ((A5) interfaceC3269z53).c("M6", "InMobiDeepLinkScheme Fallback Url handled successfully");
            }
            F6 f63 = F6.f23636f;
            J6.a(f63, r62, (Integer) null, G6.a(f63, "funnelState", this));
            c(str, str2, str3);
            return new K6(1);
        }
        InterfaceC3269z5 interfaceC3269z54 = this.f23845g;
        if (interfaceC3269z54 != null) {
            Intrinsics.checkNotNullExpressionValue("M6", "TAG");
            ((A5) interfaceC3269z54).c("M6", "InMobiDeepLinkScheme Primary Url handled successfully");
        }
        if (r62 != null) {
            r62.f24066g = "EX_NATIVE";
        }
        F6 f64 = F6.f23636f;
        J6.a(f64, r62, (Integer) null, G6.a(f64, "funnelState", this));
        c(str, str2, str3);
        return new K6(1);
    }

    /* JADX WARN: Type inference failed for: r3v0, types: [com.inmobi.media.X1, com.inmobi.media.yb] */
    /* JADX WARN: Type inference failed for: r7v0, types: [com.inmobi.media.X1, com.inmobi.media.yb] */
    public final int a(String str, String str2, String str3) {
        InterfaceC3269z5 interfaceC3269z5 = this.f23845g;
        if (interfaceC3269z5 != null) {
            Intrinsics.checkNotNullExpressionValue("M6", "TAG");
            ((A5) interfaceC3269z5).c("M6", "inMobiDeepLinkSchemeUrlHandled - url - " + str2 + " trackingUrl " + str3);
        }
        if (str2 != null && str2.length() != 0) {
            if (C3.a(str2, this.f23839a, this.f23843e, this.f23845g)) {
                if (B2.a(str3)) {
                    C3234x2 c3234x2 = C3234x2.f25412a;
                    Intrinsics.checkNotNull(str3);
                    c3234x2.a(str3, true, this.f23845g);
                } else {
                    InterfaceC3269z5 interfaceC3269z52 = this.f23845g;
                    if (interfaceC3269z52 != null) {
                        Intrinsics.checkNotNullExpressionValue("M6", "TAG");
                        ((A5) interfaceC3269z52).b("M6", "InMobiDeepLinkScheme scheme tracking url handling is invalid ");
                    }
                }
                InterfaceC3269z5 interfaceC3269z53 = this.f23845g;
                if (interfaceC3269z53 != null) {
                    Intrinsics.checkNotNullExpressionValue("M6", "TAG");
                    ((A5) interfaceC3269z53).c("M6", "InMobiDeepLinkScheme scheme applink/http url handled successfully");
                }
                return 0;
            }
            int a10 = C3.a(this.f23839a, str2, this.f23843e, str, this.f23845g);
            if (a10 != 0 && a10 != 1) {
                InterfaceC3269z5 interfaceC3269z54 = this.f23845g;
                if (interfaceC3269z54 != null) {
                    Intrinsics.checkNotNullExpressionValue("M6", "TAG");
                    ((A5) interfaceC3269z54).c("M6", "InMobiDeepLinkScheme scheme applink/http url handling failed");
                }
                return a10;
            }
            if (B2.a(str3)) {
                C3234x2 c3234x22 = C3234x2.f25412a;
                Intrinsics.checkNotNull(str3);
                c3234x22.a(str3, true, this.f23845g);
            } else {
                InterfaceC3269z5 interfaceC3269z55 = this.f23845g;
                if (interfaceC3269z55 != null) {
                    Intrinsics.checkNotNullExpressionValue("M6", "TAG");
                    ((A5) interfaceC3269z55).b("M6", "InMobiDeepLinkScheme scheme tracking url handling is invalid ");
                }
            }
            InterfaceC3269z5 interfaceC3269z56 = this.f23845g;
            if (interfaceC3269z56 != null) {
                Intrinsics.checkNotNullExpressionValue("M6", "TAG");
                ((A5) interfaceC3269z56).c("M6", "InMobiDeepLinkScheme scheme applink/http url handled successfully");
                return 0;
            }
            return 0;
        }
        InterfaceC3269z5 interfaceC3269z57 = this.f23845g;
        if (interfaceC3269z57 != null) {
            Intrinsics.checkNotNullExpressionValue("M6", "TAG");
            ((A5) interfaceC3269z57).b("M6", "InMobiDeepLinkScheme url is Empty or null");
            return 2;
        }
        return 2;
    }

    /* JADX WARN: Type inference failed for: r2v4, types: [com.inmobi.media.X1, com.inmobi.media.yb] */
    public final int a(String url, String api, R6 r62) {
        R6 r63;
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(api, "api");
        if (r62 != null) {
            r62.f24066g = "IN_CUSTOM";
        }
        if (url.length() == 0) {
            InterfaceC3269z5 interfaceC3269z5 = this.f23845g;
            if (interfaceC3269z5 != null) {
                Intrinsics.checkNotNullExpressionValue("M6", "TAG");
                ((A5) interfaceC3269z5).b("M6", "processOpenEmbeddedRequest failed due to empty URL");
            }
            F6 f62 = F6.f23635e;
            J6.a(f62, r62, (Integer) null, G6.a(f62, "funnelState", this));
            return 2;
        }
        Uri parse = Uri.parse(url);
        Intrinsics.checkNotNullExpressionValue(parse, "Uri.parse(this)");
        if (AbstractC3266z2.a(parse)) {
            Intent intent = new Intent(this.f23839a, InMobiAdActivity.class);
            intent.putExtra("com.inmobi.ads.rendering.InMobiAdActivity.EXTRA_AD_ACTIVITY_TYPE", 100);
            intent.putExtra("com.inmobi.ads.rendering.InMobiAdActivity.IN_APP_BROWSER_URL", url);
            intent.putExtra("viewTouchTimestamp", this.f23843e.getViewTouchTimestamp());
            if (r62 != null) {
                S6 landingPageTelemetryMetaData = r62.f24060a;
                String urlType = r62.f24061b;
                int i10 = r62.f24062c;
                long j10 = r62.f24063d;
                Intrinsics.checkNotNullParameter(landingPageTelemetryMetaData, "landingPageTelemetryMetaData");
                Intrinsics.checkNotNullParameter(urlType, "urlType");
                r63 = new R6(landingPageTelemetryMetaData, urlType, i10, j10);
                F6 f63 = F6.f23634d;
                r63.f24065f = 2;
                Unit unit = Unit.f60915a;
            } else {
                r63 = null;
            }
            intent.putExtra("lpTelemetryControlInfo", r63);
            InterfaceC3269z5 obj = this.f23845g;
            if (obj != null) {
                String uuid = UUID.randomUUID().toString();
                Intrinsics.checkNotNullExpressionValue(uuid, "toString(...)");
                HashMap hashMap = AbstractC3062m5.f25030a;
                String key = uuid.toString();
                Intrinsics.checkNotNullParameter(key, "key");
                Intrinsics.checkNotNullParameter(obj, "obj");
                AbstractC3062m5.f25030a.put(key, new WeakReference(obj));
                intent.putExtra("loggerCacheKey", uuid.toString());
            }
            Ub ub2 = this.f23842d;
            if (ub2 != null) {
                Intrinsics.checkNotNullParameter(intent, "intent");
                intent.putExtra("creativeId", ub2.f24266a.getCreativeId());
                intent.putExtra("impressionId", ub2.f24266a.getImpressionId());
                intent.putExtra(HandleInvocationsFromAdViewer.KEY_PLACEMENT_ID, ub2.f24266a.getPlacementId());
                SparseArray sparseArray = InMobiAdActivity.f23426k;
                GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec = ub2.f24266a;
                InMobiAdActivity.f23427l = gestureDetector$OnGestureListenerC2941ec;
                Uc.f24267a.a(gestureDetector$OnGestureListenerC2941ec.getContainerContext(), intent);
            }
            F6 f64 = F6.f23636f;
            J6.a(f64, r62, (Integer) null, G6.a(f64, "funnelState", this));
            Ub ub3 = this.f23842d;
            if (ub3 != null) {
                GestureDetector$OnGestureListenerC2941ec.a(ub3.f24266a, null, null, url);
            }
            return 1;
        }
        InterfaceC3269z5 interfaceC3269z52 = this.f23845g;
        if (interfaceC3269z52 != null) {
            Intrinsics.checkNotNullExpressionValue("M6", "TAG");
            ((A5) interfaceC3269z52).b("M6", "Embedded request unable to handle ".concat(url));
        }
        return 10;
    }

    public static final void a(M6 m62, String str, String str2, String str3, R6 r62, Exception exc) {
        InterfaceC3269z5 interfaceC3269z5 = m62.f23845g;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).b("M6", rf.a(exc, H6.a("M6", "TAG", "Error message in processing openExternal: ")));
        }
        Ub ub2 = m62.f23842d;
        if (ub2 != null) {
            StringBuilder sb2 = new StringBuilder("Cannot resolve URI (");
            try {
                String encode = URLEncoder.encode(str2, "UTF-8");
                Intrinsics.checkNotNull(encode);
                str2 = encode;
            } catch (UnsupportedEncodingException unused) {
            }
            sb2.append(str2);
            sb2.append(')');
            String message = sb2.toString();
            Intrinsics.checkNotNullParameter(message, "message");
            ub2.f24266a.a(str, message, "openExternal");
        }
        if (str3 != null) {
            m62.e(str, str3, null, r62);
        }
    }
}
