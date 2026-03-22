package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzgzb;
import com.google.android.gms.internal.ads.zzgzh;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public abstract class zzgzh<MessageType extends zzgzh<MessageType, BuilderType>, BuilderType extends zzgzb<MessageType, BuilderType>> extends zzgxi<MessageType, BuilderType> {
    private static final int zza = Integer.MIN_VALUE;
    private static final int zzb = Integer.MAX_VALUE;
    private static Map<Class<?>, zzgzh<?, ?>> zzc = new ConcurrentHashMap();
    static final int zzr = Integer.MAX_VALUE;
    static final int zzs = 0;
    private int zzd = -1;
    protected zzhby zzt = zzhby.zzc();

    protected static zzgzj zzbA() {
        return zzgxp.zzd();
    }

    protected static zzgzj zzbB(zzgzj zzgzjVar) {
        int size = zzgzjVar.size();
        return zzgzjVar.zze(size + size);
    }

    protected static zzgzk zzbC() {
        return zzgyo.zze();
    }

    protected static zzgzk zzbD(zzgzk zzgzkVar) {
        int size = zzgzkVar.size();
        return zzgzkVar.zzg(size + size);
    }

    protected static zzgzo zzbE() {
        return zzgyy.zze();
    }

    protected static zzgzo zzbF(zzgzo zzgzoVar) {
        int size = zzgzoVar.size();
        return zzgzoVar.zzg(size + size);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static zzgzp zzbG() {
        return zzgzi.zzg();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static zzgzp zzbH(zzgzp zzgzpVar) {
        int size = zzgzpVar.size();
        return zzgzpVar.zzh(size + size);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static zzgzs zzbI() {
        return zzhah.zzh();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static zzgzs zzbJ(zzgzs zzgzsVar) {
        int size = zzgzsVar.size();
        return zzgzsVar.zze(size + size);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <E> zzgzt<E> zzbK() {
        return zzhbd.zzd();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <E> zzgzt<E> zzbL(zzgzt<E> zzgztVar) {
        int size = zzgztVar.size();
        return zzgztVar.zzf(size + size);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object zzbP(Method method, Object obj, Object... objArr) {
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
    public static Object zzbQ(zzhas zzhasVar, String str, Object[] objArr) {
        return new zzhbe(zzhasVar, str, objArr);
    }

    static Method zzbR(Class cls, String str, Class... clsArr) {
        try {
            return cls.getMethod(str, clsArr);
        } catch (NoSuchMethodException e10) {
            String name = cls.getName();
            throw new RuntimeException("Generated message class \"" + name + "\" missing method \"" + str + "\".", e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <T extends zzgzh> void zzbZ(Class<T> cls, T t10) {
        t10.zzbV();
        zzc.put(cls, t10);
    }

    public static <ContainingType extends zzhas, Type> zzgzf<ContainingType, Type> zzbe(ContainingType containingtype, zzhas zzhasVar, zzgzm zzgzmVar, int i10, zzhck zzhckVar, boolean z10, Class cls) {
        return new zzgzf<>(containingtype, zzhbd.zzd(), zzhasVar, new zzgze(zzgzmVar, i10, zzhckVar, true, z10), cls);
    }

    public static <ContainingType extends zzhas, Type> zzgzf<ContainingType, Type> zzbf(ContainingType containingtype, Type type, zzhas zzhasVar, zzgzm zzgzmVar, int i10, zzhck zzhckVar, Class cls) {
        return new zzgzf<>(containingtype, type, zzhasVar, new zzgze(zzgzmVar, i10, zzhckVar, false, false), cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T extends zzgzh> T zzbh(Class<T> cls) {
        zzgzh<?, ?> zzgzhVar = zzc.get(cls);
        if (zzgzhVar == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                zzgzhVar = zzc.get(cls);
            } catch (ClassNotFoundException e10) {
                throw new IllegalStateException("Class initialization cannot fail.", e10);
            }
        }
        if (zzgzhVar == null) {
            zzgzhVar = ((zzgzh) zzhce.zzg(cls)).zzbt();
            if (zzgzhVar != null) {
                zzc.put(cls, zzgzhVar);
            } else {
                throw new IllegalStateException();
            }
        }
        return zzgzhVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <T extends zzgzh<T, ?>> T zzbk(T t10, InputStream inputStream) throws zzgzw {
        int i10 = zzgyr.zzb;
        int i11 = zzhbc.zza;
        T t11 = (T) zzg(t10, inputStream, zzgyr.zza);
        zzf(t11);
        return t11;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <T extends zzgzh<T, ?>> T zzbl(T t10, InputStream inputStream, zzgyr zzgyrVar) throws zzgzw {
        T t11 = (T) zzg(t10, inputStream, zzgyrVar);
        zzf(t11);
        return t11;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <T extends zzgzh<T, ?>> T zzbm(T t10, zzgxz zzgxzVar) throws zzgzw {
        int i10 = zzgyr.zzb;
        int i11 = zzhbc.zza;
        T t11 = (T) zzbr(t10, zzgxzVar, zzgyr.zza);
        zzf(t11);
        return t11;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <T extends zzgzh<T, ?>> T zzbn(T t10, zzgyf zzgyfVar) throws zzgzw {
        int i10 = zzgyr.zzb;
        int i11 = zzhbc.zza;
        return (T) zzbs(t10, zzgyfVar, zzgyr.zza);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <T extends zzgzh<T, ?>> T zzbo(T t10, InputStream inputStream) throws zzgzw {
        zzgyf zzG = zzgyf.zzG(inputStream, 4096);
        int i10 = zzgyr.zzb;
        int i11 = zzhbc.zza;
        T t11 = (T) zzbz(t10, zzG, zzgyr.zza);
        zzf(t11);
        return t11;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <T extends zzgzh<T, ?>> T zzbp(T t10, ByteBuffer byteBuffer) throws zzgzw {
        int i10 = zzgyr.zzb;
        int i11 = zzhbc.zza;
        return (T) zzbv(t10, byteBuffer, zzgyr.zza);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <T extends zzgzh<T, ?>> T zzbq(T t10, byte[] bArr) throws zzgzw {
        int length = bArr.length;
        int i10 = zzgyr.zzb;
        int i11 = zzhbc.zza;
        T t11 = (T) zzi(t10, bArr, 0, length, zzgyr.zza);
        zzf(t11);
        return t11;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <T extends zzgzh<T, ?>> T zzbr(T t10, zzgxz zzgxzVar, zzgyr zzgyrVar) throws zzgzw {
        T t11 = (T) zzh(t10, zzgxzVar, zzgyrVar);
        zzf(t11);
        return t11;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <T extends zzgzh<T, ?>> T zzbs(T t10, zzgyf zzgyfVar, zzgyr zzgyrVar) throws zzgzw {
        T t11 = (T) zzbz(t10, zzgyfVar, zzgyrVar);
        zzf(t11);
        return t11;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <T extends zzgzh<T, ?>> T zzbu(T t10, InputStream inputStream, zzgyr zzgyrVar) throws zzgzw {
        T t11 = (T) zzbz(t10, zzgyf.zzG(inputStream, 4096), zzgyrVar);
        zzf(t11);
        return t11;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <T extends zzgzh<T, ?>> T zzbv(T t10, ByteBuffer byteBuffer, zzgyr zzgyrVar) throws zzgzw {
        zzgyf zzH;
        int i10 = zzgyf.zze;
        if (byteBuffer.hasArray()) {
            zzH = zzgyf.zzH(byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.remaining(), false);
        } else {
            if (byteBuffer.isDirect()) {
                int i11 = zzgyd.zza;
                if (zzhce.zzB()) {
                    zzH = new zzgyd(byteBuffer, false, null);
                }
            }
            int remaining = byteBuffer.remaining();
            byte[] bArr = new byte[remaining];
            byteBuffer.duplicate().get(bArr);
            zzH = zzgyf.zzH(bArr, 0, remaining, true);
        }
        T t11 = (T) zzbs(t10, zzH, zzgyrVar);
        zzf(t11);
        return t11;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <T extends zzgzh<T, ?>> T zzbx(T t10, byte[] bArr, zzgyr zzgyrVar) throws zzgzw {
        T t11 = (T) zzi(t10, bArr, 0, bArr.length, zzgyrVar);
        zzf(t11);
        return t11;
    }

    protected static <T extends zzgzh<T, ?>> T zzby(T t10, zzgyf zzgyfVar) throws zzgzw {
        int i10 = zzgyr.zzb;
        int i11 = zzhbc.zza;
        return (T) zzbz(t10, zzgyfVar, zzgyr.zza);
    }

    static <T extends zzgzh<T, ?>> T zzbz(T t10, zzgyf zzgyfVar, zzgyr zzgyrVar) throws zzgzw {
        T t11 = (T) t10.zzbj();
        try {
            zzhbl zzb2 = zzhbc.zza().zzb(t11.getClass());
            zzb2.zzh(t11, zzgyg.zzq(zzgyfVar), zzgyrVar);
            zzb2.zzf(t11);
            return t11;
        } catch (zzgzw e10) {
            if (e10.zzb()) {
                throw new zzgzw(e10);
            }
            throw e10;
        } catch (zzhbw e11) {
            throw e11.zza();
        } catch (IOException e12) {
            if (e12.getCause() instanceof zzgzw) {
                throw ((zzgzw) e12.getCause());
            }
            throw new zzgzw(e12);
        } catch (RuntimeException e13) {
            if (e13.getCause() instanceof zzgzw) {
                throw ((zzgzw) e13.getCause());
            }
            throw e13;
        }
    }

    private int zzc(zzhbl<?> zzhblVar) {
        if (zzhblVar == null) {
            return zzhbc.zza().zzb(getClass()).zza(this);
        }
        return zzhblVar.zza(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <MessageType extends zzgzd<MessageType, BuilderType>, BuilderType, T> zzgzf<MessageType, T> zzd(zzgyp<MessageType, T> zzgypVar) {
        return (zzgzf) zzgypVar;
    }

    private static <T extends zzgzh<T, ?>> T zzf(T t10) throws zzgzw {
        if (t10 != null && !t10.zzbw()) {
            throw t10.zzaP().zza();
        }
        return t10;
    }

    private static <T extends zzgzh<T, ?>> T zzg(T t10, InputStream inputStream, zzgyr zzgyrVar) throws zzgzw {
        try {
            int read = inputStream.read();
            if (read == -1) {
                return null;
            }
            zzgyf zzG = zzgyf.zzG(new zzgxg(inputStream, zzgyf.zzE(read, inputStream)), 4096);
            T t11 = (T) zzbz(t10, zzG, zzgyrVar);
            zzG.zzy(0);
            return t11;
        } catch (zzgzw e10) {
            if (e10.zzb()) {
                throw new zzgzw(e10);
            }
            throw e10;
        } catch (IOException e11) {
            throw new zzgzw(e11);
        }
    }

    private static <T extends zzgzh<T, ?>> T zzh(T t10, zzgxz zzgxzVar, zzgyr zzgyrVar) throws zzgzw {
        zzgyf zzl = zzgxzVar.zzl();
        T t11 = (T) zzbz(t10, zzl, zzgyrVar);
        zzl.zzy(0);
        return t11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <T extends zzgzh<T, ?>> T zzi(T t10, byte[] bArr, int i10, int i11, zzgyr zzgyrVar) throws zzgzw {
        if (i11 == 0) {
            return t10;
        }
        T t11 = (T) t10.zzbj();
        try {
            zzhbl zzb2 = zzhbc.zza().zzb(t11.getClass());
            zzb2.zzi(t11, bArr, i10, i10 + i11, new zzgxn(zzgyrVar));
            zzb2.zzf(t11);
            return t11;
        } catch (zzgzw e10) {
            if (e10.zzb()) {
                throw new zzgzw(e10);
            }
            throw e10;
        } catch (zzhbw e11) {
            throw e11.zza();
        } catch (IOException e12) {
            if (e12.getCause() instanceof zzgzw) {
                throw ((zzgzw) e12.getCause());
            }
            throw new zzgzw(e12);
        } catch (IndexOutOfBoundsException unused) {
            throw new zzgzw("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
    }

    private void zzj() {
        if (this.zzt == zzhby.zzc()) {
            this.zzt = zzhby.zzf();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <T extends zzgzh<T, ?>> boolean zzk(T t10, boolean z10) {
        Object obj;
        byte byteValue = ((Byte) t10.zzdd(zzgzg.GET_MEMOIZED_IS_INITIALIZED, null, null)).byteValue();
        if (byteValue == 1) {
            return true;
        }
        if (byteValue == 0) {
            return false;
        }
        boolean zzl = zzhbc.zza().zzb(t10.getClass()).zzl(t10);
        if (z10) {
            if (true != zzl) {
                obj = null;
            } else {
                obj = t10;
            }
            t10.zzdd(zzgzg.SET_MEMOIZED_IS_INITIALIZED, obj, null);
        }
        return zzl;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return zzhbc.zza().zzb(getClass()).zzk(this, (zzgzh) obj);
    }

    public int hashCode() {
        if (zzcd()) {
            return zzaW();
        }
        if (zzcc()) {
            zzca(zzaW());
        }
        return zzaX();
    }

    public String toString() {
        return zzhau.zza(this, super.toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzgxi
    public int zzaL() {
        return this.zzd & Integer.MAX_VALUE;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzgxi
    public int zzaM(zzhbl zzhblVar) {
        if (zzcd()) {
            int zzc2 = zzc(zzhblVar);
            if (zzc2 >= 0) {
                return zzc2;
            }
            throw new IllegalStateException("serialized size must be non-negative, was " + zzc2);
        } else if (zzaL() != Integer.MAX_VALUE) {
            return zzaL();
        } else {
            int zzc3 = zzc(zzhblVar);
            zzaS(zzc3);
            return zzc3;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgxi
    public zzhax zzaO() {
        throw new UnsupportedOperationException("Lite does not support the mutable API.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzgxi
    public void zzaS(int i10) {
        if (i10 >= 0) {
            this.zzd = i10 | (this.zzd & Integer.MIN_VALUE);
            return;
        }
        throw new IllegalStateException("serialized size must be non-negative, was " + i10);
    }

    int zzaW() {
        return zzhbc.zza().zzb(getClass()).zzb(this);
    }

    int zzaX() {
        return this.zzq;
    }

    @Override // com.google.android.gms.internal.ads.zzhas
    public int zzaY() {
        return zzaM(null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final <MessageType2 extends zzgzh<MessageType2, BuilderType2>, BuilderType2 extends zzgzb<MessageType2, BuilderType2>> BuilderType2 zzaZ() {
        return (BuilderType2) zzdd(zzgzg.NEW_BUILDER, null, null);
    }

    public final zzhba<MessageType> zzbN() {
        return (zzhba) zzdd(zzgzg.GET_PARSER, null, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Object zzbO() throws Exception {
        return zzdd(zzgzg.BUILD_MESSAGE_INFO, null, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zzbS() {
        this.zzq = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zzbT() {
        zzaS(Integer.MAX_VALUE);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void zzbU() {
        zzhbc.zza().zzb(getClass()).zzf(this);
        zzbV();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zzbV() {
        this.zzd &= Integer.MAX_VALUE;
    }

    protected void zzbW(int i10, zzgxz zzgxzVar) {
        zzj();
        zzhby zzhbyVar = this.zzt;
        zzhbyVar.zzg();
        if (i10 != 0) {
            zzhbyVar.zzj((i10 << 3) | 2, zzgxzVar);
            return;
        }
        throw new IllegalArgumentException("Zero is not a valid field number.");
    }

    protected final void zzbX(zzhby zzhbyVar) {
        this.zzt = zzhby.zze(this.zzt, zzhbyVar);
    }

    protected void zzbY(int i10, int i11) {
        zzj();
        zzhby zzhbyVar = this.zzt;
        zzhbyVar.zzg();
        if (i10 != 0) {
            zzhbyVar.zzj(i10 << 3, Long.valueOf(i11));
            return;
        }
        throw new IllegalArgumentException("Zero is not a valid field number.");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final <MessageType2 extends zzgzh<MessageType2, BuilderType2>, BuilderType2 extends zzgzb<MessageType2, BuilderType2>> BuilderType2 zzba(MessageType2 messagetype2) {
        BuilderType2 buildertype2 = (BuilderType2) zzaZ();
        buildertype2.zzbj(messagetype2);
        return buildertype2;
    }

    @Override // com.google.android.gms.internal.ads.zzhas
    /* renamed from: zzbb */
    public final BuilderType zzcY() {
        return (BuilderType) zzdd(zzgzg.NEW_BUILDER, null, null);
    }

    /* renamed from: zzbc */
    public final BuilderType zzbM() {
        BuilderType buildertype = (BuilderType) zzdd(zzgzg.NEW_BUILDER, null, null);
        buildertype.zzbj(this);
        return buildertype;
    }

    @Override // com.google.android.gms.internal.ads.zzhat
    /* renamed from: zzbi */
    public final MessageType zzbt() {
        return (MessageType) zzdd(zzgzg.GET_DEFAULT_INSTANCE, null, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MessageType zzbj() {
        return (MessageType) zzdd(zzgzg.NEW_MUTABLE_INSTANCE, null, null);
    }

    @Override // com.google.android.gms.internal.ads.zzhat
    public final boolean zzbw() {
        return zzk(this, true);
    }

    @Override // com.google.android.gms.internal.ads.zzhas
    public void zzcZ(zzgym zzgymVar) throws IOException {
        zzhbc.zza().zzb(getClass()).zzj(this, zzgyn.zza(zzgymVar));
    }

    void zzca(int i10) {
        this.zzq = i10;
    }

    boolean zzcc() {
        if (zzaX() == 0) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean zzcd() {
        if ((this.zzd & Integer.MIN_VALUE) != 0) {
            return true;
        }
        return false;
    }

    protected boolean zzce(int i10, zzgyf zzgyfVar) throws IOException {
        if ((i10 & 7) == 4) {
            return false;
        }
        zzj();
        return this.zzt.zzm(i10, zzgyfVar);
    }

    protected abstract Object zzdd(zzgzg zzgzgVar, Object obj, Object obj2);
}
