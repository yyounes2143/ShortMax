package com.mbridge.msdk.videocommon.download;

import android.net.Uri;
import android.text.TextUtils;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.download.ResourceManager;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.mbridge.msdk.foundation.tools.b1;
import com.mbridge.msdk.foundation.tools.n0;
import com.vungle.ads.internal.model.AdPayload;
import java.io.File;
import java.util.List;
/* compiled from: ResourceManager.java */
/* loaded from: classes6.dex */
public class i {

    /* renamed from: a  reason: collision with root package name */
    private String f31619a;

    /* compiled from: ResourceManager.java */
    /* loaded from: classes6.dex */
    private static class a {

        /* renamed from: a  reason: collision with root package name */
        public static i f31620a = new i(null);
    }

    /* synthetic */ i(h hVar) {
        this();
    }

    public static i a() {
        return a.f31620a;
    }

    public void b() {
        this.f31619a = com.mbridge.msdk.foundation.same.directory.e.b(com.mbridge.msdk.foundation.same.directory.c.MBRIDGE_700_RES);
    }

    private i() {
        b();
    }

    public String a(String str) {
        String str2;
        String str3 = "";
        try {
            String str4 = this.f31619a + DomExceptionUtils.SEPARATOR + SameMD5.getMD5(b1.b(str));
            List<String> queryParameters = Uri.parse(str).getQueryParameters(ResourceManager.KEY_INDEX_HTML);
            if (queryParameters == null || queryParameters.size() <= 0) {
                return null;
            }
            String str5 = queryParameters.get(0);
            if (TextUtils.isEmpty(str5)) {
                return null;
            }
            String str6 = str4 + DomExceptionUtils.SEPARATOR + str5 + DomExceptionUtils.SEPARATOR + str5 + ".html";
            if (n0.e(str6)) {
                try {
                    com.mbridge.msdk.setting.g d10 = com.mbridge.msdk.setting.h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
                    if (d10 != null && !TextUtils.isEmpty(d10.T())) {
                        com.mbridge.msdk.foundation.same.d.a(str, new File(str6));
                    }
                    str2 = str.substring(str.indexOf("?") + 1);
                } catch (Exception unused) {
                    str2 = "";
                }
                if (!TextUtils.isEmpty(str2)) {
                    str3 = "?" + str2;
                }
                return AdPayload.FILE_SCHEME + str6 + str3;
            }
            return null;
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                e10.printStackTrace();
                return null;
            }
            return null;
        }
    }
}
