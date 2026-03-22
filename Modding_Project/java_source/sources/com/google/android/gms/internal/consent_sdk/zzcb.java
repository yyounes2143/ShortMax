package com.google.android.gms.internal.consent_sdk;

import android.app.Application;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import androidx.annotation.UiThread;
import com.huawei.hms.support.api.entity.common.CommonConstant;
import com.ss.texturerender.TextureRenderKeys;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.io.ByteArrayOutputStream;
import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.Executor;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.ump:user-messaging-platform@@3.2.0 */
/* loaded from: classes4.dex */
public final class zzcb implements zzd {
    private final Application zza;
    private final zzbx zzb;
    private final Handler zzc;
    private final Executor zzd;
    private final zze zze;
    private final zzao zzf;
    private final zzbc zzg;
    private final zzaq zzh;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcb(Application application, zzbx zzbxVar, Handler handler, Executor executor, zze zzeVar, zzao zzaoVar, zzbc zzbcVar, zzaq zzaqVar) {
        this.zza = application;
        this.zzb = zzbxVar;
        this.zzc = handler;
        this.zzd = executor;
        this.zze = zzeVar;
        this.zzf = zzaoVar;
        this.zzg = zzbcVar;
        this.zzh = zzaqVar;
    }

    public static /* synthetic */ void zzc(zzcb zzcbVar) {
        String concat;
        JSONObject jSONObject = new JSONObject();
        Application application = zzcbVar.zza;
        try {
            jSONObject.put(TTVideoEngineInterface.PLAY_API_KEY_APPNAME, application.getPackageManager().getApplicationLabel(application.getApplicationInfo()).toString());
            Drawable applicationIcon = application.getPackageManager().getApplicationIcon(application.getApplicationInfo());
            if (applicationIcon == null) {
                concat = null;
            } else {
                Bitmap createBitmap = Bitmap.createBitmap(applicationIcon.getIntrinsicWidth(), applicationIcon.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(createBitmap);
                applicationIcon.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
                applicationIcon.draw(canvas);
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                createBitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
                concat = "data:image/png;base64,".concat(String.valueOf(Base64.encodeToString(byteArrayOutputStream.toByteArray(), 2)));
            }
            jSONObject.put("app_icon", concat);
            JSONObject jSONObject2 = new JSONObject();
            zzaq zzaqVar = zzcbVar.zzh;
            for (String str : zzaqVar.zzc().keySet()) {
                jSONObject2.put(str, zzaqVar.zzc().get(str));
            }
            jSONObject.put("stored_infos_map", jSONObject2);
        } catch (JSONException unused) {
        }
        zzcbVar.zzg.zzc().zzd("UMP_configureFormWithAppAssets", jSONObject.toString());
    }

    @UiThread
    private final void zzg(JSONObject jSONObject) {
        String optString = jSONObject.optString("url");
        if (TextUtils.isEmpty(optString)) {
            Log.d("UserMessagingPlatform", "Action[browser]: empty url.");
        }
        Uri parse = Uri.parse(optString);
        if (parse.getScheme() == null) {
            Log.d("UserMessagingPlatform", "Action[browser]: empty scheme: ".concat(String.valueOf(optString)));
        }
        try {
            this.zzb.startActivity(new Intent(CommonConstant.ACTION.HWID_SCHEME_URL, parse));
        } catch (ActivityNotFoundException e10) {
            Log.d("UserMessagingPlatform", "Action[browser]: can not open url: ".concat(String.valueOf(optString)), e10);
        }
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzd
    public final Executor zza() {
        final Handler handler = this.zzc;
        Objects.requireNonNull(handler);
        return new Executor() { // from class: com.google.android.gms.internal.consent_sdk.zzbz
            @Override // java.util.concurrent.Executor
            public final void execute(Runnable runnable) {
                handler.post(runnable);
            }
        };
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.android.gms.internal.consent_sdk.zzd
    @UiThread
    public final boolean zzb(String str, JSONObject jSONObject) {
        boolean z10;
        char c10 = 65535;
        int i10 = 3;
        switch (str.hashCode()) {
            case -1370505102:
                if (str.equals("load_complete")) {
                    z10 = false;
                    break;
                }
                z10 = true;
                break;
            case -278739366:
                if (str.equals("configure_app_assets")) {
                    z10 = true;
                    break;
                }
                z10 = true;
                break;
            case 150940456:
                if (str.equals("browser")) {
                    z10 = true;
                    break;
                }
                z10 = true;
                break;
            case 1671672458:
                if (str.equals("dismiss")) {
                    z10 = true;
                    break;
                }
                z10 = true;
                break;
            default:
                z10 = true;
                break;
        }
        if (z10) {
            if (!z10) {
                if (!z10) {
                    if (!z10) {
                        return false;
                    }
                    zzd();
                    return true;
                }
                zzg(jSONObject);
                return true;
            }
            String optString = jSONObject.optString("status");
            switch (optString.hashCode()) {
                case -954325659:
                    if (optString.equals("CONSENT_SIGNAL_NON_PERSONALIZED_ADS")) {
                        c10 = 3;
                        break;
                    }
                    break;
                case -258041904:
                    if (optString.equals("personalized")) {
                        c10 = 0;
                        break;
                    }
                    break;
                case 429411856:
                    if (optString.equals("CONSENT_SIGNAL_SUFFICIENT")) {
                        c10 = 4;
                        break;
                    }
                    break;
                case 467888915:
                    if (optString.equals("CONSENT_SIGNAL_PERSONALIZED_ADS")) {
                        c10 = 1;
                        break;
                    }
                    break;
                case 1666911234:
                    if (optString.equals("non_personalized")) {
                        c10 = 2;
                        break;
                    }
                    break;
                case 1725474845:
                    if (optString.equals("CONSENT_SIGNAL_NOT_REQUIRED")) {
                        c10 = 5;
                        break;
                    }
                    break;
            }
            if (c10 != 0 && c10 != 1 && c10 != 2 && c10 != 3 && c10 != 4) {
                if (c10 != 5) {
                    this.zzg.zzh(new zzg(1, "We are getting something wrong with the webview."));
                    return true;
                }
                i10 = 1;
            }
            this.zzg.zzg(i10);
            return true;
        }
        this.zzg.zzi();
        return true;
    }

    @UiThread
    public final void zzd() {
        this.zzd.execute(new Runnable() { // from class: com.google.android.gms.internal.consent_sdk.zzca
            @Override // java.lang.Runnable
            public final void run() {
                zzcb.zzc(zzcb.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zze(String str) {
        Log.d("UserMessagingPlatform", "Receive consent action: ".concat(String.valueOf(str)));
        Uri parse = Uri.parse(str);
        this.zze.zzb(parse.getQueryParameter(TextureRenderKeys.KEY_IS_ACTION), parse.getQueryParameter("args"), this, this.zzf);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzf(int i10, String str, String str2) {
        this.zzg.zzj(new zzg(2, String.format(Locale.US, "WebResourceError(%d, %s): %s", Integer.valueOf(i10), str2, str)));
    }
}
