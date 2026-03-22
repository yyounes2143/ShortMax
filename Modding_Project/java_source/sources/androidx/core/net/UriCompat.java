package androidx.core.net;

import android.net.Uri;
import androidx.annotation.NonNull;
import androidx.webkit.ProxyConfig;
/* loaded from: classes.dex */
public final class UriCompat {
    private UriCompat() {
    }

    @NonNull
    public static String toSafeString(@NonNull Uri uri) {
        String str;
        String scheme = uri.getScheme();
        String schemeSpecificPart = uri.getSchemeSpecificPart();
        if (scheme != null) {
            if (!scheme.equalsIgnoreCase("tel") && !scheme.equalsIgnoreCase("sip") && !scheme.equalsIgnoreCase("sms") && !scheme.equalsIgnoreCase("smsto") && !scheme.equalsIgnoreCase("mailto") && !scheme.equalsIgnoreCase("nfc")) {
                if (scheme.equalsIgnoreCase(ProxyConfig.MATCH_HTTP) || scheme.equalsIgnoreCase("https") || scheme.equalsIgnoreCase("ftp") || scheme.equalsIgnoreCase("rtsp")) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("//");
                    String str2 = "";
                    if (uri.getHost() == null) {
                        str = "";
                    } else {
                        str = uri.getHost();
                    }
                    sb2.append(str);
                    if (uri.getPort() != -1) {
                        str2 = ":" + uri.getPort();
                    }
                    sb2.append(str2);
                    sb2.append("/...");
                    schemeSpecificPart = sb2.toString();
                }
            } else {
                StringBuilder sb3 = new StringBuilder(64);
                sb3.append(scheme);
                sb3.append(':');
                if (schemeSpecificPart != null) {
                    for (int i10 = 0; i10 < schemeSpecificPart.length(); i10++) {
                        char charAt = schemeSpecificPart.charAt(i10);
                        if (charAt != '-' && charAt != '@' && charAt != '.') {
                            sb3.append('x');
                        } else {
                            sb3.append(charAt);
                        }
                    }
                }
                return sb3.toString();
            }
        }
        StringBuilder sb4 = new StringBuilder(64);
        if (scheme != null) {
            sb4.append(scheme);
            sb4.append(':');
        }
        if (schemeSpecificPart != null) {
            sb4.append(schemeSpecificPart);
        }
        return sb4.toString();
    }
}
