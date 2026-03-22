package com.google.android.gms.internal.ads;

import android.graphics.SurfaceTexture;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import androidx.annotation.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzabb extends HandlerThread implements Handler.Callback {
    private zzdp zza;
    private Handler zzb;
    @Nullable
    private Error zzc;
    @Nullable
    private RuntimeException zzd;
    @Nullable
    private zzabd zze;

    public zzabb() {
        super("ExoPlayer:PlaceholderSurface");
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        boolean z10;
        zzdp zzdpVar;
        int i10 = message.what;
        try {
            if (i10 != 1) {
                if (i10 == 2) {
                    try {
                        zzdpVar = this.zza;
                    } finally {
                        try {
                            return true;
                        } finally {
                        }
                    }
                    if (zzdpVar != null) {
                        zzdpVar.zzc();
                        return true;
                    }
                    throw null;
                }
            } else {
                try {
                    int i11 = message.arg1;
                    zzdp zzdpVar2 = this.zza;
                    if (zzdpVar2 != null) {
                        zzdpVar2.zzb(i11);
                        SurfaceTexture zza = this.zza.zza();
                        if (i11 != 0) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        this.zze = new zzabd(this, zza, z10, null);
                        synchronized (this) {
                            notify();
                        }
                    } else {
                        throw null;
                    }
                } catch (zzdq e10) {
                    zzea.zzd("PlaceholderSurface", "Failed to initialize placeholder surface", e10);
                    this.zzd = new IllegalStateException(e10);
                    synchronized (this) {
                        notify();
                    }
                } catch (Error e11) {
                    zzea.zzd("PlaceholderSurface", "Failed to initialize placeholder surface", e11);
                    this.zzc = e11;
                    synchronized (this) {
                        notify();
                    }
                } catch (RuntimeException e12) {
                    zzea.zzd("PlaceholderSurface", "Failed to initialize placeholder surface", e12);
                    this.zzd = e12;
                    synchronized (this) {
                        notify();
                    }
                }
            }
            return true;
        } catch (Throwable th2) {
            synchronized (this) {
                notify();
                throw th2;
            }
        }
    }

    public final zzabd zza(int i10) {
        boolean z10;
        start();
        this.zzb = new Handler(getLooper(), this);
        this.zza = new zzdp(this.zzb, null);
        synchronized (this) {
            z10 = false;
            this.zzb.obtainMessage(1, i10, 0).sendToTarget();
            while (this.zze == null && this.zzd == null && this.zzc == null) {
                try {
                    wait();
                } catch (InterruptedException unused) {
                    z10 = true;
                }
            }
        }
        if (z10) {
            Thread.currentThread().interrupt();
        }
        RuntimeException runtimeException = this.zzd;
        if (runtimeException == null) {
            Error error = this.zzc;
            if (error == null) {
                zzabd zzabdVar = this.zze;
                zzabdVar.getClass();
                return zzabdVar;
            }
            throw error;
        }
        throw runtimeException;
    }

    public final void zzb() {
        Handler handler = this.zzb;
        handler.getClass();
        handler.sendEmptyMessage(2);
    }
}
