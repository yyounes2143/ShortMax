package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzgxh;
import com.google.android.gms.internal.ads.zzgxi;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.RandomAccess;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public abstract class zzgxh<MessageType extends zzgxi<MessageType, BuilderType>, BuilderType extends zzgxh<MessageType, BuilderType>> implements zzhar {
    private String zza(String str) {
        String name = getClass().getName();
        return "Reading " + name + " from a " + str + " threw an IOException (should never happen).";
    }

    private static <T> void zzb(Iterable<T> iterable, List<? super T> list) {
        if (iterable instanceof Collection) {
            int size = ((Collection) iterable).size();
            if (list instanceof ArrayList) {
                ((ArrayList) list).ensureCapacity(list.size() + size);
            } else if (list instanceof zzhbd) {
                ((zzhbd) list).zze(list.size() + size);
            }
        }
        int size2 = list.size();
        if ((iterable instanceof List) && (iterable instanceof RandomAccess)) {
            List list2 = (List) iterable;
            int size3 = list2.size();
            for (int i10 = 0; i10 < size3; i10++) {
                Object obj = (Object) list2.get(i10);
                if (obj == 0) {
                    zzc(list, size2);
                }
                list.add(obj);
            }
            return;
        }
        for (Object obj2 : iterable) {
            if (obj2 == null) {
                zzc(list, size2);
            }
            list.add(obj2);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static zzhbw zzbb(zzhas zzhasVar) {
        return new zzhbw(zzhasVar);
    }

    @Deprecated
    protected static <T> void zzbc(Iterable<T> iterable, Collection<? super T> collection) {
        zzbd(iterable, (List) collection);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <T> void zzbd(Iterable<T> iterable, List<? super T> list) {
        byte[] bArr = zzgzu.zzb;
        iterable.getClass();
        if (iterable instanceof zzhae) {
            List zza = ((zzhae) iterable).zza();
            zzhae zzhaeVar = (zzhae) list;
            int size = list.size();
            for (Object obj : zza) {
                if (obj == null) {
                    String str = "Element at index " + (zzhaeVar.size() - size) + " is null.";
                    int size2 = zzhaeVar.size();
                    while (true) {
                        size2--;
                        if (size2 < size) {
                            break;
                        }
                        zzhaeVar.remove(size2);
                    }
                    throw new NullPointerException(str);
                } else if (obj instanceof zzgxz) {
                    zzgxz zzgxzVar = (zzgxz) obj;
                    zzhaeVar.zzb();
                } else if (obj instanceof byte[]) {
                    byte[] bArr2 = (byte[]) obj;
                    zzgxz.zzv(bArr2, 0, bArr2.length);
                    zzhaeVar.zzb();
                } else {
                    zzhaeVar.add((String) obj);
                }
            }
        } else if (iterable instanceof zzhbb) {
            list.addAll((Collection) iterable);
        } else {
            zzb(iterable, list);
        }
    }

    private static void zzc(List<?> list, int i10) {
        String str = "Element at index " + (list.size() - i10) + " is null.";
        int size = list.size();
        while (true) {
            size--;
            if (size >= i10) {
                list.remove(size);
            } else {
                throw new NullPointerException(str);
            }
        }
    }

    @Override // 
    /* renamed from: zzaC */
    public abstract BuilderType zzaP();

    protected abstract BuilderType zzaD(MessageType messagetype);

    public BuilderType zzaE(zzgxz zzgxzVar) throws zzgzw {
        try {
            zzgyf zzl = zzgxzVar.zzl();
            zzaR(zzl);
            zzl.zzy(0);
            return this;
        } catch (zzgzw e10) {
            throw e10;
        } catch (IOException e11) {
            throw new RuntimeException(zza("ByteString"), e11);
        }
    }

    /* renamed from: zzaF */
    public BuilderType zzaR(zzgyf zzgyfVar) throws IOException {
        int i10 = zzgyr.zzb;
        int i11 = zzhbc.zza;
        return zzaW(zzgyfVar, zzgyr.zza);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: zzaG */
    public BuilderType zzaS(zzhas zzhasVar) {
        if (zzbt().getClass().isInstance(zzhasVar)) {
            return (BuilderType) zzaD((zzgxi) zzhasVar);
        }
        throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
    }

    public BuilderType zzaH(InputStream inputStream) throws IOException {
        zzgyf zzG = zzgyf.zzG(inputStream, 4096);
        zzaR(zzG);
        zzG.zzy(0);
        return this;
    }

    /* renamed from: zzaI */
    public BuilderType zzaU(byte[] bArr) throws zzgzw {
        return zzaZ(bArr, 0, bArr.length);
    }

    public BuilderType zzaJ(zzgxz zzgxzVar, zzgyr zzgyrVar) throws zzgzw {
        try {
            zzgyf zzl = zzgxzVar.zzl();
            zzaW(zzl, zzgyrVar);
            zzl.zzy(0);
            return this;
        } catch (zzgzw e10) {
            throw e10;
        } catch (IOException e11) {
            throw new RuntimeException(zza("ByteString"), e11);
        }
    }

    @Override // 
    /* renamed from: zzaK */
    public abstract BuilderType zzaW(zzgyf zzgyfVar, zzgyr zzgyrVar) throws IOException;

    public BuilderType zzaL(InputStream inputStream, zzgyr zzgyrVar) throws IOException {
        zzgyf zzG = zzgyf.zzG(inputStream, 4096);
        zzaW(zzG, zzgyrVar);
        zzG.zzy(0);
        return this;
    }

    /* renamed from: zzaM */
    public BuilderType zzaY(byte[] bArr, zzgyr zzgyrVar) throws zzgzw {
        return zzba(bArr, 0, bArr.length, zzgyrVar);
    }

    @Override // 
    /* renamed from: zzaN */
    public BuilderType zzaZ(byte[] bArr, int i10, int i11) throws zzgzw {
        try {
            zzgyf zzH = zzgyf.zzH(bArr, i10, i11, false);
            zzaR(zzH);
            zzH.zzy(0);
            return this;
        } catch (zzgzw e10) {
            throw e10;
        } catch (IOException e11) {
            throw new RuntimeException(zza("byte array"), e11);
        }
    }

    @Override // 
    /* renamed from: zzaO */
    public BuilderType zzba(byte[] bArr, int i10, int i11, zzgyr zzgyrVar) throws zzgzw {
        try {
            zzgyf zzH = zzgyf.zzH(bArr, i10, i11, false);
            zzaW(zzH, zzgyrVar);
            zzH.zzy(0);
            return this;
        } catch (zzgzw e10) {
            throw e10;
        } catch (IOException e11) {
            throw new RuntimeException(zza("byte array"), e11);
        }
    }

    public /* bridge */ /* synthetic */ zzhar zzaQ(zzgxz zzgxzVar) throws zzgzw {
        zzaE(zzgxzVar);
        return this;
    }

    public /* bridge */ /* synthetic */ zzhar zzaT(InputStream inputStream) throws IOException {
        zzaH(inputStream);
        return this;
    }

    public /* bridge */ /* synthetic */ zzhar zzaV(zzgxz zzgxzVar, zzgyr zzgyrVar) throws zzgzw {
        zzaJ(zzgxzVar, zzgyrVar);
        return this;
    }

    public /* bridge */ /* synthetic */ zzhar zzaX(InputStream inputStream, zzgyr zzgyrVar) throws IOException {
        zzaL(inputStream, zzgyrVar);
        return this;
    }

    public boolean zzbe(InputStream inputStream) throws IOException {
        int i10 = zzgyr.zzb;
        int i11 = zzhbc.zza;
        return zzbf(inputStream, zzgyr.zza);
    }

    public boolean zzbf(InputStream inputStream, zzgyr zzgyrVar) throws IOException {
        int read = inputStream.read();
        if (read == -1) {
            return false;
        }
        zzaL(new zzgxg(inputStream, zzgyf.zzE(read, inputStream)), zzgyrVar);
        return true;
    }
}
