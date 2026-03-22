package com.mbridge.msdk.tracker.network;

import android.text.TextUtils;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.playercommon.exoplayer2.source.chunk.ChunkedTrackBlacklistUtil;
import java.util.HashMap;
import java.util.Map;
/* compiled from: MBridgeBaseRequest.java */
/* loaded from: classes6.dex */
public abstract class h<T> extends t<T> {
    protected static final String B = "h";
    private boolean A;

    /* renamed from: w  reason: collision with root package name */
    private final long f30278w;

    /* renamed from: x  reason: collision with root package name */
    private Map<String, String> f30279x;

    /* renamed from: y  reason: collision with root package name */
    private Map<String, String> f30280y;

    /* renamed from: z  reason: collision with root package name */
    private x f30281z;

    public h(int i10, String str, int i11, String str2, long j10) {
        super(i10, str, i11, str2);
        this.A = false;
        if (j10 > 0) {
            this.f30278w = j10;
        } else {
            this.f30278w = ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS;
        }
    }

    public void a(Map<String, String> map) {
        if (map == null || map.isEmpty()) {
            return;
        }
        if (this.f30279x == null) {
            this.f30279x = new HashMap();
        }
        try {
            this.f30279x.putAll(map);
        } catch (Exception e10) {
            String str = B;
            p0.b(str, "addParams error: " + e10.getMessage());
        }
    }

    public void b(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (this.f30280y == null) {
            this.f30280y = new HashMap();
        }
        try {
            this.f30280y.put(str, str2);
        } catch (Exception e10) {
            String str3 = B;
            p0.b(str3, "addHeader error: " + e10.getMessage());
        }
    }

    public void d(boolean z10) {
        this.A = z10;
    }

    @Override // com.mbridge.msdk.tracker.network.t
    public Map<String, String> f() {
        if (this.f30280y == null) {
            this.f30280y = new HashMap();
        }
        this.f30280y.put("Charset", "UTF-8");
        return this.f30280y;
    }

    @Override // com.mbridge.msdk.tracker.network.t
    protected Map<String, String> i() {
        if (this.f30279x == null) {
            this.f30279x = new HashMap();
        }
        return this.f30279x;
    }

    @Override // com.mbridge.msdk.tracker.network.t
    public x o() {
        if (this.f30281z == null) {
            this.f30281z = new e(30000, this.f30278w, 3);
        }
        return this.f30281z;
    }

    @Override // com.mbridge.msdk.tracker.network.t
    public boolean a() {
        return this.A && com.mbridge.msdk.foundation.same.d.a(p(), t());
    }
}
