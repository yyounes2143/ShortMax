package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import com.huawei.hms.framework.common.ContainerUtils;
import java.util.EnumMap;
import java.util.Map;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-measurement-impl@@23.0.0 */
/* loaded from: classes5.dex */
public final class zzaz {
    public static final zzaz zza = new zzaz((Boolean) null, 100, (Boolean) null, (String) null);
    private final int zzb;
    private final String zzc;
    private final Boolean zzd;
    private final String zze;
    private final EnumMap zzf;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaz(Boolean bool, int i10, Boolean bool2, String str) {
        EnumMap enumMap = new EnumMap(zzjk.class);
        this.zzf = enumMap;
        enumMap.put((EnumMap) zzjk.AD_USER_DATA, (zzjk) zzjl.zzh(bool));
        this.zzb = i10;
        this.zzc = zzl();
        this.zzd = bool2;
        this.zze = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzaz zza(zzji zzjiVar, int i10) {
        EnumMap enumMap = new EnumMap(zzjk.class);
        enumMap.put((EnumMap) zzjk.AD_USER_DATA, (zzjk) zzjiVar);
        return new zzaz(enumMap, -10, (Boolean) null, (String) null);
    }

    public static zzaz zzg(String str) {
        if (str != null && str.length() > 0) {
            String[] split = str.split(":");
            int parseInt = Integer.parseInt(split[0]);
            EnumMap enumMap = new EnumMap(zzjk.class);
            zzjk[] zza2 = zzjj.DMA.zza();
            int length = zza2.length;
            int i10 = 1;
            int i11 = 0;
            while (i11 < length) {
                enumMap.put((EnumMap) zza2[i11], (zzjk) zzjl.zzj(split[i10].charAt(0)));
                i11++;
                i10++;
            }
            return new zzaz(enumMap, parseInt, (Boolean) null, (String) null);
        }
        return zza;
    }

    public static zzaz zzh(Bundle bundle, int i10) {
        zzjk[] zza2;
        Boolean bool = null;
        if (bundle == null) {
            return new zzaz((Boolean) null, i10, (Boolean) null, (String) null);
        }
        EnumMap enumMap = new EnumMap(zzjk.class);
        for (zzjk zzjkVar : zzjj.DMA.zza()) {
            enumMap.put((EnumMap) zzjkVar, (zzjk) zzjl.zzg(bundle.getString(zzjkVar.zze)));
        }
        if (bundle.containsKey("is_dma_region")) {
            bool = Boolean.valueOf(bundle.getString("is_dma_region"));
        }
        return new zzaz(enumMap, i10, bool, bundle.getString("cps_display_str"));
    }

    public static Boolean zzi(Bundle bundle) {
        zzji zzg;
        if (bundle != null && (zzg = zzjl.zzg(bundle.getString("ad_personalization"))) != null) {
            int ordinal = zzg.ordinal();
            if (ordinal != 2) {
                if (ordinal == 3) {
                    return Boolean.TRUE;
                }
                return null;
            }
            return Boolean.FALSE;
        }
        return null;
    }

    private final String zzl() {
        zzjk[] zza2;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.zzb);
        for (zzjk zzjkVar : zzjj.DMA.zza()) {
            sb2.append(":");
            sb2.append(zzjl.zzm((zzji) this.zzf.get(zzjkVar)));
        }
        return sb2.toString();
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzaz) {
            zzaz zzazVar = (zzaz) obj;
            if (this.zzc.equalsIgnoreCase(zzazVar.zzc) && Objects.equals(this.zzd, zzazVar.zzd)) {
                return Objects.equals(this.zze, zzazVar.zze);
            }
            return false;
        }
        return false;
    }

    public final int hashCode() {
        int i10;
        int hashCode;
        Boolean bool = this.zzd;
        if (bool == null) {
            i10 = 3;
        } else if (true != bool.booleanValue()) {
            i10 = 13;
        } else {
            i10 = 7;
        }
        String str = this.zze;
        if (str == null) {
            hashCode = 17;
        } else {
            hashCode = str.hashCode();
        }
        return this.zzc.hashCode() + (i10 * 29) + (hashCode * 137);
    }

    public final String toString() {
        zzjk[] zza2;
        StringBuilder sb2 = new StringBuilder("source=");
        sb2.append(zzjl.zzd(this.zzb));
        for (zzjk zzjkVar : zzjj.DMA.zza()) {
            sb2.append(",");
            sb2.append(zzjkVar.zze);
            sb2.append(ContainerUtils.KEY_VALUE_DELIMITER);
            zzji zzjiVar = (zzji) this.zzf.get(zzjkVar);
            if (zzjiVar == null) {
                sb2.append("uninitialized");
            } else {
                int ordinal = zzjiVar.ordinal();
                if (ordinal != 0) {
                    if (ordinal != 1) {
                        if (ordinal != 2) {
                            if (ordinal == 3) {
                                sb2.append("granted");
                            }
                        } else {
                            sb2.append("denied");
                        }
                    } else {
                        sb2.append("eu_consent_policy");
                    }
                } else {
                    sb2.append("uninitialized");
                }
            }
        }
        Boolean bool = this.zzd;
        if (bool != null) {
            sb2.append(",isDmaRegion=");
            sb2.append(bool);
        }
        String str = this.zze;
        if (str != null) {
            sb2.append(",cpsDisplayStr=");
            sb2.append(str);
        }
        return sb2.toString();
    }

    public final int zzb() {
        return this.zzb;
    }

    public final zzji zzc() {
        zzji zzjiVar = (zzji) this.zzf.get(zzjk.AD_USER_DATA);
        if (zzjiVar == null) {
            return zzji.UNINITIALIZED;
        }
        return zzjiVar;
    }

    public final boolean zzd() {
        for (zzji zzjiVar : this.zzf.values()) {
            if (zzjiVar != zzji.UNINITIALIZED) {
                return true;
            }
        }
        return false;
    }

    public final String zze() {
        return this.zzc;
    }

    public final Bundle zzf() {
        Bundle bundle = new Bundle();
        for (Map.Entry entry : this.zzf.entrySet()) {
            String zzi = zzjl.zzi((zzji) entry.getValue());
            if (zzi != null) {
                bundle.putString(((zzjk) entry.getKey()).zze, zzi);
            }
        }
        Boolean bool = this.zzd;
        if (bool != null) {
            bundle.putString("is_dma_region", bool.toString());
        }
        String str = this.zze;
        if (str != null) {
            bundle.putString("cps_display_str", str);
        }
        return bundle;
    }

    public final Boolean zzj() {
        return this.zzd;
    }

    public final String zzk() {
        return this.zze;
    }

    private zzaz(EnumMap enumMap, int i10, Boolean bool, String str) {
        EnumMap enumMap2 = new EnumMap(zzjk.class);
        this.zzf = enumMap2;
        enumMap2.putAll(enumMap);
        this.zzb = i10;
        this.zzc = zzl();
        this.zzd = bool;
        this.zze = str;
    }
}
