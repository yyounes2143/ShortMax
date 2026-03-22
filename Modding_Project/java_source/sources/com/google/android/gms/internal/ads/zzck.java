package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzck {
    private final zzfyq zza;
    private final List zzb = new ArrayList();
    private ByteBuffer[] zzc = new ByteBuffer[0];
    private boolean zzd;

    public zzck(zzfyq zzfyqVar) {
        this.zza = zzfyqVar;
        zzcl zzclVar = zzcl.zza;
        this.zzd = false;
    }

    private final int zzi() {
        return this.zzc.length - 1;
    }

    private final void zzj(ByteBuffer byteBuffer) {
        boolean z10;
        ByteBuffer byteBuffer2;
        do {
            z10 = false;
            for (int i10 = 0; i10 <= zzi(); i10++) {
                if (!this.zzc[i10].hasRemaining()) {
                    List list = this.zzb;
                    zzcn zzcnVar = (zzcn) list.get(i10);
                    if (zzcnVar.zzh()) {
                        if (!this.zzc[i10].hasRemaining() && i10 < zzi()) {
                            ((zzcn) list.get(i10 + 1)).zzd();
                        }
                    } else {
                        if (i10 > 0) {
                            byteBuffer2 = this.zzc[i10 - 1];
                        } else if (byteBuffer.hasRemaining()) {
                            byteBuffer2 = byteBuffer;
                        } else {
                            byteBuffer2 = zzcn.zza;
                        }
                        zzcnVar.zze(byteBuffer2);
                        this.zzc[i10] = zzcnVar.zzb();
                        boolean z11 = true;
                        if (byteBuffer2.remaining() - byteBuffer2.remaining() <= 0 && !this.zzc[i10].hasRemaining()) {
                            z11 = false;
                        }
                        z10 |= z11;
                    }
                }
            }
        } while (z10);
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzck)) {
            return false;
        }
        zzfyq zzfyqVar = this.zza;
        int size = zzfyqVar.size();
        zzfyq zzfyqVar2 = ((zzck) obj).zza;
        if (size != zzfyqVar2.size()) {
            return false;
        }
        for (int i10 = 0; i10 < zzfyqVar.size(); i10++) {
            if (zzfyqVar.get(i10) != zzfyqVar2.get(i10)) {
                return false;
            }
        }
        return true;
    }

    public final int hashCode() {
        return this.zza.hashCode();
    }

    public final zzcl zza(zzcl zzclVar) throws zzcm {
        zzcl zzclVar2 = zzcl.zza;
        if (!zzclVar.equals(zzclVar2)) {
            int i10 = 0;
            while (true) {
                zzfyq zzfyqVar = this.zza;
                if (i10 < zzfyqVar.size()) {
                    zzcn zzcnVar = (zzcn) zzfyqVar.get(i10);
                    zzcl zza = zzcnVar.zza(zzclVar);
                    if (zzcnVar.zzg()) {
                        zzdd.zzf(!zza.equals(zzclVar2));
                        zzclVar = zza;
                    }
                    i10++;
                } else {
                    return zzclVar;
                }
            }
        } else {
            throw new zzcm("Unhandled input format:", zzclVar);
        }
    }

    public final ByteBuffer zzb() {
        if (!zzh()) {
            return zzcn.zza;
        }
        ByteBuffer byteBuffer = this.zzc[zzi()];
        if (byteBuffer.hasRemaining()) {
            return byteBuffer;
        }
        zzj(zzcn.zza);
        return this.zzc[zzi()];
    }

    public final void zzc() {
        List list = this.zzb;
        list.clear();
        this.zzd = false;
        int i10 = 0;
        while (true) {
            zzfyq zzfyqVar = this.zza;
            if (i10 >= zzfyqVar.size()) {
                break;
            }
            zzcn zzcnVar = (zzcn) zzfyqVar.get(i10);
            zzcnVar.zzc();
            if (zzcnVar.zzg()) {
                list.add(zzcnVar);
            }
            i10++;
        }
        this.zzc = new ByteBuffer[list.size()];
        for (int i11 = 0; i11 <= zzi(); i11++) {
            this.zzc[i11] = ((zzcn) list.get(i11)).zzb();
        }
    }

    public final void zzd() {
        if (zzh() && !this.zzd) {
            this.zzd = true;
            ((zzcn) this.zzb.get(0)).zzd();
        }
    }

    public final void zze(ByteBuffer byteBuffer) {
        if (zzh() && !this.zzd) {
            zzj(byteBuffer);
        }
    }

    public final void zzf() {
        int i10 = 0;
        while (true) {
            zzfyq zzfyqVar = this.zza;
            if (i10 < zzfyqVar.size()) {
                zzcn zzcnVar = (zzcn) zzfyqVar.get(i10);
                zzcnVar.zzc();
                zzcnVar.zzf();
                i10++;
            } else {
                this.zzc = new ByteBuffer[0];
                zzcl zzclVar = zzcl.zza;
                this.zzd = false;
                return;
            }
        }
    }

    public final boolean zzg() {
        if (this.zzd && ((zzcn) this.zzb.get(zzi())).zzh() && !this.zzc[zzi()].hasRemaining()) {
            return true;
        }
        return false;
    }

    public final boolean zzh() {
        if (!this.zzb.isEmpty()) {
            return true;
        }
        return false;
    }
}
