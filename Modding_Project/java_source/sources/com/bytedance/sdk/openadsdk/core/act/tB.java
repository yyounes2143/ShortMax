package com.bytedance.sdk.openadsdk.core.act;

import android.content.Context;
import android.net.Uri;
import androidx.browser.customtabs.CustomTabsClient;
import androidx.browser.customtabs.CustomTabsIntent;
/* loaded from: classes3.dex */
public class tB implements ZYk {
    public static void oJ(Context context, String str, CustomTabsIntent customTabsIntent, Uri uri) {
        customTabsIntent.intent.setPackage(str);
        customTabsIntent.launchUrl(context, uri);
    }

    @Override // com.bytedance.sdk.openadsdk.core.act.ZYk
    public void oJ(CustomTabsClient customTabsClient) {
        throw null;
    }

    @Override // com.bytedance.sdk.openadsdk.core.act.ZYk
    public void oJ() {
        throw null;
    }
}
