package com.mbridge.msdk.advanced.common;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;
import android.util.Base64;
import android.webkit.WebView;
import androidx.autofill.HintConstants;
import com.mbridge.msdk.foundation.tools.l0;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.mbsignalcommon.windvane.f;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class NetWorkStateReceiver extends BroadcastReceiver {

    /* renamed from: c  reason: collision with root package name */
    private static final String f25726c = "NetWorkStateReceiver";

    /* renamed from: a  reason: collision with root package name */
    private WebView f25727a;

    /* renamed from: b  reason: collision with root package name */
    private int f25728b;

    public NetWorkStateReceiver(WebView webView) {
        this.f25727a = webView;
    }

    public void a() {
        this.f25727a = null;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager == null) {
                a(this.f25727a, 0);
            } else if (com.mbridge.msdk.foundation.same.a.f27044z) {
                NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                if (activeNetworkInfo == null) {
                    a(this.f25727a, 0);
                    return;
                }
                if (activeNetworkInfo.getState() != NetworkInfo.State.CONNECTING && activeNetworkInfo.getState() != NetworkInfo.State.DISCONNECTING) {
                    if (activeNetworkInfo.getType() == 1) {
                        a(this.f25727a, 9);
                        return;
                    }
                    TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService(HintConstants.AUTOFILL_HINT_PHONE);
                    if (telephonyManager == null) {
                        a(this.f25727a, 0);
                        return;
                    }
                    int networkType = telephonyManager.getNetworkType();
                    this.f25728b = networkType;
                    int c10 = l0.c(networkType);
                    this.f25728b = c10;
                    a(this.f25727a, c10);
                }
            } else {
                a(this.f25727a, 0);
            }
        } catch (Throwable th2) {
            p0.a(f25726c, th2.getMessage());
        }
    }

    public void a(WebView webView, int i10) {
        if (webView != null) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("netstat", i10);
                f.a().a(webView, "onNetstatChanged", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
            } catch (Throwable th2) {
                p0.a(f25726c, th2.getMessage());
            }
        }
    }
}
