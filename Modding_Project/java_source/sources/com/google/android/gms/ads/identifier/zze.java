package com.google.android.gms.ads.identifier;

import android.util.Log;
import androidx.annotation.WorkerThread;
import com.google.android.gms.internal.ads_identifier.zzh;
import com.google.android.gms.internal.ads_identifier.zzk;
import com.ss.ttm.player.MediaPlayer;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
/* compiled from: com.google.android.gms:play-services-ads-identifier@@18.2.0 */
/* loaded from: classes4.dex */
public final class zze {
    @WorkerThread
    public static final void zza(String str) {
        try {
            try {
                zzk.zzb(MediaPlayer.MEDIA_PLAYER_OPTION_DELAY_BUFFERING_UPDATE);
                URL url = new URL(str);
                int i10 = zzh.zzb;
                HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
                try {
                    int responseCode = httpURLConnection.getResponseCode();
                    if (responseCode < 200 || responseCode >= 300) {
                        Log.w("HttpUrlPinger", "Received non-success response code " + responseCode + " from pinging URL: " + str);
                    }
                    zzk.zza();
                } finally {
                    httpURLConnection.disconnect();
                }
            } catch (Throwable th2) {
                zzk.zza();
                throw th2;
            }
        } catch (IOException e10) {
            e = e10;
            String message = e.getMessage();
            Log.w("HttpUrlPinger", "Error while pinging URL: " + str + ". " + message, e);
            zzk.zza();
        } catch (IndexOutOfBoundsException e11) {
            String message2 = e11.getMessage();
            Log.w("HttpUrlPinger", "Error while parsing ping URL: " + str + ". " + message2, e11);
            zzk.zza();
        } catch (RuntimeException e12) {
            e = e12;
            String message3 = e.getMessage();
            Log.w("HttpUrlPinger", "Error while pinging URL: " + str + ". " + message3, e);
            zzk.zza();
        }
    }
}
