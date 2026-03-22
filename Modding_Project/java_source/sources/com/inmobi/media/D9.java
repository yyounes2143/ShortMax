package com.inmobi.media;

import android.content.Context;
import android.graphics.Color;
import android.graphics.Typeface;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.app.NotificationCompat;
import com.inmobi.media.D9;
import com.inmobi.media.Q8;
import com.squareup.picasso.Callback;
import com.squareup.picasso.RequestCreator;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Stack;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
/* loaded from: classes5.dex */
public final class D9 {

    /* renamed from: d  reason: collision with root package name */
    public static volatile WeakReference f23587d;

    /* renamed from: a  reason: collision with root package name */
    public int f23591a;

    /* renamed from: b  reason: collision with root package name */
    public final HashMap f23592b;

    /* renamed from: c  reason: collision with root package name */
    public static final HashMap f23586c = kotlin.collections.p0.k(ms.k.a(J8.class, (byte) 0), ms.k.a(Sc.class, (byte) 1), ms.k.a(Rc.class, (byte) 2), ms.k.a(C3017j8.class, (byte) 3), ms.k.a(ImageView.class, (byte) 6), ms.k.a(C3066m9.class, (byte) 7), ms.k.a(C3114p9.class, (byte) 4), ms.k.a(Button.class, (byte) 5), ms.k.a(T8.class, (byte) 8), ms.k.a(GestureDetector$OnGestureListenerC2941ec.class, (byte) 9), ms.k.a(K4.class, (byte) 10));

    /* renamed from: e  reason: collision with root package name */
    public static WeakReference f23588e = new WeakReference(null);

    /* renamed from: f  reason: collision with root package name */
    public static int f23589f = 1;

    /* renamed from: g  reason: collision with root package name */
    public static int f23590g = 1;

    public D9(Context context) {
        f23588e = new WeakReference(context);
        this.f23592b = kotlin.collections.p0.k(ms.k.a((byte) 0, new C3225w9(this)), ms.k.a((byte) 3, new C3161s9(this)), ms.k.a((byte) 1, new B9(this)), ms.k.a((byte) 2, new C3241x9(this)), ms.k.a((byte) 6, new C3209v9(this)), ms.k.a((byte) 10, new C3193u9(this)), ms.k.a((byte) 7, new A9(this)), ms.k.a((byte) 4, new C3257y9(this)), ms.k.a((byte) 5, new C3177t9(this)), ms.k.a((byte) 8, new C3273z9(this)), ms.k.a((byte) 9, new C9(this)));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x006b, code lost:
        if (r3.equals("IMAGE") == false) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x007f, code lost:
        if (r3.equals("ICON") == false) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0082, code lost:
        r3 = 6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View a(android.content.Context r9, com.inmobi.media.C2920d8 r10, com.inmobi.commons.core.configs.AdConfig r11) {
        /*
            Method dump skipped, instructions count: 276
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.D9.a(android.content.Context, com.inmobi.media.d8, com.inmobi.commons.core.configs.AdConfig):android.view.View");
    }

    public final void b(View view) {
        byte b10;
        Byte b11 = (Byte) f23586c.get(view.getClass());
        if (b11 != null) {
            b10 = b11.byteValue();
        } else {
            b10 = -1;
        }
        if (-1 == b10) {
            Intrinsics.checkNotNullExpressionValue("D9", "TAG");
            view.toString();
            return;
        }
        AbstractC3145r9 abstractC3145r9 = (AbstractC3145r9) this.f23592b.get(Byte.valueOf(b10));
        if (abstractC3145r9 == null) {
            Intrinsics.checkNotNullExpressionValue("D9", "TAG");
            return;
        }
        if (this.f23591a >= 300) {
            int i10 = 0;
            AbstractC3145r9 abstractC3145r92 = null;
            for (Map.Entry entry : this.f23592b.entrySet()) {
                AbstractC3145r9 abstractC3145r93 = (AbstractC3145r9) entry.getValue();
                if (abstractC3145r93.f25237a.size() > i10) {
                    i10 = abstractC3145r93.f25237a.size();
                    abstractC3145r92 = abstractC3145r93;
                }
            }
            if (abstractC3145r92 != null && abstractC3145r92.f25237a.size() > 0) {
                CollectionsKt.P(abstractC3145r92.f25237a);
            }
        }
        abstractC3145r9.a(view);
    }

    public static final void a(D9 d92, Button button, C2920d8 c2920d8) {
        d92.getClass();
        C2937e8 c2937e8 = c2920d8.f24581d;
        Intrinsics.checkNotNull(c2937e8, "null cannot be cast to non-null type com.inmobi.ads.modelsv2.NativeCtaAsset.NativeCtaAssetStyle");
        C3033k8 c3033k8 = (C3033k8) c2937e8;
        button.setLayoutParams(new ViewGroup.LayoutParams(C3082n9.a(c3033k8.f24637a.x), C3082n9.a(c3033k8.f24637a.y)));
        Object obj = c2920d8.f24582e;
        button.setText(obj instanceof CharSequence ? (CharSequence) obj : null);
        button.setTextSize(1, C3082n9.a(c3033k8.f23849l));
        int parseColor = Color.parseColor("#ff000000");
        try {
            String str = c3033k8.f23851n;
            Locale US = Locale.US;
            Intrinsics.checkNotNullExpressionValue(US, "US");
            String lowerCase = str.toLowerCase(US);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
            parseColor = Color.parseColor(lowerCase);
        } catch (IllegalArgumentException e10) {
            Intrinsics.checkNotNullExpressionValue("D9", "TAG");
            S5 s52 = S5.f24132a;
            C2947f2 event = new C2947f2(e10);
            Intrinsics.checkNotNullParameter(event, "event");
            S5.f24135d.a(event);
        }
        button.setTextColor(parseColor);
        int parseColor2 = Color.parseColor("#00000000");
        try {
            parseColor2 = Color.parseColor(c3033k8.a());
        } catch (IllegalArgumentException e11) {
            Intrinsics.checkNotNullExpressionValue("D9", "TAG");
            S5 s53 = S5.f24132a;
            C2947f2 event2 = new C2947f2(e11);
            Intrinsics.checkNotNullParameter(event2, "event");
            S5.f24135d.a(event2);
        }
        button.setBackgroundColor(parseColor2);
        button.setTextAlignment(4);
        button.setGravity(17);
        C3082n9.a(button, c3033k8.f23852o);
        C3082n9.a(button, c3033k8);
    }

    public static final void a(D9 d92, ImageView imageView, C2920d8 c2920d8) {
        int i10;
        int i11;
        int i12;
        String str;
        d92.getClass();
        Object obj = c2920d8.f24582e;
        String str2 = obj instanceof String ? (String) obj : null;
        if (str2 != null) {
            int a10 = C3082n9.a(c2920d8.f24581d.f24637a.x);
            int a11 = C3082n9.a(c2920d8.f24581d.f24637a.y);
            String str3 = c2920d8.f24581d.f24643g;
            if (Intrinsics.areEqual(str3, "aspectFit")) {
                imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
            } else if (Intrinsics.areEqual(str3, "aspectFill")) {
                imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
            } else {
                imageView.setScaleType(ImageView.ScaleType.FIT_XY);
            }
            Context context = (Context) f23588e.get();
            if (context != null && a10 > 0 && a11 > 0) {
                int length = str2.length() - 1;
                int i13 = 0;
                boolean z10 = false;
                while (i13 <= length) {
                    boolean z11 = Intrinsics.compare((int) str2.charAt(!z10 ? i13 : length), 32) <= 0;
                    if (z10) {
                        if (!z11) {
                            break;
                        }
                        length--;
                    } else if (z11) {
                        i13++;
                    } else {
                        z10 = true;
                    }
                }
                if (str2.subSequence(i13, length + 1).toString().length() > 0) {
                    C3258ya c3258ya = C3258ya.f25463a;
                    RequestCreator load = c3258ya.a(context).load(str2);
                    Object a12 = c3258ya.a(new C3130q9(context, imageView, c2920d8));
                    Intrinsics.checkNotNull(a12, "null cannot be cast to non-null type com.squareup.picasso.Callback");
                    load.into(imageView, (Callback) a12);
                    if (StringsKt.G("cross_button", c2920d8.f24579b, true) && ((str = c2920d8.f24593p) == null || str.length() == 0)) {
                        new Handler(Looper.getMainLooper()).postDelayed(new RunnableC3098o9(context, imageView), 2000L);
                    }
                }
            }
            C2985h8 c2985h8 = c2920d8.f24595r;
            if (c2985h8 == null || !Intrinsics.areEqual("line", c2985h8.f24581d.f24641e)) {
                i10 = 0;
                i11 = 0;
                i12 = 0;
            } else {
                C2937e8 c2937e8 = c2985h8.f24581d;
                int i14 = c2937e8.f24639c.x == c2920d8.f24581d.f24639c.x ? 1 : 0;
                i11 = C3082n9.a(c2937e8.f24637a.x) == C3082n9.a(c2920d8.f24581d.f24637a.x) + c2920d8.f24581d.f24639c.x ? 1 : 0;
                i12 = C3082n9.a(c2985h8.f24581d.f24639c.y) == C3082n9.a(c2920d8.f24581d.f24639c.y) ? 1 : 0;
                r3 = C3082n9.a(c2985h8.f24581d.f24637a.y) == C3082n9.a(c2920d8.f24581d.f24639c.y) + C3082n9.a(c2920d8.f24581d.f24637a.y) ? 1 : 0;
                if (C3082n9.a(c2985h8.f24581d.f24637a.x) == C3082n9.a(c2920d8.f24581d.f24637a.x)) {
                    i10 = r3;
                    i11 = 1;
                    r3 = 1;
                } else {
                    i10 = r3;
                    r3 = i14;
                }
            }
            imageView.setPaddingRelative(r3, i12, i11, i10);
            C3082n9.a(imageView, c2920d8.f24581d);
        }
    }

    public static final void a(D9 d92, TextView textView, C2920d8 c2920d8) {
        d92.getClass();
        C2937e8 c2937e8 = c2920d8.f24581d;
        Intrinsics.checkNotNull(c2937e8, "null cannot be cast to non-null type com.inmobi.ads.modelsv2.NativeTextAsset.NativeTextAssetStyle");
        M8 m82 = (M8) c2937e8;
        textView.setLayoutParams(new ViewGroup.LayoutParams(C3082n9.a(m82.f24637a.x), C3082n9.a(m82.f24637a.y)));
        Object obj = c2920d8.f24582e;
        textView.setText(obj instanceof CharSequence ? (CharSequence) obj : null);
        textView.setTypeface(Typeface.DEFAULT);
        byte b10 = m82.f23850m;
        if (b10 == 0) {
            textView.setGravity(8388627);
        } else if (b10 == 1) {
            textView.setGravity(8388629);
        } else if (b10 == 2) {
            textView.setGravity(17);
        } else {
            textView.setGravity(8388627);
        }
        textView.setTextSize(1, C3082n9.a(m82.f23849l));
        int parseColor = Color.parseColor("#ff000000");
        try {
            String str = m82.f23851n;
            Locale US = Locale.US;
            Intrinsics.checkNotNullExpressionValue(US, "US");
            String lowerCase = str.toLowerCase(US);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
            parseColor = Color.parseColor(lowerCase);
        } catch (IllegalArgumentException e10) {
            Intrinsics.checkNotNullExpressionValue("D9", "TAG");
            S5 s52 = S5.f24132a;
            C2947f2 event = new C2947f2(e10);
            Intrinsics.checkNotNullParameter(event, "event");
            S5.f24135d.a(event);
        }
        textView.setTextColor(parseColor);
        int parseColor2 = Color.parseColor("#00000000");
        try {
            parseColor2 = Color.parseColor(m82.a());
        } catch (IllegalArgumentException e11) {
            Intrinsics.checkNotNullExpressionValue("D9", "TAG");
            S5 s53 = S5.f24132a;
            C2947f2 event2 = new C2947f2(e11);
            Intrinsics.checkNotNullParameter(event2, "event");
            S5.f24135d.a(event2);
        }
        textView.setBackgroundColor(parseColor2);
        textView.setTextAlignment(1);
        C3082n9.a(textView, m82.f23852o);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        textView.setHorizontallyScrolling(true);
        textView.setFocusable(true);
        textView.setFocusableInTouchMode(true);
        C3082n9.a(textView, m82);
    }

    public final void a(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        if (!(view instanceof J8) && !(view instanceof C3017j8)) {
            b(view);
            return;
        }
        C3017j8 c3017j8 = (C3017j8) view;
        if (c3017j8.getChildCount() == 0) {
            b(view);
            return;
        }
        Stack stack = new Stack();
        stack.push(c3017j8);
        while (!stack.isEmpty()) {
            C3017j8 c3017j82 = (C3017j8) stack.pop();
            int childCount = c3017j82.getChildCount();
            while (true) {
                childCount--;
                if (-1 < childCount) {
                    View childAt = c3017j82.getChildAt(childCount);
                    c3017j82.removeViewAt(childCount);
                    if (childAt instanceof C3017j8) {
                        stack.push(childAt);
                    } else {
                        Intrinsics.checkNotNull(childAt);
                        b(childAt);
                    }
                }
            }
            Intrinsics.checkNotNull(c3017j82);
            b(c3017j82);
        }
    }

    public static void a(final T8 t82, C2920d8 c2920d8) {
        long a10;
        t82.setVisibility(4);
        Intrinsics.checkNotNull(c2920d8, "null cannot be cast to non-null type com.inmobi.ads.modelsv2.NativeTimerAsset");
        final Q8 q82 = (Q8) c2920d8;
        P8 p82 = q82.f24041x;
        O8 o82 = p82.f23977a;
        O8 o83 = p82.f23978b;
        if (o82 != null) {
            try {
                a10 = o82.a();
            } catch (Exception e10) {
                Intrinsics.checkNotNullExpressionValue("D9", "TAG");
                S5 s52 = S5.f24132a;
                S5.f24135d.a(AbstractC3221w5.a(e10, NotificationCompat.CATEGORY_EVENT));
                return;
            }
        } else {
            a10 = 0;
        }
        long a11 = o83 != null ? o83.a() : 0L;
        if (a11 >= 0) {
            t82.setTimerValue(a11);
            new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: ub.t
                @Override // java.lang.Runnable
                public final void run() {
                    D9.a(Q8.this, t82);
                }
            }, a10 * 1000);
        }
    }

    public static final void a(Q8 timerAsset, T8 timerView) {
        Intrinsics.checkNotNullParameter(timerAsset, "$timerAsset");
        Intrinsics.checkNotNullParameter(timerView, "$timerView");
        if (f23588e.get() != null) {
            if (timerAsset.f24042y) {
                timerView.setVisibility(0);
            }
            timerView.d();
        }
    }
}
