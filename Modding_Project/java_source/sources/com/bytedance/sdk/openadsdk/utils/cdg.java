package com.bytedance.sdk.openadsdk.utils;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Outline;
import android.graphics.Picture;
import android.graphics.Point;
import android.os.Build;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Pair;
import android.view.Display;
import android.view.DisplayCutout;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.ViewParent;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.webkit.WebView;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class cdg {
    private static final Object BTZ = new Object();
    private static int Pfn = -1;
    private static boolean PiB = true;
    private static int ZYk = -1;

    /* renamed from: ba  reason: collision with root package name */
    private static int f13403ba = -1;
    private static WindowManager cFZ = null;
    private static Boolean dLZ = null;
    private static int ex = -1;
    private static int jFA = -1;
    private static float kkU = -1.0f;
    private static float oJ = -1.0f;

    /* renamed from: so  reason: collision with root package name */
    private static ViewConfiguration f13404so = null;
    private static float tB = -1.0f;

    public static int BTZ(Context context) {
        return ((Integer) dLZ(context).second).intValue();
    }

    public static int Pfn(Context context) {
        oJ(context);
        return Pfn;
    }

    public static int PiB(Context context) {
        return ((Integer) dLZ(context).first).intValue();
    }

    public static boolean Ry(Context context) {
        return context.getPackageManager().hasSystemFeature("com.oppo.feature.screen.heteromorphism");
    }

    public static boolean WcQ(Context context) {
        try {
            Class<?> loadClass = context.getClassLoader().loadClass("com.huawei.android.util.HwNotchSizeUtil");
            return ((Boolean) loadClass.getMethod("hasNotchInScreen", new Class[0]).invoke(loadClass, new Object[0])).booleanValue();
        } catch (ClassNotFoundException | NoSuchMethodException | Exception unused) {
            return false;
        }
    }

    public static boolean awB(Context context) {
        try {
            Class<?> loadClass = context.getClassLoader().loadClass("android.util.FtFeature");
            return ((Boolean) loadClass.getMethod("isFeatureSupport", Integer.TYPE).invoke(loadClass, 32)).booleanValue();
        } catch (ClassNotFoundException | NoSuchMethodException | Exception unused) {
            return false;
        }
    }

    public static int ba(Context context) {
        if (context == null) {
            com.bytedance.sdk.openadsdk.core.si.oJ();
        }
        if (context == null) {
            return f13403ba;
        }
        if (context.getResources() != null && context.getResources().getConfiguration() != null) {
            f13403ba = context.getResources().getConfiguration().smallestScreenWidthDp;
        }
        return f13403ba;
    }

    public static int cFZ(Context context) {
        oJ(context);
        return tB(context, Pfn);
    }

    public static Pair<Integer, Integer> dLZ(Context context) {
        if (context == null) {
            context = com.bytedance.sdk.openadsdk.core.si.oJ();
        }
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getRealSize(point);
        return new Pair<>(Integer.valueOf(point.x), Integer.valueOf(point.y));
    }

    public static boolean eZI(Context context) {
        String str = Build.MODEL;
        if (!str.equals("IN2010") && !str.equals("IN2020") && !str.equals("KB2000") && !str.startsWith("ONEPLUS")) {
            return false;
        }
        return true;
    }

    public static int ex(Context context) {
        oJ(context);
        return tB(context, ex);
    }

    public static float jFA(Context context) {
        oJ(context);
        return tB;
    }

    public static int kkU(Context context) {
        oJ(context);
        return ZYk;
    }

    private static boolean oJ(int i10) {
        return i10 == 0 || i10 == 8 || i10 == 4;
    }

    public static boolean si(Context context) {
        String str;
        try {
            Resources resources = context.getResources();
            int identifier = resources.getIdentifier("config_mainBuiltInDisplayCutout", TypedValues.Custom.S_STRING, "android");
            if (identifier > 0) {
                str = resources.getString(identifier);
            } else {
                str = null;
            }
            if (str != null) {
                if (!TextUtils.isEmpty(str)) {
                    return true;
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }

    public static float so(Context context) {
        oJ(context, true);
        return oJ;
    }

    private static boolean tB() {
        return oJ < 0.0f || ZYk < 0 || tB < 0.0f || ex < 0 || Pfn < 0;
    }

    public static int ZYk(Context context, float f10) {
        if (f10 == 0.0f) {
            return 0;
        }
        return Float.valueOf(oJ(context, f10, true)).intValue();
    }

    public static void oJ(Context context) {
        oJ(context, false);
    }

    public static int tB(Context context, float f10) {
        oJ(context, true);
        float so2 = so(context);
        if (so2 <= 0.0f) {
            so2 = 1.0f;
        }
        return (int) ((f10 / so2) + 0.5f);
    }

    public static void Pfn(View view) {
        if (view == null) {
            return;
        }
        final WeakReference weakReference = new WeakReference(view);
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, "alpha", 1.0f, 0.0f);
        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.bytedance.sdk.openadsdk.utils.cdg.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                View view2 = (View) weakReference.get();
                if (view2 != null) {
                    cdg.oJ(view2, 8);
                    view2.setAlpha(1.0f);
                }
            }
        });
        ofFloat.setDuration(800L);
        ofFloat.start();
    }

    public static int[] ZYk(Context context) {
        if (context == null) {
            return null;
        }
        if (cFZ == null) {
            cFZ = (WindowManager) com.bytedance.sdk.openadsdk.core.si.oJ().getSystemService("window");
        }
        int[] iArr = new int[2];
        WindowManager windowManager = cFZ;
        if (windowManager != null) {
            Display defaultDisplay = windowManager.getDefaultDisplay();
            DisplayMetrics displayMetrics = new DisplayMetrics();
            defaultDisplay.getMetrics(displayMetrics);
            int i10 = displayMetrics.widthPixels;
            int i11 = displayMetrics.heightPixels;
            try {
                Point point = new Point();
                Display.class.getMethod("getRealSize", Point.class).invoke(defaultDisplay, point);
                i10 = point.x;
                i11 = point.y;
            } catch (Exception unused) {
            }
            iArr[0] = i10;
            iArr[1] = i11;
        }
        if (iArr[0] <= 0 || iArr[1] <= 0) {
            DisplayMetrics displayMetrics2 = context.getResources().getDisplayMetrics();
            iArr[0] = displayMetrics2.widthPixels;
            iArr[1] = displayMetrics2.heightPixels;
        }
        return iArr;
    }

    public static void cFZ(View view) {
        if (view == null) {
            return;
        }
        ViewParent parent = view.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(view);
        }
    }

    public static boolean ex(View view) {
        return view != null && view.getVisibility() == 0;
    }

    public static void oJ(Context context, boolean z10) {
        Context oJ2 = context == null ? com.bytedance.sdk.openadsdk.core.si.oJ() : context;
        if (oJ2 == null) {
            return;
        }
        cFZ = (WindowManager) oJ2.getSystemService("window");
        if (tB() || z10) {
            DisplayMetrics displayMetrics = oJ2.getResources().getDisplayMetrics();
            oJ = displayMetrics.density;
            ZYk = displayMetrics.densityDpi;
            tB = displayMetrics.scaledDensity;
            ex = displayMetrics.widthPixels;
            Pfn = displayMetrics.heightPixels;
        }
        if (context == null || context.getResources() == null || context.getResources().getConfiguration() == null) {
            return;
        }
        Configuration configuration = context.getResources().getConfiguration();
        if (configuration.orientation == 1) {
            int i10 = ex;
            int i11 = Pfn;
            if (i10 > i11) {
                ex = i11;
                Pfn = i10;
            }
        } else {
            int i12 = ex;
            int i13 = Pfn;
            if (i12 < i13) {
                ex = i13;
                Pfn = i12;
            }
        }
        f13403ba = configuration.smallestScreenWidthDp;
    }

    public static boolean ex(Activity activity) {
        DisplayCutout displayCutout;
        if (Build.VERSION.SDK_INT >= 28) {
            try {
                WindowInsets rootWindowInsets = activity.getWindow().getDecorView().getRootWindowInsets();
                if (rootWindowInsets != null) {
                    displayCutout = rootWindowInsets.getDisplayCutout();
                    PiB = false;
                } else {
                    displayCutout = null;
                }
                return displayCutout != null;
            } catch (Exception e10) {
                com.bytedance.sdk.component.utils.QSm.tB("UIUtils", e10.getMessage());
                return false;
            }
        }
        return false;
    }

    public static int tB(Context context) {
        oJ(context);
        return ex;
    }

    @Nullable
    public static int[] tB(View view) {
        if (view != null) {
            return new int[]{view.getWidth(), view.getHeight()};
        }
        return null;
    }

    public static void ba(View view) {
        if (view == null) {
            return;
        }
        oJ(view, 0);
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, "alpha", 0.0f, 1.0f);
        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.bytedance.sdk.openadsdk.utils.cdg.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                super.onAnimationEnd(animator);
            }
        });
        ofFloat.setDuration(300L);
        ofFloat.start();
    }

    public static boolean tB(Activity activity) {
        if (dLZ == null) {
            synchronized (BTZ) {
                try {
                    if (dLZ == null) {
                        String oJ2 = com.bytedance.sdk.openadsdk.oq.oJ.oJ("cutout_devices", "");
                        String str = Build.MODEL;
                        boolean z10 = false;
                        if (!TextUtils.isEmpty(oJ2) && !TextUtils.isEmpty(str)) {
                            try {
                                JSONArray jSONArray = new JSONArray(oJ2);
                                for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                                    if (str.equals(jSONArray.getString(i10))) {
                                        dLZ = Boolean.TRUE;
                                        return true;
                                    }
                                }
                            } catch (Exception e10) {
                                com.bytedance.sdk.component.utils.QSm.tB("UIUtils", e10.getMessage());
                            }
                        }
                        dLZ = Boolean.valueOf((ex(activity) || oJ("ro.miui.notch", activity) == 1 || WcQ(activity) || Ry(activity) || awB(activity) || eZI(activity) || si(activity)) ? true : true);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return dLZ.booleanValue();
    }

    public static int[] ZYk(View view) {
        if (view != null) {
            int[] iArr = new int[2];
            view.getLocationOnScreen(iArr);
            return iArr;
        }
        return null;
    }

    public static float oJ(Context context, float f10) {
        oJ(context);
        return f10 * jFA(context);
    }

    public static void ZYk(Activity activity) {
        if (activity == null) {
            return;
        }
        try {
            activity.getWindow().getDecorView().setSystemUiVisibility(1792);
            activity.getWindow().clearFlags(1792);
        } catch (Exception unused) {
        }
    }

    public static float oJ(Context context, float f10, boolean z10) {
        oJ(context);
        return (f10 * so(context)) + (z10 ? 0.5f : 0.0f);
    }

    @Nullable
    public static int[] oJ(View view) {
        if (view == null || view.getVisibility() != 0) {
            return null;
        }
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        return iArr;
    }

    public static boolean ZYk() {
        return PiB && Build.VERSION.SDK_INT >= 28;
    }

    private static Bitmap ZYk(com.bytedance.sdk.component.jFA.ba baVar) {
        if (baVar == null) {
            return null;
        }
        try {
            Bitmap createBitmap = Bitmap.createBitmap(baVar.getWidth(), baVar.getHeight(), Bitmap.Config.RGB_565);
            baVar.draw(new Canvas(createBitmap));
            return createBitmap;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static void oJ(View view, int i10) {
        if (view == null || view.getVisibility() == i10 || !oJ(i10)) {
            return;
        }
        view.setVisibility(i10);
    }

    public static void oJ(TextView textView, CharSequence charSequence) {
        if (textView == null || TextUtils.isEmpty(charSequence)) {
            return;
        }
        textView.setText(charSequence);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void tB(final com.bytedance.sdk.openadsdk.core.model.cY cYVar, String str, String str2, final Bitmap bitmap, final String str3, final long j10) {
        if (bitmap != null) {
            try {
                if (bitmap.getWidth() > 0 && bitmap.getHeight() > 0 && !bitmap.isRecycled()) {
                    com.bytedance.sdk.openadsdk.ex.tB.oJ(System.currentTimeMillis(), cYVar, str, str2, new com.bytedance.sdk.openadsdk.awB.tB.oJ() { // from class: com.bytedance.sdk.openadsdk.utils.cdg.4
                        @Override // com.bytedance.sdk.openadsdk.awB.tB.oJ
                        public JSONObject oJ() {
                            try {
                                int oJ2 = cdg.oJ(bitmap);
                                JSONObject jSONObject = new JSONObject();
                                jSONObject.put("url", str3);
                                long j11 = j10;
                                if (j11 != -1) {
                                    jSONObject.put("page_id", j11);
                                }
                                jSONObject.put("render_type", "h5");
                                int i10 = 0;
                                jSONObject.put("render_type_2", 0);
                                if (oJ2 == 100) {
                                    i10 = 1;
                                }
                                jSONObject.put("is_blank", i10);
                                jSONObject.put("is_playable", com.bytedance.sdk.openadsdk.core.model.Ln.ZYk(cYVar) ? 1 : 0);
                                jSONObject.put("usecache", com.bytedance.sdk.openadsdk.core.BTZ.tB.oJ.oJ().oJ(cYVar) ? 1 : 0);
                                JSONObject jSONObject2 = new JSONObject();
                                try {
                                    jSONObject2.put("ad_extra_data", jSONObject.toString());
                                    return jSONObject2;
                                } catch (JSONException unused) {
                                    return jSONObject2;
                                }
                            } catch (JSONException unused2) {
                                return null;
                            }
                        }
                    });
                }
            } catch (Throwable th2) {
                com.bytedance.sdk.component.utils.QSm.tB("UIUtils", "(Developers can ignore this detection exception)checkWebViewIsTransparent->throwable ex>>>".concat(String.valueOf(th2)));
            }
        }
    }

    private static ArrayList<Integer> ZYk(Bitmap bitmap) {
        if (bitmap == null) {
            return null;
        }
        try {
            int width = bitmap.getWidth();
            int height = bitmap.getHeight();
            int i10 = width * height;
            int[] iArr = new int[i10];
            bitmap.getPixels(iArr, 0, width, 0, 0, width, height);
            ArrayList<Integer> arrayList = new ArrayList<>();
            for (int i11 = 0; i11 < i10; i11++) {
                int i12 = iArr[i11];
                arrayList.add(Integer.valueOf(Color.rgb((16711680 & i12) >> 16, (65280 & i12) >> 8, i12 & 255)));
            }
            return arrayList;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static void oJ(View view, int i10, int i11, int i12, int i13) {
        ViewGroup.LayoutParams layoutParams;
        if (view == null || (layoutParams = view.getLayoutParams()) == null || !(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
            return;
        }
        oJ(view, (ViewGroup.MarginLayoutParams) layoutParams, i10, i11, i12, i13);
    }

    private static void oJ(View view, ViewGroup.MarginLayoutParams marginLayoutParams, int i10, int i11, int i12, int i13) {
        if (view == null || marginLayoutParams == null) {
            return;
        }
        if (marginLayoutParams.leftMargin == i10 && marginLayoutParams.topMargin == i11 && marginLayoutParams.rightMargin == i12 && marginLayoutParams.bottomMargin == i13) {
            return;
        }
        if (i10 != -3) {
            marginLayoutParams.leftMargin = i10;
        }
        if (i11 != -3) {
            marginLayoutParams.topMargin = i11;
        }
        if (i12 != -3) {
            marginLayoutParams.rightMargin = i12;
        }
        if (i13 != -3) {
            marginLayoutParams.bottomMargin = i13;
        }
        view.setLayoutParams(marginLayoutParams);
    }

    public static void ZYk(View view, final float f10) {
        if (view != null && f10 > 0.0f) {
            view.setOutlineProvider(new ViewOutlineProvider() { // from class: com.bytedance.sdk.openadsdk.utils.cdg.5
                @Override // android.view.ViewOutlineProvider
                public void getOutline(View view2, Outline outline) {
                    if (outline == null) {
                        return;
                    }
                    outline.setRoundRect(0, 0, view2.getWidth(), view2.getHeight(), f10);
                }
            });
            view.setClipToOutline(true);
        }
    }

    private static Bitmap oJ(WebView webView) {
        Bitmap bitmap = null;
        try {
            Picture capturePicture = webView.capturePicture();
            bitmap = Bitmap.createBitmap(capturePicture.getWidth(), capturePicture.getHeight(), Bitmap.Config.ARGB_8888);
            capturePicture.draw(new Canvas(bitmap));
            return bitmap;
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.QSm.tB("UIUtils", th2.getMessage());
            return bitmap;
        }
    }

    public static float oJ() {
        float f10 = kkU;
        if (f10 > 0.0f) {
            return f10;
        }
        Resources resources = com.bytedance.sdk.openadsdk.core.si.oJ().getResources();
        int identifier = resources.getIdentifier("status_bar_height", "dimen", "android");
        if (identifier > 0) {
            float dimensionPixelSize = resources.getDimensionPixelSize(identifier);
            kkU = dimensionPixelSize;
            return dimensionPixelSize;
        }
        return 0.0f;
    }

    public static void oJ(Activity activity) {
        if (activity == null || activity.isFinishing()) {
            return;
        }
        try {
            activity.getWindow().getDecorView().setSystemUiVisibility(3846);
            activity.getWindow().addFlags(1792);
        } catch (Exception e10) {
            com.bytedance.sdk.component.utils.QSm.tB("UIUtils", e10.getMessage());
        }
    }

    public static int oJ(String str, Activity activity) {
        if (IUZ.Pfn()) {
            try {
                Class<?> loadClass = activity.getClassLoader().loadClass("android.os.SystemProperties");
                return ((Integer) loadClass.getMethod("getInt", String.class, Integer.TYPE).invoke(loadClass, new String(str), 0)).intValue();
            } catch (ClassNotFoundException e10) {
                com.bytedance.sdk.component.utils.QSm.tB("UIUtils", e10.getMessage());
                return 0;
            } catch (IllegalAccessException e11) {
                com.bytedance.sdk.component.utils.QSm.tB("UIUtils", e11.getMessage());
                return 0;
            } catch (IllegalArgumentException e12) {
                com.bytedance.sdk.component.utils.QSm.tB("UIUtils", e12.getMessage());
                return 0;
            } catch (NoSuchMethodException e13) {
                com.bytedance.sdk.component.utils.QSm.tB("UIUtils", e13.getMessage());
                return 0;
            } catch (InvocationTargetException e14) {
                com.bytedance.sdk.component.utils.QSm.tB("UIUtils", e14.getMessage());
                return 0;
            }
        }
        return 0;
    }

    public static void oJ(View view, View.OnClickListener onClickListener, String str) {
        if (view == null) {
            com.bytedance.sdk.component.utils.QSm.tB("OnclickListener ", str + " is null , can not set OnClickListener !!!");
            return;
        }
        view.setOnClickListener(onClickListener);
    }

    public static void oJ(View view, View.OnTouchListener onTouchListener, String str) {
        if (view == null) {
            com.bytedance.sdk.component.utils.QSm.tB("OnTouchListener ", str + " is null , can not set OnTouchListener !!!");
            return;
        }
        view.setOnTouchListener(onTouchListener);
    }

    public static void oJ(View view, float f10) {
        if (view == null) {
            return;
        }
        view.setAlpha(f10);
    }

    public static void oJ(TextView textView, com.bytedance.sdk.openadsdk.core.widget.eZI ezi, com.bytedance.sdk.openadsdk.core.model.cY cYVar) {
        oJ(textView, ezi, cYVar, 14);
    }

    public static void oJ(TextView textView, com.bytedance.sdk.openadsdk.core.widget.eZI ezi, com.bytedance.sdk.openadsdk.core.model.cY cYVar, int i10) {
        oJ(textView, ezi, (cYVar == null || cYVar.Wd() == null) ? -1.0d : cYVar.Wd().ex(), i10);
    }

    public static void oJ(TextView textView, com.bytedance.sdk.openadsdk.core.widget.eZI ezi, double d10, int i10) {
        if (d10 == -1.0d) {
            if (textView != null) {
                textView.setVisibility(8);
            }
            ezi.setVisibility(8);
            return;
        }
        if (textView != null) {
            textView.setText(String.format(Locale.getDefault(), "%.1f", Double.valueOf(d10)));
        }
        oJ(ezi, d10, i10);
    }

    public static void oJ(com.bytedance.sdk.openadsdk.core.widget.eZI ezi, double d10, int i10) {
        if (d10 < 0.0d) {
            ezi.setVisibility(8);
            return;
        }
        ezi.setVisibility(0);
        ezi.oJ(d10, i10);
    }

    public static Bitmap oJ(com.bytedance.sdk.component.jFA.ba baVar) {
        WebView webView = baVar.getWebView();
        int layerType = webView.getLayerType();
        webView.setLayerType(1, null);
        Bitmap ZYk2 = ZYk(baVar);
        if (ZYk2 == null) {
            ZYk2 = oJ(webView);
        }
        webView.setLayerType(layerType, null);
        if (ZYk2 == null) {
            return null;
        }
        return com.bytedance.sdk.component.utils.ex.oJ(ZYk2, ZYk2.getWidth() / 6, ZYk2.getHeight() / 6);
    }

    public static void oJ(final com.bytedance.sdk.openadsdk.core.model.cY cYVar, final String str, final String str2, final Bitmap bitmap, final String str3, final long j10) {
        ofl.ZYk(new com.bytedance.sdk.component.so.so("startCheckPlayableStatusPercentage") { // from class: com.bytedance.sdk.openadsdk.utils.cdg.3
            @Override // java.lang.Runnable
            public void run() {
                cdg.tB(cYVar, str, str2, bitmap, str3, j10);
            }
        }, 10);
    }

    public static int oJ(Bitmap bitmap) {
        try {
            ArrayList<Integer> ZYk2 = ZYk(bitmap);
            if (ZYk2 == null) {
                return -1;
            }
            HashMap hashMap = new HashMap();
            Iterator<Integer> it = ZYk2.iterator();
            while (it.hasNext()) {
                Integer next = it.next();
                if (hashMap.containsKey(next)) {
                    Integer valueOf = Integer.valueOf(((Integer) hashMap.get(next)).intValue() + 1);
                    hashMap.remove(next);
                    hashMap.put(next, valueOf);
                } else {
                    hashMap.put(next, 1);
                }
            }
            int i10 = 0;
            int i11 = 0;
            for (Map.Entry entry : hashMap.entrySet()) {
                int intValue = ((Integer) entry.getValue()).intValue();
                if (i11 < intValue) {
                    i10 = ((Integer) entry.getKey()).intValue();
                    i11 = intValue;
                }
            }
            if (i10 == 0) {
                return -1;
            }
            return (int) ((i11 / ((bitmap.getWidth() * bitmap.getHeight()) * 1.0f)) * 100.0f);
        } catch (Throwable unused) {
            return -1;
        }
    }

    public static boolean oJ(float f10, float f11, Context context) {
        if (f10 != -1.0f && f11 != -1.0f) {
            if (f13404so == null) {
                f13404so = ViewConfiguration.get(context);
            }
            if (jFA == -1) {
                jFA = f13404so.getScaledTouchSlop();
            }
            if (f10 - f11 > jFA) {
                return true;
            }
        }
        return false;
    }

    public static void oJ(boolean z10) {
        dLZ = Boolean.valueOf(z10);
    }
}
