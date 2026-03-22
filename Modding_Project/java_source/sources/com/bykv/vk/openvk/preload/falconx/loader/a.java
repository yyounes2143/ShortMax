package com.bykv.vk.openvk.preload.falconx.loader;

import android.content.Context;
import android.text.TextUtils;
import com.bykv.vk.openvk.preload.geckox.f.b;
import com.bykv.vk.openvk.preload.geckox.logger.GeckoLogger;
import java.io.File;
import java.io.InputStream;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: GeckoResLoader.java */
/* loaded from: classes3.dex */
public class a implements ILoader {

    /* renamed from: a  reason: collision with root package name */
    private b f11284a;

    /* renamed from: b  reason: collision with root package name */
    private AtomicBoolean f11285b = new AtomicBoolean(false);

    public a(Context context, String str, File file) {
        if (context != null) {
            if (!TextUtils.isEmpty(str)) {
                if (file != null) {
                    this.f11284a = new b(context, str, file);
                    return;
                }
                throw new RuntimeException("resRootDir == null");
            }
            throw new RuntimeException("access key empty");
        }
        throw new RuntimeException("context == null");
    }

    public final int a(String str) throws Exception {
        if (!this.f11285b.get()) {
            return this.f11284a.b(str);
        }
        throw new RuntimeException("released!");
    }

    @Override // com.bykv.vk.openvk.preload.falconx.loader.ILoader
    public boolean exist(String str) throws Exception {
        if (!this.f11285b.get()) {
            return this.f11284a.c(str);
        }
        throw new RuntimeException("released!");
    }

    @Override // com.bykv.vk.openvk.preload.falconx.loader.ILoader
    public Map<String, Long> getChannelVersion() {
        return this.f11284a.b();
    }

    @Override // com.bykv.vk.openvk.preload.falconx.loader.ILoader
    public InputStream getInputStream(String str) throws Exception {
        if (!this.f11285b.get()) {
            GeckoLogger.d("WebOffline-falcon", "GeckoResLoader ready to load, file:", str);
            return this.f11284a.a(str);
        }
        throw new RuntimeException("released!");
    }

    @Override // com.bykv.vk.openvk.preload.falconx.loader.ILoader
    public String getResRootDir() {
        return this.f11284a.a();
    }

    @Override // com.bykv.vk.openvk.preload.falconx.loader.ILoader
    public void release() throws Exception {
        if (this.f11285b.getAndSet(true)) {
            return;
        }
        this.f11284a.c();
    }
}
