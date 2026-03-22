package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.nio.ByteOrder;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzafr implements zzafj {
    public final zzfyq zza;
    private final int zzb;

    private zzafr(int i10, zzfyq zzfyqVar) {
        this.zzb = i10;
        this.zza = zzfyqVar;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static zzafr zzc(int i10, zzen zzenVar) {
        String str;
        int i11;
        zzafj zzafsVar;
        String str2;
        zzfyn zzfynVar = new zzfyn();
        int zzd = zzenVar.zzd();
        int i12 = -2;
        while (zzenVar.zza() > 8) {
            int zzi = zzenVar.zzi();
            int zzc = zzenVar.zzc() + zzenVar.zzi();
            zzenVar.zzK(zzc);
            if (zzi == 1414744396) {
                zzafsVar = zzc(zzenVar.zzi(), zzenVar);
            } else {
                zzafs zzafsVar2 = null;
                switch (zzi) {
                    case 1718776947:
                        if (i12 == 2) {
                            zzenVar.zzM(4);
                            int zzi2 = zzenVar.zzi();
                            int zzi3 = zzenVar.zzi();
                            zzenVar.zzM(4);
                            int zzi4 = zzenVar.zzi();
                            switch (zzi4) {
                                case 808802372:
                                case 877677894:
                                case 1145656883:
                                case 1145656920:
                                case 1482049860:
                                case 1684633208:
                                case 2021026148:
                                    str2 = MimeTypes.VIDEO_MP4V;
                                    break;
                                case 826496577:
                                case 828601953:
                                case 875967048:
                                    str2 = "video/avc";
                                    break;
                                case 842289229:
                                    str2 = "video/mp42";
                                    break;
                                case 859066445:
                                    str2 = "video/mp43";
                                    break;
                                case 1196444237:
                                case 1735420525:
                                    str2 = "video/mjpeg";
                                    break;
                                default:
                                    str2 = null;
                                    break;
                            }
                            if (str2 == null) {
                                zzea.zzf("StreamFormatChunk", "Ignoring track with unsupported compression " + zzi4);
                            } else {
                                zzx zzxVar = new zzx();
                                zzxVar.zzam(zzi2);
                                zzxVar.zzQ(zzi3);
                                zzxVar.zzah(str2);
                                zzafsVar2 = new zzafs(zzxVar.zzan());
                            }
                        } else if (i12 == 1) {
                            int zzk = zzenVar.zzk();
                            if (zzk != 1) {
                                if (zzk != 85) {
                                    if (zzk != 255) {
                                        if (zzk != 8192) {
                                            if (zzk != 8193) {
                                                str = null;
                                            } else {
                                                str = MimeTypes.AUDIO_DTS;
                                            }
                                        } else {
                                            str = MimeTypes.AUDIO_AC3;
                                        }
                                    } else {
                                        str = MimeTypes.AUDIO_AAC;
                                    }
                                } else {
                                    str = MimeTypes.AUDIO_MPEG;
                                }
                            } else {
                                str = MimeTypes.AUDIO_RAW;
                            }
                            if (str == null) {
                                zzea.zzf("StreamFormatChunk", "Ignoring track with unsupported format tag " + zzk);
                            } else {
                                int zzk2 = zzenVar.zzk();
                                int zzi5 = zzenVar.zzi();
                                zzenVar.zzM(6);
                                int zzn = zzex.zzn(zzenVar.zzk(), ByteOrder.LITTLE_ENDIAN);
                                if (zzenVar.zza() > 0) {
                                    i11 = zzenVar.zzk();
                                } else {
                                    i11 = 0;
                                }
                                zzx zzxVar2 = new zzx();
                                zzxVar2.zzah(str);
                                zzxVar2.zzD(zzk2);
                                zzxVar2.zzai(zzi5);
                                if (str.equals(MimeTypes.AUDIO_RAW) && zzn != 0) {
                                    zzxVar2.zzab(zzn);
                                }
                                if (str.equals(MimeTypes.AUDIO_AAC) && i11 > 0) {
                                    byte[] bArr = new byte[i11];
                                    zzenVar.zzH(bArr, 0, i11);
                                    zzxVar2.zzT(zzfyq.zzo(bArr));
                                }
                                zzafsVar = new zzafs(zzxVar2.zzan());
                                break;
                            }
                        } else {
                            zzea.zzf("StreamFormatChunk", "Ignoring strf box for unsupported track type: ".concat(zzex.zzD(i12)));
                        }
                        zzafsVar = zzafsVar2;
                        break;
                    case 1751742049:
                        zzafsVar = zzafo.zzb(zzenVar);
                        break;
                    case 1752331379:
                        zzafsVar = zzafp.zzd(zzenVar);
                        break;
                    case 1852994675:
                        zzafsVar = zzaft.zzb(zzenVar);
                        break;
                    default:
                        zzafsVar = zzafsVar2;
                        break;
                }
            }
            if (zzafsVar != null) {
                if (zzafsVar.zza() == 1752331379) {
                    i12 = ((zzafp) zzafsVar).zzb();
                }
                zzfynVar.zzf(zzafsVar);
            }
            zzenVar.zzL(zzc);
            zzenVar.zzK(zzd);
        }
        return new zzafr(i10, zzfynVar.zzi());
    }

    @Override // com.google.android.gms.internal.ads.zzafj
    public final int zza() {
        return this.zzb;
    }

    @Nullable
    public final zzafj zzb(Class cls) {
        zzfyq zzfyqVar = this.zza;
        int size = zzfyqVar.size();
        int i10 = 0;
        while (i10 < size) {
            zzafj zzafjVar = (zzafj) zzfyqVar.get(i10);
            i10++;
            if (zzafjVar.getClass() == cls) {
                return zzafjVar;
            }
        }
        return null;
    }
}
