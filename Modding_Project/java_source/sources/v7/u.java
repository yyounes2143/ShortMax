package v7;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.p003firebaseauthapi.zzahy;
import com.google.android.gms.internal.p003firebaseauthapi.zzaiz;
import com.google.firebase.auth.MultiFactorInfo;
import com.google.firebase.auth.PhoneMultiFactorInfo;
import com.google.firebase.auth.TotpMultiFactorInfo;
import java.util.ArrayList;
import java.util.List;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* loaded from: classes5.dex */
public final class u {
    @Nullable
    public static MultiFactorInfo a(zzahy zzahyVar) {
        if (zzahyVar == null) {
            return null;
        }
        if (!TextUtils.isEmpty(zzahyVar.zze())) {
            return new PhoneMultiFactorInfo(zzahyVar.zzd(), zzahyVar.zzc(), zzahyVar.zza(), Preconditions.checkNotEmpty(zzahyVar.zze()));
        }
        if (zzahyVar.zzb() == null) {
            return null;
        }
        return new TotpMultiFactorInfo(zzahyVar.zzd(), zzahyVar.zzc(), zzahyVar.zza(), (zzaiz) Preconditions.checkNotNull(zzahyVar.zzb(), "totpInfo cannot be null."));
    }

    public static List<MultiFactorInfo> b(List<zzahy> list) {
        if (list != null && !list.isEmpty()) {
            ArrayList arrayList = new ArrayList();
            for (zzahy zzahyVar : list) {
                MultiFactorInfo a10 = a(zzahyVar);
                if (a10 != null) {
                    arrayList.add(a10);
                }
            }
            return arrayList;
        }
        return new ArrayList();
    }
}
