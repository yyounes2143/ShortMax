package io.bidmachine.ads.networks.gam;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* compiled from: GAMParams.java */
/* loaded from: classes7.dex */
class p extends xq.o {
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    final String f53699b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    final String f53700c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    final String f53701d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(@NonNull xq.k kVar) {
        super(kVar);
        this.f53699b = kVar.k("ad_unit_id");
        this.f53700c = kVar.k("score");
        this.f53701d = kVar.k("price");
    }

    public boolean a(@NonNull xq.c cVar) {
        if (TextUtils.isEmpty(this.f53699b)) {
            cVar.onAdLoadFailed(fr.a.k("ad_unit_id"));
            return false;
        } else if (TextUtils.isEmpty(this.f53700c)) {
            cVar.onAdLoadFailed(fr.a.k("score"));
            return false;
        } else if (TextUtils.isEmpty(this.f53701d)) {
            cVar.onAdLoadFailed(fr.a.k("price"));
            return false;
        } else {
            return true;
        }
    }
}
