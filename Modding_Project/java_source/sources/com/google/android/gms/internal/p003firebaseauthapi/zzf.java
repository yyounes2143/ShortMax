package com.google.android.gms.internal.p003firebaseauthapi;

import com.ss.texturerender.TextureRenderKeys;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzf  reason: invalid package */
/* loaded from: classes4.dex */
public abstract class zzf {
    public int zza(CharSequence charSequence, int i10) {
        int length = charSequence.length();
        zzu.zza(i10, length, TextureRenderKeys.KEY_IS_INDEX);
        while (i10 < length) {
            if (zza(charSequence.charAt(i10))) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    public abstract boolean zza(char c10);
}
