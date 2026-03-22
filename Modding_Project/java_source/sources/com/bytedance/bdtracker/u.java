package com.bytedance.bdtracker;

import com.bytedance.applog.event.AutoTrackEventType;
import com.bytedance.bdtracker.b;
/* loaded from: classes3.dex */
public final class u implements b.e {
    @Override // com.bytedance.bdtracker.b.e
    public boolean a(d dVar) {
        if (dVar.isBavEnabled() && dVar.getInitConfig() != null && AutoTrackEventType.a(dVar.getInitConfig().getAutoTrackEventType(), 8)) {
            return true;
        }
        return false;
    }
}
