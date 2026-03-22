package com.google.android.gms.internal.p003firebaseauthapi;

import com.google.android.gms.internal.p003firebaseauthapi.zzakz;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzakx  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzakx<T extends zzakz<T>> {
    private static final zzakx<?> zzb = new zzakx<>(true);
    final zzang<T, Object> zza;
    private boolean zzc;
    private boolean zzd;

    private zzakx() {
        this.zza = new zzanf();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zza(zzaog zzaogVar, int i10, Object obj) {
        int zzh = zzakn.zzh(i10);
        if (zzaogVar == zzaog.zzj) {
            zzalh.zza((zzamm) obj);
            zzh <<= 1;
        }
        return zzh + zza(zzaogVar, obj);
    }

    public static <T extends zzakz<T>> zzakx<T> zzb() {
        return (zzakx<T>) zzb;
    }

    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        zzakx zzakxVar = new zzakx();
        int zzb2 = this.zza.zzb();
        for (int i10 = 0; i10 < zzb2; i10++) {
            Map.Entry<T, Object> zza = this.zza.zza(i10);
            zzakxVar.zzb(zza.getKey(), zza.getValue());
        }
        for (Map.Entry<T, Object> entry : this.zza.zzc()) {
            zzakxVar.zzb(entry.getKey(), entry.getValue());
        }
        zzakxVar.zzd = this.zzd;
        return zzakxVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzakx)) {
            return false;
        }
        return this.zza.equals(((zzakx) obj).zza);
    }

    public final int hashCode() {
        return this.zza.hashCode();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Iterator<Map.Entry<T, Object>> zzc() {
        if (this.zza.isEmpty()) {
            return Collections.emptyIterator();
        }
        if (this.zzd) {
            return new zzals(this.zza.zzd().iterator());
        }
        return this.zza.zzd().iterator();
    }

    public final Iterator<Map.Entry<T, Object>> zzd() {
        if (this.zza.isEmpty()) {
            return Collections.emptyIterator();
        }
        if (this.zzd) {
            return new zzals(this.zza.entrySet().iterator());
        }
        return this.zza.entrySet().iterator();
    }

    public final void zze() {
        if (this.zzc) {
            return;
        }
        int zzb2 = this.zza.zzb();
        for (int i10 = 0; i10 < zzb2; i10++) {
            Object value = this.zza.zza(i10).getValue();
            if (value instanceof zzalf) {
                ((zzalf) value).zzt();
            }
        }
        for (Map.Entry<T, Object> entry : this.zza.zzc()) {
            Object value2 = entry.getValue();
            if (value2 instanceof zzalf) {
                ((zzalf) value2).zzt();
            }
        }
        this.zza.zza();
        this.zzc = true;
    }

    public final boolean zzf() {
        return this.zzc;
    }

    public final boolean zzg() {
        int zzb2 = this.zza.zzb();
        for (int i10 = 0; i10 < zzb2; i10++) {
            if (!zzc(this.zza.zza(i10))) {
                return false;
            }
        }
        for (Map.Entry<T, Object> entry : this.zza.zzc()) {
            if (!zzc(entry)) {
                return false;
            }
        }
        return true;
    }

    private final void zzb(Map.Entry<T, Object> entry) {
        zzamm zze;
        T key = entry.getKey();
        Object value = entry.getValue();
        boolean z10 = value instanceof zzalq;
        if (key.zze()) {
            if (!z10) {
                Object zza = zza((zzakx<T>) key);
                List list = (List) value;
                int size = list.size();
                if (zza == null) {
                    zza = new ArrayList(size);
                }
                List list2 = (List) zza;
                for (int i10 = 0; i10 < size; i10++) {
                    list2.add(zza(list.get(i10)));
                }
                this.zza.zza((zzang<T, Object>) key, (T) zza);
                return;
            }
            throw new IllegalStateException("Lazy fields can not be repeated");
        } else if (key.zzc() == zzaoj.MESSAGE) {
            Object zza2 = zza((zzakx<T>) key);
            if (zza2 == null) {
                this.zza.zza((zzang<T, Object>) key, (T) zza(value));
                if (z10) {
                    this.zzd = true;
                }
            } else if (!z10) {
                if (zza2 instanceof zzamr) {
                    zze = key.zza((zzamr) zza2, (zzamr) value);
                } else {
                    zze = key.zza(((zzamm) zza2).zzr(), (zzamm) value).zze();
                }
                this.zza.zza((zzang<T, Object>) key, (T) zze);
            } else {
                throw new NoSuchMethodError();
            }
        } else {
            if (!z10) {
                this.zza.zza((zzang<T, Object>) key, (T) zza(value));
                return;
            }
            throw new IllegalStateException("Lazy fields must be message-valued");
        }
    }

    private zzakx(zzang<T, Object> zzangVar) {
        this.zza = zzangVar;
        zze();
    }

    private static int zza(zzaog zzaogVar, Object obj) {
        switch (zzala.zzb[zzaogVar.ordinal()]) {
            case 1:
                return zzakn.zza(((Double) obj).doubleValue());
            case 2:
                return zzakn.zza(((Float) obj).floatValue());
            case 3:
                return zzakn.zzb(((Long) obj).longValue());
            case 4:
                return zzakn.zze(((Long) obj).longValue());
            case 5:
                return zzakn.zzc(((Integer) obj).intValue());
            case 6:
                return zzakn.zza(((Long) obj).longValue());
            case 7:
                return zzakn.zzb(((Integer) obj).intValue());
            case 8:
                return zzakn.zza(((Boolean) obj).booleanValue());
            case 9:
                return ((zzamm) obj).zzl();
            case 10:
                if (obj instanceof zzalq) {
                    return zzakn.zza((zzalq) obj);
                }
                return zzakn.zza((zzamm) obj);
            case 11:
                if (obj instanceof zzajv) {
                    return zzakn.zza((zzajv) obj);
                }
                return zzakn.zza((String) obj);
            case 12:
                if (obj instanceof zzajv) {
                    return zzakn.zza((zzajv) obj);
                }
                return zzakn.zza((byte[]) obj);
            case 13:
                return zzakn.zzi(((Integer) obj).intValue());
            case 14:
                return zzakn.zzf(((Integer) obj).intValue());
            case 15:
                return zzakn.zzc(((Long) obj).longValue());
            case 16:
                return zzakn.zzg(((Integer) obj).intValue());
            case 17:
                return zzakn.zzd(((Long) obj).longValue());
            case 18:
                if (obj instanceof zzalk) {
                    return zzakn.zza(((zzalk) obj).zza());
                }
                return zzakn.zza(((Integer) obj).intValue());
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0029, code lost:
        if ((r4 instanceof com.google.android.gms.internal.p003firebaseauthapi.zzalk) == false) goto L3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0032, code lost:
        if ((r4 instanceof byte[]) == false) goto L3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0020, code lost:
        if ((r4 instanceof com.google.android.gms.internal.p003firebaseauthapi.zzalq) == false) goto L3;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void zzc(T r3, java.lang.Object r4) {
        /*
            com.google.android.gms.internal.firebase-auth-api.zzaog r0 = r3.zzb()
            com.google.android.gms.internal.p003firebaseauthapi.zzalh.zza(r4)
            int[] r1 = com.google.android.gms.internal.p003firebaseauthapi.zzala.zza
            com.google.android.gms.internal.firebase-auth-api.zzaoj r0 = r0.zzb()
            int r0 = r0.ordinal()
            r0 = r1[r0]
            r1 = 1
            r2 = 0
            switch(r0) {
                case 1: goto L44;
                case 2: goto L41;
                case 3: goto L3e;
                case 4: goto L3b;
                case 5: goto L38;
                case 6: goto L35;
                case 7: goto L2c;
                case 8: goto L23;
                case 9: goto L1a;
                default: goto L18;
            }
        L18:
            r1 = r2
            goto L46
        L1a:
            boolean r0 = r4 instanceof com.google.android.gms.internal.p003firebaseauthapi.zzamm
            if (r0 != 0) goto L46
            boolean r0 = r4 instanceof com.google.android.gms.internal.p003firebaseauthapi.zzalq
            if (r0 == 0) goto L18
            goto L46
        L23:
            boolean r0 = r4 instanceof java.lang.Integer
            if (r0 != 0) goto L46
            boolean r0 = r4 instanceof com.google.android.gms.internal.p003firebaseauthapi.zzalk
            if (r0 == 0) goto L18
            goto L46
        L2c:
            boolean r0 = r4 instanceof com.google.android.gms.internal.p003firebaseauthapi.zzajv
            if (r0 != 0) goto L46
            boolean r0 = r4 instanceof byte[]
            if (r0 == 0) goto L18
            goto L46
        L35:
            boolean r1 = r4 instanceof java.lang.String
            goto L46
        L38:
            boolean r1 = r4 instanceof java.lang.Boolean
            goto L46
        L3b:
            boolean r1 = r4 instanceof java.lang.Double
            goto L46
        L3e:
            boolean r1 = r4 instanceof java.lang.Float
            goto L46
        L41:
            boolean r1 = r4 instanceof java.lang.Long
            goto L46
        L44:
            boolean r1 = r4 instanceof java.lang.Integer
        L46:
            if (r1 == 0) goto L49
            return
        L49:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            int r1 = r3.zza()
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            com.google.android.gms.internal.firebase-auth-api.zzaog r3 = r3.zzb()
            com.google.android.gms.internal.firebase-auth-api.zzaoj r3 = r3.zzb()
            java.lang.Class r4 = r4.getClass()
            java.lang.String r4 = r4.getName()
            java.lang.Object[] r3 = new java.lang.Object[]{r1, r3, r4}
            java.lang.String r4 = "Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n"
            java.lang.String r3 = java.lang.String.format(r4, r3)
            r0.<init>(r3)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.p003firebaseauthapi.zzakx.zzc(com.google.android.gms.internal.firebase-auth-api.zzakz, java.lang.Object):void");
    }

    private zzakx(boolean z10) {
        this(new zzanf());
        zze();
    }

    private static <T extends zzakz<T>> boolean zzc(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        if (key.zzc() == zzaoj.MESSAGE) {
            if (key.zze()) {
                List list = (List) entry.getValue();
                int size = list.size();
                for (int i10 = 0; i10 < size; i10++) {
                    if (!zzb(list.get(i10))) {
                        return false;
                    }
                }
                return true;
            }
            return zzb(entry.getValue());
        }
        return true;
    }

    private final void zzb(T t10, Object obj) {
        if (t10.zze()) {
            if (obj instanceof List) {
                List list = (List) obj;
                int size = list.size();
                ArrayList arrayList = new ArrayList(size);
                for (int i10 = 0; i10 < size; i10++) {
                    Object obj2 = list.get(i10);
                    zzc(t10, obj2);
                    arrayList.add(obj2);
                }
                obj = arrayList;
            } else {
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
        } else {
            zzc(t10, obj);
        }
        if (obj instanceof zzalq) {
            this.zzd = true;
        }
        this.zza.zza((zzang<T, Object>) t10, (T) obj);
    }

    public static int zza(zzakz<?> zzakzVar, Object obj) {
        zzaog zzb2 = zzakzVar.zzb();
        int zza = zzakzVar.zza();
        if (zzakzVar.zze()) {
            List list = (List) obj;
            int size = list.size();
            int i10 = 0;
            if (!zzakzVar.zzd()) {
                int i11 = 0;
                while (i10 < size) {
                    i11 += zza(zzb2, zza, list.get(i10));
                    i10++;
                }
                return i11;
            } else if (list.isEmpty()) {
                return 0;
            } else {
                int i12 = 0;
                while (i10 < size) {
                    i12 += zza(zzb2, list.get(i10));
                    i10++;
                }
                return zzakn.zzh(zza) + i12 + zzakn.zzi(i12);
            }
        }
        return zza(zzb2, zza, obj);
    }

    private static boolean zzb(Object obj) {
        if (obj instanceof zzamo) {
            return ((zzamo) obj).zzv();
        }
        if (obj instanceof zzalq) {
            return true;
        }
        throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
    }

    public final int zza() {
        int zzb2 = this.zza.zzb();
        int i10 = 0;
        for (int i11 = 0; i11 < zzb2; i11++) {
            i10 += zza((Map.Entry) this.zza.zza(i11));
        }
        for (Map.Entry<T, Object> entry : this.zza.zzc()) {
            i10 += zza((Map.Entry) entry);
        }
        return i10;
    }

    private static int zza(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        Object value = entry.getValue();
        if (key.zzc() == zzaoj.MESSAGE && !key.zze() && !key.zzd()) {
            if (value instanceof zzalq) {
                return zzakn.zza(entry.getKey().zza(), (zzalq) value);
            }
            return zzakn.zza(entry.getKey().zza(), (zzamm) value);
        }
        return zza((zzakz<?>) key, value);
    }

    private static Object zza(Object obj) {
        if (obj instanceof zzamr) {
            return ((zzamr) obj).zza();
        }
        if (obj instanceof byte[]) {
            byte[] bArr = (byte[]) obj;
            byte[] bArr2 = new byte[bArr.length];
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            return bArr2;
        }
        return obj;
    }

    private final Object zza(T t10) {
        Object obj = this.zza.get(t10);
        if (obj instanceof zzalq) {
            throw new NoSuchMethodError();
        }
        return obj;
    }

    public final void zza(zzakx<T> zzakxVar) {
        int zzb2 = zzakxVar.zza.zzb();
        for (int i10 = 0; i10 < zzb2; i10++) {
            zzb((Map.Entry) zzakxVar.zza.zza(i10));
        }
        for (Map.Entry<T, Object> entry : zzakxVar.zza.zzc()) {
            zzb((Map.Entry) entry);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzakn zzaknVar, zzaog zzaogVar, int i10, Object obj) throws IOException {
        if (zzaogVar == zzaog.zzj) {
            zzamm zzammVar = (zzamm) obj;
            zzalh.zza(zzammVar);
            zzaknVar.zzj(i10, 3);
            zzammVar.zza(zzaknVar);
            zzaknVar.zzj(i10, 4);
            return;
        }
        zzaknVar.zzj(i10, zzaogVar.zza());
        switch (zzala.zzb[zzaogVar.ordinal()]) {
            case 1:
                zzaknVar.zzb(((Double) obj).doubleValue());
                return;
            case 2:
                zzaknVar.zzb(((Float) obj).floatValue());
                return;
            case 3:
                zzaknVar.zzh(((Long) obj).longValue());
                return;
            case 4:
                zzaknVar.zzh(((Long) obj).longValue());
                return;
            case 5:
                zzaknVar.zzk(((Integer) obj).intValue());
                return;
            case 6:
                zzaknVar.zzf(((Long) obj).longValue());
                return;
            case 7:
                zzaknVar.zzj(((Integer) obj).intValue());
                return;
            case 8:
                zzaknVar.zzb(((Boolean) obj).booleanValue());
                return;
            case 9:
                ((zzamm) obj).zza(zzaknVar);
                return;
            case 10:
                zzaknVar.zzb((zzamm) obj);
                return;
            case 11:
                if (obj instanceof zzajv) {
                    zzaknVar.zzb((zzajv) obj);
                    return;
                } else {
                    zzaknVar.zzb((String) obj);
                    return;
                }
            case 12:
                if (obj instanceof zzajv) {
                    zzaknVar.zzb((zzajv) obj);
                    return;
                }
                byte[] bArr = (byte[]) obj;
                zzaknVar.zzb(bArr, 0, bArr.length);
                return;
            case 13:
                zzaknVar.zzm(((Integer) obj).intValue());
                return;
            case 14:
                zzaknVar.zzj(((Integer) obj).intValue());
                return;
            case 15:
                zzaknVar.zzf(((Long) obj).longValue());
                return;
            case 16:
                zzaknVar.zzl(((Integer) obj).intValue());
                return;
            case 17:
                zzaknVar.zzg(((Long) obj).longValue());
                return;
            case 18:
                if (obj instanceof zzalk) {
                    zzaknVar.zzk(((zzalk) obj).zza());
                    return;
                } else {
                    zzaknVar.zzk(((Integer) obj).intValue());
                    return;
                }
            default:
                return;
        }
    }
}
