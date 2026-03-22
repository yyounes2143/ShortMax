package com.mbridge.msdk.dycreator.engine;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.util.Xml;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.view.ViewCompat;
import com.mbridge.msdk.dycreator.baseview.GradientOrientationUtils;
import com.mbridge.msdk.dycreator.utils.e;
import com.mbridge.msdk.dycreator.utils.g;
import com.mbridge.msdk.foundation.tools.h0;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.ss.ttvideoengine.ITTVideoEngineEventSource;
import com.unity3d.services.ads.adunit.AdUnitActivity;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.SoftReference;
import java.lang.reflect.Field;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
/* compiled from: MBResource.java */
/* loaded from: classes5.dex */
public class b {

    /* renamed from: g  reason: collision with root package name */
    private static volatile b f26514g;

    /* renamed from: a  reason: collision with root package name */
    private SoftReference<HashMap<String, c>> f26515a;

    /* renamed from: b  reason: collision with root package name */
    private SoftReference<HashMap<String, String>> f26516b;

    /* renamed from: c  reason: collision with root package name */
    private SoftReference<HashMap<String, c>> f26517c;

    /* renamed from: d  reason: collision with root package name */
    private String f26518d;

    /* renamed from: e  reason: collision with root package name */
    private String f26519e;

    /* renamed from: f  reason: collision with root package name */
    private Context f26520f;

    private b() {
    }

    public static b a() {
        if (f26514g == null) {
            synchronized (b.class) {
                try {
                    if (f26514g == null) {
                        f26514g = new b();
                    }
                } finally {
                }
            }
        }
        return f26514g;
    }

    public HashMap b() {
        SoftReference<HashMap<String, c>> softReference = this.f26515a;
        if (softReference == null || softReference.get() == null) {
            HashMap hashMap = new HashMap(45);
            hashMap.put("layout_width", c.layout_width);
            hashMap.put("layout_height", c.layout_height);
            hashMap.put(AdUnitActivity.EXTRA_ORIENTATION, c.orientation);
            hashMap.put("layout_centerHorizontal", c.layout_centerHorizontal);
            hashMap.put("layout_centerVertical", c.layout_centerVertical);
            c cVar = c.layout_marginLeft;
            hashMap.put("layout_marginLeft", cVar);
            c cVar2 = c.layout_marginRight;
            hashMap.put("layout_marginRight", cVar2);
            hashMap.put("layout_margin", c.layout_margin);
            hashMap.put("layout_gravity", c.layout_gravity);
            hashMap.put("layout_alignParentRight", c.layout_alignParentRight);
            hashMap.put("layout_weight", c.layout_weight);
            hashMap.put("contentDescription", c.contentDescription);
            hashMap.put("gravity", c.gravity);
            hashMap.put("id", c.id);
            hashMap.put("layout_below", c.layout_below);
            hashMap.put("layout_above", c.layout_above);
            hashMap.put("layout_toLeftOf", c.layout_toLeftOf);
            hashMap.put("layout_toRightOf", c.layout_toRightOf);
            hashMap.put("layout_toEndOf", c.layout_toEndOf);
            hashMap.put("background", c.background);
            hashMap.put("layout_marginTop", c.layout_marginTop);
            hashMap.put("layout_marginBottom", c.layout_marginBottom);
            hashMap.put("layout_marginLeft", cVar);
            hashMap.put("layout_marginRight", cVar2);
            hashMap.put("layout_alignParentBottom", c.layout_alignParentBottom);
            hashMap.put("layout_alignParentTop", c.layout_alignParentTop);
            hashMap.put("layout_alignParentLeft", c.layout_alignParentLeft);
            hashMap.put("layout_alignWithParentIfMissing", c.layout_alignWithParentIfMissing);
            hashMap.put("layout_alignTop", c.layout_alignTop);
            hashMap.put("layout_alignBottom", c.layout_alignBottom);
            hashMap.put("layout_alignLeft", c.layout_alignLeft);
            hashMap.put("layout_alignRight", c.layout_alignRight);
            hashMap.put("layout_centerInParent", c.layout_centerInParent);
            hashMap.put("layout_alignParentEnd", c.layout_alignParentEnd);
            this.f26515a = new SoftReference<>(hashMap);
        }
        return this.f26515a.get();
    }

    public HashMap<String, c> c() {
        SoftReference<HashMap<String, c>> softReference = this.f26517c;
        if (softReference == null || softReference.get() == null) {
            HashMap hashMap = new HashMap(55);
            hashMap.put("id", c.id);
            hashMap.put(MimeTypes.BASE_TYPE_TEXT, c.text);
            hashMap.put("ellipsize", c.ellipsize);
            hashMap.put("singleLine", c.singleLine);
            hashMap.put("lines", c.lines);
            hashMap.put("maxLength", c.maxLength);
            hashMap.put("drawableLeft", c.drawableLeft);
            hashMap.put("drawablePadding", c.drawablePadding);
            hashMap.put("fadingEdge", c.fadingEdge);
            hashMap.put("scrollHorizontally", c.scrollHorizontally);
            hashMap.put("textColor", c.textColor);
            hashMap.put("textSize", c.textSize);
            hashMap.put("visibility", c.visibility);
            c cVar = c.background;
            hashMap.put("background", cVar);
            hashMap.put("textStyle", c.textStyle);
            hashMap.put(TtmlNode.TAG_STYLE, c.style);
            hashMap.put("layout_width", c.layout_width);
            hashMap.put("layout_height", c.layout_height);
            hashMap.put("layout_below", c.layout_below);
            hashMap.put("layout_centerInParent", c.layout_centerInParent);
            hashMap.put("contentDescription", c.contentDescription);
            hashMap.put("src", c.src);
            hashMap.put("gravity", c.gravity);
            hashMap.put(AdUnitActivity.EXTRA_ORIENTATION, c.orientation);
            hashMap.put("numColumns", c.numColumns);
            hashMap.put("verticalSpacing", c.verticalSpacing);
            hashMap.put("horizontalSpacing", c.horizontalSpacing);
            hashMap.put("background", cVar);
            hashMap.put("layout_marginBottom", c.layout_marginBottom);
            hashMap.put("scaleType", c.scaleType);
            hashMap.put(ITTVideoEngineEventSource.KEY_TAG, c.tag);
            hashMap.put("layout_gravity", c.layout_gravity);
            hashMap.put("parent_view", c.parent_view);
            hashMap.put("padding", c.padding);
            hashMap.put("paddingTop", c.paddingTop);
            hashMap.put("paddingBottom", c.paddingBottom);
            hashMap.put("paddingLeft", c.paddingLeft);
            hashMap.put("paddingRight", c.paddingRight);
            hashMap.put("divider", c.divider);
            hashMap.put("scrollbars", c.scrollbars);
            hashMap.put("listSelector", c.listSelector);
            this.f26517c = new SoftReference<>(hashMap);
        }
        return this.f26517c.get();
    }

    public int d(String str) {
        if (TextUtils.isEmpty(str)) {
            return ViewCompat.MEASURED_STATE_MASK;
        }
        if (str.startsWith("#")) {
            int length = str.length();
            if (length == 7) {
                return (int) Long.decode(str.replace("#", "#FF")).longValue();
            }
            if (length == 9) {
                return (int) Long.decode(str).longValue();
            }
            g.a("返回白色背景");
            return -1;
        } else if (str.startsWith("@color/")) {
            return com.mbridge.msdk.foundation.controller.c.m().d().getColor(h0.a(com.mbridge.msdk.foundation.controller.c.m().d(), str.substring(7), "color"));
        } else {
            return ViewCompat.MEASURED_STATE_MASK;
        }
    }

    public View e(String str) {
        if (this.f26520f != null) {
            try {
                a aVar = new a(this.f26520f);
                new String();
                g.a(str.toString());
                return aVar.a(str, (ViewGroup) null);
            } catch (Exception e10) {
                p0.b("MBResource", e10.getMessage());
            }
        }
        return null;
    }

    public String f(String str) {
        if (!TextUtils.isEmpty(str)) {
            if (!str.startsWith("@")) {
                return str;
            }
            SoftReference<HashMap<String, String>> softReference = this.f26516b;
            if (softReference == null || softReference.get() == null) {
                this.f26516b = new SoftReference<>(d());
            }
            String substring = str.substring(8);
            if (this.f26516b.get() != null && this.f26516b.get().size() > 0) {
                String str2 = this.f26516b.get().get(substring);
                if (!TextUtils.isEmpty(str2)) {
                    return str2;
                }
                try {
                    return com.mbridge.msdk.foundation.controller.c.m().d().getString(h0.a(com.mbridge.msdk.foundation.controller.c.m().d(), substring, TypedValues.Custom.S_STRING));
                } catch (Exception e10) {
                    p0.b("MBResource", e10.getMessage());
                    return null;
                }
            }
            return null;
        }
        return null;
    }

    public void a(Context context, String str) {
        try {
            if (g.f26587a) {
                this.f26518d = context.getFilesDir().toString();
            } else {
                this.f26518d = str;
            }
            if (e.a(context).heightPixels > 320) {
                if (g.f26587a) {
                    this.f26519e = "/drawable-mdpi/";
                } else {
                    this.f26519e = "/drawable-hdpi/";
                }
            } else {
                this.f26519e = "/drawable-mdpi/";
            }
            this.f26520f = context;
            com.mbridge.msdk.dycreator.utils.b.f26584a = a().d();
        } catch (Exception e10) {
            p0.b("MBResource", e10.getMessage());
        }
    }

    public HashMap<String, String> d() {
        InputStream inputStream;
        try {
            inputStream = this.f26520f.getAssets().open("rv_binddatas.xml");
        } catch (IOException e10) {
            e10.printStackTrace();
            inputStream = null;
        }
        XmlPullParser newPullParser = Xml.newPullParser();
        try {
            newPullParser.setInput(inputStream, "utf-8");
            HashMap<String, String> hashMap = new HashMap<>();
            for (int eventType = newPullParser.getEventType(); eventType != 1; eventType = newPullParser.next()) {
                if (eventType == 2) {
                    if (TypedValues.Custom.S_STRING.equals(newPullParser.getName())) {
                        hashMap.put(newPullParser.getAttributeValue(0), newPullParser.nextText());
                    }
                }
            }
            return hashMap;
        } catch (Exception e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public void a(Context context) {
        try {
            if (e.a(context).heightPixels > 320) {
                if (g.f26587a) {
                    this.f26519e = "/drawable-mdpi/";
                } else {
                    this.f26519e = "/drawable-hdpi/";
                }
            } else {
                this.f26519e = "/drawable-mdpi/";
            }
            this.f26520f = context;
            com.mbridge.msdk.dycreator.utils.b.f26584a = a().d();
        } catch (Exception e10) {
            p0.b("MBResource", e10.getMessage());
        }
    }

    public GradientDrawable a(String[] strArr) {
        try {
            GradientDrawable gradientDrawable = new GradientDrawable(GradientOrientationUtils.getOrientation(strArr[2]), new int[]{Color.parseColor(strArr[0]), Color.parseColor(strArr[1])});
            gradientDrawable.setGradientType(0);
            return gradientDrawable;
        } catch (Exception e10) {
            p0.b("MBResource", e10.getMessage());
            return null;
        }
    }

    public int a(String str) {
        try {
            return Integer.parseInt(str);
        } catch (Exception unused) {
            int indexOf = str.indexOf("d");
            int indexOf2 = str.indexOf("s");
            if (indexOf == -1) {
                indexOf = indexOf2;
            }
            int parseInt = Integer.parseInt(str.substring(0, indexOf));
            if (str.contains("d")) {
                return e.a(this.f26520f, parseInt);
            }
            str.contains("s");
            return parseInt;
        }
    }

    public int b(String str) {
        String[] split = str.toUpperCase().split("\\|");
        int i10 = 48;
        try {
            Class<?> cls = Class.forName("android.view.Gravity");
            for (String str2 : split) {
                i10 = cls.getField(str2).getInt(null);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return i10;
    }

    public void a(String str, ImageView imageView) {
        Context context;
        if (str == null || !str.startsWith("@drawable/") || (context = this.f26520f) == null) {
            return;
        }
        try {
            Resources resources = context.getResources();
            String h10 = com.mbridge.msdk.foundation.controller.c.m().h();
            if (TextUtils.isEmpty(h10)) {
                h10 = this.f26520f.getPackageName();
            }
            imageView.setImageResource(resources.getIdentifier(str, "drawable", h10));
        } catch (Exception e10) {
            p0.b("MBResource", e10.getMessage());
        }
    }

    public int c(String str) {
        if (this.f26520f != null) {
            String h10 = com.mbridge.msdk.foundation.controller.c.m().h();
            if (TextUtils.isEmpty(h10)) {
                h10 = this.f26520f.getPackageName();
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append(h10);
            sb2.append(".R$");
            String[] split = str.split("\\.");
            sb2.append(split[1]);
            try {
                Class<?> cls = Class.forName(sb2.toString());
                Object newInstance = cls.newInstance();
                Field declaredField = cls.getDeclaredField(split[2]);
                declaredField.setAccessible(true);
                return ((Integer) declaredField.get(newInstance)).intValue();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        return 0;
    }
}
