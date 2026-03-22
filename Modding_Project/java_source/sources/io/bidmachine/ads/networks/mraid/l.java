package io.bidmachine.ads.networks.mraid;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.bidmachine.Executable;
import io.bidmachine.measurer.MraidOMSDKAdMeasurer;
import io.bidmachine.rendering.model.PrivacySheetParams;
import io.bidmachine.rendering.view.PrivacySheetDialog;
/* compiled from: MraidFullScreenAdListener.java */
/* loaded from: classes7.dex */
class l implements io.bidmachine.iab.mraid.f {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final Context f53857a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final xq.i f53858b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final MraidOMSDKAdMeasurer f53859c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(@NonNull Context context, @NonNull xq.i iVar, @Nullable MraidOMSDKAdMeasurer mraidOMSDKAdMeasurer) {
        this.f53857a = context;
        this.f53858b = iVar;
        this.f53859c = mraidOMSDKAdMeasurer;
    }

    @Override // io.bidmachine.iab.mraid.f
    public void a(@NonNull io.bidmachine.iab.mraid.e eVar, @NonNull final PrivacySheetParams privacySheetParams) {
        Context v10 = eVar.v();
        if (v10 == null) {
            v10 = this.f53857a;
        }
        io.bidmachine.core.g.H(io.bidmachine.core.g.n(v10), new Executable() { // from class: io.bidmachine.ads.networks.mraid.h
            @Override // io.bidmachine.Executable
            public final void execute(Object obj) {
                PrivacySheetDialog.k((Context) obj, PrivacySheetParams.this);
            }
        });
    }

    @Override // io.bidmachine.iab.mraid.f
    public void b(@NonNull io.bidmachine.iab.mraid.e eVar) {
        this.f53858b.onAdLoaded();
    }

    @Override // io.bidmachine.iab.mraid.f
    public void c(@NonNull io.bidmachine.iab.mraid.e eVar, @NonNull String str, @NonNull final sm.d dVar) {
        this.f53858b.onAdClicked();
        sq.k.e(this.f53857a, str, new yq.l() { // from class: io.bidmachine.ads.networks.mraid.j
            @Override // yq.l
            public final void a(Object obj) {
                Boolean bool = (Boolean) obj;
                sm.d.this.c();
            }
        });
    }

    @Override // io.bidmachine.iab.mraid.f
    public void d(@NonNull io.bidmachine.iab.mraid.e eVar, @NonNull String str, @NonNull final sm.d dVar) {
        this.f53858b.onAdClicked();
        sq.k.c(this.f53857a, str, new yq.l() { // from class: io.bidmachine.ads.networks.mraid.i
            @Override // yq.l
            public final void a(Object obj) {
                Boolean bool = (Boolean) obj;
                sm.d.this.c();
            }
        });
    }

    @Override // io.bidmachine.iab.mraid.f
    public void e(@NonNull io.bidmachine.iab.mraid.e eVar, @NonNull qm.a aVar) {
        this.f53858b.onAdExpired();
    }

    @Override // io.bidmachine.iab.mraid.f
    public void f(@NonNull io.bidmachine.iab.mraid.e eVar) {
        this.f53858b.onAdShown();
    }

    @Override // io.bidmachine.iab.mraid.f
    public void g(@NonNull io.bidmachine.iab.mraid.e eVar) {
        if (eVar.s()) {
            MraidOMSDKAdMeasurer mraidOMSDKAdMeasurer = this.f53859c;
            if (mraidOMSDKAdMeasurer != null) {
                mraidOMSDKAdMeasurer.j();
            }
            this.f53858b.b();
        }
        this.f53858b.onAdClosed();
    }

    @Override // io.bidmachine.iab.mraid.f
    public void h(@NonNull io.bidmachine.iab.mraid.e eVar, @NonNull qm.a aVar) {
        this.f53858b.onAdLoadFailed(fr.d.a(aVar));
    }

    @Override // io.bidmachine.iab.mraid.f
    public void i(@NonNull io.bidmachine.iab.mraid.e eVar, @NonNull qm.a aVar) {
        this.f53858b.onAdShowFailed(fr.d.a(aVar));
    }

    @Override // io.bidmachine.iab.mraid.f
    public void j(@NonNull io.bidmachine.iab.mraid.e eVar, @NonNull String str, @NonNull final sm.d dVar) {
        this.f53858b.onAdClicked();
        sq.k.b(this.f53857a, str, new yq.l() { // from class: io.bidmachine.ads.networks.mraid.k
            @Override // yq.l
            public final void a(Object obj) {
                Boolean bool = (Boolean) obj;
                sm.d.this.c();
            }
        });
    }

    @Override // io.bidmachine.iab.mraid.f
    public void k(@NonNull io.bidmachine.iab.mraid.e eVar, @NonNull String str) {
    }
}
