package rb;

import android.annotation.TargetApi;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import android.webkit.URLUtil;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import java.net.MalformedURLException;
import java.net.URL;
/* loaded from: classes5.dex */
public class b {
    private static String a(String str) {
        if (TextUtils.isEmpty(str)) {
            qb.a.f("UriUtil", "whiteListUrl is null");
            return null;
        } else if (!URLUtil.isNetworkUrl(str)) {
            return str;
        } else {
            return b(str);
        }
    }

    @TargetApi(9)
    public static String b(String str) {
        if (TextUtils.isEmpty(str)) {
            qb.a.f("UriUtil", "url is null");
            return str;
        }
        try {
            if (!URLUtil.isNetworkUrl(str)) {
                qb.a.d("UriUtil", "url don't starts with http or https");
                return "";
            }
            return new URL(str.replaceAll("[\\\\#]", DomExceptionUtils.SEPARATOR)).getHost();
        } catch (MalformedURLException e10) {
            qb.a.d("UriUtil", "getHostByURI error  MalformedURLException : " + e10.getMessage());
            return "";
        }
    }

    public static boolean c(String str, String[] strArr) {
        if (strArr != null && strArr.length != 0) {
            for (String str2 : strArr) {
                if (d(str, str2)) {
                    return true;
                }
            }
            return false;
        }
        qb.a.d("UriUtil", "whitelist is null");
        return false;
    }

    public static boolean d(String str, String str2) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            if (!str.contains("..") && !str.contains("@")) {
                if (!str2.equals(str)) {
                    if (!str.startsWith(str2 + "?")) {
                        if (!str.startsWith(str2 + "#")) {
                            if (!str2.endsWith(DomExceptionUtils.SEPARATOR)) {
                                return false;
                            }
                            if (Uri.parse(str).getPathSegments().size() - Uri.parse(str2).getPathSegments().size() != 1) {
                                return false;
                            }
                            return str.startsWith(str2);
                        }
                    }
                }
                return true;
            }
            Log.e("UriUtil", "url contains unsafe char");
        }
        return false;
    }

    public static boolean e(String str, String[] strArr) {
        if (strArr != null && strArr.length != 0) {
            for (String str2 : strArr) {
                if (f(str, str2)) {
                    return true;
                }
            }
            return false;
        }
        qb.a.d("UriUtil", "whitelist is null");
        return false;
    }

    public static boolean f(String str, String str2) {
        String b10 = b(str);
        if (!TextUtils.isEmpty(b10) && !TextUtils.isEmpty(str2)) {
            String a10 = a(str2);
            if (TextUtils.isEmpty(a10)) {
                Log.e("UriUtil", "whitelist host is null");
                return false;
            } else if (a10.equals(b10)) {
                return true;
            } else {
                if (b10.endsWith(a10)) {
                    try {
                        String substring = b10.substring(0, b10.length() - a10.length());
                        if (!substring.endsWith(".")) {
                            return false;
                        }
                        return substring.matches("^[A-Za-z0-9.-]+$");
                    } catch (IndexOutOfBoundsException e10) {
                        qb.a.d("UriUtil", "IndexOutOfBoundsException" + e10.getMessage());
                    } catch (Exception e11) {
                        qb.a.d("UriUtil", "Exception : " + e11.getMessage());
                        return false;
                    }
                }
                return false;
            }
        }
        qb.a.d("UriUtil", "url or whitelist is null");
        return false;
    }

    public static boolean g(String str, String str2) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            return TextUtils.equals(b(str), a(str2));
        }
        Log.e("UriUtil", "isUrlHostSameWhitelist: url or host is null");
        return false;
    }

    public static boolean h(String str, String[] strArr) {
        if (strArr != null && strArr.length != 0) {
            for (String str2 : strArr) {
                if (g(str, str2)) {
                    return true;
                }
            }
            return false;
        }
        qb.a.d("UriUtil", "whitelist is null");
        return false;
    }
}
