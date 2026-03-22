package com.amazonaws.util;

import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
class TimingInfoFullSupport extends TimingInfo {

    /* renamed from: d  reason: collision with root package name */
    private final Map<String, List<TimingInfo>> f6421d;

    /* renamed from: e  reason: collision with root package name */
    private final Map<String, Number> f6422e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public TimingInfoFullSupport(Long l10, long j10, Long l11) {
        super(l10, j10, l11);
        this.f6421d = new HashMap();
        this.f6422e = new HashMap();
    }

    @Override // com.amazonaws.util.TimingInfo
    public void a(String str, TimingInfo timingInfo) {
        List<TimingInfo> list = this.f6421d.get(str);
        if (list == null) {
            list = new ArrayList<>();
            this.f6421d.put(str, list);
        }
        if (timingInfo.k()) {
            list.add(timingInfo);
            return;
        }
        Log b10 = LogFactory.b(getClass());
        b10.h("Skip submeasurement timing info with no end time for " + str);
    }

    @Override // com.amazonaws.util.TimingInfo
    public Map<String, Number> d() {
        return this.f6422e;
    }

    @Override // com.amazonaws.util.TimingInfo
    public Map<String, List<TimingInfo>> g() {
        return this.f6421d;
    }

    @Override // com.amazonaws.util.TimingInfo
    public void j(String str) {
        int i10;
        Number q10 = q(str);
        if (q10 != null) {
            i10 = q10.intValue();
        } else {
            i10 = 0;
        }
        l(str, i10 + 1);
    }

    @Override // com.amazonaws.util.TimingInfo
    public void l(String str, long j10) {
        this.f6422e.put(str, Long.valueOf(j10));
    }

    public Number q(String str) {
        return this.f6422e.get(str);
    }
}
