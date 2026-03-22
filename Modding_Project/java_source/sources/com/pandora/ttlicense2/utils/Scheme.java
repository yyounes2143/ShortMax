package com.pandora.ttlicense2.utils;

import androidx.webkit.ProxyConfig;
/* loaded from: classes6.dex */
public enum Scheme {
    HTTP(ProxyConfig.MATCH_HTTP),
    HTTPS("https"),
    FILE("file"),
    ASSETS("assets"),
    UNKNOWN("");
    
    private String scheme;
    private String uriPrefix;

    Scheme(String str) {
        this.scheme = str;
        this.uriPrefix = str + "://";
    }

    private boolean belongsTo(String str) {
        return str.startsWith(this.uriPrefix);
    }

    public static Scheme ofUri(String str) {
        Scheme[] values;
        if (str != null) {
            for (Scheme scheme : values()) {
                if (scheme.belongsTo(str)) {
                    return scheme;
                }
            }
        }
        return UNKNOWN;
    }

    public String crop(String str) {
        if (belongsTo(str)) {
            return str.substring(this.uriPrefix.length());
        }
        throw new IllegalArgumentException(String.format("URI [%1$s] doesn't have expected scheme [%2$s]", str, this.scheme));
    }

    public String wrap(String str) {
        return this.uriPrefix + str;
    }
}
