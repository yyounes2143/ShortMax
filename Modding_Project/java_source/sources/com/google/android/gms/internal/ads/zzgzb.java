package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzgzb;
import com.google.android.gms.internal.ads.zzgzh;
import java.io.IOException;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public class zzgzb<MessageType extends zzgzh<MessageType, BuilderType>, BuilderType extends zzgzb<MessageType, BuilderType>> extends zzgxh<MessageType, BuilderType> {
    protected MessageType zza;
    private final MessageType zzb;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzgzb(MessageType messagetype) {
        this.zzb = messagetype;
        if (!messagetype.zzcd()) {
            this.zza = zza();
            return;
        }
        throw new IllegalArgumentException("Default instance must be immutable.");
    }

    private MessageType zza() {
        return (MessageType) this.zzb.zzbj();
    }

    private static <MessageType> void zzb(MessageType messagetype, MessageType messagetype2) {
        zzhbc.zza().zzb(messagetype.getClass()).zzg(messagetype, messagetype2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzgxh
    protected /* bridge */ /* synthetic */ zzgxh zzaD(zzgxi zzgxiVar) {
        zzbi((zzgzh) zzgxiVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzgxh
    public /* bridge */ /* synthetic */ zzgxh zzaK(zzgyf zzgyfVar, zzgyr zzgyrVar) throws IOException {
        zzbk(zzgyfVar, zzgyrVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzgxh
    public /* bridge */ /* synthetic */ zzgxh zzaN(byte[] bArr, int i10, int i11) throws zzgzw {
        zzbl(bArr, i10, i11);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzgxh
    public /* bridge */ /* synthetic */ zzgxh zzaO(byte[] bArr, int i10, int i11, zzgyr zzgyrVar) throws zzgzw {
        zzbm(bArr, i10, i11, zzgyrVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzgxh
    public /* bridge */ /* synthetic */ zzhar zzaW(zzgyf zzgyfVar, zzgyr zzgyrVar) throws IOException {
        zzbk(zzgyfVar, zzgyrVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzgxh
    public /* bridge */ /* synthetic */ zzhar zzaZ(byte[] bArr, int i10, int i11) throws zzgzw {
        zzbl(bArr, i10, i11);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzgxh
    public /* bridge */ /* synthetic */ zzhar zzba(byte[] bArr, int i10, int i11, zzgyr zzgyrVar) throws zzgzw {
        zzbm(bArr, i10, i11, zzgyrVar);
        return this;
    }

    public final BuilderType zzbg() {
        if (!this.zzb.zzcd()) {
            this.zza = zza();
            return this;
        }
        throw new IllegalArgumentException("Default instance must be immutable.");
    }

    @Override // com.google.android.gms.internal.ads.zzgxh
    /* renamed from: zzbh */
    public BuilderType zzaP() {
        BuilderType buildertype = (BuilderType) zzbt().zzcY();
        buildertype.zza = zzbs();
        return buildertype;
    }

    protected BuilderType zzbi(MessageType messagetype) {
        zzbj(messagetype);
        return this;
    }

    public BuilderType zzbj(MessageType messagetype) {
        if (zzbt().equals(messagetype)) {
            return this;
        }
        zzbu();
        zzb(this.zza, messagetype);
        return this;
    }

    public BuilderType zzbk(zzgyf zzgyfVar, zzgyr zzgyrVar) throws IOException {
        zzbu();
        try {
            zzhbc.zza().zzb(this.zza.getClass()).zzh(this.zza, zzgyg.zzq(zzgyfVar), zzgyrVar);
            return this;
        } catch (RuntimeException e10) {
            if (e10.getCause() instanceof IOException) {
                throw ((IOException) e10.getCause());
            }
            throw e10;
        }
    }

    public BuilderType zzbl(byte[] bArr, int i10, int i11) throws zzgzw {
        int i12 = zzgyr.zzb;
        int i13 = zzhbc.zza;
        zzbm(bArr, i10, i11, zzgyr.zza);
        return this;
    }

    public BuilderType zzbm(byte[] bArr, int i10, int i11, zzgyr zzgyrVar) throws zzgzw {
        zzbu();
        try {
            zzhbc.zza().zzb(this.zza.getClass()).zzi(this.zza, bArr, i10, i10 + i11, new zzgxn(zzgyrVar));
            return this;
        } catch (zzgzw e10) {
            throw e10;
        } catch (IOException e11) {
            throw new RuntimeException("Reading from byte array should not throw IOException.", e11);
        } catch (IndexOutOfBoundsException unused) {
            throw new zzgzw("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
    }

    /* renamed from: zzbn */
    public final MessageType zzbr() {
        MessageType zzbs = zzbs();
        if (zzbs.zzbw()) {
            return zzbs;
        }
        throw zzgxh.zzbb(zzbs);
    }

    @Override // com.google.android.gms.internal.ads.zzhar
    /* renamed from: zzbo */
    public MessageType zzbs() {
        if (!this.zza.zzcd()) {
            return this.zza;
        }
        this.zza.zzbU();
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzhat
    /* renamed from: zzbp */
    public MessageType zzbt() {
        return this.zzb;
    }

    public /* bridge */ /* synthetic */ zzhar zzbq() {
        zzbg();
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zzbu() {
        if (!this.zza.zzcd()) {
            zzbv();
        }
    }

    protected void zzbv() {
        MessageType zza = zza();
        zzb(zza, this.zza);
        this.zza = zza;
    }

    @Override // com.google.android.gms.internal.ads.zzhat
    public final boolean zzbw() {
        boolean zzk;
        zzk = zzgzh.zzk(this.zza, false);
        return zzk;
    }
}
