package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.os.Trace;
import androidx.annotation.Nullable;
import java.io.IOException;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
@SuppressLint({"HandlerLeak"})
/* loaded from: classes4.dex */
public final class zzzu extends Handler implements Runnable {
    final /* synthetic */ zzaaa zza;
    private final zzzv zzb;
    private final long zzc;
    @Nullable
    private zzzs zzd;
    @Nullable
    private IOException zze;
    private int zzf;
    @Nullable
    private Thread zzg;
    private boolean zzh;
    private volatile boolean zzi;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzzu(zzaaa zzaaaVar, Looper looper, zzzv zzzvVar, zzzs zzzsVar, int i10, long j10) {
        super(looper);
        Objects.requireNonNull(zzaaaVar);
        this.zza = zzaaaVar;
        this.zzb = zzzvVar;
        this.zzd = zzzsVar;
        this.zzc = j10;
    }

    private final void zzd() {
        zzaai zzaaiVar;
        zzzu zzzuVar;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        long j10 = elapsedRealtime - this.zzc;
        zzzs zzzsVar = this.zzd;
        zzzsVar.getClass();
        zzzsVar.zzL(this.zzb, elapsedRealtime, j10, this.zzf);
        this.zze = null;
        zzaaa zzaaaVar = this.zza;
        zzaaiVar = zzaaaVar.zzc;
        zzzuVar = zzaaaVar.zzd;
        zzzuVar.getClass();
        zzaaiVar.execute(zzzuVar);
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        int i10;
        int i11;
        int i12;
        long j10;
        long min;
        if (!this.zzi) {
            int i13 = message.what;
            if (i13 == 1) {
                zzd();
            } else if (i13 != 4) {
                zzaaa zzaaaVar = this.zza;
                zzaaaVar.zzd = null;
                long j11 = this.zzc;
                long elapsedRealtime = SystemClock.elapsedRealtime();
                long j12 = elapsedRealtime - j11;
                zzzs zzzsVar = this.zzd;
                zzzsVar.getClass();
                if (this.zzh) {
                    zzzsVar.zzJ(this.zzb, elapsedRealtime, j12, false);
                    return;
                }
                int i14 = message.what;
                if (i14 != 2) {
                    if (i14 == 3) {
                        IOException iOException = (IOException) message.obj;
                        this.zze = iOException;
                        int i15 = this.zzf + 1;
                        this.zzf = i15;
                        zzzt zzu = zzzsVar.zzu(this.zzb, elapsedRealtime, j12, iOException, i15);
                        i10 = zzu.zza;
                        if (i10 == 3) {
                            zzaaaVar.zze = this.zze;
                            return;
                        }
                        i11 = zzu.zza;
                        if (i11 != 2) {
                            i12 = zzu.zza;
                            if (i12 == 1) {
                                this.zzf = 1;
                            }
                            j10 = zzu.zzb;
                            if (j10 != -9223372036854775807L) {
                                min = zzu.zzb;
                            } else {
                                min = Math.min((this.zzf - 1) * 1000, 5000);
                            }
                            zzc(min);
                            return;
                        }
                        return;
                    }
                    return;
                }
                try {
                    zzzsVar.zzK(this.zzb, elapsedRealtime, j12);
                } catch (RuntimeException e10) {
                    zzea.zzd("LoadTask", "Unexpected exception handling load completed", e10);
                    this.zza.zze = new zzzy(e10);
                }
            } else {
                throw ((Error) message.obj);
            }
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z10;
        try {
            synchronized (this) {
                z10 = this.zzh;
                this.zzg = Thread.currentThread();
            }
            if (!z10) {
                zzzv zzzvVar = this.zzb;
                String simpleName = zzzvVar.getClass().getSimpleName();
                Trace.beginSection("load:" + simpleName);
                try {
                    zzzvVar.zzh();
                    Trace.endSection();
                } catch (Throwable th2) {
                    Trace.endSection();
                    throw th2;
                }
            }
            synchronized (this) {
                this.zzg = null;
                Thread.interrupted();
            }
            if (!this.zzi) {
                sendEmptyMessage(2);
            }
        } catch (IOException e10) {
            if (!this.zzi) {
                obtainMessage(3, e10).sendToTarget();
            }
        } catch (Error e11) {
            if (!this.zzi) {
                zzea.zzd("LoadTask", "Unexpected error loading stream", e11);
                obtainMessage(4, e11).sendToTarget();
            }
            throw e11;
        } catch (Exception e12) {
            if (!this.zzi) {
                zzea.zzd("LoadTask", "Unexpected exception loading stream", e12);
                obtainMessage(3, new zzzy(e12)).sendToTarget();
            }
        } catch (OutOfMemoryError e13) {
            if (!this.zzi) {
                zzea.zzd("LoadTask", "OutOfMemory error loading stream", e13);
                obtainMessage(3, new zzzy(e13)).sendToTarget();
            }
        }
    }

    public final void zza(boolean z10) {
        this.zzi = z10;
        this.zze = null;
        if (hasMessages(1)) {
            this.zzh = true;
            removeMessages(1);
            if (!z10) {
                sendEmptyMessage(2);
            }
        } else {
            synchronized (this) {
                try {
                    this.zzh = true;
                    this.zzb.zzg();
                    Thread thread = this.zzg;
                    if (thread != null) {
                        thread.interrupt();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        if (z10) {
            this.zza.zzd = null;
            long elapsedRealtime = SystemClock.elapsedRealtime();
            zzzs zzzsVar = this.zzd;
            zzzsVar.getClass();
            zzzsVar.zzJ(this.zzb, elapsedRealtime, elapsedRealtime - this.zzc, true);
            this.zzd = null;
        }
    }

    public final void zzb(int i10) throws IOException {
        IOException iOException = this.zze;
        if (iOException != null && this.zzf > i10) {
            throw iOException;
        }
    }

    public final void zzc(long j10) {
        zzzu zzzuVar;
        boolean z10;
        zzaaa zzaaaVar = this.zza;
        zzzuVar = zzaaaVar.zzd;
        if (zzzuVar == null) {
            z10 = true;
        } else {
            z10 = false;
        }
        zzdd.zzf(z10);
        zzaaaVar.zzd = this;
        if (j10 > 0) {
            sendEmptyMessageDelayed(1, j10);
        } else {
            zzd();
        }
    }
}
