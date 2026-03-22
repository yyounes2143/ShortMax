package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.VisibleForTesting;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Set;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzq {
    public static final zzq zza = new zzq();

    @VisibleForTesting
    protected zzq() {
    }

    public final zzm zza(Context context, zzek zzekVar) {
        Context context2;
        List list;
        String str;
        String zzj = zzekVar.zzj();
        Set zzo = zzekVar.zzo();
        if (!zzo.isEmpty()) {
            list = Collections.unmodifiableList(new ArrayList(zzo));
            context2 = context;
        } else {
            context2 = context;
            list = null;
        }
        boolean zzr = zzekVar.zzr(context2);
        Bundle zzg = zzekVar.zzg(AdMobAdapter.class);
        String zzk = zzekVar.zzk();
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            String packageName = applicationContext.getPackageName();
            zzbb.zzb();
            str = com.google.android.gms.ads.internal.util.client.zzf.zzv(Thread.currentThread().getStackTrace(), packageName);
        } else {
            str = null;
        }
        boolean zzq = zzekVar.zzq();
        RequestConfiguration zzc = zzey.zzf().zzc();
        return new zzm(8, -1L, zzg, -1, list, zzr, Math.max(zzekVar.zzb(), zzc.getTagForChildDirectedTreatment()), false, zzk, null, null, zzj, zzekVar.zzh(), zzekVar.zzf(), Collections.unmodifiableList(new ArrayList(zzekVar.zzn())), zzekVar.zzl(), str, zzq, null, zzc.getTagForUnderAgeOfConsent(), (String) Collections.max(Arrays.asList(null, zzc.getMaxAdContentRating()), new Comparator() { // from class: com.google.android.gms.ads.internal.client.zzp
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                List list2 = RequestConfiguration.zza;
                return list2.indexOf((String) obj) - list2.indexOf((String) obj2);
            }
        }), zzekVar.zzm(), zzekVar.zza(), zzekVar.zzi(), zzc.getPublisherPrivacyPersonalizationState().getValue(), zzekVar.zzd(), zzekVar.zzc());
    }
}
