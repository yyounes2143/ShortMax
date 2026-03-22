package com.mbridge.msdk.tracker.network.toolbox;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.mbridge.msdk.foundation.download.DownloadError;
import com.mbridge.msdk.foundation.download.DownloadMessage;
import com.mbridge.msdk.foundation.download.DownloadPriority;
import com.mbridge.msdk.foundation.download.DownloadResourceType;
import com.mbridge.msdk.foundation.download.MBDownloadManager;
import com.mbridge.msdk.foundation.download.OnDownloadStateListener;
import com.mbridge.msdk.foundation.tools.j0;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.r0;
import com.mbridge.msdk.interstitial.view.MBInterstitialActivity;
import java.io.File;
import java.io.FileInputStream;
import java.net.InetAddress;
import java.net.URL;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
/* compiled from: LocalDNSManager.java */
/* loaded from: classes6.dex */
public class i {

    /* renamed from: f  reason: collision with root package name */
    private static final String f30362f = "i";

    /* renamed from: g  reason: collision with root package name */
    private static volatile i f30363g;

    /* renamed from: a  reason: collision with root package name */
    private final ConcurrentHashMap<String, InetAddress> f30364a = new ConcurrentHashMap<>();

    /* renamed from: b  reason: collision with root package name */
    private final AtomicBoolean f30365b = new AtomicBoolean(false);

    /* renamed from: d  reason: collision with root package name */
    private String f30367d = "";

    /* renamed from: e  reason: collision with root package name */
    private String f30368e = "";

    /* renamed from: c  reason: collision with root package name */
    private final com.mbridge.msdk.foundation.buffer.sharedperference.a f30366c = com.mbridge.msdk.foundation.buffer.sharedperference.a.b();

    private i() {
    }

    public static i b() {
        if (f30363g == null) {
            synchronized (i.class) {
                try {
                    if (f30363g == null) {
                        f30363g = new i();
                    }
                } finally {
                }
            }
        }
        return f30363g;
    }

    private void d(String str) {
        try {
            this.f30368e = e(com.mbridge.msdk.foundation.same.net.utils.d.h().f27182y);
            if (TextUtils.isEmpty(str)) {
                return;
            }
            JSONObject jSONObject = new JSONObject(j0.a(str));
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                if (!TextUtils.isEmpty(next) && next.contains(this.f30368e)) {
                    String string = jSONObject.getString(next);
                    if (!TextUtils.isEmpty(string)) {
                        try {
                            this.f30364a.put(next, InetAddress.getByAddress(next, com.mbridge.msdk.foundation.same.c.b(string)));
                        } catch (UnknownHostException e10) {
                            this.f30367d = String.format("create InetAddress failed for %s with ip %s", next, string);
                            p0.b(f30362f, "init: local dns cache error", e10);
                        }
                    }
                }
            }
            this.f30365b.set(true);
        } catch (Exception e11) {
            p0.b(f30362f, "init: local dns cache json parse error", e11);
            this.f30367d = "parse local dns config error";
            this.f30364a.clear();
            this.f30365b.set(false);
        }
    }

    private static String e(String str) {
        return str.replace("https://{}", "").replace("http://{}", "");
    }

    public boolean c(String str) {
        return TextUtils.equals(str, com.mbridge.msdk.foundation.same.net.utils.d.h().f27160e.replace("https://", ""));
    }

    public void f(String str) {
        if (!TextUtils.isEmpty(str) && e()) {
            this.f30365b.set(false);
            this.f30364a.clear();
            a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        this.f30365b.set(false);
        this.f30367d = "download local dns config error";
    }

    public boolean e() {
        return r0.a().b("local_dns", false, false);
    }

    private void a() {
        String a10 = this.f30366c.a("cache");
        String a11 = this.f30366c.a("url");
        String b10 = r0.a().b("local_dns_config_url", "", false);
        if (TextUtils.isEmpty(b10)) {
            this.f30366c.a("cache", "");
        } else if (!TextUtils.isEmpty(a10) && !TextUtils.isEmpty(a11) && TextUtils.equals(b10, a11)) {
            d(a10);
        } else {
            a(b10);
        }
    }

    public boolean c(String str, String str2, String str3) {
        return e() && d() && TextUtils.equals(str, MBInterstitialActivity.INTENT_CAMAPIGN) && !c(str3) && (TextUtils.equals(str2, String.valueOf(94)) || TextUtils.equals(str2, String.valueOf(287)));
    }

    public static String b(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            String path = new URL(str).getPath();
            return path.substring(path.lastIndexOf(47) + 1);
        } catch (Exception unused) {
            return str;
        }
    }

    private void a(String str) {
        String b10 = b(str);
        a(str, com.mbridge.msdk.foundation.same.directory.e.b(com.mbridge.msdk.foundation.same.directory.c.MBRIDGE_OTHER) + File.separator, b10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(String str, String str2, String str3) {
        try {
            String a10 = com.mbridge.msdk.foundation.same.c.a(new FileInputStream(new File(str2, str3)));
            if (TextUtils.isEmpty(a10)) {
                return;
            }
            this.f30366c.a("cache", a10);
            this.f30366c.a("url", str);
            d(a10);
        } catch (Exception e10) {
            p0.b(f30362f, "downloadLocalDNSConfig: onDownloadComplete: file not found", e10);
            this.f30367d = "find local dns config file error";
        }
    }

    private void a(String str, String str2, String str3) {
        MBDownloadManager.getInstance().download(new DownloadMessage<>(new Object(), str, str3, 100, DownloadResourceType.DOWNLOAD_RESOURCE_TYPE_OTHER)).withConnectTimeout(30000L).withReadTimeout(30000L).withWriteTimeout(30000L).withTimeout(30000L).withHttpRetryCounter(5).withDirectoryPathInternal(str2).withDownloadPriority(DownloadPriority.HIGH).withDownloadStateListener(new a(str, str2, str3)).build().start();
    }

    public boolean d() {
        return this.f30365b.get() && !this.f30364a.isEmpty();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: LocalDNSManager.java */
    /* loaded from: classes6.dex */
    public static class a implements OnDownloadStateListener<Object> {

        /* renamed from: a  reason: collision with root package name */
        private final String f30369a;

        /* renamed from: b  reason: collision with root package name */
        private final String f30370b;

        /* renamed from: c  reason: collision with root package name */
        private final String f30371c;

        public a(String str, String str2, String str3) {
            this.f30369a = str;
            this.f30370b = str2;
            this.f30371c = str3;
        }

        @Override // com.mbridge.msdk.foundation.download.OnDownloadStateListener
        public void onCancelDownload(DownloadMessage<Object> downloadMessage) {
            i.b().c();
        }

        @Override // com.mbridge.msdk.foundation.download.OnDownloadStateListener
        public void onDownloadComplete(DownloadMessage<Object> downloadMessage) {
            i.b().b(this.f30369a, this.f30370b, this.f30371c);
        }

        @Override // com.mbridge.msdk.foundation.download.OnDownloadStateListener
        public void onDownloadError(DownloadMessage<Object> downloadMessage, DownloadError downloadError) {
            i.b().c();
        }

        @Override // com.mbridge.msdk.foundation.download.OnDownloadStateListener
        public void onDownloadStart(DownloadMessage<Object> downloadMessage) {
        }
    }

    public List<InetAddress> a(@NonNull String str, UnknownHostException unknownHostException) throws UnknownHostException {
        InetAddress inetAddress;
        try {
            inetAddress = this.f30364a.get(str);
        } catch (Exception e10) {
            p0.b(f30362f, "lookup: local dns cache error", e10);
            inetAddress = null;
        }
        if (inetAddress != null) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(inetAddress);
            return arrayList;
        }
        throw unknownHostException;
    }
}
