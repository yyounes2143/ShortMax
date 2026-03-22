package io.bidmachine.ads.networks.vast;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.bidmachine.iab.vast.activity.VastActivity;
import io.bidmachine.measurer.MraidOMSDKAdMeasurer;
import io.bidmachine.measurer.VastOMSDKAdMeasurer;
import sq.k;
import xq.i;
import yq.l;
/* compiled from: VastFullScreenAdShowListener.java */
/* loaded from: classes7.dex */
class d implements tm.a {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final i f53896a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final VastOMSDKAdMeasurer f53897b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final MraidOMSDKAdMeasurer f53898c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(@NonNull i iVar, @Nullable VastOMSDKAdMeasurer vastOMSDKAdMeasurer, @Nullable MraidOMSDKAdMeasurer mraidOMSDKAdMeasurer) {
        this.f53896a = iVar;
        this.f53897b = vastOMSDKAdMeasurer;
        this.f53898c = mraidOMSDKAdMeasurer;
    }

    @Override // tm.a
    public void a(@NonNull VastActivity vastActivity, @NonNull io.bidmachine.iab.vast.a aVar) {
        this.f53896a.onAdShown();
    }

    @Override // tm.a
    public void b(@Nullable io.bidmachine.iab.vast.a aVar, @NonNull qm.a aVar2) {
        this.f53896a.onAdShowFailed(fr.d.a(aVar2));
    }

    @Override // tm.a
    public void c(@NonNull VastActivity vastActivity, @NonNull io.bidmachine.iab.vast.a aVar) {
        VastOMSDKAdMeasurer vastOMSDKAdMeasurer = this.f53897b;
        if (vastOMSDKAdMeasurer != null) {
            vastOMSDKAdMeasurer.j();
        }
        this.f53896a.b();
    }

    @Override // tm.a
    public void d(@NonNull VastActivity vastActivity, @NonNull io.bidmachine.iab.vast.a aVar, @NonNull final sm.d dVar, @Nullable String str) {
        this.f53896a.onAdClicked();
        if (str != null) {
            k.c(vastActivity, str, new l() { // from class: io.bidmachine.ads.networks.vast.c
                @Override // yq.l
                public final void a(Object obj) {
                    Boolean bool = (Boolean) obj;
                    sm.d.this.c();
                }
            });
        } else {
            dVar.d();
        }
    }

    @Override // tm.a
    public void e(@NonNull VastActivity vastActivity, @Nullable io.bidmachine.iab.vast.a aVar, boolean z10) {
        MraidOMSDKAdMeasurer mraidOMSDKAdMeasurer = this.f53898c;
        if (mraidOMSDKAdMeasurer != null) {
            mraidOMSDKAdMeasurer.j();
        }
        this.f53896a.onAdClosed();
    }
}
