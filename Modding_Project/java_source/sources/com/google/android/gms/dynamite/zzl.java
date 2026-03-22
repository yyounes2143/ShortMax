package com.google.android.gms.dynamite;

import android.content.Context;
import com.google.android.gms.dynamite.DynamiteModule;
/* compiled from: com.google.android.gms:play-services-basement@@18.8.0 */
/* loaded from: classes4.dex */
final class zzl implements DynamiteModule.VersionPolicy {
    @Override // com.google.android.gms.dynamite.DynamiteModule.VersionPolicy
    public final DynamiteModule.VersionPolicy.SelectionResult selectModule(Context context, String str, DynamiteModule.VersionPolicy.IVersions iVersions) throws DynamiteModule.LoadingException {
        DynamiteModule.VersionPolicy.SelectionResult selectionResult = new DynamiteModule.VersionPolicy.SelectionResult();
        selectionResult.localVersion = iVersions.zzb(context, str);
        int i10 = 1;
        int zza = iVersions.zza(context, str, true);
        selectionResult.remoteVersion = zza;
        int i11 = selectionResult.localVersion;
        if (i11 == 0) {
            i11 = 0;
            if (zza == 0) {
                i10 = 0;
                selectionResult.selection = i10;
                return selectionResult;
            }
        }
        if (zza < i11) {
            i10 = -1;
        }
        selectionResult.selection = i10;
        return selectionResult;
    }
}
