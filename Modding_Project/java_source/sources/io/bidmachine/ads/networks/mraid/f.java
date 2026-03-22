package io.bidmachine.ads.networks.mraid;

import android.content.Context;
import androidx.annotation.NonNull;
import io.bidmachine.Executable;
import io.bidmachine.iab.mraid.MraidView;
import io.bidmachine.iab.mraid.p;
import io.bidmachine.rendering.model.PrivacySheetParams;
import io.bidmachine.rendering.view.PrivacySheetDialog;
/* compiled from: MraidBannerAdListener.java */
/* loaded from: classes7.dex */
class f implements p {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final xq.f f53843a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(@NonNull xq.f fVar) {
        this.f53843a = fVar;
    }

    @Override // io.bidmachine.iab.mraid.p
    public void a(@NonNull MraidView mraidView) {
        this.f53843a.onAdShown();
    }

    @Override // io.bidmachine.iab.mraid.p
    public void c(@NonNull MraidView mraidView, @NonNull String str, @NonNull final sm.d dVar) {
        this.f53843a.onAdClicked();
        sq.k.b(mraidView.getContext(), str, new yq.l() { // from class: io.bidmachine.ads.networks.mraid.e
            @Override // yq.l
            public final void a(Object obj) {
                Boolean bool = (Boolean) obj;
                sm.d.this.c();
            }
        });
    }

    @Override // io.bidmachine.iab.mraid.p
    public void d(@NonNull MraidView mraidView, @NonNull String str, @NonNull final sm.d dVar) {
        this.f53843a.onAdClicked();
        sq.k.e(mraidView.getContext(), str, new yq.l() { // from class: io.bidmachine.ads.networks.mraid.d
            @Override // yq.l
            public final void a(Object obj) {
                Boolean bool = (Boolean) obj;
                sm.d.this.c();
            }
        });
    }

    @Override // io.bidmachine.iab.mraid.p
    public void e(@NonNull MraidView mraidView, @NonNull final PrivacySheetParams privacySheetParams) {
        io.bidmachine.core.g.H(io.bidmachine.core.g.o(mraidView.o0(), mraidView), new Executable() { // from class: io.bidmachine.ads.networks.mraid.b
            @Override // io.bidmachine.Executable
            public final void execute(Object obj) {
                PrivacySheetDialog.k((Context) obj, PrivacySheetParams.this);
            }
        });
    }

    @Override // io.bidmachine.iab.mraid.p
    public void f(@NonNull MraidView mraidView) {
        this.f53843a.onAdLoaded(mraidView);
    }

    @Override // io.bidmachine.iab.mraid.p
    public void g(@NonNull MraidView mraidView, @NonNull qm.a aVar) {
        this.f53843a.onAdExpired();
    }

    @Override // io.bidmachine.iab.mraid.p
    public void h(@NonNull MraidView mraidView, @NonNull qm.a aVar) {
        this.f53843a.onAdShowFailed(fr.d.a(aVar));
    }

    @Override // io.bidmachine.iab.mraid.p
    public void i(@NonNull MraidView mraidView, @NonNull String str, @NonNull final sm.d dVar) {
        this.f53843a.onAdClicked();
        sq.k.c(mraidView.getContext(), str, new yq.l() { // from class: io.bidmachine.ads.networks.mraid.c
            @Override // yq.l
            public final void a(Object obj) {
                Boolean bool = (Boolean) obj;
                sm.d.this.c();
            }
        });
    }

    @Override // io.bidmachine.iab.mraid.p
    public void k(@NonNull MraidView mraidView, @NonNull qm.a aVar) {
        this.f53843a.onAdLoadFailed(fr.d.a(aVar));
    }

    @Override // io.bidmachine.iab.mraid.p
    public void j(@NonNull MraidView mraidView) {
    }

    @Override // io.bidmachine.iab.mraid.p
    public void b(@NonNull MraidView mraidView, @NonNull String str) {
    }
}
