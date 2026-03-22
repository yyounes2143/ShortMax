package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.internal.ads.zzfob;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzek {
    private final String zza;
    private final List zzb;
    private final Set zzc;
    private final Bundle zzd;
    private final String zze;
    private final String zzf;
    private final int zzg;
    private final Set zzh;
    private final Bundle zzi;
    private final Set zzj;
    private final boolean zzk;
    private final String zzl;
    private final int zzm;
    private long zzn = 0;
    private long zzo;

    public zzek(zzej zzejVar, @Nullable zzfob zzfobVar) {
        String str;
        List list;
        HashSet hashSet;
        Bundle bundle;
        HashMap hashMap;
        String str2;
        String str3;
        int i10;
        HashSet hashSet2;
        Bundle bundle2;
        HashSet hashSet3;
        boolean z10;
        String str4;
        int i11;
        long j10;
        this.zzo = 0L;
        str = zzejVar.zzg;
        this.zza = str;
        list = zzejVar.zzh;
        this.zzb = list;
        hashSet = zzejVar.zza;
        this.zzc = Collections.unmodifiableSet(hashSet);
        bundle = zzejVar.zzb;
        this.zzd = bundle;
        hashMap = zzejVar.zzc;
        Collections.unmodifiableMap(hashMap);
        str2 = zzejVar.zzi;
        this.zze = str2;
        str3 = zzejVar.zzj;
        this.zzf = str3;
        i10 = zzejVar.zzk;
        this.zzg = i10;
        hashSet2 = zzejVar.zzd;
        this.zzh = Collections.unmodifiableSet(hashSet2);
        bundle2 = zzejVar.zze;
        this.zzi = bundle2;
        hashSet3 = zzejVar.zzf;
        this.zzj = Collections.unmodifiableSet(hashSet3);
        z10 = zzejVar.zzl;
        this.zzk = z10;
        str4 = zzejVar.zzm;
        this.zzl = str4;
        i11 = zzejVar.zzn;
        this.zzm = i11;
        j10 = zzejVar.zzo;
        this.zzo = j10;
    }

    public final int zza() {
        return this.zzm;
    }

    public final int zzb() {
        return this.zzg;
    }

    public final long zzc() {
        return this.zzo;
    }

    public final long zzd() {
        return this.zzn;
    }

    @Nullable
    public final Bundle zze(Class cls) {
        Bundle bundle = this.zzd.getBundle("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter");
        if (bundle != null) {
            return bundle.getBundle(cls.getName());
        }
        return null;
    }

    public final Bundle zzf() {
        return this.zzi;
    }

    @Nullable
    public final Bundle zzg(Class cls) {
        return this.zzd.getBundle(cls.getName());
    }

    public final Bundle zzh() {
        return this.zzd;
    }

    @Nullable
    public final String zzi() {
        return this.zzl;
    }

    public final String zzj() {
        return this.zza;
    }

    public final String zzk() {
        return this.zze;
    }

    public final String zzl() {
        return this.zzf;
    }

    public final List zzm() {
        return new ArrayList(this.zzb);
    }

    public final Set zzn() {
        return this.zzj;
    }

    public final Set zzo() {
        return this.zzc;
    }

    public final void zzp(long j10) {
        this.zzn = j10;
    }

    @Deprecated
    public final boolean zzq() {
        return this.zzk;
    }

    public final boolean zzr(Context context) {
        RequestConfiguration zzc = zzey.zzf().zzc();
        zzbb.zzb();
        Set set = this.zzh;
        String zzD = com.google.android.gms.ads.internal.util.client.zzf.zzD(context);
        if (!set.contains(zzD) && !zzc.getTestDeviceIds().contains(zzD)) {
            return false;
        }
        return true;
    }
}
