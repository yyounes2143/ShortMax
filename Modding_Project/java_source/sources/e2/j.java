package e2;

import android.os.Bundle;
import android.view.View;
import androidx.annotation.RestrictTo;
import com.facebook.GraphRequest;
import com.facebook.appevents.h0;
import com.facebook.appevents.ml.ModelManager;
import com.facebook.internal.u0;
import com.facebook.v;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import e2.j;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: ViewOnClickListener.kt */
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3.dex */
public final class j implements View.OnClickListener {
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public static final a f50779e = new a(null);
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private static final Set<Integer> f50780f = new HashSet();
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final View.OnClickListener f50781a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final WeakReference<View> f50782b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final WeakReference<View> f50783c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final String f50784d;

    /* compiled from: ViewOnClickListener.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void e(String str, String str2, float[] fArr) {
            if (e.f(str)) {
                new h0(v.l()).e(str, str2);
            } else if (e.e(str)) {
                h(str, str2, fArr);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean f(String str, final String str2) {
            final String d10 = b.d(str);
            if (d10 == null) {
                return false;
            }
            if (!Intrinsics.areEqual(d10, "other")) {
                u0.C0(new Runnable() { // from class: e2.i
                    @Override // java.lang.Runnable
                    public final void run() {
                        j.a.g(d10, str2);
                    }
                });
                return true;
            }
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void g(String queriedEvent, String buttonText) {
            Intrinsics.checkNotNullParameter(queriedEvent, "$queriedEvent");
            Intrinsics.checkNotNullParameter(buttonText, "$buttonText");
            j.f50779e.e(queriedEvent, buttonText, new float[0]);
        }

        private final void h(String str, String str2, float[] fArr) {
            Bundle bundle = new Bundle();
            try {
                bundle.putString("event_name", str);
                JSONObject jSONObject = new JSONObject();
                StringBuilder sb2 = new StringBuilder();
                for (float f10 : fArr) {
                    sb2.append(f10);
                    sb2.append(",");
                }
                jSONObject.put("dense", sb2.toString());
                jSONObject.put("button_text", str2);
                bundle.putString(TtmlNode.TAG_METADATA, jSONObject.toString());
                GraphRequest.c cVar = GraphRequest.f14841n;
                StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                String format = String.format(Locale.US, "%s/suggested_events", Arrays.copyOf(new Object[]{v.m()}, 1));
                Intrinsics.checkNotNullExpressionValue(format, "format(locale, format, *args)");
                GraphRequest A = cVar.A(null, format, null, null);
                A.H(bundle);
                A.k();
            } catch (JSONException unused) {
            }
        }

        public final void d(@NotNull View hostView, @NotNull View rootView, @NotNull String activityName) {
            Intrinsics.checkNotNullParameter(hostView, "hostView");
            Intrinsics.checkNotNullParameter(rootView, "rootView");
            Intrinsics.checkNotNullParameter(activityName, "activityName");
            int hashCode = hostView.hashCode();
            if (!j.b().contains(Integer.valueOf(hashCode))) {
                t1.d.r(hostView, new j(hostView, rootView, activityName, null));
                j.b().add(Integer.valueOf(hashCode));
            }
        }

        private a() {
        }
    }

    public /* synthetic */ j(View view, View view2, String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(view, view2, str);
    }

    public static final /* synthetic */ Set b() {
        if (o4.a.d(j.class)) {
            return null;
        }
        try {
            return f50780f;
        } catch (Throwable th2) {
            o4.a.b(th2, j.class);
            return null;
        }
    }

    private final void c(final String str, final String str2, final JSONObject jSONObject) {
        if (o4.a.d(this)) {
            return;
        }
        try {
            u0.C0(new Runnable() { // from class: e2.h
                @Override // java.lang.Runnable
                public final void run() {
                    j.d(jSONObject, str2, this, str);
                }
            });
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(JSONObject viewData, String buttonText, j this$0, String pathID) {
        String[] q10;
        if (o4.a.d(j.class)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(viewData, "$viewData");
            Intrinsics.checkNotNullParameter(buttonText, "$buttonText");
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(pathID, "$pathID");
            try {
                String lowerCase = u0.v(v.l()).toLowerCase();
                Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase()");
                float[] a10 = e2.a.a(viewData, lowerCase);
                String c10 = e2.a.c(buttonText, this$0.f50784d, lowerCase);
                if (a10 == null || (q10 = ModelManager.q(ModelManager.Task.MTML_APP_EVENT_PREDICTION, new float[][]{a10}, new String[]{c10})) == null) {
                    return;
                }
                String str = q10[0];
                b.a(pathID, str);
                if (!Intrinsics.areEqual(str, "other")) {
                    f50779e.e(str, buttonText, a10);
                }
            } catch (Exception unused) {
            }
        } catch (Throwable th2) {
            o4.a.b(th2, j.class);
        }
    }

    private final void e() {
        if (o4.a.d(this)) {
            return;
        }
        try {
            View view = this.f50782b.get();
            View view2 = this.f50783c.get();
            if (view != null && view2 != null) {
                try {
                    String d10 = c.d(view2);
                    String b10 = b.b(view2, d10);
                    if (b10 == null || f50779e.f(b10, d10)) {
                        return;
                    }
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put(MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, c.b(view, view2));
                    jSONObject.put("screenname", this.f50784d);
                    c(b10, d10, jSONObject);
                } catch (Exception unused) {
                }
            }
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(@NotNull View view) {
        if (o4.a.d(this)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(view, "view");
            View.OnClickListener onClickListener = this.f50781a;
            if (onClickListener != null) {
                onClickListener.onClick(view);
            }
            e();
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    private j(View view, View view2, String str) {
        this.f50781a = t1.d.g(view);
        this.f50782b = new WeakReference<>(view2);
        this.f50783c = new WeakReference<>(view);
        String lowerCase = str.toLowerCase();
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase()");
        this.f50784d = StringsKt.P(lowerCase, "activity", "", false, 4, null);
    }
}
