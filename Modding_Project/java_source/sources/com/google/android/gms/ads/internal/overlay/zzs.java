package com.google.android.gms.ads.internal.overlay;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.widget.ImageButton;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzs extends AnimatorListenerAdapter {
    final /* synthetic */ zzu zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzs(zzu zzuVar) {
        Objects.requireNonNull(zzuVar);
        this.zza = zzuVar;
    }

    private final void zza(boolean z10) {
        ImageButton imageButton;
        zzu zzuVar = this.zza;
        zzuVar.setEnabled(z10);
        imageButton = zzuVar.zza;
        imageButton.setEnabled(z10);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        zza(true);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        zza(true);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        zza(false);
    }
}
