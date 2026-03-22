package com.bykv.vk.openvk.preload.geckox;

import android.os.SystemClock;
import android.text.TextUtils;
import com.bykv.vk.openvk.preload.b.d;
import com.bykv.vk.openvk.preload.geckox.logger.GeckoLogger;
import com.bykv.vk.openvk.preload.geckox.model.CheckRequestBodyModel;
import com.bytedance.vodsetting.Module;
import com.ss.ttvideoengine.DataLoaderHelper;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.LinkedBlockingQueue;
import org.json.JSONObject;
/* compiled from: GeckoClient.java */
/* loaded from: classes3.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private com.bykv.vk.openvk.preload.falconx.a.a f11289a;

    /* renamed from: b  reason: collision with root package name */
    private Queue<String> f11290b;

    /* renamed from: c  reason: collision with root package name */
    private b f11291c;

    /* renamed from: d  reason: collision with root package name */
    private File f11292d;

    private a(b bVar) {
        new ArrayList();
        this.f11289a = new com.bykv.vk.openvk.preload.falconx.a.a();
        this.f11290b = new LinkedBlockingQueue();
        this.f11291c = bVar;
        File n10 = bVar.n();
        this.f11292d = n10;
        n10.mkdirs();
        com.bykv.vk.openvk.preload.geckox.statistic.b.a(this, this.f11291c);
    }

    static /* synthetic */ void d(a aVar) {
        new ArrayList().addAll(aVar.f11291c.e());
        try {
            String a10 = com.bykv.vk.openvk.preload.geckox.c.b.a().b().a(new com.bykv.vk.openvk.preload.geckox.a.a());
            if (aVar.f11291c.p() != null && aVar.f11291c.p().a()) {
                aVar.f11291c.p();
            } else if (aVar.f11290b.size() < 10) {
                aVar.f11290b.add(a10);
            }
        } catch (Throwable unused) {
        }
    }

    public static a a(b bVar) {
        List<String> e10 = bVar.e();
        if (e10 != null && !e10.isEmpty()) {
            bVar.a();
            return new a(bVar);
        }
        throw new IllegalArgumentException("access key empty");
    }

    private boolean b(Map<String, List<CheckRequestBodyModel.TargetChannel>> map) {
        if (map != null && !map.isEmpty()) {
            List<String> e10 = this.f11291c.e();
            for (Map.Entry<String, List<CheckRequestBodyModel.TargetChannel>> entry : map.entrySet()) {
                boolean z10 = false;
                for (String str : e10) {
                    if (TextUtils.equals(str, entry.getKey())) {
                        z10 = true;
                    }
                }
                if (!z10) {
                    return false;
                }
            }
        }
        return true;
    }

    private boolean a() {
        List<String> d10 = this.f11291c.d();
        List<String> e10 = this.f11291c.e();
        if (d10 == null || d10.isEmpty() || e10 == null || e10.isEmpty()) {
            return false;
        }
        for (String str : e10) {
            boolean z10 = false;
            for (String str2 : d10) {
                if (TextUtils.equals(str, str2)) {
                    z10 = true;
                }
            }
            if (!z10) {
                return false;
            }
        }
        return true;
    }

    public final void a(Class<? extends d<?, ?>> cls, com.bykv.vk.openvk.preload.b.b.a aVar) {
        this.f11289a.a(cls, aVar);
    }

    public final void a(final Map<String, List<CheckRequestBodyModel.TargetChannel>> map) {
        if (!TextUtils.isEmpty(DataLoaderHelper.PRELOAD_DEFAULT_SCENE)) {
            if (a()) {
                if (b(map)) {
                    b.h().execute(new Runnable() { // from class: com.bykv.vk.openvk.preload.geckox.a.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            com.bykv.vk.openvk.preload.geckox.a.a.b bVar;
                            GeckoLogger.d("gecko-debug-tag", "start check update...", r2);
                            if (a.this.f11291c.b() != null) {
                                bVar = a.this.f11291c.b().a();
                                bVar.a(a.this.f11291c.b(), a.this.f11291c.n(), a.this.f11291c.e());
                            } else {
                                bVar = null;
                            }
                            try {
                                try {
                                    a.this.f11291c.a(new JSONObject());
                                    GeckoLogger.d("gecko-debug-tag", "update finished", com.bykv.vk.openvk.preload.geckox.h.a.a(r3, a.this.f11292d, a.this.f11291c, a.this.f11289a, r4, map, r2).a((com.bykv.vk.openvk.preload.b.b<Object>) r2));
                                    if (bVar != null) {
                                        bVar.a();
                                    }
                                    JSONObject f10 = a.this.f11291c.f();
                                    if (f10 == null) {
                                        f10 = new JSONObject();
                                    }
                                    try {
                                        f10.put("download_duration", SystemClock.elapsedRealtime() - a.this.f11291c.s());
                                    } catch (Throwable unused) {
                                    }
                                    a.this.f11291c.q().upload("download_gecko_end", f10);
                                    GeckoLogger.d("gecko-debug-tag", "all channel update finished");
                                } catch (Exception e10) {
                                    try {
                                        JSONObject jSONObject = new JSONObject();
                                        jSONObject.put("success", false);
                                        jSONObject.put("msg", e10.toString());
                                        jSONObject.put(Module.ResponseKey.Code, 2);
                                        a.this.f11291c.a(jSONObject);
                                    } catch (Throwable unused2) {
                                    }
                                    GeckoLogger.w("gecko-debug-tag", "Gecko update failed:", e10);
                                    if (bVar != null) {
                                        bVar.a();
                                    }
                                    JSONObject f11 = a.this.f11291c.f();
                                    if (f11 == null) {
                                        f11 = new JSONObject();
                                    }
                                    try {
                                        f11.put("download_duration", SystemClock.elapsedRealtime() - a.this.f11291c.s());
                                    } catch (Throwable unused3) {
                                    }
                                    a.this.f11291c.q().upload("download_gecko_end", f11);
                                    GeckoLogger.d("gecko-debug-tag", "all channel update finished");
                                }
                                a.d(a.this);
                            } catch (Throwable th2) {
                                if (bVar != null) {
                                    bVar.a();
                                }
                                JSONObject f12 = a.this.f11291c.f();
                                if (f12 == null) {
                                    f12 = new JSONObject();
                                }
                                try {
                                    f12.put("download_duration", SystemClock.elapsedRealtime() - a.this.f11291c.s());
                                } catch (Throwable unused4) {
                                }
                                a.this.f11291c.q().upload("download_gecko_end", f12);
                                GeckoLogger.d("gecko-debug-tag", "all channel update finished");
                                throw th2;
                            }
                        }
                    });
                    return;
                }
                throw new IllegalArgumentException("target keys not in deployments keys");
            }
            throw new IllegalArgumentException("deployments keys not in local keys");
        }
        throw new IllegalArgumentException("groupType == null");
    }
}
