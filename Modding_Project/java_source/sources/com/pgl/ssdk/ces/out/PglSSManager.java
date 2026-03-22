package com.pgl.ssdk.ces.out;

import android.content.Context;
import android.view.MotionEvent;
import com.pgl.ssdk.ces.b;
import java.util.Map;
/* loaded from: classes6.dex */
public class PglSSManager {
    public static final int INIT_STATUS_FAIL_CONTEXT_NULL = 4;
    public static final int INIT_STATUS_FAIL_SO_LOADFAIL = 3;
    public static final int INIT_STATUS_FAIL_SO_MISSING = 2;
    public static final int INIT_STATUS_OK = 0;
    public static final int INIT_STATUS_UNINITIALIZE = 1;
    public static final String REPORT_SCENE_ADSHOW = "AdShow";

    /* renamed from: a  reason: collision with root package name */
    private static volatile PglSSManager f36733a;

    /* renamed from: b  reason: collision with root package name */
    private final b f36734b;

    /* renamed from: c  reason: collision with root package name */
    private volatile int f36735c = 0;

    /* renamed from: d  reason: collision with root package name */
    private volatile PglSSCallBack f36736d;

    private PglSSManager(Context context, PglSSConfig pglSSConfig) {
        this.f36734b = b.a(context, pglSSConfig.getAppId(), pglSSConfig.getOVRegionType(), pglSSConfig.getCollectMode(), pglSSConfig.getAdSdkVersion());
    }

    public static int getInitStatus() {
        return b.g();
    }

    public static PglSSManager getInstance() {
        return f36733a;
    }

    public static String getLoadError() {
        if (b.i() != null) {
            return b.i().f36842b;
        }
        return null;
    }

    @DungeonFlag
    public static PglSSManager init(Context context, PglSSConfig pglSSConfig, String str, String str2, String str3, String str4) {
        if (context == null && pglSSConfig == null) {
            return null;
        }
        if (f36733a == null) {
            synchronized (PglSSManager.class) {
                try {
                    if (f36733a == null) {
                        f36733a = new PglSSManager(context, pglSSConfig);
                        if (b.g() == 0) {
                            f36733a.f36736d = pglSSConfig.getCallBack();
                            f36733a.f36734b.a(pglSSConfig.getCustomInfo());
                            f36733a.f36734b.a(str, str3, str2, str4);
                        }
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f36733a;
    }

    public void checkEventVirtual(MotionEvent motionEvent) {
        if (b.g() == 0) {
            this.f36734b.a(motionEvent);
        }
    }

    public long getECForBidding() {
        if (b.g() == 0) {
            return this.f36734b.e();
        }
        return 0L;
    }

    public Map<String, String> getFeatureHash(String str, byte[] bArr) {
        if (b.g() == 0) {
            return this.f36734b.a(str, bArr);
        }
        return null;
    }

    public PglSSCallBack getPglCallBack() {
        return this.f36736d;
    }

    public String getSofChara() {
        if (b.g() == 0) {
            return this.f36734b.j();
        }
        return null;
    }

    public String getToken() {
        if (b.g() == 0) {
            return this.f36734b.k();
        }
        return null;
    }

    public void reportNow(String str, Map<String, Object> map) {
        if (b.g() == 0) {
            if (REPORT_SCENE_ADSHOW.equals(str)) {
                this.f36734b.b();
            }
            int i10 = this.f36735c;
            b bVar = this.f36734b;
            if (i10 % bVar.f36718p == 0) {
                bVar.a(str, map);
            }
            this.f36735c++;
        }
    }

    public void setCustomInfo(Map<String, Object> map) {
        if (b.g() == 0) {
            this.f36734b.a(map);
        }
    }

    public void setDeviceId(String str) {
        if (b.g() == 0) {
            this.f36734b.b(str);
        }
    }

    public void setGaid(String str) {
        if (b.g() == 0) {
            this.f36734b.c(str);
        }
    }
}
