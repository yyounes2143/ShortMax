package com.google.android.gms.internal.ads;

import com.applovin.shadow.okhttp3.internal.ws.RealWebSocket;
import com.inmobi.commons.core.configs.AdConfig;
import java.io.IOException;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzahz {
    private final zzen zza = new zzen(8);
    private int zzb;

    private final long zzb(zzadw zzadwVar) throws IOException {
        int i10;
        zzen zzenVar = this.zza;
        zzadl zzadlVar = (zzadl) zzadwVar;
        int i11 = 0;
        zzadlVar.zzm(zzenVar.zzN(), 0, 1, false);
        int i12 = zzenVar.zzN()[0] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
        if (i12 != 0) {
            int i13 = 128;
            int i14 = 0;
            while (true) {
                i10 = i14 + 1;
                if ((i12 & i13) != 0) {
                    break;
                }
                i13 >>= 1;
                i14 = i10;
            }
            int i15 = i12 & (~i13);
            zzadlVar.zzm(zzenVar.zzN(), 1, i14, false);
            while (i11 < i14) {
                i11++;
                i15 = (zzenVar.zzN()[i11] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) + (i15 << 8);
            }
            this.zzb += i10;
            return i15;
        }
        return Long.MIN_VALUE;
    }

    public final boolean zza(zzadw zzadwVar) throws IOException {
        long zzb;
        int i10;
        long zzd = zzadwVar.zzd();
        int i11 = (zzd > (-1L) ? 1 : (zzd == (-1L) ? 0 : -1));
        long j10 = RealWebSocket.DEFAULT_MINIMUM_DEFLATE_SIZE;
        if (i11 != 0 && zzd <= RealWebSocket.DEFAULT_MINIMUM_DEFLATE_SIZE) {
            j10 = zzd;
        }
        zzen zzenVar = this.zza;
        zzadl zzadlVar = (zzadl) zzadwVar;
        zzadlVar.zzm(zzenVar.zzN(), 0, 4, false);
        this.zzb = 4;
        for (long zzu = zzenVar.zzu(); zzu != 440786851; zzu = ((zzu << 8) & (-256)) | (zzenVar.zzN()[0] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED)) {
            int i12 = (int) j10;
            int i13 = this.zzb + 1;
            this.zzb = i13;
            if (i13 == i12) {
                return false;
            }
            zzadlVar.zzm(zzenVar.zzN(), 0, 1, false);
        }
        long zzb2 = zzb(zzadwVar);
        long j11 = this.zzb;
        if (zzb2 != Long.MIN_VALUE) {
            long j12 = j11 + zzb2;
            if (i11 == 0 || j12 < zzd) {
                while (true) {
                    int i14 = (this.zzb > j12 ? 1 : (this.zzb == j12 ? 0 : -1));
                    if (i14 < 0) {
                        if (zzb(zzadwVar) == Long.MIN_VALUE || (zzb(zzadwVar)) < 0) {
                            return false;
                        }
                        if (i10 != 0) {
                            int i15 = (int) zzb;
                            zzadlVar.zzl(i15, false);
                            this.zzb += i15;
                        }
                    } else if (i14 == 0) {
                        return true;
                    }
                }
            }
        }
        return false;
    }
}
