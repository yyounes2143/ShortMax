package com.mbridge.msdk.videocommon.download;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Patterns;
import android.webkit.URLUtil;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.p0;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.CopyOnWriteArrayList;
/* compiled from: H5DownLoadManager.java */
/* loaded from: classes6.dex */
public class d {

    /* renamed from: h  reason: collision with root package name */
    private static d f31609h;

    /* renamed from: a  reason: collision with root package name */
    private CopyOnWriteArrayList<String> f31610a;

    /* renamed from: b  reason: collision with root package name */
    private ConcurrentMap<String, Object> f31611b;

    /* renamed from: c  reason: collision with root package name */
    private i f31612c;

    /* renamed from: d  reason: collision with root package name */
    private f f31613d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f31614e;

    /* renamed from: f  reason: collision with root package name */
    private final String f31615f = CampaignEx.JSON_KEY_LOCAL_REQUEST_ID;

    /* renamed from: g  reason: collision with root package name */
    private final String f31616g = "down_type";

    private d() {
        this.f31614e = false;
        try {
            this.f31612c = i.a();
            this.f31613d = f.a();
            this.f31610a = new CopyOnWriteArrayList<>();
            this.f31611b = new ConcurrentHashMap();
            com.mbridge.msdk.setting.g d10 = com.mbridge.msdk.setting.h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
            if (d10 != null) {
                this.f31614e = d10.b(1);
            }
        } catch (Throwable th2) {
            p0.b("H5DownLoadManager", th2.getMessage(), th2);
        }
    }

    public static synchronized d a() {
        d dVar;
        synchronized (d.class) {
            try {
                if (f31609h == null) {
                    f31609h = new d();
                }
                dVar = f31609h;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return dVar;
    }

    private String b(String str) {
        f fVar = this.f31613d;
        if (fVar != null) {
            return fVar.b(str);
        }
        return str;
    }

    public String c(String str) {
        i iVar = this.f31612c;
        if (iVar != null) {
            return iVar.a(str);
        }
        return null;
    }

    public String a(String str) {
        try {
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        if (!Patterns.WEB_URL.matcher(str).matches()) {
            if (URLUtil.isValidUrl(str)) {
            }
            return str;
        }
        Uri parse = Uri.parse(str);
        String path = parse.getPath();
        if (TextUtils.isEmpty(path) || !TextUtils.isEmpty(parse.getQueryParameter("urlDebug"))) {
            return str;
        }
        if (path.toLowerCase().endsWith(".zip")) {
            return c(str);
        }
        return b(str);
    }
}
