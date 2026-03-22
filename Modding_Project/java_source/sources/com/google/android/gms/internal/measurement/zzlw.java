package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-measurement-base@@23.0.0 */
/* loaded from: classes5.dex */
final class zzlw {
    private static final zzlw zzd = new zzlw(true);
    final zzoe zza = new zzoa();
    private boolean zzb;
    private boolean zzc;

    private zzlw() {
    }

    public static zzlw zza() {
        return zzd;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zzf(zzlm zzlmVar, zzot zzotVar, int i10, Object obj) throws IOException {
        if (zzotVar != zzot.zzj) {
            zzlmVar.zza(i10, zzotVar.zzb());
            zzou zzouVar = zzou.INT;
            switch (zzotVar.ordinal()) {
                case 0:
                    zzlmVar.zzu(Double.doubleToRawLongBits(((Double) obj).doubleValue()));
                    return;
                case 1:
                    zzlmVar.zzs(Float.floatToRawIntBits(((Float) obj).floatValue()));
                    return;
                case 2:
                    zzlmVar.zzt(((Long) obj).longValue());
                    return;
                case 3:
                    zzlmVar.zzt(((Long) obj).longValue());
                    return;
                case 4:
                    zzlmVar.zzq(((Integer) obj).intValue());
                    return;
                case 5:
                    zzlmVar.zzu(((Long) obj).longValue());
                    return;
                case 6:
                    zzlmVar.zzs(((Integer) obj).intValue());
                    return;
                case 7:
                    zzlmVar.zzp(((Boolean) obj).booleanValue() ? (byte) 1 : (byte) 0);
                    return;
                case 8:
                    if (obj instanceof zzlh) {
                        zzlmVar.zzj((zzlh) obj);
                        return;
                    } else {
                        zzlmVar.zzx((String) obj);
                        return;
                    }
                case 9:
                    ((zznm) obj).zzcB(zzlmVar);
                    return;
                case 10:
                    zzlmVar.zzo((zznm) obj);
                    return;
                case 11:
                    if (obj instanceof zzlh) {
                        zzlmVar.zzj((zzlh) obj);
                        return;
                    }
                    byte[] bArr = (byte[]) obj;
                    zzlmVar.zzk(bArr, 0, bArr.length);
                    return;
                case 12:
                    zzlmVar.zzr(((Integer) obj).intValue());
                    return;
                case 13:
                    if (obj instanceof zzmj) {
                        zzlmVar.zzq(((zzmj) obj).zza());
                        return;
                    } else {
                        zzlmVar.zzq(((Integer) obj).intValue());
                        return;
                    }
                case 14:
                    zzlmVar.zzs(((Integer) obj).intValue());
                    return;
                case 15:
                    zzlmVar.zzu(((Long) obj).longValue());
                    return;
                case 16:
                    int intValue = ((Integer) obj).intValue();
                    zzlmVar.zzr((intValue >> 31) ^ (intValue + intValue));
                    return;
                case 17:
                    long longValue = ((Long) obj).longValue();
                    zzlmVar.zzt((longValue >> 63) ^ (longValue + longValue));
                    return;
                default:
                    return;
            }
        }
        zznm zznmVar = (zznm) obj;
        zzmp.zzd(zznmVar);
        zzlmVar.zza(i10, 3);
        zznmVar.zzcB(zzlmVar);
        zzlmVar.zza(i10, 4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzh(zzot zzotVar, int i10, Object obj) {
        int zzz = zzlm.zzz(i10 << 3);
        if (zzotVar == zzot.zzj) {
            zzmp.zzd((zznm) obj);
            zzz += zzz;
        }
        return zzz + zzi(zzotVar, obj);
    }

    static int zzi(zzot zzotVar, Object obj) {
        int zzc;
        int zzz;
        zzot zzotVar2 = zzot.zza;
        zzou zzouVar = zzou.INT;
        switch (zzotVar.ordinal()) {
            case 0:
                ((Double) obj).doubleValue();
                int i10 = zzlm.zzb;
                return 8;
            case 1:
                ((Float) obj).floatValue();
                int i11 = zzlm.zzb;
                return 4;
            case 2:
                return zzlm.zzA(((Long) obj).longValue());
            case 3:
                return zzlm.zzA(((Long) obj).longValue());
            case 4:
                return zzlm.zzA(((Integer) obj).intValue());
            case 5:
                ((Long) obj).longValue();
                int i12 = zzlm.zzb;
                return 8;
            case 6:
                ((Integer) obj).intValue();
                int i13 = zzlm.zzb;
                return 4;
            case 7:
                ((Boolean) obj).booleanValue();
                int i14 = zzlm.zzb;
                return 1;
            case 8:
                if (obj instanceof zzlh) {
                    int i15 = zzlm.zzb;
                    zzc = ((zzlh) obj).zzc();
                    zzz = zzlm.zzz(zzc);
                    break;
                } else {
                    return zzlm.zzB((String) obj);
                }
            case 9:
                return ((zznm) obj).zzcn();
            case 10:
                if (obj instanceof zzmv) {
                    int i16 = zzlm.zzb;
                    zzc = ((zzmv) obj).zzb();
                    zzz = zzlm.zzz(zzc);
                    break;
                } else {
                    return zzlm.zzC((zznm) obj);
                }
            case 11:
                if (obj instanceof zzlh) {
                    int i17 = zzlm.zzb;
                    zzc = ((zzlh) obj).zzc();
                    zzz = zzlm.zzz(zzc);
                    break;
                } else {
                    int i18 = zzlm.zzb;
                    zzc = ((byte[]) obj).length;
                    zzz = zzlm.zzz(zzc);
                    break;
                }
            case 12:
                return zzlm.zzz(((Integer) obj).intValue());
            case 13:
                if (obj instanceof zzmj) {
                    return zzlm.zzA(((zzmj) obj).zza());
                }
                return zzlm.zzA(((Integer) obj).intValue());
            case 14:
                ((Integer) obj).intValue();
                int i19 = zzlm.zzb;
                return 4;
            case 15:
                ((Long) obj).longValue();
                int i20 = zzlm.zzb;
                return 8;
            case 16:
                int intValue = ((Integer) obj).intValue();
                return zzlm.zzz((intValue >> 31) ^ (intValue + intValue));
            case 17:
                long longValue = ((Long) obj).longValue();
                return zzlm.zzA((longValue >> 63) ^ (longValue + longValue));
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
        return zzz + zzc;
    }

    public static int zzj(zzlv zzlvVar, Object obj) {
        zzot zzb = zzlvVar.zzb();
        int zza = zzlvVar.zza();
        if (zzlvVar.zzd()) {
            List list = (List) obj;
            int size = list.size();
            int i10 = 0;
            if (zzlvVar.zze()) {
                if (list.isEmpty()) {
                    return 0;
                }
                int i11 = 0;
                while (i10 < size) {
                    i11 += zzi(zzb, list.get(i10));
                    i10++;
                }
                return zzlm.zzz(zza << 3) + i11 + zzlm.zzz(i11);
            }
            int i12 = 0;
            while (i10 < size) {
                i12 += zzh(zzb, zza, list.get(i10));
                i10++;
            }
            return i12;
        }
        return zzh(zzb, zza, obj);
    }

    private static boolean zzk(Map.Entry entry) {
        zzlv zzlvVar = (zzlv) entry.getKey();
        if (zzlvVar.zzc() == zzou.MESSAGE) {
            if (zzlvVar.zzd()) {
                List list = (List) entry.getValue();
                int size = list.size();
                for (int i10 = 0; i10 < size; i10++) {
                    if (!zzl(list.get(i10))) {
                        return false;
                    }
                }
                return true;
            }
            return zzl(entry.getValue());
        }
        return true;
    }

    private static boolean zzl(Object obj) {
        if (obj instanceof zznn) {
            return ((zznn) obj).zzcD();
        }
        if (obj instanceof zzmv) {
            return true;
        }
        throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
    }

    private static final int zzm(Map.Entry entry) {
        int i10;
        int zzz;
        int zzz2;
        zzlv zzlvVar = (zzlv) entry.getKey();
        Object value = entry.getValue();
        if (zzlvVar.zzc() == zzou.MESSAGE && !zzlvVar.zzd() && !zzlvVar.zze()) {
            if (value instanceof zzmv) {
                int zza = ((zzlv) entry.getKey()).zza();
                int zzz3 = zzlm.zzz(8);
                i10 = zzz3 + zzz3;
                zzz = zzlm.zzz(16) + zzlm.zzz(zza);
                int zzz4 = zzlm.zzz(24);
                int zzb = ((zzmv) value).zzb();
                zzz2 = zzz4 + zzlm.zzz(zzb) + zzb;
            } else {
                int zza2 = ((zzlv) entry.getKey()).zza();
                int zzz5 = zzlm.zzz(8);
                i10 = zzz5 + zzz5;
                zzz = zzlm.zzz(16) + zzlm.zzz(zza2);
                zzz2 = zzlm.zzz(24) + zzlm.zzC((zznm) value);
            }
            return i10 + zzz + zzz2;
        }
        return zzj(zzlvVar, value);
    }

    /* JADX WARN: Removed duplicated region for block: B:32:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static final void zzn(com.google.android.gms.internal.measurement.zzlv r2, java.lang.Object r3) {
        /*
            com.google.android.gms.internal.measurement.zzot r0 = r2.zzb()
            byte[] r1 = com.google.android.gms.internal.measurement.zzmp.zzb
            r3.getClass()
            com.google.android.gms.internal.measurement.zzot r1 = com.google.android.gms.internal.measurement.zzot.zza
            com.google.android.gms.internal.measurement.zzou r1 = com.google.android.gms.internal.measurement.zzou.INT
            com.google.android.gms.internal.measurement.zzou r0 = r0.zza()
            int r0 = r0.ordinal()
            switch(r0) {
                case 0: goto L43;
                case 1: goto L40;
                case 2: goto L3d;
                case 3: goto L3a;
                case 4: goto L37;
                case 5: goto L34;
                case 6: goto L2b;
                case 7: goto L22;
                case 8: goto L19;
                default: goto L18;
            }
        L18:
            goto L48
        L19:
            boolean r0 = r3 instanceof com.google.android.gms.internal.measurement.zznm
            if (r0 != 0) goto L47
            boolean r0 = r3 instanceof com.google.android.gms.internal.measurement.zzmv
            if (r0 == 0) goto L48
            goto L47
        L22:
            boolean r0 = r3 instanceof java.lang.Integer
            if (r0 != 0) goto L47
            boolean r0 = r3 instanceof com.google.android.gms.internal.measurement.zzmj
            if (r0 == 0) goto L48
            goto L47
        L2b:
            boolean r0 = r3 instanceof com.google.android.gms.internal.measurement.zzlh
            if (r0 != 0) goto L47
            boolean r0 = r3 instanceof byte[]
            if (r0 == 0) goto L48
            goto L47
        L34:
            boolean r0 = r3 instanceof java.lang.String
            goto L45
        L37:
            boolean r0 = r3 instanceof java.lang.Boolean
            goto L45
        L3a:
            boolean r0 = r3 instanceof java.lang.Double
            goto L45
        L3d:
            boolean r0 = r3 instanceof java.lang.Float
            goto L45
        L40:
            boolean r0 = r3 instanceof java.lang.Long
            goto L45
        L43:
            boolean r0 = r3 instanceof java.lang.Integer
        L45:
            if (r0 == 0) goto L48
        L47:
            return
        L48:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            int r1 = r2.zza()
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            com.google.android.gms.internal.measurement.zzot r2 = r2.zzb()
            com.google.android.gms.internal.measurement.zzou r2 = r2.zza()
            java.lang.Class r3 = r3.getClass()
            java.lang.String r3 = r3.getName()
            java.lang.Object[] r2 = new java.lang.Object[]{r1, r2, r3}
            java.lang.String r3 = "Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n"
            java.lang.String r2 = java.lang.String.format(r3, r2)
            r0.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzlw.zzn(com.google.android.gms.internal.measurement.zzlv, java.lang.Object):void");
    }

    public final /* bridge */ /* synthetic */ Object clone() throws CloneNotSupportedException {
        zzlw zzlwVar = new zzlw();
        zzoe zzoeVar = this.zza;
        int zzc = zzoeVar.zzc();
        for (int i10 = 0; i10 < zzc; i10++) {
            Map.Entry zzd2 = zzoeVar.zzd(i10);
            zzlwVar.zzd((zzlv) ((zzob) zzd2).zza(), zzd2.getValue());
        }
        for (Map.Entry entry : zzoeVar.zze()) {
            zzlwVar.zzd((zzlv) entry.getKey(), entry.getValue());
        }
        zzlwVar.zzc = this.zzc;
        return zzlwVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzlw)) {
            return false;
        }
        return this.zza.equals(((zzlw) obj).zza);
    }

    public final int hashCode() {
        return this.zza.hashCode();
    }

    public final void zzb() {
        if (this.zzb) {
            return;
        }
        zzoe zzoeVar = this.zza;
        int zzc = zzoeVar.zzc();
        for (int i10 = 0; i10 < zzc; i10++) {
            Object value = zzoeVar.zzd(i10).getValue();
            if (value instanceof zzmf) {
                ((zzmf) value).zzcj();
            }
        }
        for (Map.Entry entry : zzoeVar.zze()) {
            Object value2 = entry.getValue();
            if (value2 instanceof zzmf) {
                ((zzmf) value2).zzcj();
            }
        }
        zzoeVar.zza();
        this.zzb = true;
    }

    public final Iterator zzc() {
        zzoe zzoeVar = this.zza;
        if (zzoeVar.isEmpty()) {
            return Collections.emptyIterator();
        }
        if (this.zzc) {
            return new zzmu(zzoeVar.entrySet().iterator());
        }
        return zzoeVar.entrySet().iterator();
    }

    public final void zzd(zzlv zzlvVar, Object obj) {
        if (zzlvVar.zzd()) {
            if (obj instanceof List) {
                List list = (List) obj;
                int size = list.size();
                ArrayList arrayList = new ArrayList(size);
                for (int i10 = 0; i10 < size; i10++) {
                    Object obj2 = list.get(i10);
                    zzn(zzlvVar, obj2);
                    arrayList.add(obj2);
                }
                obj = arrayList;
            } else {
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
        } else {
            zzn(zzlvVar, obj);
        }
        if (obj instanceof zzmv) {
            this.zzc = true;
        }
        this.zza.put(zzlvVar, obj);
    }

    public final boolean zze() {
        zzoe zzoeVar = this.zza;
        int zzc = zzoeVar.zzc();
        for (int i10 = 0; i10 < zzc; i10++) {
            if (!zzk(zzoeVar.zzd(i10))) {
                return false;
            }
        }
        for (Map.Entry entry : zzoeVar.zze()) {
            if (!zzk(entry)) {
                return false;
            }
        }
        return true;
    }

    public final int zzg() {
        zzoe zzoeVar = this.zza;
        int zzc = zzoeVar.zzc();
        int i10 = 0;
        for (int i11 = 0; i11 < zzc; i11++) {
            i10 += zzm(zzoeVar.zzd(i11));
        }
        for (Map.Entry entry : zzoeVar.zze()) {
            i10 += zzm(entry);
        }
        return i10;
    }

    private zzlw(boolean z10) {
        zzb();
        zzb();
    }
}
