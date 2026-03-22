package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzali {
    public final int zza;
    public final int zzb;
    public final int zzc;
    public final int zzd;
    public final int zze;
    public final int zzf;

    private zzali(int i10, int i11, int i12, int i13, int i14, int i15) {
        this.zza = i10;
        this.zzb = i11;
        this.zzc = i12;
        this.zzd = i13;
        this.zze = i14;
        this.zzf = i15;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Nullable
    public static zzali zza(String str) {
        boolean z10;
        zzdd.zzd(str.startsWith("Format:"));
        String[] split = TextUtils.split(str.substring(7), ",");
        int i10 = 0;
        int i11 = -1;
        int i12 = -1;
        int i13 = -1;
        int i14 = -1;
        int i15 = -1;
        while (true) {
            int length = split.length;
            if (i10 < length) {
                String zza = zzfuv.zza(split[i10].trim());
                switch (zza.hashCode()) {
                    case 100571:
                        if (zza.equals("end")) {
                            z10 = true;
                            break;
                        }
                        z10 = true;
                        break;
                    case 3556653:
                        if (zza.equals(MimeTypes.BASE_TYPE_TEXT)) {
                            z10 = true;
                            break;
                        }
                        z10 = true;
                        break;
                    case 102749521:
                        if (zza.equals("layer")) {
                            z10 = false;
                            break;
                        }
                        z10 = true;
                        break;
                    case 109757538:
                        if (zza.equals("start")) {
                            z10 = true;
                            break;
                        }
                        z10 = true;
                        break;
                    case 109780401:
                        if (zza.equals(TtmlNode.TAG_STYLE)) {
                            z10 = true;
                            break;
                        }
                        z10 = true;
                        break;
                    default:
                        z10 = true;
                        break;
                }
                if (z10) {
                    if (!z10) {
                        if (!z10) {
                            if (!z10) {
                                if (z10) {
                                    i15 = i10;
                                }
                            } else {
                                i14 = i10;
                            }
                        } else {
                            i13 = i10;
                        }
                    } else {
                        i12 = i10;
                    }
                } else {
                    i11 = i10;
                }
                i10++;
            } else if (i12 != -1 && i13 != -1 && i15 != -1) {
                return new zzali(i11, i12, i13, i14, i15, length);
            } else {
                return null;
            }
        }
    }
}
