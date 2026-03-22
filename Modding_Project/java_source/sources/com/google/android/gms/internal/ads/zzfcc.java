package com.google.android.gms.internal.ads;

import android.util.JsonReader;
import com.bytedance.vodsetting.Module;
import com.google.ads.mediation.inmobi.InMobiNetworkValues;
import java.io.IOException;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzfcc {
    private String zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfcc(JsonReader jsonReader) throws IOException {
        char c10;
        jsonReader.beginObject();
        String str = "";
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            int hashCode = nextName.hashCode();
            if (hashCode != -1724546052) {
                if (hashCode == 3059181 && nextName.equals(Module.ResponseKey.Code)) {
                    c10 = 0;
                }
                c10 = 65535;
            } else {
                if (nextName.equals(InMobiNetworkValues.DESCRIPTION)) {
                    c10 = 1;
                }
                c10 = 65535;
            }
            if (c10 != 0) {
                if (c10 != 1) {
                    jsonReader.skipValue();
                } else {
                    str = jsonReader.nextString();
                }
            } else {
                jsonReader.nextInt();
            }
        }
        jsonReader.endObject();
        this.zza = str;
    }

    public final String zza() {
        return this.zza;
    }
}
