package e2;

import android.text.TextUtils;
import android.view.View;
import android.widget.AdapterView;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.RadioGroup;
import android.widget.RatingBar;
import android.widget.Spinner;
import android.widget.Switch;
import android.widget.TimePicker;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: SuggestedEventViewHierarchy.kt */
@Metadata
/* loaded from: classes3.dex */
public final class c {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final c f50761a = new c();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final List<Class<? extends View>> f50762b = CollectionsKt.q(Switch.class, Spinner.class, DatePicker.class, TimePicker.class, RadioGroup.class, RatingBar.class, EditText.class, AdapterView.class);

    private c() {
    }

    @NotNull
    public static final List<View> a(@NotNull View view) {
        if (o4.a.d(c.class)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(view, "view");
            ArrayList arrayList = new ArrayList();
            for (Class<? extends View> cls : f50762b) {
                if (cls.isInstance(view)) {
                    return arrayList;
                }
            }
            if (view.isClickable()) {
                arrayList.add(view);
            }
            for (View view2 : t1.d.b(view)) {
                arrayList.addAll(a(view2));
            }
            return arrayList;
        } catch (Throwable th2) {
            o4.a.b(th2, c.class);
            return null;
        }
    }

    @NotNull
    public static final JSONObject b(@NotNull View view, @NotNull View clickedView) {
        if (o4.a.d(c.class)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(view, "view");
            Intrinsics.checkNotNullParameter(clickedView, "clickedView");
            JSONObject jSONObject = new JSONObject();
            if (view == clickedView) {
                try {
                    jSONObject.put("is_interacted", true);
                } catch (JSONException unused) {
                }
            }
            e(view, jSONObject);
            JSONArray jSONArray = new JSONArray();
            for (View view2 : t1.d.b(view)) {
                jSONArray.put(b(view2, clickedView));
            }
            jSONObject.put("childviews", jSONArray);
            return jSONObject;
        } catch (Throwable th2) {
            o4.a.b(th2, c.class);
            return null;
        }
    }

    private final List<String> c(View view) {
        if (o4.a.d(this)) {
            return null;
        }
        try {
            ArrayList arrayList = new ArrayList();
            for (View view2 : t1.d.b(view)) {
                String k10 = t1.d.k(view2);
                if (k10.length() > 0) {
                    arrayList.add(k10);
                }
                arrayList.addAll(c(view2));
            }
            return arrayList;
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return null;
        }
    }

    @NotNull
    public static final String d(@NotNull View hostView) {
        if (o4.a.d(c.class)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(hostView, "hostView");
            String k10 = t1.d.k(hostView);
            if (k10.length() > 0) {
                return k10;
            }
            String join = TextUtils.join(" ", f50761a.c(hostView));
            Intrinsics.checkNotNullExpressionValue(join, "join(\" \", childrenText)");
            return join;
        } catch (Throwable th2) {
            o4.a.b(th2, c.class);
            return null;
        }
    }

    public static final void e(@NotNull View view, @NotNull JSONObject json) {
        if (o4.a.d(c.class)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(view, "view");
            Intrinsics.checkNotNullParameter(json, "json");
            try {
                String k10 = t1.d.k(view);
                String i10 = t1.d.i(view);
                json.put("classname", view.getClass().getSimpleName());
                json.put("classtypebitmask", t1.d.c(view));
                if (k10.length() > 0) {
                    json.put(MimeTypes.BASE_TYPE_TEXT, k10);
                }
                if (i10.length() > 0) {
                    json.put("hint", i10);
                }
                if (view instanceof EditText) {
                    json.put("inputtype", ((EditText) view).getInputType());
                }
            } catch (JSONException unused) {
            }
        } catch (Throwable th2) {
            o4.a.b(th2, c.class);
        }
    }
}
