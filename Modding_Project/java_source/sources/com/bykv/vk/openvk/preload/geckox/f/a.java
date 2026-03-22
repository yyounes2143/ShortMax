package com.bykv.vk.openvk.preload.geckox.f;

import com.bykv.vk.openvk.preload.geckox.f.a.c;
import com.bykv.vk.openvk.preload.geckox.logger.GeckoLogger;
import com.bykv.vk.openvk.preload.geckox.utils.g;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: ChannelVerLoader.java */
/* loaded from: classes3.dex */
final class a {

    /* renamed from: a  reason: collision with root package name */
    private String f11399a;

    /* renamed from: b  reason: collision with root package name */
    private String f11400b;

    /* renamed from: c  reason: collision with root package name */
    private volatile File f11401c;

    /* renamed from: d  reason: collision with root package name */
    private volatile Long f11402d;

    /* renamed from: e  reason: collision with root package name */
    private volatile com.bykv.vk.openvk.preload.geckox.f.a.a f11403e;

    /* renamed from: f  reason: collision with root package name */
    private AtomicBoolean f11404f = new AtomicBoolean(false);

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(String str, String str2) {
        this.f11399a = str;
        this.f11400b = str2;
    }

    private synchronized com.bykv.vk.openvk.preload.geckox.f.a.a d(String str) throws Exception {
        if (this.f11403e != null) {
            return this.f11403e;
        }
        File e10 = e(str);
        if (e10 != null) {
            File file = new File(e10, "res.macv");
            File file2 = new File(e10, "res");
            if (file2.exists() && file2.isDirectory()) {
                this.f11403e = new c(e10);
            } else if (file.exists() && file.isFile()) {
                this.f11403e = new com.bykv.vk.openvk.preload.geckox.f.a.b(e10);
            } else {
                throw new RuntimeException("can not find res, dir:" + e10.getAbsolutePath());
            }
            return this.f11403e;
        }
        throw new FileNotFoundException("channel no exist，channel:".concat(String.valueOf(str)));
    }

    private synchronized File e(String str) throws Exception {
        if (this.f11401c != null) {
            return this.f11401c;
        } else if (this.f11402d != null && this.f11402d.longValue() == -1) {
            return null;
        } else {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(this.f11399a);
            String str2 = File.separator;
            sb2.append(str2);
            sb2.append(str);
            sb2.append(str2);
            sb2.append("select.lock");
            com.bykv.vk.openvk.preload.geckox.g.b a10 = com.bykv.vk.openvk.preload.geckox.g.b.a(sb2.toString());
            if (this.f11402d == null) {
                this.f11402d = g.a(new File(this.f11399a, str));
            }
            if (this.f11402d == null) {
                this.f11402d = -1L;
                a10.a();
                return null;
            }
            String str3 = this.f11399a;
            File file = new File(str3, str2 + str + str2 + this.f11402d + str2 + "using.lock");
            this.f11401c = file.getParentFile();
            com.bykv.vk.openvk.preload.geckox.g.c.a(file.getAbsolutePath());
            File file2 = this.f11401c;
            a10.a();
            return file2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final InputStream a(String str) throws Exception {
        return d(this.f11400b).a(a(this.f11400b, str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean b(String str) throws Exception {
        return d(this.f11400b).b(a(this.f11400b, str));
    }

    public final int c(String str) {
        try {
            File file = new File(e(str), "res");
            if (file.exists() && file.isDirectory()) {
                int length = file.listFiles().length;
                if (length > 0) {
                    return length - 1;
                }
                return 0;
            }
            return 0;
        } catch (Exception e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    private static String a(String str, String str2) {
        return str2.substring(str.length() + 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String b() {
        return this.f11400b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Long a() {
        return this.f11402d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c() throws Exception {
        if (this.f11404f.getAndSet(true)) {
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.f11399a);
        String str = File.separator;
        sb2.append(str);
        sb2.append(this.f11400b);
        sb2.append(str);
        sb2.append("select.lock");
        com.bykv.vk.openvk.preload.geckox.g.b a10 = com.bykv.vk.openvk.preload.geckox.g.b.a(sb2.toString());
        GeckoLogger.d("gecko-file-lock", "channel version loader clean");
        try {
            if (this.f11401c == null) {
                return;
            }
            com.bykv.vk.openvk.preload.geckox.g.c.b(this.f11401c.getAbsolutePath() + str + "using.lock");
            a10.a();
            com.bykv.vk.openvk.preload.geckox.a.c.a(this.f11399a + str + this.f11400b);
        } finally {
            a10.a();
        }
    }
}
