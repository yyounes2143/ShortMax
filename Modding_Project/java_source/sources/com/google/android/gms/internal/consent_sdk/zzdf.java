package com.google.android.gms.internal.consent_sdk;

import com.google.ads.mediation.inmobi.InMobiNetworkKeys;
import com.vungle.ads.internal.model.Cookie;
import java.util.Arrays;
import java.util.Objects;
import java.util.Set;
/* compiled from: com.google.android.ump:user-messaging-platform@@3.2.0 */
/* loaded from: classes4.dex */
public abstract class zzdf extends zzdb implements Set {
    private transient zzde zza;

    static int zzf(int i10) {
        int max = Math.max(i10, 2);
        if (max < 751619276) {
            int highestOneBit = Integer.highestOneBit(max - 1);
            do {
                highestOneBit += highestOneBit;
            } while (highestOneBit * 0.7d < max);
            return highestOneBit;
        } else if (max < 1073741824) {
            return 1073741824;
        } else {
            throw new IllegalArgumentException("collection too large");
        }
    }

    public static zzdf zzi() {
        return zzdi.zza;
    }

    public static zzdf zzj(Object obj, Object obj2, Object obj3, Object obj4) {
        return zzm(4, "IABTCF_TCString", "IABGPP_HDR_GppString", "IABGPP_GppSID", InMobiNetworkKeys.IAB_US_PRIVACY_STRING);
    }

    public static zzdf zzk(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        return zzm(5, "UMP_CoMoAdStoragePurposeConsentStatus", "UMP_CoMoAdUserDataPurposeConsentStatus", "UMP_CoMoAdPersonalizationPurposeConsentStatus", "UMP_CoMoAnalyticsStoragePurposeConsentStatus", Cookie.IABTCF_GDPR_APPLIES);
    }

    private static zzdf zzm(int i10, Object... objArr) {
        if (i10 != 0) {
            if (i10 != 1) {
                int zzf = zzf(i10);
                Object[] objArr2 = new Object[zzf];
                int i11 = zzf - 1;
                int i12 = 0;
                int i13 = 0;
                for (int i14 = 0; i14 < i10; i14++) {
                    Object obj = objArr[i14];
                    if (obj != null) {
                        int hashCode = obj.hashCode();
                        int zza = zzda.zza(hashCode);
                        while (true) {
                            int i15 = zza & i11;
                            Object obj2 = objArr2[i15];
                            if (obj2 == null) {
                                objArr[i13] = obj;
                                objArr2[i15] = obj;
                                i12 += hashCode;
                                i13++;
                                break;
                            } else if (!obj2.equals(obj)) {
                                zza++;
                            }
                        }
                    } else {
                        throw new NullPointerException("at index " + i14);
                    }
                }
                Arrays.fill(objArr, i13, i10, (Object) null);
                if (i13 == 1) {
                    Object obj3 = objArr[0];
                    Objects.requireNonNull(obj3);
                    return new zzdj(obj3);
                }
                if (zzf(i13) >= zzf / 2) {
                    if (i13 < 3) {
                        objArr = Arrays.copyOf(objArr, i13);
                    }
                    return new zzdi(objArr, i12, objArr2, i11, i13);
                }
                return zzm(i13, objArr);
            }
            Object obj4 = objArr[0];
            Objects.requireNonNull(obj4);
            return new zzdj(obj4);
        }
        return zzdi.zza;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof zzdf) && zzl() && ((zzdf) obj).zzl() && hashCode() != obj.hashCode()) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (obj instanceof Set) {
            Set set = (Set) obj;
            try {
                if (size() == set.size()) {
                    if (containsAll(set)) {
                        return true;
                    }
                }
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        int i10;
        int i11 = 0;
        for (Object obj : this) {
            if (obj != null) {
                i10 = obj.hashCode();
            } else {
                i10 = 0;
            }
            i11 += i10;
        }
        return i11;
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzdb, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    /* renamed from: zzd */
    public abstract zzdk iterator();

    public final zzde zzg() {
        zzde zzdeVar = this.zza;
        if (zzdeVar == null) {
            zzde zzh = zzh();
            this.zza = zzh;
            return zzh;
        }
        return zzdeVar;
    }

    zzde zzh() {
        Object[] array = toArray();
        int i10 = zzde.zzd;
        return zzde.zzg(array, array.length);
    }

    boolean zzl() {
        return false;
    }
}
