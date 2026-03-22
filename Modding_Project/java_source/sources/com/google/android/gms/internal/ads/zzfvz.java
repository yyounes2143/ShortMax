package com.google.android.gms.internal.ads;

import java.util.regex.Matcher;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
final class zzfvz extends zzfwc {
    final /* synthetic */ zzfvb zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfvz(zzfwe zzfweVar, CharSequence charSequence, zzfvb zzfvbVar) {
        super(zzfweVar, charSequence);
        this.zza = zzfvbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfwc
    public final int zzc(int i10) {
        return ((zzfvf) this.zza).zza.end();
    }

    @Override // com.google.android.gms.internal.ads.zzfwc
    public final int zzd(int i10) {
        Matcher matcher = ((zzfvf) this.zza).zza;
        if (matcher.find(i10)) {
            return matcher.start();
        }
        return -1;
    }
}
