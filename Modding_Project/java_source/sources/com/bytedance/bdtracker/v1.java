package com.bytedance.bdtracker;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.ss.texturerender.TextureRenderKeys;
import com.ss.ttm.player.MediaPlayer;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.lang.reflect.Method;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class v1 extends k1 {

    /* renamed from: e  reason: collision with root package name */
    public final Context f12464e;

    /* renamed from: f  reason: collision with root package name */
    public final d f12465f;

    public v1(d dVar, Context context) {
        super(true, false);
        this.f12465f = dVar;
        this.f12464e = context;
    }

    @Override // com.bytedance.bdtracker.k1
    public String a() {
        return "Display";
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Class, java.lang.Class<android.view.Display>] */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v17 */
    /* JADX WARN: Type inference failed for: r0v18 */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5, types: [int] */
    @Override // com.bytedance.bdtracker.k1
    public boolean a(JSONObject jSONObject) {
        String str;
        int i10;
        int i11 = Display.class;
        int i12 = this.f12464e.getResources().getDisplayMetrics().densityDpi;
        switch (i12) {
            case 120:
                str = "ldpi";
                break;
            case 240:
                str = "hdpi";
                break;
            case 260:
            case MediaPlayer.MEDIA_PLAYER_OPTION_VIDEOCODEC_PIXEL_ALIGN /* 280 */:
            case 300:
            case 320:
                str = "xhdpi";
                break;
            case 340:
            case 360:
            case 400:
            case 420:
            case TTVideoEngineInterface.PLAYER_OPTION_AUDIO_PROCESSOR_ADDR /* 440 */:
            case 480:
                str = "xxhdpi";
                break;
            case 560:
            case MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FRAME_DTS_CHECK /* 640 */:
                str = "xxxhdpi";
                break;
            default:
                str = "mdpi";
                break;
        }
        jSONObject.put("density_dpi", i12);
        jSONObject.put("display_density", str);
        DisplayMetrics displayMetrics = new DisplayMetrics();
        Display defaultDisplay = ((WindowManager) this.f12464e.getSystemService("window")).getDefaultDisplay();
        try {
            try {
            } catch (Throwable th2) {
                th = th2;
                this.f12465f.D.error("Get screen pixels failed", th, new Object[0]);
                i10 = 0;
                int[] iArr = {i11, i10};
                jSONObject.put("resolution", iArr[1] + TextureRenderKeys.KEY_IS_X + iArr[0]);
                return true;
            }
        } catch (Throwable th3) {
            th = th3;
            i11 = 0;
            this.f12465f.D.error("Get screen pixels failed", th, new Object[0]);
            i10 = 0;
            int[] iArr2 = {i11, i10};
            jSONObject.put("resolution", iArr2[1] + TextureRenderKeys.KEY_IS_X + iArr2[0]);
            return true;
        }
        if (defaultDisplay == null) {
            Method method = i11.getMethod("getRawHeight", new Class[0]);
            Method method2 = i11.getMethod("getRawWidth", new Class[0]);
            i11 = method2 != null ? ((Integer) method2.invoke(defaultDisplay, new Object[0])).intValue() : 0;
            if (method != null) {
                i10 = ((Integer) method.invoke(defaultDisplay, new Object[0])).intValue();
                i11 = i11;
            }
            i10 = 0;
            int[] iArr22 = {i11, i10};
            jSONObject.put("resolution", iArr22[1] + TextureRenderKeys.KEY_IS_X + iArr22[0]);
            return true;
        }
        defaultDisplay.getRealMetrics(displayMetrics);
        int i13 = displayMetrics.widthPixels;
        i10 = displayMetrics.heightPixels;
        i11 = i13;
        int[] iArr222 = {i11, i10};
        jSONObject.put("resolution", iArr222[1] + TextureRenderKeys.KEY_IS_X + iArr222[0]);
        return true;
    }
}
