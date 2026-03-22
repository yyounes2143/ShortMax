package com.mbridge.msdk.mbsignalcommon.windvane;

import android.net.Uri;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Pattern;
/* compiled from: WindVaneUtil.java */
/* loaded from: classes4.dex */
public class i {

    /* renamed from: a  reason: collision with root package name */
    private static final String[] f28271a = {"wv_hybrid:", "mraid:", "ssp:", "mvb_hybrid:"};

    /* renamed from: b  reason: collision with root package name */
    private static final Pattern f28272b = Pattern.compile("hybrid://(.+?):(.+?)/(.+?)(\\?(.*?))?");

    /* renamed from: c  reason: collision with root package name */
    private static final Pattern f28273c = Pattern.compile("mraid://(.+?):(.+?)/(.+?)(\\?(.*?))?");

    /* renamed from: d  reason: collision with root package name */
    private static final Pattern f28274d = Pattern.compile("ssp://(.+?):(.+?)/(.+?)(\\?(.*?))?");

    /* renamed from: e  reason: collision with root package name */
    private static final Pattern f28275e = Pattern.compile("mv://(.+?):(.+?)/(.+?)(\\?(.*?))?");

    /* renamed from: f  reason: collision with root package name */
    private static Map<String, String> f28276f = new HashMap();

    static {
        d[] values;
        for (d dVar : d.values()) {
            f28276f.put(dVar.b(), dVar.a());
        }
    }

    public static String a(String str) {
        char[] cArr = {'\'', '\\'};
        StringBuffer stringBuffer = new StringBuffer(1000);
        stringBuffer.setLength(0);
        for (int i10 = 0; i10 < str.length(); i10++) {
            char charAt = str.charAt(i10);
            if (charAt > 255) {
                stringBuffer.append("\\u");
                String upperCase = Integer.toHexString(charAt >>> '\b').toUpperCase();
                if (upperCase.length() == 1) {
                    stringBuffer.append(MBridgeConstans.ENDCARD_URL_TYPE_PL);
                }
                stringBuffer.append(upperCase);
                String upperCase2 = Integer.toHexString(charAt & 255).toUpperCase();
                if (upperCase2.length() == 1) {
                    stringBuffer.append(MBridgeConstans.ENDCARD_URL_TYPE_PL);
                }
                stringBuffer.append(upperCase2);
            } else {
                int i11 = 0;
                while (true) {
                    if (i11 < 2) {
                        if (cArr[i11] == charAt) {
                            stringBuffer.append("\\" + charAt);
                            break;
                        }
                        i11++;
                    } else {
                        stringBuffer.append(charAt);
                        break;
                    }
                }
            }
        }
        return new String(stringBuffer);
    }

    public static String b(String str) {
        String str2 = f28276f.get(d(str));
        if (str2 == null) {
            return "";
        }
        return str2;
    }

    public static Pattern c(String str) {
        if ("wv_hybrid:".equals(str)) {
            return f28275e;
        }
        if ("mraid:".equals(str)) {
            return f28273c;
        }
        if ("ssp:".equals(str)) {
            return f28274d;
        }
        if ("mvb_hybrid:".equals(str)) {
            return f28275e;
        }
        return null;
    }

    public static String d(String str) {
        String path;
        int lastIndexOf;
        if (TextUtils.isEmpty(str) || (path = Uri.parse(str).getPath()) == null || (lastIndexOf = path.lastIndexOf(".")) == -1) {
            return "";
        }
        return path.substring(lastIndexOf + 1);
    }

    public static boolean e(String str) {
        return b(str).startsWith("image");
    }

    public static boolean f(String str) {
        for (String str2 : f28271a) {
            if (str2.equals(str)) {
                return true;
            }
        }
        return false;
    }
}
