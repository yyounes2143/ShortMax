package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
final class zzfwa extends zzfwc {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfwa(zzfwe zzfweVar, CharSequence charSequence, int i10) {
        super(zzfweVar, charSequence);
    }

    @Override // com.google.android.gms.internal.ads.zzfwc
    public final int zzd(int i10) {
        int i11 = i10 + 4000;
        if (i11 < ((zzfwc) this).zzb.length()) {
            return i11;
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzfwc
    public final int zzc(int i10) {
        return i10;
    }
}
