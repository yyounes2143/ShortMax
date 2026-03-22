package com.google.android.gms.internal.ads;

import com.ss.texturerender.TextureRenderKeys;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
final class zzfvy extends zzfwc {
    final /* synthetic */ zzfva zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfvy(zzfwe zzfweVar, CharSequence charSequence, zzfva zzfvaVar) {
        super(zzfweVar, charSequence);
        this.zza = zzfvaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfwc
    final int zzc(int i10) {
        return i10 + 1;
    }

    @Override // com.google.android.gms.internal.ads.zzfwc
    final int zzd(int i10) {
        CharSequence charSequence = ((zzfwc) this).zzb;
        int length = charSequence.length();
        zzfvp.zzb(i10, length, TextureRenderKeys.KEY_IS_INDEX);
        while (i10 < length) {
            if (!this.zza.zzb(charSequence.charAt(i10))) {
                i10++;
            } else {
                return i10;
            }
        }
        return -1;
    }
}
