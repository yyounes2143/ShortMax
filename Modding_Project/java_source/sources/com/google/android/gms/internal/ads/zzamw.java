package com.google.android.gms.internal.ads;

import android.util.SparseArray;
import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzamw implements zzaom {
    private final List zza;

    public zzamw(int i10, List list) {
        this.zza = list;
    }

    private final zzaod zzc(zzaol zzaolVar) {
        return new zzaod(zze(zzaolVar), "video/mp2t");
    }

    private final zzaor zzd(zzaol zzaolVar) {
        return new zzaor(zze(zzaolVar), "video/mp2t");
    }

    private final List zze(zzaol zzaolVar) {
        boolean z10;
        String str;
        int i10;
        List list;
        zzen zzenVar = new zzen(zzaolVar.zze);
        List list2 = this.zza;
        while (zzenVar.zza() > 0) {
            int zzm = zzenVar.zzm();
            int zzc = zzenVar.zzc() + zzenVar.zzm();
            if (zzm == 134) {
                list2 = new ArrayList();
                int zzm2 = zzenVar.zzm() & 31;
                for (int i11 = 0; i11 < zzm2; i11++) {
                    String zzB = zzenVar.zzB(3, StandardCharsets.UTF_8);
                    int zzm3 = zzenVar.zzm();
                    if ((zzm3 & 128) != 0) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    if (z10) {
                        i10 = zzm3 & 63;
                        str = MimeTypes.APPLICATION_CEA708;
                    } else {
                        str = MimeTypes.APPLICATION_CEA608;
                        i10 = 1;
                    }
                    byte zzm4 = (byte) zzenVar.zzm();
                    zzenVar.zzM(1);
                    if (z10) {
                        int i12 = zzm4 & 64;
                        int i13 = zzdk.zza;
                        list = Collections.singletonList(i12 != 0 ? new byte[]{1} : new byte[]{0});
                    } else {
                        list = null;
                    }
                    zzx zzxVar = new zzx();
                    zzxVar.zzah(str);
                    zzxVar.zzW(zzB);
                    zzxVar.zzB(i10);
                    zzxVar.zzT(list);
                    list2.add(zzxVar.zzan());
                }
            }
            zzenVar.zzL(zzc);
        }
        return list2;
    }

    @Override // com.google.android.gms.internal.ads.zzaom
    public final SparseArray zza() {
        return new SparseArray();
    }

    @Override // com.google.android.gms.internal.ads.zzaom
    @Nullable
    public final zzaoo zzb(int i10, zzaol zzaolVar) {
        if (i10 != 2) {
            if (i10 != 3 && i10 != 4) {
                if (i10 != 21) {
                    if (i10 != 27) {
                        if (i10 != 36) {
                            if (i10 != 45) {
                                if (i10 != 89) {
                                    if (i10 != 172) {
                                        if (i10 != 257) {
                                            if (i10 != 128) {
                                                if (i10 != 129) {
                                                    if (i10 != 138) {
                                                        if (i10 != 139) {
                                                            switch (i10) {
                                                                case 15:
                                                                    return new zzant(new zzamv(false, zzaolVar.zzb, zzaolVar.zza(), "video/mp2t"));
                                                                case 16:
                                                                    return new zzant(new zzane(zzd(zzaolVar), "video/mp2t"));
                                                                case 17:
                                                                    return new zzant(new zzank(zzaolVar.zzb, zzaolVar.zza(), "video/mp2t"));
                                                                default:
                                                                    switch (i10) {
                                                                        case 134:
                                                                            return new zzaob(new zzans(MimeTypes.APPLICATION_SCTE35, "video/mp2t"));
                                                                        case 135:
                                                                            break;
                                                                        case 136:
                                                                            break;
                                                                        default:
                                                                            return null;
                                                                    }
                                                            }
                                                        } else {
                                                            return new zzant(new zzamx(zzaolVar.zzb, zzaolVar.zza(), 5408, "video/mp2t"));
                                                        }
                                                    }
                                                    return new zzant(new zzamx(zzaolVar.zzb, zzaolVar.zza(), 4096, "video/mp2t"));
                                                }
                                                return new zzant(new zzamr(zzaolVar.zzb, zzaolVar.zza(), "video/mp2t"));
                                            }
                                        } else {
                                            return new zzaob(new zzans("application/vnd.dvb.ait", "video/mp2t"));
                                        }
                                    } else {
                                        return new zzant(new zzamt(zzaolVar.zzb, zzaolVar.zza(), "video/mp2t"));
                                    }
                                } else {
                                    return new zzant(new zzamy(zzaolVar.zzd, "video/mp2t"));
                                }
                            } else {
                                return new zzant(new zzanm("video/mp2t"));
                            }
                        } else {
                            return new zzant(new zzani(zzc(zzaolVar), "video/mp2t"));
                        }
                    } else {
                        return new zzant(new zzang(zzc(zzaolVar), false, false, "video/mp2t"));
                    }
                } else {
                    return new zzant(new zzanj("video/mp2t"));
                }
            } else {
                return new zzant(new zzanl(zzaolVar.zzb, zzaolVar.zza(), "video/mp2t"));
            }
        }
        return new zzant(new zzanb(zzd(zzaolVar), "video/mp2t"));
    }

    public zzamw() {
        this(0);
    }

    public zzamw(int i10) {
        this.zza = zzfyq.zzn();
    }
}
