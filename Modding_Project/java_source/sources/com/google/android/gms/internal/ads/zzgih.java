package com.google.android.gms.internal.ads;

import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzgih implements zzget {
    public static final /* synthetic */ int zza = 0;
    private static final byte[] zzb = new byte[0];
    private static final Set zzc;
    private final String zzd;
    private final zzget zze;

    static {
        HashSet hashSet = new HashSet();
        hashSet.add("type.googleapis.com/google.crypto.tink.AesGcmKey");
        hashSet.add("type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key");
        hashSet.add("type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key");
        hashSet.add("type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey");
        hashSet.add("type.googleapis.com/google.crypto.tink.AesGcmSivKey");
        hashSet.add("type.googleapis.com/google.crypto.tink.AesEaxKey");
        zzc = Collections.unmodifiableSet(hashSet);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Deprecated
    public zzgih(zzguf zzgufVar, zzget zzgetVar) throws GeneralSecurityException {
        if (zzc.contains(zzgufVar.zzi())) {
            this.zzd = zzgufVar.zzi();
            zzgud zzb2 = zzguf.zzb(zzgufVar);
            zzb2.zza(zzgvf.RAW);
            zzgfo.zza(((zzguf) zzb2.zzbr()).zzaV());
            this.zze = zzgetVar;
            return;
        }
        String zzi = zzgufVar.zzi();
        throw new IllegalArgumentException("Unsupported DEK key type: " + zzi + ". Only Tink AEAD key types are supported.");
    }

    @Override // com.google.android.gms.internal.ads.zzget
    public final byte[] zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        try {
            ByteBuffer wrap = ByteBuffer.wrap(bArr);
            int i10 = wrap.getInt();
            if (i10 > 0 && i10 <= 4096 && i10 <= bArr.length - 4) {
                byte[] bArr3 = new byte[i10];
                wrap.get(bArr3, 0, i10);
                byte[] bArr4 = new byte[wrap.remaining()];
                wrap.get(bArr4, 0, wrap.remaining());
                byte[] zza2 = this.zze.zza(bArr3, zzb);
                String str = this.zzd;
                zzgxz zzgxzVar = zzgxz.zzb;
                return ((zzget) zzgnv.zza().zzb(zzgny.zzc().zza(zzgox.zza(str, zzgxz.zzv(zza2, 0, zza2.length), zzgtz.SYMMETRIC, zzgvf.RAW, null), zzgey.zza()), zzget.class)).zza(bArr4, bArr2);
            }
            throw new GeneralSecurityException("length of encrypted DEK too large");
        } catch (IndexOutOfBoundsException e10) {
            e = e10;
            throw new GeneralSecurityException("invalid ciphertext", e);
        } catch (NegativeArraySizeException e11) {
            e = e11;
            throw new GeneralSecurityException("invalid ciphertext", e);
        } catch (BufferUnderflowException e12) {
            e = e12;
            throw new GeneralSecurityException("invalid ciphertext", e);
        }
    }
}
