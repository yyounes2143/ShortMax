package com.google.android.gms.ads.nonagon.signalgeneration;

import android.os.Bundle;
import android.util.JsonReader;
import androidx.annotation.Nullable;
import com.bytedance.applog.aggregation.MetricsSQLiteCacheKt;
import com.google.android.gms.internal.ads.zzbde;
import com.google.android.gms.internal.ads.zzbvq;
import com.google.android.gms.internal.ads.zzdrr;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzbk {
    public final String zza;
    public String zzb;
    @Nullable
    public zzbvq zzd;
    @Nullable
    public Bundle zze;
    private long zzg;
    private long zzh;
    @Nullable
    public String zzc = null;
    public Bundle zzf = new Bundle();

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public zzbk(JsonReader jsonReader, @Nullable zzbvq zzbvqVar) throws IOException {
        Bundle bundle;
        char c10;
        this.zzg = -1L;
        this.zzh = -1L;
        this.zzd = zzbvqVar;
        HashMap hashMap = new HashMap();
        jsonReader.beginObject();
        String str = "";
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName = nextName == null ? "" : nextName;
            switch (nextName.hashCode()) {
                case -1573145462:
                    if (nextName.equals(MetricsSQLiteCacheKt.METRICS_START_TIME)) {
                        c10 = 2;
                        break;
                    }
                    c10 = 65535;
                    break;
                case -995427962:
                    if (nextName.equals(MetricsSQLiteCacheKt.METRICS_PARAMS)) {
                        c10 = 0;
                        break;
                    }
                    c10 = 65535;
                    break;
                case -271442291:
                    if (nextName.equals("signal_dictionary")) {
                        c10 = 1;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 1725551537:
                    if (nextName.equals(MetricsSQLiteCacheKt.METRICS_END_TIME)) {
                        c10 = 3;
                        break;
                    }
                    c10 = 65535;
                    break;
                default:
                    c10 = 65535;
                    break;
            }
            if (c10 != 0) {
                if (c10 != 1) {
                    if (c10 != 2) {
                        if (c10 != 3) {
                            jsonReader.skipValue();
                        } else {
                            this.zzh = jsonReader.nextLong();
                        }
                    } else {
                        this.zzg = jsonReader.nextLong();
                    }
                } else {
                    hashMap = new HashMap();
                    jsonReader.beginObject();
                    while (jsonReader.hasNext()) {
                        hashMap.put(jsonReader.nextName(), jsonReader.nextString());
                    }
                    jsonReader.endObject();
                }
            } else {
                str = jsonReader.nextString();
            }
        }
        this.zza = str;
        jsonReader.endObject();
        for (Map.Entry entry : hashMap.entrySet()) {
            if (entry.getKey() != null && entry.getValue() != null) {
                this.zzf.putString((String) entry.getKey(), (String) entry.getValue());
            }
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzcq)).booleanValue() && zzbvqVar != null && (bundle = zzbvqVar.zzm) != null) {
            bundle.putLong(zzdrr.GET_SIGNALS_SDKCORE_START.zza(), this.zzg);
            zzbvqVar.zzm.putLong(zzdrr.GET_SIGNALS_SDKCORE_END.zza(), this.zzh);
        }
    }
}
