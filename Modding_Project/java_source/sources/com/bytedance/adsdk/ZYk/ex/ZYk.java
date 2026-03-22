package com.bytedance.adsdk.ZYk.ex;

import androidx.browser.trusted.sharing.ShareTarget;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
/* loaded from: classes3.dex */
public class ZYk implements ba {
    @Override // com.bytedance.adsdk.ZYk.ex.ba
    public ex oJ(String str) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        httpURLConnection.setRequestMethod(ShareTarget.METHOD_GET);
        httpURLConnection.connect();
        return new oJ(httpURLConnection);
    }
}
