package com.google.android.gms.internal.p003firebaseauthapi;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Base64Utils;
import com.huawei.hms.support.api.entity.common.CommonConstant;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzaba  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzaba implements zzafv<zzaik> {
    private final /* synthetic */ zzail zza;
    private final /* synthetic */ zzahk zzb;
    private final /* synthetic */ zzael zzc;
    private final /* synthetic */ zzahv zzd;
    private final /* synthetic */ zzafs zze;
    private final /* synthetic */ zzaar zzf;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaba(zzaar zzaarVar, zzail zzailVar, zzahk zzahkVar, zzael zzaelVar, zzahv zzahvVar, zzafs zzafsVar) {
        this.zza = zzailVar;
        this.zzb = zzahkVar;
        this.zzc = zzaelVar;
        this.zzd = zzahvVar;
        this.zze = zzafsVar;
        Objects.requireNonNull(zzaarVar);
        this.zzf = zzaarVar;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzafs
    public final void zza(@Nullable String str) {
        this.zze.zza(str);
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzafv
    public final /* synthetic */ void zza(zzaik zzaikVar) {
        zzaik zzaikVar2 = zzaikVar;
        if (this.zza.zzi(CommonConstant.RETKEY.EMAIL)) {
            this.zzb.zzb(null);
        } else if (this.zza.zzc() != null) {
            this.zzb.zzb(this.zza.zzc());
        }
        if (this.zza.zzi(CommonConstant.RETKEY.DISPLAYNAME)) {
            this.zzb.zza((String) null);
        } else if (this.zza.zzb() != null) {
            this.zzb.zza(this.zza.zzb());
        }
        if (this.zza.zzi(CommonConstant.RETKEY.PHOTOURL)) {
            this.zzb.zzc(null);
        } else if (this.zza.zze() != null) {
            this.zzb.zzc(this.zza.zze());
        }
        if (!TextUtils.isEmpty(this.zza.zzd())) {
            Preconditions.checkNotEmpty(Base64Utils.encode("redacted".getBytes()));
        }
        if (this.zza.zzi("delete_passkey")) {
            this.zzb.zza(zzah.zzg());
        }
        List<zzaib> zze = zzaikVar2.zze();
        if (zze == null) {
            zze = new ArrayList<>();
        }
        this.zzb.zza(zze);
        zzael zzaelVar = this.zzc;
        zzahv zzahvVar = this.zzd;
        Preconditions.checkNotNull(zzahvVar);
        Preconditions.checkNotNull(zzaikVar2);
        String zzc = zzaikVar2.zzc();
        String zzd = zzaikVar2.zzd();
        if (!TextUtils.isEmpty(zzc) && !TextUtils.isEmpty(zzd)) {
            zzahvVar = new zzahv(zzd, zzc, Long.valueOf(zzaikVar2.zza()), zzahvVar.zze());
        }
        zzaelVar.zza(zzahvVar, this.zzb);
    }
}
