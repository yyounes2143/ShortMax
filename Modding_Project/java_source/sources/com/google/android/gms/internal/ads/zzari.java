package com.google.android.gms.internal.ads;

import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import com.huawei.hms.framework.common.ContainerUtils;
import com.unity3d.ads.gatewayclient.CommonGatewayClient;
import java.io.UnsupportedEncodingException;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public class zzari extends zzaqd {
    private final Object zza;
    @Nullable
    @GuardedBy("mLock")
    private final zzaqi zzb;

    public zzari(int i10, String str, zzaqi zzaqiVar, @Nullable zzaqh zzaqhVar) {
        super(i10, str, zzaqhVar);
        this.zza = new Object();
        this.zzb = zzaqiVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzaqd
    public final zzaqj zzh(zzapz zzapzVar) {
        String str;
        String str2;
        try {
            byte[] bArr = zzapzVar.zzb;
            Map map = zzapzVar.zzc;
            String str3 = "ISO-8859-1";
            if (map != null && (str2 = (String) map.get(CommonGatewayClient.HEADER_CONTENT_TYPE)) != null) {
                String[] split = str2.split(";", 0);
                int i10 = 1;
                while (true) {
                    if (i10 >= split.length) {
                        break;
                    }
                    String[] split2 = split[i10].trim().split(ContainerUtils.KEY_VALUE_DELIMITER, 0);
                    if (split2.length == 2 && split2[0].equals("charset")) {
                        str3 = split2[1];
                        break;
                    }
                    i10++;
                }
            }
            str = new String(bArr, str3);
        } catch (UnsupportedEncodingException unused) {
            str = new String(zzapzVar.zzb);
        }
        return zzaqj.zzb(str, zzara.zzb(zzapzVar));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzaqd
    /* renamed from: zzz */
    public void zzo(String str) {
        zzaqi zzaqiVar;
        synchronized (this.zza) {
            zzaqiVar = this.zzb;
        }
        zzaqiVar.zza(str);
    }
}
