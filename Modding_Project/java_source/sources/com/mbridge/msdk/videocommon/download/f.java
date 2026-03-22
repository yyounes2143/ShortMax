package com.mbridge.msdk.videocommon.download;

import android.text.TextUtils;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.mbridge.msdk.foundation.tools.b1;
import com.mbridge.msdk.foundation.tools.n0;
import java.io.File;
/* compiled from: HTMLResourceManager.java */
/* loaded from: classes6.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private String f31617a;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: HTMLResourceManager.java */
    /* loaded from: classes6.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public static f f31618a = new f(null);
    }

    /* synthetic */ f(e eVar) {
        this();
    }

    public static f a() {
        return a.f31618a;
    }

    public void b() {
        this.f31617a = com.mbridge.msdk.foundation.same.directory.e.b(com.mbridge.msdk.foundation.same.directory.c.MBRIDGE_700_HTML);
    }

    private f() {
        b();
    }

    public String a(String str) {
        try {
            String md5 = SameMD5.getMD5(b1.b(str));
            File file = new File(this.f31617a + DomExceptionUtils.SEPARATOR + md5 + ".html");
            if (file.exists()) {
                return n0.e(file);
            }
            return null;
        } catch (Throwable th2) {
            if (MBridgeConstans.DEBUG) {
                th2.printStackTrace();
                return null;
            }
            return null;
        }
    }

    public String b(String str) {
        try {
            String str2 = this.f31617a + DomExceptionUtils.SEPARATOR + SameMD5.getMD5(b1.b(str)) + ".html";
            File file = new File(str2);
            if (file.exists()) {
                com.mbridge.msdk.setting.g d10 = com.mbridge.msdk.setting.h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
                if (d10 != null && !TextUtils.isEmpty(d10.T())) {
                    com.mbridge.msdk.foundation.same.d.a(str, file);
                }
                return "file:////" + str2;
            }
            return null;
        } catch (Throwable th2) {
            if (MBridgeConstans.DEBUG) {
                th2.printStackTrace();
                return null;
            }
            return null;
        }
    }
}
