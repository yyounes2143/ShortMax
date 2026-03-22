package com.inmobi.media;

import com.inmobi.unifiedId.InMobiUnifiedIdService;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public final class J5 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ JSONObject f23756a;

    public J5(JSONObject jSONObject) {
        this.f23756a = jSONObject;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z10;
        Boolean c10 = C3182te.f25312a.c();
        if (c10 != null) {
            z10 = c10.booleanValue();
        } else {
            z10 = true;
        }
        if (z10) {
            InMobiUnifiedIdService.reset();
        }
        if (z10) {
            return;
        }
        Q5.a(this.f23756a);
    }
}
