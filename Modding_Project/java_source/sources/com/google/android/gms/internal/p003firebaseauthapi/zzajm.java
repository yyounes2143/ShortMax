package com.google.android.gms.internal.p003firebaseauthapi;

import com.google.android.gms.internal.p003firebaseauthapi.zzajm;
import com.google.android.gms.internal.p003firebaseauthapi.zzajo;
import java.io.IOException;
import java.io.OutputStream;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzajm  reason: invalid package */
/* loaded from: classes4.dex */
public abstract class zzajm<MessageType extends zzajm<MessageType, BuilderType>, BuilderType extends zzajo<MessageType, BuilderType>> implements zzamm {
    protected int zza = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public int zza(zzanb zzanbVar) {
        int zzi = zzi();
        if (zzi == -1) {
            int zza = zzanbVar.zza(this);
            zzb(zza);
            return zza;
        }
        return zzi;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zzb(int i10) {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int zzi() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzamm
    public final zzajv zzj() {
        try {
            zzake zzc = zzajv.zzc(zzl());
            zza(zzc.zzb());
            return zzc.zza();
        } catch (IOException e10) {
            String name = getClass().getName();
            throw new RuntimeException("Serializing " + name + " to a ByteString threw an IOException (should never happen).", e10);
        }
    }

    public final byte[] zzk() {
        try {
            byte[] bArr = new byte[zzl()];
            zzakn zzb = zzakn.zzb(bArr);
            zza(zzb);
            zzb.zzb();
            return bArr;
        } catch (IOException e10) {
            String name = getClass().getName();
            throw new RuntimeException("Serializing " + name + " to a byte array threw an IOException (should never happen).", e10);
        }
    }

    public final void zza(OutputStream outputStream) throws IOException {
        zzakn zza = zzakn.zza(outputStream, zzakn.zze(zzl()));
        zza(zza);
        zza.zzc();
    }
}
