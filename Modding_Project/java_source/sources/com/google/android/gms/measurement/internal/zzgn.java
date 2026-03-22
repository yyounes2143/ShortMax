package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import com.applovin.shadow.okhttp3.HttpUrl;
import com.google.android.gms.common.internal.Preconditions;
import com.huawei.hms.framework.common.ContainerUtils;
import java.util.ArrayList;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: com.google.android.gms:play-services-measurement-impl@@23.0.0 */
/* loaded from: classes5.dex */
public final class zzgn {
    protected static final AtomicReference zza = new AtomicReference();
    protected static final AtomicReference zzb = new AtomicReference();
    protected static final AtomicReference zzc = new AtomicReference();
    private final zzgm zzd;

    public zzgn(zzgm zzgmVar) {
        this.zzd = zzgmVar;
    }

    private static final String zzg(String str, String[] strArr, String[] strArr2, AtomicReference atomicReference) {
        boolean z10;
        String str2;
        Preconditions.checkNotNull(strArr);
        Preconditions.checkNotNull(strArr2);
        Preconditions.checkNotNull(atomicReference);
        if (strArr.length == strArr2.length) {
            z10 = true;
        } else {
            z10 = false;
        }
        Preconditions.checkArgument(z10);
        for (int i10 = 0; i10 < strArr.length; i10++) {
            if (Objects.equals(str, strArr[i10])) {
                synchronized (atomicReference) {
                    try {
                        String[] strArr3 = (String[]) atomicReference.get();
                        if (strArr3 == null) {
                            strArr3 = new String[strArr2.length];
                            atomicReference.set(strArr3);
                        }
                        str2 = strArr3[i10];
                        if (str2 == null) {
                            str2 = strArr2[i10] + "(" + strArr[i10] + ")";
                            strArr3[i10] = str2;
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                return str2;
            }
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final String zza(String str) {
        if (str == null) {
            return null;
        }
        if (!this.zzd.zza()) {
            return str;
        }
        return zzg(str, zzjm.zzc, zzjm.zza, zza);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final String zzb(String str) {
        if (str == null) {
            return null;
        }
        if (!this.zzd.zza()) {
            return str;
        }
        return zzg(str, zzjn.zzb, zzjn.zza, zzb);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final String zzc(String str) {
        if (str == null) {
            return null;
        }
        if (!this.zzd.zza()) {
            return str;
        }
        if (str.startsWith("_exp_")) {
            return "experiment_id(" + str + ")";
        }
        return zzg(str, zzjo.zzb, zzjo.zza, zzc);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final String zzd(zzbg zzbgVar) {
        String zze;
        zzgm zzgmVar = this.zzd;
        if (!zzgmVar.zza()) {
            return zzbgVar.toString();
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("origin=");
        sb2.append(zzbgVar.zzc);
        sb2.append(",name=");
        sb2.append(zza(zzbgVar.zza));
        sb2.append(",params=");
        zzbe zzbeVar = zzbgVar.zzb;
        if (zzbeVar == null) {
            zze = null;
        } else if (!zzgmVar.zza()) {
            zze = zzbeVar.toString();
        } else {
            zze = zze(zzbeVar.zzf());
        }
        sb2.append(zze);
        return sb2.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final String zze(Bundle bundle) {
        String valueOf;
        if (bundle == null) {
            return null;
        }
        if (!this.zzd.zza()) {
            return bundle.toString();
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Bundle[{");
        for (String str : bundle.keySet()) {
            if (sb2.length() != 8) {
                sb2.append(", ");
            }
            sb2.append(zzb(str));
            sb2.append(ContainerUtils.KEY_VALUE_DELIMITER);
            Object obj = bundle.get(str);
            if (obj instanceof Bundle) {
                valueOf = zzf(new Object[]{obj});
            } else if (obj instanceof Object[]) {
                valueOf = zzf((Object[]) obj);
            } else if (obj instanceof ArrayList) {
                valueOf = zzf(((ArrayList) obj).toArray());
            } else {
                valueOf = String.valueOf(obj);
            }
            sb2.append(valueOf);
        }
        sb2.append("}]");
        return sb2.toString();
    }

    protected final String zzf(Object[] objArr) {
        String valueOf;
        if (objArr == null) {
            return HttpUrl.PATH_SEGMENT_ENCODE_SET_URI;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("[");
        for (Object obj : objArr) {
            if (obj instanceof Bundle) {
                valueOf = zze((Bundle) obj);
            } else {
                valueOf = String.valueOf(obj);
            }
            if (valueOf != null) {
                if (sb2.length() != 1) {
                    sb2.append(", ");
                }
                sb2.append(valueOf);
            }
        }
        sb2.append("]");
        return sb2.toString();
    }
}
