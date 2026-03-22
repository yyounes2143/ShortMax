package com.google.android.gms.internal.p003firebaseauthapi;

import com.google.android.gms.internal.p003firebaseauthapi.zzalf;
import com.google.android.gms.internal.p003firebaseauthapi.zzalf.zzb;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzalf  reason: invalid package */
/* loaded from: classes4.dex */
public abstract class zzalf<MessageType extends zzalf<MessageType, BuilderType>, BuilderType extends zzb<MessageType, BuilderType>> extends zzajm<MessageType, BuilderType> {
    private static Map<Class<?>, zzalf<?, ?>> zzc = new ConcurrentHashMap();
    private int zzd = -1;
    protected zzanx zzb = zzanx.zzc();

    /* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
    /* renamed from: com.google.android.gms.internal.firebase-auth-api.zzalf$zza */
    /* loaded from: classes4.dex */
    protected static class zza<T extends zzalf<T, ?>> extends zzajq<T> {
        public zza(T t10) {
        }
    }

    /* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
    /* renamed from: com.google.android.gms.internal.firebase-auth-api.zzalf$zzc */
    /* loaded from: classes4.dex */
    static final class zzc implements zzakz<zzc> {
        @Override // java.lang.Comparable
        public final /* synthetic */ int compareTo(Object obj) {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.p003firebaseauthapi.zzakz
        public final int zza() {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.p003firebaseauthapi.zzakz
        public final zzaog zzb() {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.p003firebaseauthapi.zzakz
        public final zzaoj zzc() {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.p003firebaseauthapi.zzakz
        public final boolean zzd() {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.p003firebaseauthapi.zzakz
        public final boolean zze() {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.p003firebaseauthapi.zzakz
        public final zzaml zza(zzaml zzamlVar, zzamm zzammVar) {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.p003firebaseauthapi.zzakz
        public final zzamr zza(zzamr zzamrVar, zzamr zzamrVar2) {
            throw new NoSuchMethodError();
        }
    }

    /* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
    /* renamed from: com.google.android.gms.internal.firebase-auth-api.zzalf$zzd */
    /* loaded from: classes4.dex */
    public static abstract class zzd<MessageType extends zzd<MessageType, BuilderType>, BuilderType> extends zzalf<MessageType, BuilderType> implements zzamo {
        protected zzakx<zzc> zzc = zzakx.zzb();

        /* JADX INFO: Access modifiers changed from: package-private */
        public final zzakx<zzc> zza() {
            if (this.zzc.zzf()) {
                this.zzc = (zzakx) this.zzc.clone();
            }
            return this.zzc;
        }
    }

    /* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
    /* renamed from: com.google.android.gms.internal.firebase-auth-api.zzalf$zze */
    /* loaded from: classes4.dex */
    public enum zze {
        public static final int zza = 1;
        public static final int zzb = 2;
        public static final int zzc = 3;
        public static final int zzd = 4;
        public static final int zze = 5;
        public static final int zzf = 6;
        public static final int zzg = 7;
        private static final /* synthetic */ int[] zzh = {1, 2, 3, 4, 5, 6, 7};

        public static int[] zza() {
            return (int[]) zzh.clone();
        }
    }

    /* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
    /* renamed from: com.google.android.gms.internal.firebase-auth-api.zzalf$zzf */
    /* loaded from: classes4.dex */
    public static class zzf<ContainingType extends zzamm, Type> extends zzakr<ContainingType, Type> {
    }

    private final int zzb(zzanb<?> zzanbVar) {
        if (zzanbVar == null) {
            return zzamx.zza().zza((zzamx) this).zza(this);
        }
        return zzanbVar.zza(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <E> zzalm<E> zzp() {
        return zzana.zzd();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return zzamx.zza().zza((zzamx) this).zzb(this, (zzalf) obj);
    }

    public int hashCode() {
        if (zzw()) {
            return zza();
        }
        if (this.zza == 0) {
            this.zza = zza();
        }
        return this.zza;
    }

    public String toString() {
        return zzamn.zza(this, super.toString());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract Object zza(int i10, Object obj, Object obj2);

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzajm
    final int zzi() {
        return this.zzd & Integer.MAX_VALUE;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzamm
    public final int zzl() {
        return zza((zzanb) null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final <MessageType2 extends zzalf<MessageType2, BuilderType2>, BuilderType2 extends zzb<MessageType2, BuilderType2>> BuilderType2 zzm() {
        return (BuilderType2) zza(zze.zze, (Object) null, (Object) null);
    }

    public final BuilderType zzn() {
        return (BuilderType) ((zzb) zza(zze.zze, (Object) null, (Object) null)).zza(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final MessageType zzo() {
        return (MessageType) zza(zze.zzd, (Object) null, (Object) null);
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzamm
    public final /* synthetic */ zzaml zzq() {
        return (zzb) zza(zze.zze, (Object) null, (Object) null);
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzamm
    public final /* synthetic */ zzaml zzr() {
        return ((zzb) zza(zze.zze, (Object) null, (Object) null)).zza(this);
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzamo
    public final /* synthetic */ zzamm zzs() {
        return (zzalf) zza(zze.zzf, (Object) null, (Object) null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zzt() {
        zzamx.zza().zza((zzamx) this).zzd(this);
        zzu();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzu() {
        this.zzd &= Integer.MAX_VALUE;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzamo
    public final boolean zzv() {
        return zzb(this, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean zzw() {
        if ((this.zzd & Integer.MIN_VALUE) != 0) {
            return true;
        }
        return false;
    }

    private final int zza() {
        return zzamx.zza().zza((zzamx) this).zzb(this);
    }

    private static <T extends zzalf<T, ?>> T zzb(T t10, zzajv zzajvVar, zzaku zzakuVar) throws zzall {
        zzakh zzc2 = zzajvVar.zzc();
        T t11 = (T) zza(t10, zzc2, zzakuVar);
        zzc2.zzc(0);
        return t11;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzajm
    final int zza(zzanb zzanbVar) {
        if (zzw()) {
            int zzb2 = zzb(zzanbVar);
            if (zzb2 >= 0) {
                return zzb2;
            }
            throw new IllegalStateException("serialized size must be non-negative, was " + zzb2);
        } else if (zzi() != Integer.MAX_VALUE) {
            return zzi();
        } else {
            int zzb3 = zzb(zzanbVar);
            zzb(zzb3);
            return zzb3;
        }
    }

    /* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
    /* renamed from: com.google.android.gms.internal.firebase-auth-api.zzalf$zzb */
    /* loaded from: classes4.dex */
    public static abstract class zzb<MessageType extends zzalf<MessageType, BuilderType>, BuilderType extends zzb<MessageType, BuilderType>> extends zzajo<MessageType, BuilderType> {
        protected MessageType zza;
        private final MessageType zzb;

        /* JADX INFO: Access modifiers changed from: protected */
        public zzb(MessageType messagetype) {
            this.zzb = messagetype;
            if (!messagetype.zzw()) {
                this.zza = (MessageType) messagetype.zzo();
                return;
            }
            throw new IllegalArgumentException("Default instance must be immutable.");
        }

        @Override // com.google.android.gms.internal.p003firebaseauthapi.zzajo
        public /* synthetic */ Object clone() throws CloneNotSupportedException {
            zzb zzbVar = (zzb) this.zzb.zza(zze.zze, null, null);
            zzbVar.zza = (MessageType) zzf();
            return zzbVar;
        }

        public final BuilderType zza(MessageType messagetype) {
            if (this.zzb.equals(messagetype)) {
                return this;
            }
            if (!this.zza.zzw()) {
                zzh();
            }
            zza(this.zza, messagetype);
            return this;
        }

        @Override // com.google.android.gms.internal.p003firebaseauthapi.zzajo
        public final /* synthetic */ zzajo zzb() {
            return (zzb) clone();
        }

        @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaml
        /* renamed from: zzc */
        public final MessageType zze() {
            MessageType messagetype = (MessageType) zzf();
            if (messagetype.zzv()) {
                return messagetype;
            }
            throw new zzanv(messagetype);
        }

        @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaml
        /* renamed from: zzd */
        public MessageType zzf() {
            if (!this.zza.zzw()) {
                return this.zza;
            }
            this.zza.zzt();
            return this.zza;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public final void zzg() {
            if (!this.zza.zzw()) {
                zzh();
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void zzh() {
            MessageType messagetype = (MessageType) this.zzb.zzo();
            zza(messagetype, this.zza);
            this.zza = messagetype;
        }

        @Override // com.google.android.gms.internal.p003firebaseauthapi.zzamo
        public final /* synthetic */ zzamm zzs() {
            return this.zzb;
        }

        @Override // com.google.android.gms.internal.p003firebaseauthapi.zzamo
        public final boolean zzv() {
            return zzalf.zzb(this.zza, false);
        }

        private static <MessageType> void zza(MessageType messagetype, MessageType messagetype2) {
            zzamx.zza().zza((zzamx) messagetype).zza(messagetype, messagetype2);
        }
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzajm
    final void zzb(int i10) {
        if (i10 >= 0) {
            this.zzd = (i10 & Integer.MAX_VALUE) | (this.zzd & Integer.MIN_VALUE);
            return;
        }
        throw new IllegalStateException("serialized size must be non-negative, was " + i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <T extends zzalf<T, ?>> boolean zzb(T t10, boolean z10) {
        byte byteValue = ((Byte) t10.zza(zze.zza, null, null)).byteValue();
        if (byteValue == 1) {
            return true;
        }
        if (byteValue == 0) {
            return false;
        }
        boolean zze2 = zzamx.zza().zza((zzamx) t10).zze(t10);
        if (z10) {
            t10.zza(zze.zzb, zze2 ? t10 : null, null);
        }
        return zze2;
    }

    private static <T extends zzalf<T, ?>> T zza(T t10) throws zzall {
        if (t10 == null || zzb(t10, true)) {
            return t10;
        }
        zzall zza2 = new zzanv(t10).zza();
        zza2.getClass();
        throw zza2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T extends zzalf<?, ?>> T zza(Class<T> cls) {
        zzalf<?, ?> zzalfVar = zzc.get(cls);
        if (zzalfVar == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                zzalfVar = zzc.get(cls);
            } catch (ClassNotFoundException e10) {
                throw new IllegalStateException("Class initialization cannot fail.", e10);
            }
        }
        if (zzalfVar == null) {
            zzalfVar = (T) ((zzalf) zzanz.zza(cls)).zza(zze.zzf, (Object) null, (Object) null);
            if (zzalfVar != null) {
                zzc.put(cls, zzalfVar);
            } else {
                throw new IllegalStateException();
            }
        }
        return (T) zzalfVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <T extends zzalf<T, ?>> T zza(T t10, zzajv zzajvVar, zzaku zzakuVar) throws zzall {
        return (T) zza(zzb(t10, zzajvVar, zzakuVar));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <T extends zzalf<T, ?>> T zza(T t10, InputStream inputStream, zzaku zzakuVar) throws zzall {
        zzakh zzakjVar;
        if (inputStream == null) {
            byte[] bArr = zzalh.zzb;
            zzakjVar = zzakh.zza(bArr, 0, bArr.length, false);
        } else {
            zzakjVar = new zzakj(inputStream);
        }
        return (T) zza(zza(t10, zzakjVar, zzakuVar));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <T extends zzalf<T, ?>> T zza(T t10, byte[] bArr, zzaku zzakuVar) throws zzall {
        return (T) zza(zza(t10, bArr, 0, bArr.length, zzakuVar));
    }

    private static <T extends zzalf<T, ?>> T zza(T t10, zzakh zzakhVar, zzaku zzakuVar) throws zzall {
        T t11 = (T) t10.zzo();
        try {
            zzanb zza2 = zzamx.zza().zza((zzamx) t11);
            zza2.zza(t11, zzakl.zza(zzakhVar), zzakuVar);
            zza2.zzd(t11);
            return t11;
        } catch (zzall e10) {
            if (e10.zzl()) {
                throw new zzall(e10);
            }
            throw e10;
        } catch (zzanv e11) {
            zzall zza3 = e11.zza();
            zza3.getClass();
            throw zza3;
        } catch (IOException e12) {
            if (e12.getCause() instanceof zzall) {
                throw ((zzall) e12.getCause());
            }
            throw new zzall(e12);
        } catch (RuntimeException e13) {
            if (e13.getCause() instanceof zzall) {
                throw ((zzall) e13.getCause());
            }
            throw e13;
        }
    }

    private static <T extends zzalf<T, ?>> T zza(T t10, byte[] bArr, int i10, int i11, zzaku zzakuVar) throws zzall {
        if (i11 == 0) {
            return t10;
        }
        T t11 = (T) t10.zzo();
        try {
            zzanb zza2 = zzamx.zza().zza((zzamx) t11);
            zza2.zza(t11, bArr, 0, i11, new zzaju(zzakuVar));
            zza2.zzd(t11);
            return t11;
        } catch (zzall e10) {
            if (e10.zzl()) {
                throw new zzall(e10);
            }
            throw e10;
        } catch (zzanv e11) {
            zzall zza3 = e11.zza();
            zza3.getClass();
            throw zza3;
        } catch (IOException e12) {
            if (e12.getCause() instanceof zzall) {
                throw ((zzall) e12.getCause());
            }
            throw new zzall(e12);
        } catch (IndexOutOfBoundsException unused) {
            zzall zzj = zzall.zzj();
            zzj.getClass();
            throw zzj;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <E> zzalm<E> zza(zzalm<E> zzalmVar) {
        return zzalmVar.zza(zzalmVar.size() << 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object zza(Method method, Object obj, Object... objArr) {
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
    public static Object zza(zzamm zzammVar, String str, Object[] objArr) {
        return new zzamz(zzammVar, str, objArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <T extends zzalf<?, ?>> void zza(Class<T> cls, T t10) {
        t10.zzu();
        zzc.put(cls, t10);
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzamm
    public final void zza(zzakn zzaknVar) throws IOException {
        zzamx.zza().zza((zzamx) this).zza((zzanb) this, (zzaol) zzakp.zza(zzaknVar));
    }
}
