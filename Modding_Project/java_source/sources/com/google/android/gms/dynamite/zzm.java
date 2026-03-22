package com.google.android.gms.dynamite;

import android.content.Context;
import com.google.android.gms.dynamite.DynamiteModule;
/* compiled from: com.google.android.gms:play-services-basement@@18.8.0 */
/* loaded from: classes4.dex */
final class zzm implements DynamiteModule.VersionPolicy {
    @Override // com.google.android.gms.dynamite.DynamiteModule.VersionPolicy
    public final DynamiteModule.VersionPolicy.SelectionResult selectModule(Context context, String str, DynamiteModule.VersionPolicy.IVersions iVersions) throws DynamiteModule.LoadingException {
        int zza;
        DynamiteModule.VersionPolicy.SelectionResult selectionResult = new DynamiteModule.VersionPolicy.SelectionResult();
        int zzb = iVersions.zzb(context, str);
        selectionResult.localVersion = zzb;
        int i10 = 1;
        int i11 = 0;
        if (zzb != 0) {
            zza = iVersions.zza(context, str, false);
            selectionResult.remoteVersion = zza;
        } else {
            zza = iVersions.zza(context, str, true);
            selectionResult.remoteVersion = zza;
        }
        int i12 = selectionResult.localVersion;
        if (i12 == 0) {
            if (zza == 0) {
                i10 = 0;
                selectionResult.selection = i10;
                return selectionResult;
            }
        } else {
            i11 = i12;
        }
        if (zza < i11) {
            i10 = -1;
        }
        selectionResult.selection = i10;
        return selectionResult;
    }
}
