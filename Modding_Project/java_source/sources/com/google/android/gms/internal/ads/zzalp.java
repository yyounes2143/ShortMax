package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.gms.fido.fido2.api.common.DevicePublicKeyStringDef;
import com.vungle.ads.internal.presenter.MRAIDPresenter;
import java.util.regex.Pattern;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzalp {
    private static final Pattern zzd = Pattern.compile("\\s+");
    private static final zzfyv zze = zzfyv.zzp("auto", DevicePublicKeyStringDef.NONE);
    private static final zzfyv zzf = zzfyv.zzq("dot", "sesame", "circle");
    private static final zzfyv zzg = zzfyv.zzp("filled", MRAIDPresenter.OPEN);
    private static final zzfyv zzh = zzfyv.zzq("after", "before", "outside");
    public final int zza;
    public final int zzb;
    public final int zzc;

    private zzalp(int i10, int i11, int i12) {
        this.zza = i10;
        this.zzb = i11;
        this.zzc = i12;
    }

    @Nullable
    public static zzalp zza(@Nullable String str) {
        boolean z10;
        int i10;
        int i11;
        if (str != null) {
            String zza = zzfuv.zza(str.trim());
            if (!zza.isEmpty()) {
                zzfyv zzm = zzfyv.zzm(TextUtils.split(zza, zzd));
                String str2 = (String) zzfyw.zza(zzgas.zzb(zzh, zzm), "outside");
                int hashCode = str2.hashCode();
                int i12 = -1;
                int i13 = 0;
                if (hashCode != -1106037339) {
                    if (hashCode == 92734940 && str2.equals("after")) {
                        z10 = false;
                    }
                    z10 = true;
                } else {
                    if (str2.equals("outside")) {
                        z10 = true;
                    }
                    z10 = true;
                }
                if (z10) {
                    if (!z10) {
                        i10 = 1;
                    } else {
                        i10 = -2;
                    }
                } else {
                    i10 = 2;
                }
                zzgaq zzb = zzgas.zzb(zze, zzm);
                if (!zzb.isEmpty()) {
                    String str3 = (String) zzb.iterator().next();
                    if (str3.hashCode() == 3387192 && str3.equals(DevicePublicKeyStringDef.NONE)) {
                        i12 = 0;
                    }
                } else {
                    zzgaq zzb2 = zzgas.zzb(zzg, zzm);
                    zzgaq zzb3 = zzgas.zzb(zzf, zzm);
                    if (!zzb2.isEmpty() || !zzb3.isEmpty()) {
                        String str4 = (String) zzfyw.zza(zzb2, "filled");
                        if (str4.hashCode() == 3417674 && str4.equals(MRAIDPresenter.OPEN)) {
                            i11 = 2;
                        } else {
                            i11 = 1;
                        }
                        String str5 = (String) zzfyw.zza(zzb3, "circle");
                        int hashCode2 = str5.hashCode();
                        if (hashCode2 != -905816648) {
                            if (hashCode2 == 99657 && str5.equals("dot")) {
                                i12 = 0;
                            }
                        } else if (str5.equals("sesame")) {
                            i12 = 1;
                        }
                        if (i12 != 0) {
                            if (i12 != 1) {
                                i13 = i11;
                                i12 = 1;
                            } else {
                                i12 = 3;
                            }
                        } else {
                            i12 = 2;
                        }
                        i13 = i11;
                    }
                }
                return new zzalp(i12, i13, i10);
            }
            return null;
        }
        return null;
    }
}
