package com.google.android.gms.internal.ads;

import android.view.Surface;
import androidx.annotation.Nullable;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzaau extends zzth {
    public zzaau(Throwable th2, @Nullable zzti zztiVar, @Nullable Surface surface) {
        super(th2, zztiVar);
        System.identityHashCode(surface);
        if (surface != null) {
            surface.isValid();
        }
    }
}
