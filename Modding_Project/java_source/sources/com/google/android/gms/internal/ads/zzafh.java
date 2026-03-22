package com.google.android.gms.internal.ads;

import android.util.Base64;
import androidx.annotation.Nullable;
import com.huawei.hms.framework.common.ContainerUtils;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzafh {
    public static int zza(int i10) {
        int i11 = 0;
        while (i10 > 0) {
            i10 >>>= 1;
            i11++;
        }
        return i11;
    }

    @Nullable
    public static zzav zzb(List list) {
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < list.size(); i10++) {
            String str = (String) list.get(i10);
            String str2 = zzex.zza;
            String[] split = str.split(ContainerUtils.KEY_VALUE_DELIMITER, 2);
            if (split.length != 2) {
                zzea.zzf("VorbisUtil", "Failed to parse Vorbis comment: ".concat(str));
            } else if (split[0].equals("METADATA_BLOCK_PICTURE")) {
                try {
                    arrayList.add(zzagt.zzb(new zzen(Base64.decode(split[1], 0))));
                } catch (RuntimeException e10) {
                    zzea.zzg("VorbisUtil", "Failed to parse vorbis picture", e10);
                }
            } else {
                arrayList.add(new zzahq(split[0], split[1]));
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new zzav(arrayList);
    }

    public static zzafe zzc(zzen zzenVar, boolean z10, boolean z11) throws zzaz {
        if (z10) {
            zzd(3, zzenVar, false);
        }
        String zzB = zzenVar.zzB((int) zzenVar.zzs(), StandardCharsets.UTF_8);
        int length = zzB.length();
        long zzs = zzenVar.zzs();
        String[] strArr = new String[(int) zzs];
        int i10 = length + 15;
        for (int i11 = 0; i11 < zzs; i11++) {
            String zzB2 = zzenVar.zzB((int) zzenVar.zzs(), StandardCharsets.UTF_8);
            strArr[i11] = zzB2;
            i10 = i10 + 4 + zzB2.length();
        }
        if (z11 && (zzenVar.zzm() & 1) == 0) {
            throw zzaz.zza("framing bit expected to be set", null);
        }
        return new zzafe(zzB, strArr, i10 + 1);
    }

    public static boolean zzd(int i10, zzen zzenVar, boolean z10) throws zzaz {
        if (zzenVar.zza() < 7) {
            if (z10) {
                return false;
            }
            int zza = zzenVar.zza();
            throw zzaz.zza("too short header: " + zza, null);
        } else if (zzenVar.zzm() != i10) {
            if (z10) {
                return false;
            }
            throw zzaz.zza("expected header type ".concat(String.valueOf(Integer.toHexString(i10))), null);
        } else if (zzenVar.zzm() == 118 && zzenVar.zzm() == 111 && zzenVar.zzm() == 114 && zzenVar.zzm() == 98 && zzenVar.zzm() == 105 && zzenVar.zzm() == 115) {
            return true;
        } else {
            if (z10) {
                return false;
            }
            throw zzaz.zza("expected characters 'vorbis'", null);
        }
    }
}
