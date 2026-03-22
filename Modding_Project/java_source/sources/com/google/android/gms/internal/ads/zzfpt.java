package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.util.Base64;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.auth.api.proxy.AuthApiStatusCodes;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.ss.ttvideoengine.log.IVideoEventLogger;
import com.ss.ttvideoengine.superresolution.SRStrategy;
import java.util.HashMap;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzfpt implements zzfol {
    private final Object zza;
    private final zzfpu zzb;
    private final zzfqf zzc;
    private final zzfoi zzd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfpt(@NonNull Object obj, @NonNull zzfpu zzfpuVar, @NonNull zzfqf zzfqfVar, @NonNull zzfoi zzfoiVar, boolean z10) {
        this.zza = obj;
        this.zzb = zzfpuVar;
        this.zzc = zzfqfVar;
        this.zzd = zzfoiVar;
    }

    @Nullable
    private static String zzi(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        zzaug zza = zzauh.zza();
        zza.zzc(5);
        zza.zza(zzgxz.zzv(bArr, 0, bArr.length));
        return Base64.encodeToString(((zzauh) zza.zzbr()).zzaV(), 11);
    }

    @Nullable
    private final synchronized byte[] zzj(Map map, Map map2) {
        Object obj;
        long currentTimeMillis = System.currentTimeMillis();
        try {
            obj = this.zza;
        } catch (Exception e10) {
            this.zzd.zzc(2007, System.currentTimeMillis() - currentTimeMillis, e10);
            return null;
        }
        return (byte[]) obj.getClass().getDeclaredMethod("xss", Map.class, Map.class).invoke(obj, null, map2);
    }

    @Override // com.google.android.gms.internal.ads.zzfol
    @Nullable
    public final synchronized String zza(Context context, String str, String str2, View view, Activity activity) {
        Map zza;
        zza = this.zzc.zza();
        zza.put("f", "c");
        zza.put("ctx", context);
        zza.put(SRStrategy.MEDIAINFO_KEY_CACHE_SIZE, str2);
        zza.put(TTVideoEngineInterface.PLAY_API_KEY_APPID, null);
        zza.put(MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, view);
        zza.put("act", activity);
        return zzi(zzj(null, zza));
    }

    @Override // com.google.android.gms.internal.ads.zzfol
    @Nullable
    public final synchronized String zzb(Context context, String str, View view, Activity activity) {
        Map zzc;
        zzc = this.zzc.zzc();
        zzc.put("f", "v");
        zzc.put("ctx", context);
        zzc.put(TTVideoEngineInterface.PLAY_API_KEY_APPID, null);
        zzc.put(MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, view);
        zzc.put("act", activity);
        return zzi(zzj(null, zzc));
    }

    @Override // com.google.android.gms.internal.ads.zzfol
    @Nullable
    public final synchronized String zzc(Context context, String str) {
        Map zzb;
        zzb = this.zzc.zzb();
        zzb.put("f", CampaignEx.JSON_KEY_AD_Q);
        zzb.put("ctx", context);
        zzb.put(TTVideoEngineInterface.PLAY_API_KEY_APPID, null);
        return zzi(zzj(null, zzb));
    }

    @Override // com.google.android.gms.internal.ads.zzfol
    public final synchronized void zzd(String str, MotionEvent motionEvent) throws zzfqd {
        try {
            long currentTimeMillis = System.currentTimeMillis();
            HashMap hashMap = new HashMap();
            hashMap.put(IVideoEventLogger.LOG_CALLBACK_TIME, new Throwable());
            hashMap.put(TTVideoEngineInterface.PLAY_API_KEY_APPID, null);
            hashMap.put("evt", motionEvent);
            Object obj = this.zza;
            obj.getClass().getDeclaredMethod("he", Map.class).invoke(obj, hashMap);
            this.zzd.zzd(AuthApiStatusCodes.AUTH_API_SERVER_ERROR, System.currentTimeMillis() - currentTimeMillis);
        } catch (Exception e10) {
            throw new zzfqd(2005, e10);
        }
    }

    public final synchronized int zze() throws zzfqd {
        Object obj;
        try {
            obj = this.zza;
        } catch (Exception e10) {
            throw new zzfqd(2006, e10);
        }
        return ((Integer) obj.getClass().getDeclaredMethod(CampaignEx.KEY_LOCAL_CHECK_STATE, new Class[0]).invoke(obj, new Object[0])).intValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final zzfpu zzf() {
        return this.zzb;
    }

    public final synchronized void zzg() throws zzfqd {
        try {
            long currentTimeMillis = System.currentTimeMillis();
            Object obj = this.zza;
            obj.getClass().getDeclaredMethod("close", new Class[0]).invoke(obj, new Object[0]);
            this.zzd.zzd(3001, System.currentTimeMillis() - currentTimeMillis);
        } catch (Exception e10) {
            throw new zzfqd(2003, e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized boolean zzh() throws zzfqd {
        Object obj;
        try {
            obj = this.zza;
        } catch (Exception e10) {
            throw new zzfqd(2001, e10);
        }
        return ((Boolean) obj.getClass().getDeclaredMethod("init", new Class[0]).invoke(obj, new Object[0])).booleanValue();
    }
}
