package com.google.android.recaptcha.internal;

import androidx.browser.trusted.sharing.ShareTarget;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.zip.GZIPInputStream;
import kotlin.c;
import kotlin.jvm.internal.Intrinsics;
import ms.i;
import org.jetbrains.annotations.NotNull;
import ws.n;
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
public final class zzfa implements zzey {
    @NotNull
    private final i zza;

    public zzfa() {
        int i10 = zzav.zza;
        this.zza = c.b(zzez.zza);
    }

    @Override // com.google.android.recaptcha.internal.zzey
    @NotNull
    public final zzsc zza(@NotNull String str, @NotNull zzto zztoVar) throws zzbd {
        zzew zzewVar = null;
        try {
            try {
                try {
                    zzewVar = ((zzex) this.zza.getValue()).zza(str);
                    zzewVar.zzc();
                    zzewVar.zze(zztoVar.zzd());
                    zzsc zzscVar = (zzsc) zzewVar.zza(zzsc.zzi());
                    zzewVar.zzd();
                    return zzscVar;
                } catch (zzbd e10) {
                    if (zzewVar != null) {
                        if (Intrinsics.areEqual(e10.zza(), zzba.zzau)) {
                            try {
                                throw zzbc.zza(zztu.zzg(zzewVar.zzb().getErrorStream()).zzi());
                            } catch (Exception e11) {
                                throw new zzbd(zzbb.zzc, zzba.zzG, e11.getMessage());
                            }
                        }
                        throw e10;
                    }
                    throw e10;
                }
            } catch (Exception e12) {
                throw new zzbd(zzbb.zzc, zzba.zzF, e12.getMessage());
            }
        } catch (Throwable th2) {
            if (zzewVar != null) {
                zzewVar.zzd();
            }
            throw th2;
        }
    }

    @Override // com.google.android.recaptcha.internal.zzey
    @NotNull
    public final String zzb(@NotNull String str) throws zzbd {
        InputStreamReader inputStreamReader;
        try {
            try {
                URLConnection openConnection = new URL(str).openConnection();
                Intrinsics.checkNotNull(openConnection, "null cannot be cast to non-null type java.net.HttpURLConnection");
                HttpURLConnection httpURLConnection = (HttpURLConnection) openConnection;
                httpURLConnection.setRequestMethod(ShareTarget.METHOD_GET);
                httpURLConnection.setDoInput(true);
                httpURLConnection.setRequestProperty("Accept", "application/x-protobuffer");
                httpURLConnection.setRequestProperty("Accept-Encoding", "gzip");
                httpURLConnection.connect();
                if (httpURLConnection.getResponseCode() == 200) {
                    try {
                        if (Intrinsics.areEqual("gzip", httpURLConnection.getContentEncoding())) {
                            inputStreamReader = new InputStreamReader(new GZIPInputStream(httpURLConnection.getInputStream()));
                        } else {
                            inputStreamReader = new InputStreamReader(httpURLConnection.getInputStream());
                        }
                        return n.h(inputStreamReader);
                    } catch (Exception unused) {
                        throw new zzbd(zzbb.zzc, zzba.zzP, null);
                    }
                }
                throw new zzbd(zzbb.zzc, new zzba(httpURLConnection.getResponseCode()), null);
            } catch (Exception unused2) {
                throw new zzbd(zzbb.zzc, zzba.zzO, null);
            }
        } catch (Exception unused3) {
            throw new zzbd(zzbb.zzb, zzba.zzN, null);
        }
    }
}
