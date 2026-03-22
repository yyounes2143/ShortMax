package com.google.android.gms.internal.fido;

import java.io.IOException;
import java.util.ArrayDeque;
import java.util.Deque;
/* compiled from: com.google.android.gms:play-services-fido@@20.1.0 */
/* loaded from: classes4.dex */
final class zzdv {
    private final Deque zza = new ArrayDeque(16);

    private zzdv(boolean z10) {
    }

    public static zzdv zza() {
        return new zzdv(false);
    }

    private final long zzh() {
        if (this.zza.isEmpty()) {
            return 0L;
        }
        return ((Long) this.zza.peek()).longValue();
    }

    private final void zzi(long j10) {
        this.zza.pop();
        this.zza.push(Long.valueOf(j10));
    }

    public final void zzb() throws IOException {
        if (this.zza.isEmpty()) {
            return;
        }
        throw new IOException(String.format("data item not completed, stackSize: %s scope: %s", Integer.valueOf(this.zza.size()), Long.valueOf(zzh())));
    }

    public final void zzc() throws IOException {
        long zzh = zzh();
        if (zzh < 0) {
            if (zzh != -5) {
                this.zza.pop();
                return;
            }
            throw new IOException("expected a value for dangling key in indefinite-length map");
        }
        throw new IOException(String.format("expected indefinite length scope but found %s", Long.valueOf(zzh)));
    }

    public final void zzd() throws IOException {
        long zzh = zzh();
        if (zzh != -1) {
            if (zzh != -2) {
                return;
            }
            zzh = -2;
        }
        throw new IOException(String.format("expected non-string scope but found %s", Long.valueOf(zzh)));
    }

    public final void zze(long j10) throws IOException {
        long zzh = zzh();
        if (zzh != j10) {
            if (zzh != -1) {
                if (zzh == -2) {
                    zzh = -2;
                } else {
                    return;
                }
            }
            throw new IOException(String.format("expected non-string scope or scope %s but found %s", Long.valueOf(j10), Long.valueOf(zzh)));
        }
    }

    public final void zzf() {
        long zzh = zzh();
        int i10 = (zzh > 1L ? 1 : (zzh == 1L ? 0 : -1));
        if (i10 == 0) {
            this.zza.pop();
        } else if (i10 > 0) {
            zzi(zzh - 1);
        } else if (zzh == -4) {
            zzi(-5L);
        } else if (zzh == -5) {
            zzi(-4L);
        }
    }

    public final void zzg(long j10) {
        this.zza.push(Long.valueOf(j10));
    }
}
