package com.google.android.gms.internal.ads;

import android.app.AlertDialog;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.provider.CalendarContract;
import android.text.TextUtils;
import com.google.ads.mediation.inmobi.InMobiNetworkValues;
import com.google.android.gms.ads.impl.R;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzbsl extends zzbsu {
    private final Map zza;
    private final Context zzb;
    private final String zzc;
    private final long zzd;
    private final long zze;
    private final String zzf;
    private final String zzg;

    public zzbsl(zzcfg zzcfgVar, Map map) {
        super(zzcfgVar, "createCalendarEvent");
        this.zza = map;
        this.zzb = zzcfgVar.zzi();
        this.zzc = zze(InMobiNetworkValues.DESCRIPTION);
        this.zzf = zze("summary");
        this.zzd = zzd("start_ticks");
        this.zze = zzd("end_ticks");
        this.zzg = zze("location");
    }

    private final long zzd(String str) {
        String str2 = (String) this.zza.get(str);
        if (str2 == null) {
            return -1L;
        }
        try {
            return Long.parseLong(str2);
        } catch (NumberFormatException unused) {
            return -1L;
        }
    }

    private final String zze(String str) {
        Map map = this.zza;
        if (TextUtils.isEmpty((CharSequence) map.get(str))) {
            return "";
        }
        return (String) map.get(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Intent zzb() {
        Intent data = new Intent("android.intent.action.EDIT").setData(CalendarContract.Events.CONTENT_URI);
        data.putExtra("title", this.zzc);
        data.putExtra("eventLocation", this.zzg);
        data.putExtra(InMobiNetworkValues.DESCRIPTION, this.zzf);
        long j10 = this.zzd;
        if (j10 > -1) {
            data.putExtra("beginTime", j10);
        }
        long j11 = this.zze;
        if (j11 > -1) {
            data.putExtra("endTime", j11);
        }
        data.setFlags(268435456);
        return data;
    }

    public final void zzc() {
        String str;
        String str2;
        String str3;
        String str4;
        Context context = this.zzb;
        if (context == null) {
            zzh("Activity context is not available.");
            return;
        }
        com.google.android.gms.ads.internal.zzv.zzr();
        if (!new zzbcm(context).zzb()) {
            zzh("This feature is not available on the device.");
            return;
        }
        com.google.android.gms.ads.internal.zzv.zzr();
        AlertDialog.Builder zzL = com.google.android.gms.ads.internal.util.zzs.zzL(context);
        Resources zze = com.google.android.gms.ads.internal.zzv.zzp().zze();
        if (zze != null) {
            str = zze.getString(R.string.f19625s5);
        } else {
            str = "Create calendar event";
        }
        zzL.setTitle(str);
        if (zze != null) {
            str2 = zze.getString(R.string.f19626s6);
        } else {
            str2 = "Allow Ad to create a calendar event?";
        }
        zzL.setMessage(str2);
        if (zze != null) {
            str3 = zze.getString(R.string.f19623s3);
        } else {
            str3 = "Accept";
        }
        zzL.setPositiveButton(str3, new zzbsj(this));
        if (zze != null) {
            str4 = zze.getString(R.string.f19624s4);
        } else {
            str4 = "Decline";
        }
        zzL.setNegativeButton(str4, new zzbsk(this));
        zzL.create().show();
    }
}
