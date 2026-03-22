package com.google.android.recaptcha.internal;

import androidx.browser.trusted.sharing.ShareTarget;
import com.unity3d.ads.gatewayclient.CommonGatewayClient;
import java.net.HttpURLConnection;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
public final class zzex {
    @NotNull
    private final zzfm zza;

    public zzex() {
        this(null, 1, null);
    }

    @NotNull
    public final zzew zza(@NotNull String str) {
        try {
            HttpURLConnection zza = this.zza.zza(str);
            zza.setRequestMethod(ShareTarget.METHOD_POST);
            zza.setDoOutput(true);
            zza.setRequestProperty(CommonGatewayClient.HEADER_CONTENT_TYPE, "application/x-protobuffer");
            return new zzew(zza);
        } catch (zzbd e10) {
            throw e10;
        } catch (Exception e11) {
            throw new zzbd(zzbb.zzc, zzba.zzai, e11.getMessage());
        }
    }

    public /* synthetic */ zzex(zzfm zzfmVar, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this.zza = new zzfm();
    }
}
