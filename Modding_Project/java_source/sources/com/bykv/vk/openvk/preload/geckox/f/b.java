package com.bykv.vk.openvk.preload.geckox.f;

import android.content.Context;
import android.text.TextUtils;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.bykv.vk.openvk.preload.geckox.logger.GeckoLogger;
import java.io.File;
import java.io.InputStream;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: VersionedResLoader.java */
/* loaded from: classes3.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, a> f11406a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private AtomicBoolean f11407b = new AtomicBoolean(false);

    /* renamed from: c  reason: collision with root package name */
    private String f11408c;

    public b(Context context, String str, File file) {
        if (!TextUtils.isEmpty(str)) {
            if (file == null) {
                File filesDir = context.getFilesDir();
                this.f11408c = new File(filesDir, "gecko_offline_res_x" + File.separator + str).getAbsolutePath();
                return;
            }
            this.f11408c = new File(file, str).getAbsolutePath();
            return;
        }
        throw new RuntimeException("access key empty");
    }

    private a d(String str) {
        a aVar;
        int indexOf = str.indexOf(DomExceptionUtils.SEPARATOR);
        if (indexOf == -1) {
            new RuntimeException("channel：".concat(str));
        }
        String substring = str.substring(0, indexOf);
        synchronized (this.f11406a) {
            try {
                aVar = this.f11406a.get(substring);
                if (aVar == null) {
                    aVar = new a(this.f11408c, substring);
                    this.f11406a.put(substring, aVar);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return aVar;
    }

    public final String a() {
        return this.f11408c;
    }

    public final int b(String str) throws Exception {
        if (!this.f11407b.get()) {
            if (!TextUtils.isEmpty(str)) {
                return d(str.trim()).c(str);
            }
            throw new RuntimeException("relativePath empty");
        }
        throw new RuntimeException("released");
    }

    public final boolean c(String str) throws Exception {
        if (!this.f11407b.get()) {
            if (!TextUtils.isEmpty(str)) {
                return d(str.trim()).b(str);
            }
            throw new RuntimeException("relativePath empty");
        }
        throw new RuntimeException("released");
    }

    public final InputStream a(String str) throws Exception {
        if (!this.f11407b.get()) {
            if (!TextUtils.isEmpty(str)) {
                return d(str.trim()).a(str);
            }
            throw new RuntimeException("relativePath empty");
        }
        throw new RuntimeException("released");
    }

    public final Map<String, Long> b() {
        HashMap hashMap = new HashMap();
        synchronized (this.f11406a) {
            try {
                Collection<a> values = this.f11406a.values();
                if (values == null) {
                    return hashMap;
                }
                for (a aVar : values) {
                    hashMap.put(aVar.b(), aVar.a());
                }
                return hashMap;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void c() throws Exception {
        if (this.f11407b.getAndSet(true)) {
            return;
        }
        GeckoLogger.d("Loader", "release version res loader");
        synchronized (this.f11406a) {
            try {
                for (a aVar : this.f11406a.values()) {
                    aVar.c();
                }
                this.f11406a.clear();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
