package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzbsj implements DialogInterface.OnClickListener {
    final /* synthetic */ zzbsl zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbsj(zzbsl zzbslVar) {
        Objects.requireNonNull(zzbslVar);
        this.zza = zzbslVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i10) {
        Context context;
        zzbsl zzbslVar = this.zza;
        Intent zzb = zzbslVar.zzb();
        com.google.android.gms.ads.internal.zzv.zzr();
        context = zzbslVar.zzb;
        com.google.android.gms.ads.internal.util.zzs.zzU(context, zzb);
    }
}
