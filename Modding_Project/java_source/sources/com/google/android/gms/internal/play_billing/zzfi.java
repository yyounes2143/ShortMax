package com.google.android.gms.internal.play_billing;

import com.google.android.gms.internal.play_billing.zzfe;
import com.google.android.gms.internal.play_billing.zzfi;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* compiled from: com.android.billingclient:billing@@8.0.0 */
/* loaded from: classes5.dex */
public abstract class zzfi<MessageType extends zzfi<MessageType, BuilderType>, BuilderType extends zzfe<MessageType, BuilderType>> extends zzds<MessageType, BuilderType> {
    private static final Map zzb = new ConcurrentHashMap();
    private int zzd = -1;
    protected zzhi zzc = zzhi.zzc();

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean zzA(zzfi zzfiVar, boolean z10) {
        Object obj;
        byte byteValue = ((Byte) zzfiVar.zzb(1, null, null)).byteValue();
        if (byteValue == 1) {
            return true;
        }
        if (byteValue == 0) {
            return false;
        }
        boolean zzk = zzgs.zza().zzb(zzfiVar.getClass()).zzk(zzfiVar);
        if (z10) {
            if (true != zzk) {
                obj = null;
            } else {
                obj = zzfiVar;
            }
            zzfiVar.zzb(2, obj, null);
        }
        return zzk;
    }

    private final int zzc(zzgv zzgvVar) {
        return zzgs.zza().zzb(getClass()).zza(this);
    }

    private static zzfi zzd(zzfi zzfiVar, byte[] bArr, int i10, int i11, zzeu zzeuVar) throws zzfq {
        if (i11 == 0) {
            return zzfiVar;
        }
        zzfi zzo = zzfiVar.zzo();
        try {
            zzgv zzb2 = zzgs.zza().zzb(zzo.getClass());
            zzb2.zzh(zzo, bArr, 0, i11, new zzdw(zzeuVar));
            zzb2.zzf(zzo);
            return zzo;
        } catch (zzfq e10) {
            throw e10;
        } catch (zzhg e11) {
            throw e11.zza();
        } catch (IOException e12) {
            if (e12.getCause() instanceof zzfq) {
                throw ((zzfq) e12.getCause());
            }
            throw new zzfq(e12);
        } catch (IndexOutOfBoundsException unused) {
            throw new zzfq("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzfi zzn(Class cls) {
        Map map = zzb;
        zzfi zzfiVar = (zzfi) map.get(cls);
        if (zzfiVar == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                zzfiVar = (zzfi) map.get(cls);
            } catch (ClassNotFoundException e10) {
                throw new IllegalStateException("Class initialization cannot fail.", e10);
            }
        }
        if (zzfiVar == null) {
            zzfiVar = (zzfi) ((zzfi) zzho.zze(cls)).zzb(6, null, null);
            if (zzfiVar != null) {
                map.put(cls, zzfiVar);
            } else {
                throw new IllegalStateException();
            }
        }
        return zzfiVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static zzfi zzp(zzfi zzfiVar, byte[] bArr, zzeu zzeuVar) throws zzfq {
        zzfi zzd = zzd(zzfiVar, bArr, 0, bArr.length, zzeuVar);
        if (zzd != null && !zzA(zzd, true)) {
            throw new zzhg(zzd).zza();
        }
        return zzd;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static zzfm zzq() {
        return zzfj.zzf();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static zzfn zzr() {
        return zzgt.zze();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object zzs(Method method, Object obj, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e10) {
            throw new RuntimeException("Couldn't use Java reflection to implement protocol message reflection.", e10);
        } catch (InvocationTargetException e11) {
            Throwable cause = e11.getCause();
            if (!(cause instanceof RuntimeException)) {
                if (cause instanceof Error) {
                    throw ((Error) cause);
                }
                throw new RuntimeException("Unexpected exception thrown by generated accessor method.", cause);
            }
            throw ((RuntimeException) cause);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static Object zzt(zzgl zzglVar, String str, Object[] objArr) {
        return new zzgu(zzglVar, str, objArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void zzw(Class cls, zzfi zzfiVar) {
        zzfiVar.zzv();
        zzb.put(cls, zzfiVar);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return zzgs.zza().zzb(getClass()).zzj(this, (zzfi) obj);
    }

    public final int hashCode() {
        if (!zzz()) {
            int i10 = this.zza;
            if (i10 == 0) {
                int zzi = zzi();
                this.zza = zzi;
                return zzi;
            }
            return i10;
        }
        return zzi();
    }

    public final String toString() {
        return zzgn.zza(this, super.toString());
    }

    @Override // com.google.android.gms.internal.play_billing.zzgl
    public final /* synthetic */ zzgk zzK() {
        return (zzfe) zzb(5, null, null);
    }

    @Override // com.google.android.gms.internal.play_billing.zzgl
    public final void zzL(zzep zzepVar) throws IOException {
        zzgs.zza().zzb(getClass()).zzi(this, zzeq.zza(zzepVar));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract Object zzb(int i10, Object obj, Object obj2);

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.play_billing.zzds
    public final int zze(zzgv zzgvVar) {
        if (zzz()) {
            int zza = zzgvVar.zza(this);
            if (zza >= 0) {
                return zza;
            }
            throw new IllegalStateException("serialized size must be non-negative, was " + zza);
        }
        int i10 = this.zzd & Integer.MAX_VALUE;
        if (i10 == Integer.MAX_VALUE) {
            int zza2 = zzgvVar.zza(this);
            if (zza2 >= 0) {
                this.zzd = (this.zzd & Integer.MIN_VALUE) | zza2;
                return zza2;
            }
            throw new IllegalStateException("serialized size must be non-negative, was " + zza2);
        }
        return i10;
    }

    @Override // com.google.android.gms.internal.play_billing.zzgm
    public final /* synthetic */ zzgl zzh() {
        return (zzfi) zzb(6, null, null);
    }

    final int zzi() {
        return zzgs.zza().zzb(getClass()).zzb(this);
    }

    @Override // com.google.android.gms.internal.play_billing.zzgl
    public final int zzj() {
        int i10;
        if (zzz()) {
            i10 = zzc(null);
            if (i10 < 0) {
                throw new IllegalStateException("serialized size must be non-negative, was " + i10);
            }
        } else {
            i10 = this.zzd & Integer.MAX_VALUE;
            if (i10 == Integer.MAX_VALUE) {
                i10 = zzc(null);
                if (i10 >= 0) {
                    this.zzd = (this.zzd & Integer.MIN_VALUE) | i10;
                } else {
                    throw new IllegalStateException("serialized size must be non-negative, was " + i10);
                }
            }
        }
        return i10;
    }

    @Override // com.google.android.gms.internal.play_billing.zzgm
    public final boolean zzk() {
        return zzA(this, true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final zzfe zzl() {
        return (zzfe) zzb(5, null, null);
    }

    public final zzfe zzm() {
        zzfe zzfeVar = (zzfe) zzb(5, null, null);
        zzfeVar.zzd(this);
        return zzfeVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final zzfi zzo() {
        return (zzfi) zzb(4, null, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zzu() {
        zzgs.zza().zzb(getClass()).zzf(this);
        zzv();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzv() {
        this.zzd &= Integer.MAX_VALUE;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzx(int i10) {
        this.zzd = (this.zzd & Integer.MIN_VALUE) | Integer.MAX_VALUE;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean zzz() {
        if ((this.zzd & Integer.MIN_VALUE) != 0) {
            return true;
        }
        return false;
    }
}
