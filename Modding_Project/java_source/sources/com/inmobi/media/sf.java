package com.inmobi.media;

import android.content.Context;
import com.inmobi.commons.core.configs.AdConfig;
import java.util.LinkedHashMap;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class sf {

    /* renamed from: a  reason: collision with root package name */
    public static final sf f25274a = new sf();

    /* renamed from: b  reason: collision with root package name */
    public static final ConcurrentHashMap f25275b = new ConcurrentHashMap();

    /* renamed from: c  reason: collision with root package name */
    public static final AdConfig.WebAssetCacheConfig f25276c;

    /* renamed from: d  reason: collision with root package name */
    public static final pf f25277d;

    static {
        LinkedHashMap linkedHashMap = O2.f23923a;
        pf pfVar = null;
        AdConfig.WebAssetCacheConfig webAssetCache = ((AdConfig) AbstractC3110p5.a(com.mbridge.msdk.foundation.entity.b.JSON_KEY_ADS, "null cannot be cast to non-null type com.inmobi.commons.core.configs.AdConfig", null)).getWebAssetCache();
        f25276c = webAssetCache;
        Context d10 = Uc.d();
        if (d10 != null) {
            pfVar = new pf(d10, webAssetCache);
        }
        f25277d = pfVar;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(20:25|(4:27|28|29|(1:31)(14:114|38|(1:(1:41))(2:100|(3:(1:103)|104|105)(2:(1:107)|108))|42|43|(3:68|69|(1:71)(9:72|73|74|75|(2:83|84)(1:77)|78|79|80|81))|45|46|(1:48)(1:63)|49|50|51|52|53))(1:120)|32|33|34|35|(1:37)(1:109)|38|(0)(0)|42|43|(5:64|65|68|69|(0)(0))|45|46|(0)(0)|49|50|51|52|53) */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x021a, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00ec, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00ed, code lost:
        r4 = r17;
        r7 = r18;
        r6 = r19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00f5, code lost:
        r4 = r17;
        r7 = r18;
        r6 = r19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x01e7, code lost:
        r0 = e;
     */
    /* JADX WARN: Removed duplicated region for block: B:100:0x020f A[Catch: Exception -> 0x01e7, TimeoutException -> 0x01eb, TRY_LEAVE, TryCatch #11 {TimeoutException -> 0x01eb, Exception -> 0x01e7, blocks: (B:96:0x0200, B:98:0x0204, B:100:0x020f, B:85:0x01d8), top: B:137:0x018c }] */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0230  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x024c  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0115  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0122 A[Catch: Exception -> 0x00ec, TimeoutException -> 0x00f5, TryCatch #17 {TimeoutException -> 0x00f5, Exception -> 0x00ec, blocks: (B:43:0x00d7, B:45:0x00e5, B:50:0x0103, B:53:0x0117, B:63:0x0166, B:66:0x0194, B:54:0x0122, B:57:0x012a, B:58:0x0134, B:61:0x014d, B:62:0x0157, B:49:0x00fd), top: B:126:0x00d7 }] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01a1  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x01a2 A[Catch: Exception -> 0x01f5, TimeoutException -> 0x01fb, TRY_LEAVE, TryCatch #14 {TimeoutException -> 0x01fb, Exception -> 0x01f5, blocks: (B:70:0x019e, B:73:0x01a2), top: B:131:0x019e }] */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0204 A[Catch: Exception -> 0x01e7, TimeoutException -> 0x01eb, TryCatch #11 {TimeoutException -> 0x01eb, Exception -> 0x01e7, blocks: (B:96:0x0200, B:98:0x0204, B:100:0x020f, B:85:0x01d8), top: B:137:0x018c }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.webkit.WebResourceResponse a(final java.lang.String r21, final com.inmobi.media.InterfaceC3269z5 r22) {
        /*
            Method dump skipped, instructions count: 653
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.sf.a(java.lang.String, com.inmobi.media.z5):android.webkit.WebResourceResponse");
    }

    public static final C3260yc a(sf this_run, String url, InterfaceC3269z5 interfaceC3269z5) {
        S3 s32;
        C3260yc response;
        I9 i92;
        Intrinsics.checkNotNullParameter(this_run, "$this_run");
        Intrinsics.checkNotNullParameter(url, "$url");
        this_run.getClass();
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("WebResourceHandler", AbstractC2977h0.a("downloadResourceFile(): ", url));
        }
        EnumC3148rc method = EnumC3148rc.f25246a;
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(method, "method");
        C3133qc c3133qc = new C3133qc(url, method);
        AdConfig.WebAssetCacheConfig webAssetCacheConfig = f25276c;
        c3133qc.f25212h = Integer.valueOf(webAssetCacheConfig.getTimeout());
        c3133qc.f25213i = Integer.valueOf(webAssetCacheConfig.getTimeout());
        C3180tc retryPolicy = new C3180tc(webAssetCacheConfig.getMaxRetries(), 500);
        Intrinsics.checkNotNullParameter(retryPolicy, "retryPolicy");
        c3133qc.f25211g = retryPolicy;
        C3196uc request = new C3196uc(c3133qc);
        Intrinsics.checkNotNullParameter(request, "request");
        do {
            s32 = null;
            response = H9.a(request, (Function2) null);
            i92 = response.f25468a;
        } while ((i92 != null ? i92.f23737a : null) == EnumC3093o4.f25099m);
        Intrinsics.checkNotNullParameter(response, "response");
        byte[] bArr = response.f25470c;
        Integer num = response.f25471d;
        if (num != null && num.intValue() == 200 && bArr != null && bArr.length != 0) {
            if (interfaceC3269z5 != null) {
                ((A5) interfaceC3269z5).c("WebResourceHandler", "onSuccessfulResponse: ".concat(url));
            }
            pf pfVar = f25277d;
            if (pfVar != null) {
                String data = J9.a(response.f25470c);
                Intrinsics.checkNotNullParameter(url, "url");
                Intrinsics.checkNotNullParameter(data, "data");
                if (pfVar.f25164a != null) {
                    try {
                        String valueOf = String.valueOf(url.hashCode());
                        S3 s33 = pfVar.f25164a;
                        if (s33 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("diskLruCache");
                        } else {
                            s32 = s33;
                        }
                        P3 a10 = s32.a(valueOf);
                        if (a10 != null) {
                            a10.a(url, 0);
                            a10.a(data, 1);
                            if (a10.f23972c) {
                                S3.a(a10.f23973d, a10, false);
                                a10.f23973d.d(a10.f23970a.f24028a);
                            } else {
                                S3.a(a10.f23973d, a10, true);
                            }
                        } else if (interfaceC3269z5 != null) {
                            ((A5) interfaceC3269z5).a("WebAssetLRUCacheHelper", "Failed to write to cache diskLruCache with: diskLruCache.editor is null for ".concat(url));
                        }
                    } catch (Exception e10) {
                        if (interfaceC3269z5 != null) {
                            ((A5) interfaceC3269z5).a("WebAssetLRUCacheHelper", "Failed to write to cache diskLruCache with: " + e10.getMessage() + " for " + url);
                        }
                    }
                } else if (interfaceC3269z5 != null) {
                    ((A5) interfaceC3269z5).a("WebAssetLRUCacheHelper", "Disk Cache Failed to Initialize. Failed writeToCache: ".concat(url));
                }
            }
        }
        return response;
    }
}
