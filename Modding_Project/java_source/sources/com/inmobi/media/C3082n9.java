package com.inmobi.media;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Point;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.inmobi.ads.rendering.InMobiAdActivity;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.n9  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3082n9 {
    public static ViewGroup.LayoutParams a(C2920d8 asset, ViewGroup parent) {
        Intrinsics.checkNotNullParameter(asset, "asset");
        Intrinsics.checkNotNullParameter(parent, "parent");
        C2937e8 c2937e8 = asset.f24581d;
        Point point = c2937e8.f24637a;
        Point point2 = c2937e8.f24639c;
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(a(point.x), a(point.y));
        if (parent instanceof C3017j8) {
            C3001i8 c3001i8 = new C3001i8(a(point.x), a(point.y));
            int a10 = a(point2.x);
            int a11 = a(point2.y);
            c3001i8.f24856a = a10;
            c3001i8.f24857b = a11;
            return c3001i8;
        } else if (parent instanceof LinearLayout) {
            LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(a(point.x), a(point.y));
            layoutParams2.setMargins(a(point2.x), a(point2.y), 0, 0);
            return layoutParams2;
        } else if (parent instanceof AbsListView) {
            return new AbsListView.LayoutParams(a(point.x), a(point.y));
        } else {
            if (parent instanceof FrameLayout) {
                FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(a(point.x), a(point.y));
                layoutParams3.setMargins(a(point2.x), a(point2.y), 0, 0);
                return layoutParams3;
            }
            HashMap hashMap = D9.f23586c;
            Intrinsics.checkNotNullExpressionValue("D9", "access$getTAG$cp(...)");
            return layoutParams;
        }
    }

    public static int a(int i10) {
        int i11;
        return ((((Context) D9.f23588e.get()) instanceof InMobiAdActivity) || (i11 = D9.f23589f) == 0) ? i10 : (int) (((i11 * 1.0d) / D9.f23590g) * i10);
    }

    public static void a(Context context, ImageView imageView) {
        Bitmap createBitmap;
        if (imageView.getDrawable() == null) {
            float f10 = U3.d().f24299c;
            C3251y3 c3251y3 = new C3251y3(context, (byte) 0, null);
            if (Build.VERSION.SDK_INT < 28) {
                c3251y3.layout(0, 0, (int) (a(40) * f10), (int) (a(40) * f10));
                c3251y3.setDrawingCacheEnabled(true);
                c3251y3.buildDrawingCache();
                createBitmap = c3251y3.getDrawingCache();
                Intrinsics.checkNotNullExpressionValue(createBitmap, "getDrawingCache(...)");
            } else {
                c3251y3.layout(0, 0, (int) (a(40) * f10), (int) (a(40) * f10));
                createBitmap = Bitmap.createBitmap((int) (a(40) * f10), (int) (a(40) * f10), Bitmap.Config.ARGB_8888);
                Intrinsics.checkNotNullExpressionValue(createBitmap, "createBitmap(...)");
                c3251y3.draw(new Canvas(createBitmap));
            }
            imageView.setImageBitmap(createBitmap);
        }
    }

    public static final void a(TextView textView, ArrayList arrayList) {
        HashMap hashMap = D9.f23586c;
        int paintFlags = textView.getPaintFlags();
        Iterator it = arrayList.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            String str = (String) it.next();
            int hashCode = str.hashCode();
            if (hashCode != -1178781136) {
                if (hashCode != -1026963764) {
                    if (hashCode != -891985998) {
                        if (hashCode == 3029637 && str.equals(TtmlNode.BOLD)) {
                            i10 |= 1;
                        }
                    } else if (str.equals("strike")) {
                        paintFlags |= 16;
                    }
                } else if (str.equals(TtmlNode.UNDERLINE)) {
                    paintFlags |= 8;
                }
            } else if (str.equals(TtmlNode.ITALIC)) {
                i10 |= 2;
            }
        }
        textView.setTypeface(Typeface.DEFAULT, i10);
        textView.setPaintFlags(paintFlags);
    }

    public static void a(View view, C2937e8 assetStyle) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(assetStyle, "assetStyle");
        int parseColor = Color.parseColor("#00000000");
        try {
            parseColor = Color.parseColor(assetStyle.a());
        } catch (IllegalArgumentException e10) {
            HashMap hashMap = D9.f23586c;
            Intrinsics.checkNotNullExpressionValue("D9", "access$getTAG$cp(...)");
            S5 s52 = S5.f24132a;
            C2947f2 event = new C2947f2(e10);
            Intrinsics.checkNotNullParameter(event, "event");
            S5.f24135d.a(event);
        }
        view.setBackgroundColor(parseColor);
        if (Intrinsics.areEqual("line", assetStyle.f24641e)) {
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setColor(parseColor);
            if (Intrinsics.areEqual("curved", assetStyle.f24642f)) {
                gradientDrawable.setCornerRadius(assetStyle.f24644h);
            }
            int parseColor2 = Color.parseColor("#ff000000");
            try {
                String str = assetStyle.f24645i;
                Locale US = Locale.US;
                Intrinsics.checkNotNullExpressionValue(US, "US");
                String lowerCase = str.toLowerCase(US);
                Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
                parseColor2 = Color.parseColor(lowerCase);
            } catch (IllegalArgumentException e11) {
                HashMap hashMap2 = D9.f23586c;
                Intrinsics.checkNotNullExpressionValue("D9", "access$getTAG$cp(...)");
                S5 s53 = S5.f24132a;
                C2947f2 event2 = new C2947f2(e11);
                Intrinsics.checkNotNullParameter(event2, "event");
                S5.f24135d.a(event2);
            }
            gradientDrawable.setStroke(1, parseColor2);
            view.setBackground(gradientDrawable);
        }
    }

    public static final void a(View view) {
        HashMap hashMap = D9.f23586c;
        view.setBackground(null);
    }
}
