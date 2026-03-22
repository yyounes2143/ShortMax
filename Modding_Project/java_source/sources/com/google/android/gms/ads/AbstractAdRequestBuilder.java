package com.google.android.gms.ads;

import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.AbstractAdRequestBuilder;
import com.google.android.gms.ads.internal.client.zzej;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.mediation.MediationExtrasReceiver;
import com.google.android.gms.ads.mediation.customevent.CustomEvent;
import com.google.android.gms.common.internal.Preconditions;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public abstract class AbstractAdRequestBuilder<T extends AbstractAdRequestBuilder<T>> {
    protected final zzej zza;

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractAdRequestBuilder() {
        zzej zzejVar = new zzej();
        this.zza = zzejVar;
        zzejVar.zzt(AdRequest.DEVICE_ID_EMULATOR);
    }

    @NonNull
    @Deprecated
    public T addCustomEventExtrasBundle(@NonNull Class<? extends CustomEvent> cls, @NonNull Bundle bundle) {
        this.zza.zzp(cls, bundle);
        return self();
    }

    @NonNull
    public T addCustomTargeting(@NonNull String str, @NonNull String str2) {
        if (!TextUtils.isEmpty(str2) && str2.contains(",")) {
            zzo.zzj("Value " + str2 + " contains invalid character ',' (comma). The server will parse it as a list of comma-separated values.");
        }
        this.zza.zzq(str, str2);
        return self();
    }

    @NonNull
    public T addKeyword(@NonNull String str) {
        this.zza.zzr(str);
        return self();
    }

    @NonNull
    public T addNetworkExtrasBundle(@NonNull Class<? extends MediationExtrasReceiver> cls, @NonNull Bundle bundle) {
        zzej zzejVar = this.zza;
        zzejVar.zzs(cls, bundle);
        if (cls.equals(AdMobAdapter.class) && bundle.getBoolean("_emulatorLiveAds")) {
            zzejVar.zzu(AdRequest.DEVICE_ID_EMULATOR);
        }
        return self();
    }

    @NonNull
    protected abstract T self();

    @NonNull
    public T setAdString(@NonNull String str) {
        this.zza.zzv(str);
        return self();
    }

    @NonNull
    public T setContentUrl(@NonNull String str) {
        boolean z10;
        Preconditions.checkNotNull(str, "Content URL must be non-null.");
        Preconditions.checkNotEmpty(str, "Content URL must be non-empty.");
        int length = str.length();
        Object[] objArr = {512, Integer.valueOf(str.length())};
        if (length <= 512) {
            z10 = true;
        } else {
            z10 = false;
        }
        Preconditions.checkArgument(z10, "Content URL must not exceed %d in length.  Provided length was %d.", objArr);
        this.zza.zzw(str);
        return self();
    }

    @NonNull
    public T setHttpTimeoutMillis(int i10) {
        this.zza.zzx(i10);
        return self();
    }

    @NonNull
    public T setNeighboringContentUrls(@NonNull List<String> list) {
        if (list == null) {
            zzo.zzj("neighboring content URLs list should not be null");
            return self();
        }
        this.zza.zzz(list);
        return self();
    }

    @NonNull
    public T setPlacementId(long j10) {
        this.zza.zzB(j10);
        return self();
    }

    @NonNull
    public T setRequestAgent(@NonNull String str) {
        this.zza.zzD(str);
        return self();
    }

    @NonNull
    @Deprecated
    public final AbstractAdRequestBuilder zza(@NonNull String str) {
        this.zza.zzt(str);
        return self();
    }

    @NonNull
    @Deprecated
    public final AbstractAdRequestBuilder zzb(boolean z10) {
        this.zza.zzy(z10);
        return self();
    }

    @NonNull
    public final AbstractAdRequestBuilder zzc(@NonNull Bundle bundle) {
        this.zza.zzA(bundle);
        return self();
    }

    @NonNull
    @Deprecated
    public final AbstractAdRequestBuilder zzd(boolean z10) {
        this.zza.zzE(z10);
        return self();
    }

    @NonNull
    public T addCustomTargeting(@NonNull String str, @NonNull List<String> list) {
        if (list != null) {
            for (String str2 : list) {
                if (!TextUtils.isEmpty(str2) && str2.contains(",")) {
                    zzo.zzj("Value " + str2 + " contains invalid character ',' (comma). The server will parse it as a list of comma-separated values.");
                }
            }
            this.zza.zzq(str, TextUtils.join(",", list));
        }
        return self();
    }
}
