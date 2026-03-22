package androidx.webkit;

import android.webkit.WebResourceResponse;
import androidx.webkit.internal.WebViewFeatureInternal;
import java.io.InputStream;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.chromium.support_lib_boundary.WebViewProviderFactoryBoundaryInterface;
/* loaded from: classes2.dex */
public class WebResourceResponseCompat {
    private List<String> mCookies = Collections.emptyList();
    private final WebResourceResponse mWrapped;

    public WebResourceResponseCompat(String str, String str2, InputStream inputStream) {
        WebResourceResponse webResourceResponse = new WebResourceResponse(str, str2, inputStream);
        this.mWrapped = webResourceResponse;
        webResourceResponse.setResponseHeaders(Collections.emptyMap());
    }

    private String serializeMultiCookieHeader(List<String> list) {
        if (list.isEmpty()) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder();
        for (String str : list) {
            if (!b.a(str)) {
                if (sb2.length() > 0) {
                    sb2.append(WebViewProviderFactoryBoundaryInterface.MULTI_COOKIE_VALUE_SEPARATOR);
                }
                sb2.append(str.trim());
            }
        }
        return sb2.toString();
    }

    public static WebResourceResponseCompat toWebResourceResponseCompat(WebResourceResponse webResourceResponse) {
        int statusCode = webResourceResponse.getStatusCode();
        String reasonPhrase = webResourceResponse.getReasonPhrase();
        if (statusCode < 100) {
            statusCode = 200;
        }
        int i10 = statusCode;
        if (reasonPhrase == null) {
            reasonPhrase = "OK";
        }
        return new WebResourceResponseCompat(webResourceResponse.getMimeType(), webResourceResponse.getEncoding(), i10, reasonPhrase, webResourceResponse.getResponseHeaders(), webResourceResponse.getData());
    }

    public List<String> getCookies() {
        return this.mCookies;
    }

    public InputStream getData() {
        return this.mWrapped.getData();
    }

    public String getEncoding() {
        return this.mWrapped.getEncoding();
    }

    public String getMimeType() {
        return this.mWrapped.getMimeType();
    }

    public String getReasonPhrase() {
        return this.mWrapped.getReasonPhrase();
    }

    public Map<String, String> getResponseHeaders() {
        return this.mWrapped.getResponseHeaders();
    }

    public int getStatusCode() {
        return this.mWrapped.getStatusCode();
    }

    public void setCookies(List<String> list) {
        if (WebViewFeatureInternal.COOKIE_INTERCEPT.isSupportedByWebView()) {
            this.mCookies = list;
            return;
        }
        throw WebViewFeatureInternal.getUnsupportedOperationException();
    }

    public void setData(InputStream inputStream) {
        this.mWrapped.setData(inputStream);
    }

    public void setEncoding(String str) {
        this.mWrapped.setEncoding(str);
    }

    public void setMimeType(String str) {
        this.mWrapped.setMimeType(str);
    }

    public void setResponseHeaders(Map<String, String> map) {
        this.mWrapped.setResponseHeaders(map);
    }

    public void setStatusCodeAndReasonPhrase(int i10, String str) {
        this.mWrapped.setStatusCodeAndReasonPhrase(i10, str);
    }

    public WebResourceResponse toWebResourceResponse() {
        HashMap hashMap;
        Map<String, String> responseHeaders = this.mWrapped.getResponseHeaders();
        if (responseHeaders != null) {
            hashMap = new HashMap(responseHeaders);
        } else {
            hashMap = new HashMap();
        }
        HashMap hashMap2 = hashMap;
        if (!this.mCookies.isEmpty()) {
            hashMap2.put(WebViewProviderFactoryBoundaryInterface.MULTI_COOKIE_HEADER_NAME, serializeMultiCookieHeader(this.mCookies));
        }
        int statusCode = this.mWrapped.getStatusCode();
        String reasonPhrase = this.mWrapped.getReasonPhrase();
        if (statusCode < 100) {
            statusCode = 200;
            reasonPhrase = "OK";
        }
        String str = reasonPhrase;
        return new WebResourceResponse(this.mWrapped.getMimeType(), this.mWrapped.getEncoding(), statusCode, str, hashMap2, this.mWrapped.getData());
    }

    public WebResourceResponseCompat(String str, String str2, int i10, String str3, Map<String, String> map, InputStream inputStream) {
        this.mWrapped = new WebResourceResponse(str, str2, i10, str3, map == null ? Collections.emptyMap() : map, inputStream);
    }
}
