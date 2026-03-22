package io.bidmachine.analytics.internal;

import androidx.browser.trusted.sharing.ShareTarget;
import java.net.HttpURLConnection;
import java.net.URLConnection;
/* loaded from: classes7.dex */
public enum o0 {
    Get(ShareTarget.METHOD_GET),
    Post(ShareTarget.METHOD_POST);
    

    /* renamed from: a  reason: collision with root package name */
    private final String f54255a;

    o0(String str) {
        this.f54255a = str;
    }

    public final void a(URLConnection uRLConnection) {
        if (uRLConnection instanceof HttpURLConnection) {
            ((HttpURLConnection) uRLConnection).setRequestMethod(this.f54255a);
        }
    }
}
