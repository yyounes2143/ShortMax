package com.google.android.gms.internal.fido;

import java.io.IOException;
import java.io.InputStream;
import java.util.TreeMap;
/* compiled from: com.google.android.gms:play-services-fido@@20.1.0 */
/* loaded from: classes4.dex */
final class zzds {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static final zzdr zza(InputStream inputStream, zzdu zzduVar) throws zzdl {
        try {
            return zzb(inputStream, zzduVar);
        } finally {
            try {
                zzduVar.close();
            } catch (IOException unused) {
            }
        }
    }

    private static final zzdr zzb(InputStream inputStream, zzdu zzduVar) throws zzdl {
        long j10;
        try {
            zzdt zzd = zzduVar.zzd();
            if (zzd != null) {
                try {
                    byte zza = zzd.zza();
                    byte zzb = zzd.zzb();
                    int i10 = 0;
                    if (zzb != Byte.MIN_VALUE) {
                        if (zzb != -96) {
                            if (zzb != -64) {
                                if (zzb != -32) {
                                    if (zzb != 0 && zzb != 32) {
                                        if (zzb != 64) {
                                            if (zzb == 96) {
                                                String zze = zzduVar.zze();
                                                zzc(zza, zze.length(), inputStream, zzduVar);
                                                return new zzdp(zze);
                                            }
                                            throw new zzdl("Unidentifiable major type: " + zzd.zzc());
                                        }
                                        byte[] zzg = zzduVar.zzg();
                                        int length = zzg.length;
                                        zzc(zza, length, inputStream, zzduVar);
                                        return new zzdk(zzcz.zzl(zzg, 0, length));
                                    }
                                    long zzb2 = zzduVar.zzb();
                                    if (zzb2 > 0) {
                                        j10 = zzb2;
                                    } else {
                                        j10 = ~zzb2;
                                    }
                                    zzc(zza, j10, inputStream, zzduVar);
                                    return new zzdm(zzb2);
                                }
                                return new zzdj(zzduVar.zzf());
                            }
                            throw new zzdl("Tags are currently unsupported");
                        }
                        long zzc = zzduVar.zzc();
                        if (zzc <= 1000) {
                            zzc(zza, zzc, inputStream, zzduVar);
                            int i11 = (int) zzc;
                            zzdn[] zzdnVarArr = new zzdn[i11];
                            zzdr zzdrVar = null;
                            int i12 = 0;
                            while (i12 < zzc) {
                                zzdr zzb3 = zzb(inputStream, zzduVar);
                                if (zzdrVar != null && zzb3.compareTo(zzdrVar) <= 0) {
                                    throw new zzdh(String.format("Keys in CBOR Map not in strictly ascending natural order:\nPrevious key: %s\nCurrent key: %s", zzdrVar.toString(), zzb3.toString()));
                                }
                                zzdnVarArr[i12] = new zzdn(zzb3, zzb(inputStream, zzduVar));
                                i12++;
                                zzdrVar = zzb3;
                            }
                            TreeMap treeMap = new TreeMap();
                            while (i10 < i11) {
                                zzdn zzdnVar = zzdnVarArr[i10];
                                if (!treeMap.containsKey(zzdnVar.zza())) {
                                    treeMap.put(zzdnVar.zza(), zzdnVar.zzb());
                                    i10++;
                                } else {
                                    throw new zzdh("Attempted to add duplicate key to canonical CBOR Map.");
                                }
                            }
                            return new zzdo(zzbg.zzf(treeMap));
                        }
                        throw new zzdl("Parser being asked to read a large CBOR map");
                    }
                    long zza2 = zzduVar.zza();
                    if (zza2 <= 1000) {
                        zzc(zza, zza2, inputStream, zzduVar);
                        zzdr[] zzdrVarArr = new zzdr[(int) zza2];
                        while (i10 < zza2) {
                            zzdrVarArr[i10] = zzb(inputStream, zzduVar);
                            i10++;
                        }
                        return new zzdi(zzaz.zzi(zzdrVarArr));
                    }
                    throw new zzdl("Parser being asked to read a large CBOR array");
                } catch (IOException e10) {
                    e = e10;
                    throw new zzdl("Error in decoding CborValue from bytes", e);
                } catch (RuntimeException e11) {
                    e = e11;
                    throw new zzdl("Error in decoding CborValue from bytes", e);
                }
            }
            throw new zzdl("Parser being asked to parse an empty input stream");
        } catch (IOException e12) {
            throw new zzdl("Error in decoding CborValue from bytes", e12);
        }
    }

    private static final void zzc(byte b10, long j10, InputStream inputStream, zzdu zzduVar) throws IOException {
        switch (b10) {
            case 24:
                if (j10 >= 24) {
                    return;
                }
                throw new zzdh("Integer value " + j10 + " after add info could have been represented in 0 additional bytes, but used 1");
            case 25:
                if (j10 < 256) {
                    throw new zzdh("Integer value " + j10 + " after add info could have been represented in 0-1 additional bytes, but used 2");
                }
                return;
            case 26:
                if (j10 < 65536) {
                    throw new zzdh("Integer value " + j10 + " after add info could have been represented in 0-2 additional bytes, but used 4");
                }
                return;
            case 27:
                if (j10 < 4294967296L) {
                    throw new zzdh("Integer value " + j10 + " after add info could have been represented in 0-4 additional bytes, but used 8");
                }
                return;
            default:
                return;
        }
    }
}
