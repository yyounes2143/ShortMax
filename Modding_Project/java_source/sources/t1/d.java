package t1;

import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.AdapterView;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.RatingBar;
import android.widget.Spinner;
import android.widget.Switch;
import android.widget.TextView;
import android.widget.TimePicker;
import androidx.annotation.RestrictTo;
import androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.internal.u0;
import com.google.ads.mediation.inmobi.InMobiNetworkValues;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.ss.ttvideoengine.ITTVideoEngineEventSource;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: ViewHierarchy.kt */
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3.dex */
public final class d {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final d f66812a = new d();

    /* renamed from: b  reason: collision with root package name */
    private static final String f66813b = d.class.getCanonicalName();
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static WeakReference<View> f66814c = new WeakReference<>(null);
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private static Method f66815d;

    private d() {
    }

    @Nullable
    public static final View a(@Nullable View view) {
        if (o4.a.d(d.class)) {
            return null;
        }
        while (view != null) {
            try {
                if (f66812a.q(view)) {
                    return view;
                }
                ViewParent parent = view.getParent();
                if (!(parent instanceof View)) {
                    break;
                }
                view = (View) parent;
            } catch (Throwable th2) {
                o4.a.b(th2, d.class);
            }
        }
        return null;
    }

    @NotNull
    public static final List<View> b(@Nullable View view) {
        if (o4.a.d(d.class)) {
            return null;
        }
        try {
            ArrayList arrayList = new ArrayList();
            if (view instanceof ViewGroup) {
                int childCount = ((ViewGroup) view).getChildCount();
                for (int i10 = 0; i10 < childCount; i10++) {
                    arrayList.add(((ViewGroup) view).getChildAt(i10));
                }
            }
            return arrayList;
        } catch (Throwable th2) {
            o4.a.b(th2, d.class);
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x004a A[Catch: all -> 0x0044, TryCatch #0 {all -> 0x0044, blocks: (B:5:0x000a, B:9:0x0016, B:11:0x001c, B:12:0x001e, B:14:0x0024, B:15:0x0026, B:17:0x002a, B:19:0x0030, B:21:0x0036, B:28:0x0046, B:30:0x004a, B:22:0x0039, B:24:0x003d, B:31:0x004d, B:33:0x0051, B:36:0x0056, B:38:0x005a, B:39:0x005e, B:41:0x0062, B:42:0x0065, B:44:0x0069), top: B:51:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:52:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final int c(@org.jetbrains.annotations.NotNull android.view.View r5) {
        /*
            java.lang.Class<t1.d> r0 = t1.d.class
            boolean r1 = o4.a.d(r0)
            r2 = 0
            if (r1 == 0) goto La
            return r2
        La:
            java.lang.String r1 = "view"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r1)     // Catch: java.lang.Throwable -> L44
            boolean r1 = r5 instanceof android.widget.ImageView     // Catch: java.lang.Throwable -> L44
            if (r1 == 0) goto L15
            r1 = 2
            goto L16
        L15:
            r1 = r2
        L16:
            boolean r3 = r5.isClickable()     // Catch: java.lang.Throwable -> L44
            if (r3 == 0) goto L1e
            r1 = r1 | 32
        L1e:
            boolean r3 = o(r5)     // Catch: java.lang.Throwable -> L44
            if (r3 == 0) goto L26
            r1 = r1 | 512(0x200, float:7.175E-43)
        L26:
            boolean r3 = r5 instanceof android.widget.TextView     // Catch: java.lang.Throwable -> L44
            if (r3 == 0) goto L4d
            r3 = r1 | 1025(0x401, float:1.436E-42)
            boolean r4 = r5 instanceof android.widget.Button     // Catch: java.lang.Throwable -> L44
            if (r4 == 0) goto L42
            r3 = r1 | 1029(0x405, float:1.442E-42)
            boolean r4 = r5 instanceof android.widget.Switch     // Catch: java.lang.Throwable -> L44
            if (r4 == 0) goto L39
            r1 = r1 | 9221(0x2405, float:1.2921E-41)
            goto L46
        L39:
            boolean r4 = r5 instanceof android.widget.CheckBox     // Catch: java.lang.Throwable -> L44
            if (r4 == 0) goto L42
            r3 = 33797(0x8405, float:4.736E-41)
            r1 = r1 | r3
            goto L46
        L42:
            r1 = r3
            goto L46
        L44:
            r5 = move-exception
            goto L7f
        L46:
            boolean r5 = r5 instanceof android.widget.EditText     // Catch: java.lang.Throwable -> L44
            if (r5 == 0) goto L7e
            r1 = r1 | 2048(0x800, float:2.87E-42)
            goto L7e
        L4d:
            boolean r3 = r5 instanceof android.widget.Spinner     // Catch: java.lang.Throwable -> L44
            if (r3 != 0) goto L7c
            boolean r3 = r5 instanceof android.widget.DatePicker     // Catch: java.lang.Throwable -> L44
            if (r3 == 0) goto L56
            goto L7c
        L56:
            boolean r3 = r5 instanceof android.widget.RatingBar     // Catch: java.lang.Throwable -> L44
            if (r3 == 0) goto L5e
            r5 = 65536(0x10000, float:9.18355E-41)
            r1 = r1 | r5
            goto L7e
        L5e:
            boolean r3 = r5 instanceof android.widget.RadioGroup     // Catch: java.lang.Throwable -> L44
            if (r3 == 0) goto L65
            r1 = r1 | 16384(0x4000, float:2.2959E-41)
            goto L7e
        L65:
            boolean r3 = r5 instanceof android.view.ViewGroup     // Catch: java.lang.Throwable -> L44
            if (r3 == 0) goto L7e
            t1.d r3 = t1.d.f66812a     // Catch: java.lang.Throwable -> L44
            java.lang.ref.WeakReference<android.view.View> r4 = t1.d.f66814c     // Catch: java.lang.Throwable -> L44
            java.lang.Object r4 = r4.get()     // Catch: java.lang.Throwable -> L44
            android.view.View r4 = (android.view.View) r4     // Catch: java.lang.Throwable -> L44
            boolean r5 = r3.p(r5, r4)     // Catch: java.lang.Throwable -> L44
            if (r5 == 0) goto L7e
            r1 = r1 | 64
            goto L7e
        L7c:
            r1 = r1 | 4096(0x1000, float:5.74E-42)
        L7e:
            return r1
        L7f:
            o4.a.b(r5, r0)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: t1.d.c(android.view.View):int");
    }

    @NotNull
    public static final JSONObject d(@NotNull View view) {
        if (o4.a.d(d.class)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(view, "view");
            if (Intrinsics.areEqual(view.getClass().getName(), "com.facebook.react.ReactRootView")) {
                f66814c = new WeakReference<>(view);
            }
            JSONObject jSONObject = new JSONObject();
            try {
                s(view, jSONObject);
                JSONArray jSONArray = new JSONArray();
                List<View> b10 = b(view);
                int size = b10.size();
                for (int i10 = 0; i10 < size; i10++) {
                    jSONArray.put(d(b10.get(i10)));
                }
                jSONObject.put("childviews", jSONArray);
            } catch (JSONException e10) {
                Log.e(f66813b, "Failed to create JSONObject for view.", e10);
            }
            return jSONObject;
        } catch (Throwable th2) {
            o4.a.b(th2, d.class);
            return null;
        }
    }

    private final JSONObject e(View view) {
        if (o4.a.d(this)) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("top", view.getTop());
                jSONObject.put(TtmlNode.LEFT, view.getLeft());
                jSONObject.put("width", view.getWidth());
                jSONObject.put("height", view.getHeight());
                jSONObject.put("scrollx", view.getScrollX());
                jSONObject.put("scrolly", view.getScrollY());
                jSONObject.put("visibility", view.getVisibility());
            } catch (JSONException e10) {
                Log.e(f66813b, "Failed to create JSONObject for dimension.", e10);
            }
            return jSONObject;
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return null;
        }
    }

    private final Class<?> f(String str) {
        if (o4.a.d(this)) {
            return null;
        }
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException unused) {
            return null;
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return null;
        }
    }

    @Nullable
    public static final View.OnClickListener g(@Nullable View view) {
        Field declaredField;
        if (o4.a.d(d.class)) {
            return null;
        }
        try {
            Field declaredField2 = Class.forName(AndroidComposeViewAccessibilityDelegateCompat.ClassName).getDeclaredField("mListenerInfo");
            if (declaredField2 != null) {
                declaredField2.setAccessible(true);
            }
            Object obj = declaredField2.get(view);
            if (obj == null || (declaredField = Class.forName("android.view.View$ListenerInfo").getDeclaredField("mOnClickListener")) == null) {
                return null;
            }
            declaredField.setAccessible(true);
            Object obj2 = declaredField.get(obj);
            Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type android.view.View.OnClickListener");
            return (View.OnClickListener) obj2;
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException unused) {
            return null;
        } catch (Throwable th2) {
            o4.a.b(th2, d.class);
            return null;
        }
    }

    @Nullable
    public static final View.OnTouchListener h(@Nullable View view) {
        Field declaredField;
        try {
            if (o4.a.d(d.class)) {
                return null;
            }
            try {
                try {
                    Field declaredField2 = Class.forName(AndroidComposeViewAccessibilityDelegateCompat.ClassName).getDeclaredField("mListenerInfo");
                    if (declaredField2 != null) {
                        declaredField2.setAccessible(true);
                    }
                    Object obj = declaredField2.get(view);
                    if (obj == null || (declaredField = Class.forName("android.view.View$ListenerInfo").getDeclaredField("mOnTouchListener")) == null) {
                        return null;
                    }
                    declaredField.setAccessible(true);
                    Object obj2 = declaredField.get(obj);
                    Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type android.view.View.OnTouchListener");
                    return (View.OnTouchListener) obj2;
                } catch (NoSuchFieldException e10) {
                    u0.j0(f66813b, e10);
                    return null;
                }
            } catch (ClassNotFoundException e11) {
                u0.j0(f66813b, e11);
                return null;
            } catch (IllegalAccessException e12) {
                u0.j0(f66813b, e12);
                return null;
            }
        } catch (Throwable th2) {
            o4.a.b(th2, d.class);
            return null;
        }
    }

    @NotNull
    public static final String i(@Nullable View view) {
        CharSequence charSequence;
        if (o4.a.d(d.class)) {
            return null;
        }
        try {
            if (view instanceof EditText) {
                charSequence = ((EditText) view).getHint();
            } else if (view instanceof TextView) {
                charSequence = ((TextView) view).getHint();
            } else {
                charSequence = null;
            }
            if (charSequence != null) {
                String obj = charSequence.toString();
                if (obj != null) {
                    return obj;
                }
            }
            return "";
        } catch (Throwable th2) {
            o4.a.b(th2, d.class);
            return null;
        }
    }

    @Nullable
    public static final ViewGroup j(@Nullable View view) {
        if (o4.a.d(d.class) || view == null) {
            return null;
        }
        try {
            ViewParent parent = view.getParent();
            if (!(parent instanceof ViewGroup)) {
                return null;
            }
            return (ViewGroup) parent;
        } catch (Throwable th2) {
            o4.a.b(th2, d.class);
            return null;
        }
    }

    @NotNull
    public static final String k(@Nullable View view) {
        CharSequence valueOf;
        Object selectedItem;
        String str;
        if (o4.a.d(d.class)) {
            return null;
        }
        try {
            if (view instanceof TextView) {
                valueOf = ((TextView) view).getText();
                if (view instanceof Switch) {
                    if (((Switch) view).isChecked()) {
                        str = "1";
                    } else {
                        str = MBridgeConstans.ENDCARD_URL_TYPE_PL;
                    }
                    valueOf = str;
                }
            } else if (view instanceof Spinner) {
                if (((Spinner) view).getCount() > 0 && (selectedItem = ((Spinner) view).getSelectedItem()) != null) {
                    valueOf = selectedItem.toString();
                }
                valueOf = null;
            } else if (view instanceof DatePicker) {
                int year = ((DatePicker) view).getYear();
                int month = ((DatePicker) view).getMonth();
                int dayOfMonth = ((DatePicker) view).getDayOfMonth();
                StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                valueOf = String.format("%04d-%02d-%02d", Arrays.copyOf(new Object[]{Integer.valueOf(year), Integer.valueOf(month), Integer.valueOf(dayOfMonth)}, 3));
                Intrinsics.checkNotNullExpressionValue(valueOf, "format(format, *args)");
            } else if (view instanceof TimePicker) {
                Integer currentHour = ((TimePicker) view).getCurrentHour();
                Intrinsics.checkNotNullExpressionValue(currentHour, "view.currentHour");
                int intValue = currentHour.intValue();
                Integer currentMinute = ((TimePicker) view).getCurrentMinute();
                Intrinsics.checkNotNullExpressionValue(currentMinute, "view.currentMinute");
                int intValue2 = currentMinute.intValue();
                StringCompanionObject stringCompanionObject2 = StringCompanionObject.INSTANCE;
                valueOf = String.format("%02d:%02d", Arrays.copyOf(new Object[]{Integer.valueOf(intValue), Integer.valueOf(intValue2)}, 2));
                Intrinsics.checkNotNullExpressionValue(valueOf, "format(format, *args)");
            } else if (view instanceof RadioGroup) {
                int checkedRadioButtonId = ((RadioGroup) view).getCheckedRadioButtonId();
                int childCount = ((RadioGroup) view).getChildCount();
                for (int i10 = 0; i10 < childCount; i10++) {
                    View childAt = ((RadioGroup) view).getChildAt(i10);
                    if (childAt.getId() == checkedRadioButtonId && (childAt instanceof RadioButton)) {
                        valueOf = ((RadioButton) childAt).getText();
                        break;
                    }
                }
                valueOf = null;
            } else {
                if (view instanceof RatingBar) {
                    valueOf = String.valueOf(((RatingBar) view).getRating());
                }
                valueOf = null;
            }
            if (valueOf != null) {
                String obj = valueOf.toString();
                if (obj != null) {
                    return obj;
                }
            }
            return "";
        } catch (Throwable th2) {
            o4.a.b(th2, d.class);
            return null;
        }
    }

    private final View l(float[] fArr, View view) {
        if (o4.a.d(this)) {
            return null;
        }
        try {
            n();
            Method method = f66815d;
            if (method != null && view != null) {
                try {
                    if (method != null) {
                        Object invoke = method.invoke(null, fArr, view);
                        Intrinsics.checkNotNull(invoke, "null cannot be cast to non-null type android.view.View");
                        View view2 = (View) invoke;
                        if (view2.getId() > 0) {
                            ViewParent parent = view2.getParent();
                            Intrinsics.checkNotNull(parent, "null cannot be cast to non-null type android.view.View");
                            return (View) parent;
                        }
                    } else {
                        throw new IllegalStateException("Required value was null.");
                    }
                } catch (IllegalAccessException e10) {
                    u0.j0(f66813b, e10);
                } catch (InvocationTargetException e11) {
                    u0.j0(f66813b, e11);
                }
            }
            return null;
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return null;
        }
    }

    private final float[] m(View view) {
        if (o4.a.d(this)) {
            return null;
        }
        try {
            int[] iArr = new int[2];
            view.getLocationOnScreen(iArr);
            return new float[]{iArr[0], iArr[1]};
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return null;
        }
    }

    private final void n() {
        if (o4.a.d(this)) {
            return;
        }
        try {
            if (f66815d != null) {
                return;
            }
            try {
                Method declaredMethod = Class.forName("com.facebook.react.uimanager.TouchTargetHelper").getDeclaredMethod("findTouchTargetView", float[].class, ViewGroup.class);
                f66815d = declaredMethod;
                if (declaredMethod != null) {
                    declaredMethod.setAccessible(true);
                    return;
                }
                throw new IllegalStateException("Required value was null.");
            } catch (ClassNotFoundException e10) {
                u0.j0(f66813b, e10);
            } catch (NoSuchMethodException e11) {
                u0.j0(f66813b, e11);
            }
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    private static final boolean o(View view) {
        if (o4.a.d(d.class)) {
            return false;
        }
        try {
            ViewParent parent = view.getParent();
            if (parent instanceof AdapterView) {
                return true;
            }
            d dVar = f66812a;
            Class<?> f10 = dVar.f("android.support.v4.view.NestedScrollingChild");
            if (f10 != null && f10.isInstance(parent)) {
                return true;
            }
            Class<?> f11 = dVar.f("androidx.core.view.NestedScrollingChild");
            if (f11 == null) {
                return false;
            }
            if (!f11.isInstance(parent)) {
                return false;
            }
            return true;
        } catch (Throwable th2) {
            o4.a.b(th2, d.class);
            return false;
        }
    }

    private final boolean q(View view) {
        if (o4.a.d(this)) {
            return false;
        }
        try {
            return Intrinsics.areEqual(view.getClass().getName(), "com.facebook.react.ReactRootView");
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return false;
        }
    }

    public static final void r(@NotNull View view, @Nullable View.OnClickListener onClickListener) {
        Field field;
        Field field2;
        if (o4.a.d(d.class)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(view, "view");
            Object obj = null;
            try {
                try {
                    field = Class.forName(AndroidComposeViewAccessibilityDelegateCompat.ClassName).getDeclaredField("mListenerInfo");
                    try {
                        field2 = Class.forName("android.view.View$ListenerInfo").getDeclaredField("mOnClickListener");
                    } catch (ClassNotFoundException | NoSuchFieldException unused) {
                        field2 = null;
                        if (field == null) {
                        }
                        view.setOnClickListener(onClickListener);
                    }
                } catch (Exception unused2) {
                    return;
                }
            } catch (ClassNotFoundException | NoSuchFieldException unused3) {
                field = null;
            }
            if (field == null && field2 != null) {
                field.setAccessible(true);
                field2.setAccessible(true);
                try {
                    field.setAccessible(true);
                    obj = field.get(view);
                } catch (IllegalAccessException unused4) {
                }
                if (obj == null) {
                    view.setOnClickListener(onClickListener);
                    return;
                } else {
                    field2.set(obj, onClickListener);
                    return;
                }
            }
            view.setOnClickListener(onClickListener);
        } catch (Throwable th2) {
            o4.a.b(th2, d.class);
        }
    }

    public static final void s(@NotNull View view, @NotNull JSONObject json) {
        if (o4.a.d(d.class)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(view, "view");
            Intrinsics.checkNotNullParameter(json, "json");
            try {
                String k10 = k(view);
                String i10 = i(view);
                Object tag = view.getTag();
                CharSequence contentDescription = view.getContentDescription();
                json.put("classname", view.getClass().getCanonicalName());
                json.put("classtypebitmask", c(view));
                json.put("id", view.getId());
                if (!b.g(view)) {
                    json.put(MimeTypes.BASE_TYPE_TEXT, u0.k(u0.G0(k10), ""));
                } else {
                    json.put(MimeTypes.BASE_TYPE_TEXT, "");
                    json.put("is_user_input", true);
                }
                json.put("hint", u0.k(u0.G0(i10), ""));
                if (tag != null) {
                    json.put(ITTVideoEngineEventSource.KEY_TAG, u0.k(u0.G0(tag.toString()), ""));
                }
                if (contentDescription != null) {
                    json.put(InMobiNetworkValues.DESCRIPTION, u0.k(u0.G0(contentDescription.toString()), ""));
                }
                json.put(TypedValues.Custom.S_DIMENSION, f66812a.e(view));
            } catch (JSONException e10) {
                u0.j0(f66813b, e10);
            }
        } catch (Throwable th2) {
            o4.a.b(th2, d.class);
        }
    }

    public final boolean p(@NotNull View view, @Nullable View view2) {
        View l10;
        if (o4.a.d(this)) {
            return false;
        }
        try {
            Intrinsics.checkNotNullParameter(view, "view");
            if (!Intrinsics.areEqual(view.getClass().getName(), "com.facebook.react.views.view.ReactViewGroup") || (l10 = l(m(view), view2)) == null) {
                return false;
            }
            if (l10.getId() != view.getId()) {
                return false;
            }
            return true;
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return false;
        }
    }
}
