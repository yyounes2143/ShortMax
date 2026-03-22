package com.inmobi.media;

import android.content.Context;
import com.inmobi.commons.core.configs.AdConfig;
import com.inmobi.media.AbstractC3003ia;
import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
/* renamed from: com.inmobi.media.ia  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public abstract class AbstractC3003ia {
    public static final void a(AdConfig.OmidConfig omidConfig, int i10, N9 mRequest, int i11) {
        byte[] bArr;
        Intrinsics.checkNotNullParameter(omidConfig, "$omidConfig");
        Intrinsics.checkNotNullParameter(mRequest, "$mNetworkRequest");
        Context d10 = Uc.d();
        if (d10 == null) {
            return;
        }
        if ((System.currentTimeMillis() / 1000) - new Sa(d10, "omid_js_store").b() > omidConfig.getExpiry()) {
            int i12 = 0;
            while (i12 <= i10) {
                Intrinsics.checkNotNullExpressionValue("ia", "TAG");
                Intrinsics.checkNotNullParameter(mRequest, "mRequest");
                P9 b10 = mRequest.b();
                Context d11 = Uc.d();
                if (b10.b()) {
                    Intrinsics.checkNotNullExpressionValue("ia", "TAG");
                    i12++;
                    if (i12 > i10) {
                        return;
                    }
                    try {
                        Thread.sleep(i11 * 1000);
                    } catch (InterruptedException unused) {
                    }
                } else if (d11 != null) {
                    Sa sa2 = new Sa(d11, "omid_js_store");
                    Map map = b10.f23984f;
                    String str = null;
                    List list = map != null ? (List) map.get("Content-Encoding") : null;
                    if (Intrinsics.areEqual(list != null ? (String) list.get(0) : null, "gzip")) {
                        Intrinsics.checkNotNullExpressionValue("ia", "TAG");
                        boolean z10 = T9.f24217a;
                        byte[] bArr2 = b10.f23980b;
                        if (bArr2 != null && bArr2.length != 0) {
                            Intrinsics.checkNotNull(bArr2);
                            bArr = new byte[bArr2.length];
                            byte[] bArr3 = b10.f23980b;
                            Intrinsics.checkNotNull(bArr3);
                            System.arraycopy(bArr3, 0, bArr, 0, bArr3.length);
                        } else {
                            bArr = new byte[0];
                        }
                        byte[] a10 = T9.a(bArr);
                        if (a10 != null) {
                            try {
                                String str2 = new String(a10, Charsets.UTF_8);
                                Intrinsics.checkNotNullExpressionValue("ia", "TAG");
                                str = str2;
                            } catch (UnsupportedEncodingException unused2) {
                                Intrinsics.checkNotNullExpressionValue("ia", "TAG");
                            }
                        }
                    } else {
                        Intrinsics.checkNotNullExpressionValue("ia", "TAG");
                        str = b10.a();
                    }
                    if (str != null) {
                        sa2.b("omid_js_string", str);
                        return;
                    }
                    return;
                }
            }
        }
    }

    public static void a(final AdConfig.OmidConfig omidConfig) {
        Intrinsics.checkNotNullParameter(omidConfig, "omidConfig");
        String url = omidConfig.getUrl();
        final int maxRetries = omidConfig.getMaxRetries();
        final int retryInterval = omidConfig.getRetryInterval();
        if (url == null) {
            Intrinsics.checkNotNullExpressionValue("ia", "TAG");
            return;
        }
        final N9 n92 = new N9(url, null);
        n92.f23908x = false;
        n92.f23904t = false;
        n92.f23905u = false;
        ((ScheduledThreadPoolExecutor) AbstractC3268z4.f25480b.getValue()).submit(new Runnable() { // from class: ub.m4
            @Override // java.lang.Runnable
            public final void run() {
                AbstractC3003ia.a(AdConfig.OmidConfig.this, maxRetries, n92, retryInterval);
            }
        });
    }
}
