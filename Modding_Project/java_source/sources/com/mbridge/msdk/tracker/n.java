package com.mbridge.msdk.tracker;

import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.tools.p0;
import java.util.concurrent.ConcurrentHashMap;
/* compiled from: MemoryEventFilter.java */
/* loaded from: classes6.dex */
public class n implements f {

    /* renamed from: a  reason: collision with root package name */
    private final ConcurrentHashMap<String, a> f30250a = new ConcurrentHashMap<>();

    /* compiled from: MemoryEventFilter.java */
    /* loaded from: classes6.dex */
    private static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final boolean f30251a;

        public a(boolean z10) {
            this.f30251a = z10;
        }

        public boolean a() {
            return this.f30251a;
        }
    }

    @Override // com.mbridge.msdk.tracker.f
    public boolean a(e eVar) throws Exception {
        a aVar;
        if (eVar != null && !TextUtils.isEmpty(eVar.b())) {
            try {
                String b10 = eVar.b();
                if (this.f30250a.containsKey(b10)) {
                    aVar = this.f30250a.get(b10);
                } else {
                    a aVar2 = new a(com.mbridge.msdk.foundation.same.report.c.a(b10));
                    this.f30250a.put(b10, aVar2);
                    aVar = aVar2;
                }
                if (aVar == null) {
                    return false;
                }
                if (!aVar.a()) {
                    return false;
                }
                return true;
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    p0.b("TrackManager", "apply", e10);
                }
            }
        }
        return false;
    }
}
