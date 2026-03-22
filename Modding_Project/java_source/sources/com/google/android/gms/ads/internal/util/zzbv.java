package com.google.android.gms.ads.internal.util;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.google.android.gms.internal.ads.zzbde;
import com.google.android.gms.internal.ads.zzfca;
import com.google.android.gms.internal.ads.zzfva;
import com.google.android.gms.internal.ads.zzfwe;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.ss.texturerender.TextureRenderKeys;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzbv {
    public static Point zza(MotionEvent motionEvent, @Nullable View view) {
        int[] zzk = zzk(view);
        return new Point(((int) motionEvent.getRawX()) - zzk[0], ((int) motionEvent.getRawY()) - zzk[1]);
    }

    public static WindowManager.LayoutParams zzb() {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-2, -2, 0, 0, -2);
        layoutParams.flags = ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zziu)).intValue();
        layoutParams.type = 2;
        layoutParams.gravity = 8388659;
        return layoutParams;
    }

    public static JSONObject zzc(@Nullable String str, Context context, Point point, Point point2) {
        JSONObject jSONObject;
        JSONObject jSONObject2 = null;
        try {
            jSONObject = new JSONObject();
        } catch (Exception e10) {
            e = e10;
        }
        try {
            JSONObject jSONObject3 = new JSONObject();
            try {
                jSONObject3.put(TextureRenderKeys.KEY_IS_X, com.google.android.gms.ads.internal.client.zzbb.zzb().zzb(context, point2.x));
                jSONObject3.put(TextureRenderKeys.KEY_IS_Y, com.google.android.gms.ads.internal.client.zzbb.zzb().zzb(context, point2.y));
                jSONObject3.put("start_x", com.google.android.gms.ads.internal.client.zzbb.zzb().zzb(context, point.x));
                jSONObject3.put("start_y", com.google.android.gms.ads.internal.client.zzbb.zzb().zzb(context, point.y));
                jSONObject2 = jSONObject3;
            } catch (JSONException e11) {
                int i10 = zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzh("Error occurred while putting signals into JSON object.", e11);
            }
            jSONObject.put("click_point", jSONObject2);
            jSONObject.put("asset_id", str);
            return jSONObject;
        } catch (Exception e12) {
            e = e12;
            jSONObject2 = jSONObject;
            int i11 = zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzh("Error occurred while grabbing click signals.", e);
            return jSONObject2;
        }
    }

    public static JSONObject zzd(Context context, @Nullable Map map, @Nullable Map map2, @Nullable View view, @Nullable ImageView.ScaleType scaleType) {
        String str;
        String str2;
        JSONObject jSONObject;
        JSONObject jSONObject2;
        boolean z10;
        String str3 = "ad_view";
        String str4 = "relative_to";
        JSONObject jSONObject3 = new JSONObject();
        if (map != null && view != null) {
            int[] zzk = zzk(view);
            Iterator it = map.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                View view2 = (View) ((WeakReference) entry.getValue()).get();
                if (view2 != null) {
                    int[] zzk2 = zzk(view2);
                    JSONObject jSONObject4 = new JSONObject();
                    JSONObject jSONObject5 = new JSONObject();
                    Iterator it2 = it;
                    try {
                        JSONObject jSONObject6 = jSONObject3;
                        try {
                            jSONObject5.put("width", com.google.android.gms.ads.internal.client.zzbb.zzb().zzb(context, view2.getMeasuredWidth()));
                            jSONObject5.put("height", com.google.android.gms.ads.internal.client.zzbb.zzb().zzb(context, view2.getMeasuredHeight()));
                            jSONObject5.put(TextureRenderKeys.KEY_IS_X, com.google.android.gms.ads.internal.client.zzbb.zzb().zzb(context, zzk2[0] - zzk[0]));
                            jSONObject5.put(TextureRenderKeys.KEY_IS_Y, com.google.android.gms.ads.internal.client.zzbb.zzb().zzb(context, zzk2[1] - zzk[1]));
                            jSONObject5.put(str4, str3);
                            jSONObject4.put(TypedValues.AttributesType.S_FRAME, jSONObject5);
                            Rect rect = new Rect();
                            if (view2.getLocalVisibleRect(rect)) {
                                jSONObject2 = zzl(context, rect);
                            } else {
                                jSONObject2 = new JSONObject();
                                jSONObject2.put("width", 0);
                                jSONObject2.put("height", 0);
                                jSONObject2.put(TextureRenderKeys.KEY_IS_X, com.google.android.gms.ads.internal.client.zzbb.zzb().zzb(context, zzk2[0] - zzk[0]));
                                jSONObject2.put(TextureRenderKeys.KEY_IS_Y, com.google.android.gms.ads.internal.client.zzbb.zzb().zzb(context, zzk2[1] - zzk[1]));
                                jSONObject2.put(str4, str3);
                            }
                            jSONObject4.put("visible_bounds", jSONObject2);
                            if (((String) entry.getKey()).equals("3010")) {
                                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzio)).booleanValue()) {
                                    jSONObject4.put("mediaview_graphics_matrix", view2.getMatrix().toShortString());
                                }
                                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzip)).booleanValue()) {
                                    ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
                                    jSONObject4.put("view_width_layout_type", zzm(layoutParams.width) - 1);
                                    jSONObject4.put("view_height_layout_type", zzm(layoutParams.height) - 1);
                                }
                                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zziq)).booleanValue()) {
                                    ArrayList arrayList = new ArrayList();
                                    arrayList.add(Integer.valueOf(view2.getId()));
                                    for (ViewParent parent = view2.getParent(); parent instanceof View; parent = parent.getParent()) {
                                        arrayList.add(Integer.valueOf(((View) parent).getId()));
                                    }
                                    jSONObject4.put("view_path", TextUtils.join(DomExceptionUtils.SEPARATOR, arrayList));
                                }
                                if (scaleType != null) {
                                    jSONObject4.put("mediaview_scale_type", scaleType.ordinal());
                                }
                            }
                            if (view2 instanceof TextView) {
                                TextView textView = (TextView) view2;
                                jSONObject4.put("text_color", textView.getCurrentTextColor());
                                str = str3;
                                str2 = str4;
                                try {
                                    jSONObject4.put("font_size", textView.getTextSize());
                                    jSONObject4.put(MimeTypes.BASE_TYPE_TEXT, textView.getText());
                                } catch (JSONException unused) {
                                    jSONObject = jSONObject6;
                                    int i10 = zze.zza;
                                    com.google.android.gms.ads.internal.util.client.zzo.zzj("Unable to get asset views information");
                                    it = it2;
                                    jSONObject3 = jSONObject;
                                    str3 = str;
                                    str4 = str2;
                                }
                            } else {
                                str = str3;
                                str2 = str4;
                            }
                            if (map2 != null && map2.containsKey(entry.getKey()) && view2.isClickable()) {
                                z10 = true;
                            } else {
                                z10 = false;
                            }
                            jSONObject4.put("is_clickable", z10);
                            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzir)).booleanValue()) {
                                jSONObject4.put("alpha", view2.getAlpha());
                            }
                            jSONObject = jSONObject6;
                            try {
                                jSONObject.put((String) entry.getKey(), jSONObject4);
                            } catch (JSONException unused2) {
                                int i102 = zze.zza;
                                com.google.android.gms.ads.internal.util.client.zzo.zzj("Unable to get asset views information");
                                it = it2;
                                jSONObject3 = jSONObject;
                                str3 = str;
                                str4 = str2;
                            }
                        } catch (JSONException unused3) {
                            str = str3;
                            str2 = str4;
                        }
                    } catch (JSONException unused4) {
                        str = str3;
                        str2 = str4;
                        jSONObject = jSONObject3;
                    }
                    it = it2;
                    jSONObject3 = jSONObject;
                    str3 = str;
                    str4 = str2;
                }
            }
        }
        return jSONObject3;
    }

    public static JSONObject zze(Context context, @Nullable View view) {
        JSONObject jSONObject = new JSONObject();
        if (view != null) {
            try {
                com.google.android.gms.ads.internal.zzv.zzr();
                jSONObject.put("can_show_on_lock_screen", zzs.zzo(view));
                com.google.android.gms.ads.internal.zzv.zzr();
                jSONObject.put("is_keyguard_locked", zzs.zzE(context));
            } catch (JSONException unused) {
                int i10 = zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzj("Unable to get lock screen information");
            }
        }
        return jSONObject;
    }

    @Nullable
    public static JSONObject zzf(Context context) {
        JSONObject jSONObject = new JSONObject();
        com.google.android.gms.ads.internal.zzv.zzr();
        DisplayMetrics zzu = zzs.zzu((WindowManager) context.getSystemService("window"));
        try {
            jSONObject.put("width", com.google.android.gms.ads.internal.client.zzbb.zzb().zzb(context, zzu.widthPixels));
            jSONObject.put("height", com.google.android.gms.ads.internal.client.zzbb.zzb().zzb(context, zzu.heightPixels));
            return jSONObject;
        } catch (JSONException unused) {
            return null;
        }
    }

    public static JSONObject zzg(@Nullable View view) {
        int positionForView;
        JSONObject jSONObject = new JSONObject();
        if (view != null) {
            try {
                boolean z10 = true;
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzin)).booleanValue()) {
                    com.google.android.gms.ads.internal.zzv.zzr();
                    ViewParent parent = view.getParent();
                    while (parent != null && !(parent instanceof ScrollView)) {
                        parent = parent.getParent();
                    }
                    if (parent == null) {
                        z10 = false;
                    }
                    jSONObject.put("contained_in_scroll_view", z10);
                } else {
                    com.google.android.gms.ads.internal.zzv.zzr();
                    ViewParent parent2 = view.getParent();
                    while (parent2 != null && !(parent2 instanceof AdapterView)) {
                        parent2 = parent2.getParent();
                    }
                    if (parent2 == null) {
                        positionForView = -1;
                    } else {
                        positionForView = ((AdapterView) parent2).getPositionForView(view);
                    }
                    if (positionForView == -1) {
                        z10 = false;
                    }
                    jSONObject.put("contained_in_scroll_view", z10);
                }
            } catch (Exception unused) {
            }
        }
        return jSONObject;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(16:3|4|5|(2:8|6)|9|10|(1:12)(1:65)|13|14|(7:56|57|17|18|19|20|(10:22|(8:26|27|(2:29|(1:31)(1:47))(1:48)|32|33|(2:42|43)|35|(2:37|38))|49|27|(0)(0)|32|33|(0)|35|(0))(10:50|(8:52|27|(0)(0)|32|33|(0)|35|(0))|49|27|(0)(0)|32|33|(0)|35|(0)))|16|17|18|19|20|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x015e, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x016a, code lost:
        r2 = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzh("Could not log native template signal to JSON", r0);
     */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0138  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0157  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0165 A[Catch: JSONException -> 0x015e, TRY_LEAVE, TryCatch #7 {JSONException -> 0x015e, blocks: (B:29:0x012f, B:46:0x015a, B:49:0x0160, B:50:0x0165), top: B:73:0x012f }] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0183 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01b7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static org.json.JSONObject zzh(android.content.Context r16, @androidx.annotation.Nullable android.view.View r17) {
        /*
            Method dump skipped, instructions count: 459
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.util.zzbv.zzh(android.content.Context, android.view.View):org.json.JSONObject");
    }

    public static boolean zzi(Context context, zzfca zzfcaVar) {
        if (!zzfcaVar.zzN) {
            return false;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzis)).booleanValue()) {
            return ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zziv)).booleanValue();
        }
        String str = (String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzit);
        if (!str.isEmpty() && context != null) {
            String packageName = context.getPackageName();
            for (String str2 : zzfwe.zzb(zzfva.zzc(';')).zzd(str)) {
                if (str2.equals(packageName)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean zzj(int i10) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzdL)).booleanValue()) {
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzdM)).booleanValue() && i10 > 15299999) {
                return false;
            }
            return true;
        }
        return true;
    }

    public static int[] zzk(@Nullable View view) {
        int[] iArr = new int[2];
        if (view != null) {
            view.getLocationOnScreen(iArr);
        }
        return iArr;
    }

    private static JSONObject zzl(Context context, Rect rect) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("width", com.google.android.gms.ads.internal.client.zzbb.zzb().zzb(context, rect.right - rect.left));
        jSONObject.put("height", com.google.android.gms.ads.internal.client.zzbb.zzb().zzb(context, rect.bottom - rect.top));
        jSONObject.put(TextureRenderKeys.KEY_IS_X, com.google.android.gms.ads.internal.client.zzbb.zzb().zzb(context, rect.left));
        jSONObject.put(TextureRenderKeys.KEY_IS_Y, com.google.android.gms.ads.internal.client.zzbb.zzb().zzb(context, rect.top));
        jSONObject.put("relative_to", "self");
        return jSONObject;
    }

    private static int zzm(int i10) {
        if (i10 != -2) {
            if (i10 != -1) {
                return 2;
            }
            return 3;
        }
        return 4;
    }
}
