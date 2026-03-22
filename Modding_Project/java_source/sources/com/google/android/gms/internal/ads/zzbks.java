package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.VideoOptions;
import com.google.android.gms.ads.admanager.AdManagerAdRequest;
import com.google.android.gms.ads.nativead.NativeAdOptions;
import com.ss.texturerender.TextureRenderKeys;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzbks implements zzbkf {
    private final zzdwf zza;

    public zzbks(zzdwf zzdwfVar) {
        this.zza = zzdwfVar;
    }

    private static final Bundle zzb(Map map) {
        Bundle bundle = new Bundle();
        bundle.putString("request_origin", "inspector_ooct");
        if (map.containsKey("networkExtras")) {
            try {
                JSONObject jSONObject = new JSONObject((String) map.get("networkExtras"));
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    Object obj = jSONObject.get(next);
                    if (obj instanceof String) {
                        bundle.putString(next, (String) obj);
                    } else if (obj instanceof Integer) {
                        bundle.putInt(next, ((Integer) obj).intValue());
                    } else if (obj instanceof Boolean) {
                        bundle.putBoolean(next, ((Boolean) obj).booleanValue());
                    } else if (obj instanceof Float) {
                        bundle.putFloat(next, ((Float) obj).floatValue());
                    } else if (obj instanceof Double) {
                        bundle.putDouble(next, ((Double) obj).doubleValue());
                    } else if (obj instanceof Long) {
                        bundle.putLong(next, ((Long) obj).longValue());
                    }
                }
            } catch (JSONException e10) {
                com.google.android.gms.ads.internal.zzv.zzp().zzw(e10, "OutOfContextTestingGmsgHandler.generateNetworkExtras");
            }
        }
        return bundle;
    }

    private static final List zzc(String str, String str2) {
        try {
            JSONArray jSONArray = new JSONArray(str);
            ArrayList arrayList = new ArrayList();
            for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                arrayList.add(jSONArray.getString(i10));
            }
            return arrayList;
        } catch (JSONException e10) {
            com.google.android.gms.ads.internal.zzv.zzp().zzw(e10, "OutOfContextTestingGmsgHandler.stringArrayToList.".concat(str2));
            return new ArrayList();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbkf
    public final void zza(Object obj, Map map) {
        AdRequest build;
        AdSize adSize;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzjN)).booleanValue()) {
            zzdwg zzdwgVar = new zzdwg();
            String str = (String) map.get(HandleInvocationsFromAdViewer.KEY_AD_UNIT_ID);
            if (!TextUtils.isEmpty(str)) {
                zzdwgVar.zzi(str);
            }
            String str2 = (String) map.get("format");
            if (!TextUtils.isEmpty(str2)) {
                zzdwgVar.zzj(str2);
            }
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzjP)).booleanValue()) {
                boolean z10 = false;
                if (map.containsKey("isGamRequest") && ((String) map.get("isGamRequest")).equals("1")) {
                    z10 = true;
                }
                zzdwgVar.zzk(z10);
                if (zzdwgVar.zzn()) {
                    AdManagerAdRequest.Builder builder = new AdManagerAdRequest.Builder();
                    if (map.containsKey("keywords")) {
                        for (String str3 : zzc((String) map.get("keywords"), "keywords")) {
                            builder.addKeyword(str3);
                        }
                    }
                    builder.addNetworkExtrasBundle(AdMobAdapter.class, zzb(map));
                    if (map.containsKey("customTargeting")) {
                        try {
                            JSONObject jSONObject = new JSONObject((String) map.get("customTargeting"));
                            Iterator<String> keys = jSONObject.keys();
                            while (keys.hasNext()) {
                                String next = keys.next();
                                builder.addCustomTargeting(next, jSONObject.getString(next));
                            }
                        } catch (JSONException e10) {
                            com.google.android.gms.ads.internal.zzv.zzp().zzw(e10, "OutOfContextTestingGmsgHandler.generateAdManagerAdRequest");
                        }
                    }
                    if (map.containsKey("contentUrl")) {
                        builder.setContentUrl((String) map.get("contentUrl"));
                    }
                    if (map.containsKey("neighboringContentUrlStrings")) {
                        builder.setNeighboringContentUrls(zzc((String) map.get("neighboringContentUrlStrings"), "neighboringContentUrlStrings"));
                    }
                    if (map.containsKey("requestAgent")) {
                        builder.setRequestAgent((String) map.get("requestAgent"));
                    }
                    if (map.containsKey("publisherProvidedId")) {
                        builder.setPublisherProvidedId((String) map.get("publisherProvidedId"));
                    }
                    if (map.containsKey("categoryExclusions")) {
                        for (String str4 : zzc((String) map.get("categoryExclusions"), "categoryExclusions")) {
                            builder.addCategoryExclusion(str4);
                        }
                    }
                    build = builder.build();
                } else {
                    AdRequest.Builder builder2 = new AdRequest.Builder();
                    if (map.containsKey("keywords")) {
                        for (String str5 : zzc((String) map.get("keywords"), "keywords")) {
                            builder2.addKeyword(str5);
                        }
                    }
                    builder2.addNetworkExtrasBundle(AdMobAdapter.class, zzb(map));
                    if (map.containsKey("customTargeting")) {
                        try {
                            JSONObject jSONObject2 = new JSONObject((String) map.get("customTargeting"));
                            Iterator<String> keys2 = jSONObject2.keys();
                            while (keys2.hasNext()) {
                                String next2 = keys2.next();
                                builder2.addCustomTargeting(next2, jSONObject2.getString(next2));
                            }
                        } catch (JSONException e11) {
                            com.google.android.gms.ads.internal.zzv.zzp().zzw(e11, "OutOfContextTestingGmsgHandler.generateAdMobAdRequest");
                        }
                    }
                    if (map.containsKey("contentUrl")) {
                        builder2.setContentUrl((String) map.get("contentUrl"));
                    }
                    if (map.containsKey("neighboringContentUrlStrings")) {
                        builder2.setNeighboringContentUrls(zzc((String) map.get("neighboringContentUrlStrings"), "neighboringContentUrlStrings"));
                    }
                    if (map.containsKey("requestAgent")) {
                        builder2.setRequestAgent((String) map.get("requestAgent"));
                    }
                    build = builder2.build();
                }
                zzdwgVar.zzg(build);
                String str6 = (String) map.get("width");
                String str7 = (String) map.get("height");
                if (!TextUtils.isEmpty(str6) && !TextUtils.isEmpty(str7)) {
                    try {
                        adSize = new AdSize(Integer.parseInt(str6), Integer.parseInt(str7));
                    } catch (NumberFormatException e12) {
                        com.google.android.gms.ads.internal.zzv.zzp().zzw(e12, "OutOfContextTestingGmsgHandler.generateAdSize");
                        adSize = AdSize.BANNER;
                    }
                } else {
                    adSize = AdSize.BANNER;
                }
                zzdwgVar.zzh(adSize);
                if (map.containsKey("clickToExpandRequested") || map.containsKey("customControlsRequested") || map.containsKey("startMuted")) {
                    VideoOptions.Builder builder3 = new VideoOptions.Builder();
                    if (map.containsKey("startMuted")) {
                        builder3.setStartMuted(((String) map.get("startMuted")).equals("1"));
                    }
                    if (map.containsKey("customControlsRequested")) {
                        builder3.setCustomControlsRequested(((String) map.get("customControlsRequested")).equals("1"));
                    }
                    if (map.containsKey("clickToExpandRequested")) {
                        builder3.setClickToExpandRequested(((String) map.get("clickToExpandRequested")).equals("1"));
                    }
                    zzdwgVar.zzm(builder3.build());
                }
                if (map.containsKey("customMuteThisAdRequested") || map.containsKey("disableImageLoading") || map.containsKey("mediaAspectRatio") || map.containsKey("preferredAdChoicesPosition") || map.containsKey("shouldRequestMultipleImages") || (zzdwgVar.zzc() != null && zzdwgVar.zzf().equals("NATIVE"))) {
                    NativeAdOptions.Builder builder4 = new NativeAdOptions.Builder();
                    if (map.containsKey("disableImageLoading")) {
                        builder4.setReturnUrlsForImageAssets(((String) map.get("disableImageLoading")).equals("1"));
                    }
                    if (map.containsKey("mediaAspectRatio")) {
                        String str8 = (String) map.get("mediaAspectRatio");
                        if (!TextUtils.isEmpty(str8)) {
                            try {
                                builder4.setMediaAspectRatio(Integer.parseInt(str8));
                            } catch (NumberFormatException e13) {
                                com.google.android.gms.ads.internal.zzv.zzp().zzw(e13, "OutOfContextTestingGmsgHandler.generateNativeAdOptionsBuilder.mediaAspectRatio");
                            }
                        }
                    }
                    if (map.containsKey("shouldRequestMultipleImages")) {
                        builder4.setRequestMultipleImages(((String) map.get("shouldRequestMultipleImages")).equals("1"));
                    }
                    if (map.containsKey("preferredAdChoicesPosition")) {
                        String str9 = (String) map.get("preferredAdChoicesPosition");
                        if (!TextUtils.isEmpty(str9)) {
                            try {
                                builder4.setAdChoicesPlacement(Integer.parseInt(str9));
                            } catch (NumberFormatException e14) {
                                com.google.android.gms.ads.internal.zzv.zzp().zzw(e14, "OutOfContextTestingGmsgHandler.generateNativeAdOptionsBuilder.preferredAdChoicesPosition");
                            }
                        }
                    }
                    if (map.containsKey("customMuteThisAdRequested")) {
                        builder4.setRequestCustomMuteThisAd(((String) map.get("customMuteThisAdRequested")).equals("1"));
                    }
                    VideoOptions zzc = zzdwgVar.zzc();
                    if (zzc != null) {
                        builder4.setVideoOptions(zzc);
                    }
                    zzdwgVar.zzl(builder4.build());
                }
            }
            String str10 = (String) map.get(TextureRenderKeys.KEY_IS_ACTION);
            if (!TextUtils.isEmpty(str10) && !TextUtils.isEmpty(zzdwgVar.zze())) {
                if (str10.equals("load") && !TextUtils.isEmpty(zzdwgVar.zzf())) {
                    this.zza.zzh(zzdwgVar);
                } else if (str10.equals("show")) {
                    this.zza.zzi(zzdwgVar.zze());
                }
            }
        }
    }
}
