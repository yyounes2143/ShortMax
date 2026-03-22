package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.view.Choreographer;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzabv implements Choreographer.FrameCallback, Handler.Callback {
    private static final zzabv zzb = new zzabv();
    public volatile long zza = -9223372036854775807L;
    private final Handler zzc;
    private final HandlerThread zzd;
    private Choreographer zze;
    private int zzf;

    private zzabv() {
        HandlerThread handlerThread = new HandlerThread("ExoPlayer:FrameReleaseChoreographer");
        this.zzd = handlerThread;
        handlerThread.start();
        Looper looper = handlerThread.getLooper();
        String str = zzex.zza;
        Handler handler = new Handler(looper, this);
        this.zzc = handler;
        handler.sendEmptyMessage(1);
    }

    public static zzabv zza() {
        return zzb;
    }

    @Override // android.view.Choreographer.FrameCallback
    public final void doFrame(long j10) {
        this.zza = j10;
        Choreographer choreographer = this.zze;
        choreographer.getClass();
        choreographer.postFrameCallbackDelayed(this, 500L);
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int i10 = message.what;
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    return false;
                }
                Choreographer choreographer = this.zze;
                if (choreographer != null) {
                    int i11 = this.zzf - 1;
                    this.zzf = i11;
                    if (i11 == 0) {
                        choreographer.removeFrameCallback(this);
                        this.zza = -9223372036854775807L;
                    }
                }
                return true;
            }
            Choreographer choreographer2 = this.zze;
            if (choreographer2 != null) {
                int i12 = this.zzf + 1;
                this.zzf = i12;
                if (i12 == 1) {
                    choreographer2.postFrameCallback(this);
                }
            }
            return true;
        }
        try {
            this.zze = Choreographer.getInstance();
        } catch (RuntimeException e10) {
            zzea.zzg("VideoFrameReleaseHelper", "Vsync sampling disabled due to platform error", e10);
        }
        return true;
    }

    public final void zzb() {
        this.zzc.sendEmptyMessage(2);
    }

    public final void zzc() {
        this.zzc.sendEmptyMessage(3);
    }
}
