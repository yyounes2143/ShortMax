package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.view.Surface;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzabd extends Surface {
    private static int zzb;
    private static boolean zzc;
    public final boolean zza;
    private final zzabb zzd;
    private boolean zze;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzabd(zzabb zzabbVar, SurfaceTexture surfaceTexture, boolean z10, zzabc zzabcVar) {
        super(surfaceTexture);
        this.zzd = zzabbVar;
        this.zza = z10;
    }

    public static zzabd zza(Context context, boolean z10) {
        int i10 = 0;
        boolean z11 = true;
        if (z10 && !zzb(context)) {
            z11 = false;
        }
        zzdd.zzf(z11);
        zzabb zzabbVar = new zzabb();
        if (z10) {
            i10 = zzb;
        }
        return zzabbVar.zza(i10);
    }

    public static synchronized boolean zzb(Context context) {
        int i10;
        int i11;
        synchronized (zzabd.class) {
            try {
                if (!zzc) {
                    if (zzdr.zzd(context)) {
                        if (zzdr.zze()) {
                            i11 = 1;
                        } else {
                            i11 = 2;
                        }
                    } else {
                        i11 = 0;
                    }
                    zzb = i11;
                    zzc = true;
                }
                i10 = zzb;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (i10 == 0) {
            return false;
        }
        return true;
    }

    @Override // android.view.Surface
    public final void release() {
        super.release();
        zzabb zzabbVar = this.zzd;
        synchronized (zzabbVar) {
            try {
                if (!this.zze) {
                    zzabbVar.zzb();
                    this.zze = true;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
