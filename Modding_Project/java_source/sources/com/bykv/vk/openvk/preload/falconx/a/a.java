package com.bykv.vk.openvk.preload.falconx.a;

import android.text.TextUtils;
import android.util.Log;
import android.webkit.WebResourceResponse;
import com.bykv.vk.openvk.preload.b.b.b;
import com.bykv.vk.openvk.preload.b.d;
import com.huawei.hms.framework.common.ContainerUtils;
import com.unity3d.ads.gatewayclient.CommonGatewayClient;
import java.io.InputStream;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
/* compiled from: WebResourceUtils.java */
/* loaded from: classes3.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private final Map<Class<? extends d<?, ?>>, b> f11283a = new HashMap();

    public static WebResourceResponse a(InputStream inputStream, Map<String, String> map) {
        if (inputStream != null) {
            try {
                String str = map.get("content-type");
                String[] strArr = new String[0];
                if (TextUtils.isEmpty(str)) {
                    str = map.get(CommonGatewayClient.HEADER_CONTENT_TYPE);
                }
                if (!TextUtils.isEmpty(str) && str != null) {
                    str = str.replace(" ", "");
                    strArr = str.split(";");
                }
                String str2 = "";
                String str3 = str2;
                for (String str4 : strArr) {
                    if (!TextUtils.isEmpty(str4)) {
                        int indexOf = str4.indexOf(ContainerUtils.KEY_VALUE_DELIMITER);
                        if (indexOf == -1) {
                            str2 = str4;
                        } else if (str4.contains("charset")) {
                            str3 = str4.substring(indexOf + 1);
                        }
                    }
                }
                if (str != null ? str.contains("font/ttf") : false) {
                    return new WebResourceResponse(str2, str3, 200, "OK", map, inputStream);
                }
                WebResourceResponse webResourceResponse = new WebResourceResponse(str2, str3, inputStream);
                webResourceResponse.setResponseHeaders(map);
                return webResourceResponse;
            } catch (Throwable th2) {
                Log.e("WebResourceUtils", "getResponseWithHeaders error", th2);
                return null;
            }
        }
        return null;
    }

    public final void a(Class<? extends d<?, ?>> cls, com.bykv.vk.openvk.preload.b.b.a aVar) {
        synchronized (this.f11283a) {
            try {
                b bVar = this.f11283a.get(cls);
                if (bVar == null) {
                    bVar = new b(new com.bykv.vk.openvk.preload.b.b.a[0]);
                    this.f11283a.put(cls, bVar);
                }
                bVar.a(aVar);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final com.bykv.vk.openvk.preload.b.b.a a(Class<? extends d<?, ?>> cls) {
        b bVar;
        synchronized (this.f11283a) {
            bVar = this.f11283a.get(cls);
        }
        return bVar;
    }

    public static <T> T a(T t10) {
        t10.getClass();
        return t10;
    }

    public static void a(boolean z10) {
        if (!z10) {
            throw new IllegalArgumentException();
        }
    }

    public static DateFormat a(int i10, int i11) {
        String str;
        String str2;
        StringBuilder sb2 = new StringBuilder();
        if (i10 == 0) {
            str = "EEEE, MMMM d, yyyy";
        } else if (i10 == 1) {
            str = "MMMM d, yyyy";
        } else if (i10 == 2) {
            str = "MMM d, yyyy";
        } else if (i10 == 3) {
            str = "M/d/yy";
        } else {
            throw new IllegalArgumentException("Unknown DateFormat style: ".concat(String.valueOf(i10)));
        }
        sb2.append(str);
        sb2.append(" ");
        if (i11 == 0 || i11 == 1) {
            str2 = "h:mm:ss a z";
        } else if (i11 == 2) {
            str2 = "h:mm:ss a";
        } else if (i11 == 3) {
            str2 = "h:mm a";
        } else {
            throw new IllegalArgumentException("Unknown DateFormat style: ".concat(String.valueOf(i11)));
        }
        sb2.append(str2);
        return new SimpleDateFormat(sb2.toString(), Locale.US);
    }
}
