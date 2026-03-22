package com.google.android.gms.internal.ads;

import android.util.JsonReader;
import java.io.IOException;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzfcg {
    private zzfcg(long j10, int[] iArr) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzfyq zza(JsonReader jsonReader) throws IOException {
        int i10 = zzfyq.zzd;
        zzfyn zzfynVar = new zzfyn();
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            zzfyq zzn = zzfyq.zzn();
            jsonReader.beginObject();
            zzfcg zzfcgVar = null;
            Long l10 = null;
            while (jsonReader.hasNext()) {
                String nextName = jsonReader.nextName();
                if (Objects.equals(nextName, "id")) {
                    l10 = Long.valueOf(jsonReader.nextLong());
                } else if (Objects.equals(nextName, "event_types")) {
                    zzfyn zzfynVar2 = new zzfyn();
                    jsonReader.beginArray();
                    while (jsonReader.hasNext()) {
                        zzfynVar2.zzf(Integer.valueOf(jsonReader.nextInt()));
                    }
                    jsonReader.endArray();
                    zzn = zzfynVar2.zzi();
                } else {
                    jsonReader.skipValue();
                }
            }
            jsonReader.endObject();
            if (l10 != null && !zzn.isEmpty()) {
                long longValue = l10.longValue();
                int[] iArr = new int[zzn.size()];
                for (int i11 = 0; i11 < zzn.size(); i11++) {
                    iArr[i11] = ((Integer) zzn.get(i11)).intValue();
                }
                zzfcgVar = new zzfcg(longValue, iArr);
            }
            if (zzfcgVar != null) {
                zzfynVar.zzf(zzfcgVar);
            }
        }
        jsonReader.endArray();
        return zzfynVar.zzi();
    }
}
