package com.inmobi.media;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.PowerManager;
import com.inmobi.commons.core.configs.AdConfig;
import com.inmobi.commons.core.configs.Config;
import com.inmobi.commons.core.configs.RootConfig;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URLEncoder;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.zip.GZIPInputStream;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public final class T9 implements N2 {

    /* renamed from: a  reason: collision with root package name */
    public static boolean f24217a;

    static {
        LinkedHashMap linkedHashMap = O2.f23923a;
        RootConfig rootConfig = (RootConfig) AbstractC3110p5.a("root", "null cannot be cast to non-null type com.inmobi.commons.core.configs.RootConfig", null);
        f24217a = ((AdConfig) AbstractC3110p5.a(com.mbridge.msdk.foundation.entity.b.JSON_KEY_ADS, "null cannot be cast to non-null type com.inmobi.commons.core.configs.AdConfig", null)).getSkipNetworkValidationFeatureEnabled();
    }

    @Override // com.inmobi.media.N2
    public final void a(Config config) {
        Intrinsics.checkNotNullParameter(config, "config");
        if (config instanceof AdConfig) {
            f24217a = ((AdConfig) config).getSkipNetworkValidationFeatureEnabled();
        }
    }

    public static EnumC3093o4 a(ConnectivityManager connectivityManager, boolean z10) {
        NetworkCapabilities networkCapabilities;
        Network network = connectivityManager.getActiveNetwork();
        if (network != null && (networkCapabilities = connectivityManager.getNetworkCapabilities(network)) != null) {
            Intrinsics.checkNotNullExpressionValue("T9", "TAG");
            networkCapabilities.toString();
            if (!networkCapabilities.hasCapability(12)) {
                return EnumC3093o4.f25102p;
            }
            if ((!f24217a || z10) && !networkCapabilities.hasCapability(16)) {
                AdConfig.CustomNetworkValidation customNetworkValidation = C3139r3.f25224a;
                Intrinsics.checkNotNullParameter(network, "network");
                AdConfig.CustomNetworkValidation customNetworkValidation2 = C3139r3.f25224a;
                if (!(customNetworkValidation2 != null ? customNetworkValidation2.getEnabled() : false)) {
                    return EnumC3093o4.f25102p;
                }
                C3139r3.a(network);
                if (C3139r3.f25226c) {
                    return null;
                }
                return EnumC3093o4.f25106t;
            }
            return null;
        }
        return EnumC3093o4.f25102p;
    }

    public static EnumC3093o4 a(boolean z10) {
        EnumC3093o4 enumC3093o4;
        Context d10 = Uc.d();
        if (d10 != null) {
            try {
                Object systemService = d10.getSystemService("connectivity");
                Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
                enumC3093o4 = a((ConnectivityManager) systemService, z10);
            } catch (Exception unused) {
                Intrinsics.checkNotNullExpressionValue("T9", "TAG");
                enumC3093o4 = EnumC3093o4.f25104r;
            }
            if (enumC3093o4 == null) {
                Context d11 = Uc.d();
                boolean z11 = false;
                if (d11 != null) {
                    try {
                        Object systemService2 = d11.getSystemService("power");
                        PowerManager powerManager = systemService2 instanceof PowerManager ? (PowerManager) systemService2 : null;
                        if (powerManager != null) {
                            z11 = powerManager.isDeviceIdleMode();
                        }
                    } catch (Exception unused2) {
                        Intrinsics.checkNotNullExpressionValue("T9", "TAG");
                    }
                }
                if (z11) {
                    return EnumC3093o4.f25101o;
                }
                return null;
            }
            return enumC3093o4;
        }
        return EnumC3093o4.f25100n;
    }

    public static String a(String delimiter, Map map) {
        String str;
        String str2;
        Intrinsics.checkNotNullParameter(delimiter, "delimiter");
        StringBuilder sb2 = new StringBuilder();
        if (map != null) {
            for (Map.Entry entry : map.entrySet()) {
                String str3 = (String) entry.getKey();
                String str4 = (String) entry.getValue();
                if (sb2.length() > 0) {
                    sb2.append(delimiter);
                }
                StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                Locale locale = Locale.US;
                try {
                    str = URLEncoder.encode(str3, "UTF-8");
                    Intrinsics.checkNotNullExpressionValue(str, "encode(...)");
                } catch (UnsupportedEncodingException unused) {
                    str = "";
                }
                try {
                    str2 = URLEncoder.encode(str4, "UTF-8");
                    Intrinsics.checkNotNullExpressionValue(str2, "encode(...)");
                } catch (UnsupportedEncodingException unused2) {
                    str2 = "";
                }
                String format = String.format(locale, "%s=%s", Arrays.copyOf(new Object[]{str, str2}, 2));
                Intrinsics.checkNotNullExpressionValue(format, "format(locale, format, *args)");
                sb2.append(format);
            }
        }
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "toString(...)");
        return sb3;
    }

    public static void a(Map map) {
        if (map != null) {
            HashMap hashMap = new HashMap();
            for (Map.Entry entry : map.entrySet()) {
                if (entry.getValue() != null) {
                    String str = (String) entry.getValue();
                    int length = str.length() - 1;
                    int i10 = 0;
                    boolean z10 = false;
                    while (i10 <= length) {
                        boolean z11 = Intrinsics.compare((int) str.charAt(!z10 ? i10 : length), 32) <= 0;
                        if (z10) {
                            if (!z11) {
                                break;
                            }
                            length--;
                        } else if (z11) {
                            i10++;
                        } else {
                            z10 = true;
                        }
                    }
                    if (str.subSequence(i10, length + 1).toString().length() > 0 && entry.getKey() != null) {
                        String str2 = (String) entry.getKey();
                        int length2 = str2.length() - 1;
                        int i11 = 0;
                        boolean z12 = false;
                        while (i11 <= length2) {
                            boolean z13 = Intrinsics.compare((int) str2.charAt(!z12 ? i11 : length2), 32) <= 0;
                            if (z12) {
                                if (!z13) {
                                    break;
                                }
                                length2--;
                            } else if (z13) {
                                i11++;
                            } else {
                                z12 = true;
                            }
                        }
                        if (str2.subSequence(i11, length2 + 1).toString().length() > 0) {
                            String str3 = (String) entry.getKey();
                            int length3 = str3.length() - 1;
                            int i12 = 0;
                            boolean z14 = false;
                            while (i12 <= length3) {
                                boolean z15 = Intrinsics.compare((int) str3.charAt(!z14 ? i12 : length3), 32) <= 0;
                                if (z14) {
                                    if (!z15) {
                                        break;
                                    }
                                    length3--;
                                } else if (z15) {
                                    i12++;
                                } else {
                                    z14 = true;
                                }
                            }
                            String a10 = I7.a(length3, 1, str3, i12);
                            String str4 = (String) entry.getValue();
                            int length4 = str4.length() - 1;
                            int i13 = 0;
                            boolean z16 = false;
                            while (i13 <= length4) {
                                boolean z17 = Intrinsics.compare((int) str4.charAt(!z16 ? i13 : length4), 32) <= 0;
                                if (z16) {
                                    if (!z17) {
                                        break;
                                    }
                                    length4--;
                                } else if (z17) {
                                    i13++;
                                } else {
                                    z16 = true;
                                }
                            }
                            hashMap.put(a10, I7.a(length4, 1, str4, i13));
                        }
                    }
                }
            }
            map.clear();
            map.putAll(hashMap);
        }
    }

    public static HashMap a(JSONObject jSONObject) {
        HashMap hashMap = new HashMap();
        if (jSONObject != null) {
            try {
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    Intrinsics.checkNotNull(next);
                    String string = jSONObject.getString(next);
                    Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
                    hashMap.put(next, string);
                }
            } catch (Exception unused) {
            }
        }
        return hashMap;
    }

    public static String a(String url, HashMap hashMap) {
        Intrinsics.checkNotNullParameter(url, "url");
        if (hashMap == null || hashMap.isEmpty()) {
            return url;
        }
        String str = url;
        for (Map.Entry entry : hashMap.entrySet()) {
            str = StringsKt.P(str, (String) entry.getKey(), (String) entry.getValue(), false, 4, null);
        }
        return str;
    }

    public static byte[] a(byte[] compressedData) {
        GZIPInputStream gZIPInputStream;
        Intrinsics.checkNotNullParameter(compressedData, "compressedData");
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(compressedData);
        GZIPInputStream gZIPInputStream2 = null;
        try {
            try {
                gZIPInputStream = new GZIPInputStream(byteArrayInputStream);
            } catch (IOException e10) {
                e = e10;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            compressedData = a((InputStream) gZIPInputStream);
        } catch (IOException e11) {
            e = e11;
            gZIPInputStream2 = gZIPInputStream;
            AbstractC2984h7.a((byte) 2, "T9", "Failed to decompress response", e);
            gZIPInputStream = gZIPInputStream2;
            a((Closeable) byteArrayInputStream);
            a((Closeable) gZIPInputStream);
            return compressedData;
        } catch (Throwable th3) {
            th = th3;
            gZIPInputStream2 = gZIPInputStream;
            a((Closeable) byteArrayInputStream);
            a((Closeable) gZIPInputStream2);
            throw th;
        }
        a((Closeable) byteArrayInputStream);
        a((Closeable) gZIPInputStream);
        return compressedData;
    }

    public static byte[] a(InputStream input) {
        Intrinsics.checkNotNullParameter(input, "input");
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[4096];
        while (true) {
            try {
                int read = input.read(bArr);
                Unit unit = Unit.f60915a;
                if (-1 != read) {
                    byteArrayOutputStream.write(bArr, 0, read);
                } else {
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    Intrinsics.checkNotNull(byteArray);
                    a(byteArrayOutputStream);
                    return byteArray;
                }
            } catch (Throwable th2) {
                a(byteArrayOutputStream);
                throw th2;
            }
        }
    }

    public static void a(HttpURLConnection httpURLConnection) {
        InputStream inputStream;
        if (httpURLConnection != null) {
            try {
                inputStream = httpURLConnection.getInputStream();
            } catch (Error | Exception unused) {
                return;
            }
        } else {
            inputStream = null;
        }
        a((Closeable) inputStream);
        a((Closeable) (httpURLConnection != null ? httpURLConnection.getErrorStream() : null));
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
    }

    public static final void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException | Error | Exception unused) {
            }
        }
    }
}
