package q1;

import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: MetadataMatcher.kt */
@Metadata
@SourceDebugExtension({"SMAP\nMetadataMatcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MetadataMatcher.kt\ncom/facebook/appevents/aam/MetadataMatcher\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,116:1\n37#2,2:117\n*S KotlinDebug\n*F\n+ 1 MetadataMatcher.kt\ncom/facebook/appevents/aam/MetadataMatcher\n*L\n42#1:117,2\n*E\n"})
/* loaded from: classes3.dex */
public final class c {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final c f65024a = new c();

    private c() {
    }

    @NotNull
    public static final List<String> a(@NotNull View view) {
        if (o4.a.d(c.class)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(view, "view");
            ArrayList arrayList = new ArrayList();
            ViewGroup j10 = t1.d.j(view);
            if (j10 != null) {
                for (View view2 : t1.d.b(j10)) {
                    if (view != view2) {
                        arrayList.addAll(f65024a.c(view2));
                    }
                }
            }
            return arrayList;
        } catch (Throwable th2) {
            o4.a.b(th2, c.class);
            return null;
        }
    }

    @NotNull
    public static final List<String> b(@NotNull View view) {
        if (o4.a.d(c.class)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(view, "view");
            ArrayList<String> arrayList = new ArrayList();
            arrayList.add(t1.d.i(view));
            Object tag = view.getTag();
            if (tag != null) {
                arrayList.add(tag.toString());
            }
            CharSequence contentDescription = view.getContentDescription();
            if (contentDescription != null) {
                arrayList.add(contentDescription.toString());
            }
            try {
                if (view.getId() != -1) {
                    String resourceName = view.getResources().getResourceName(view.getId());
                    Intrinsics.checkNotNullExpressionValue(resourceName, "resourceName");
                    String[] strArr = (String[]) new Regex(DomExceptionUtils.SEPARATOR).q(resourceName, 0).toArray(new String[0]);
                    if (strArr.length == 2) {
                        arrayList.add(strArr[1]);
                    }
                }
            } catch (Resources.NotFoundException unused) {
            }
            ArrayList arrayList2 = new ArrayList();
            for (String str : arrayList) {
                if (str.length() > 0 && str.length() <= 100) {
                    String lowerCase = str.toLowerCase();
                    Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase()");
                    arrayList2.add(lowerCase);
                }
            }
            return arrayList2;
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
            if (view instanceof EditText) {
                return arrayList;
            }
            if (view instanceof TextView) {
                String obj = ((TextView) view).getText().toString();
                if (obj.length() > 0 && obj.length() < 100) {
                    String lowerCase = obj.toLowerCase();
                    Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase()");
                    arrayList.add(lowerCase);
                }
                return arrayList;
            }
            for (View view2 : t1.d.b(view)) {
                arrayList.addAll(c(view2));
            }
            return arrayList;
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return null;
        }
    }

    private final boolean d(String str, List<String> list) {
        if (o4.a.d(this)) {
            return false;
        }
        try {
            for (String str2 : list) {
                if (StringsKt.b0(str, str2, false, 2, null)) {
                    return true;
                }
            }
            return false;
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return false;
        }
    }

    public static final boolean e(@NotNull List<String> indicators, @NotNull List<String> keys) {
        if (o4.a.d(c.class)) {
            return false;
        }
        try {
            Intrinsics.checkNotNullParameter(indicators, "indicators");
            Intrinsics.checkNotNullParameter(keys, "keys");
            for (String str : indicators) {
                if (f65024a.d(str, keys)) {
                    return true;
                }
            }
            return false;
        } catch (Throwable th2) {
            o4.a.b(th2, c.class);
            return false;
        }
    }

    public static final boolean f(@NotNull String text, @NotNull String rule) {
        if (o4.a.d(c.class)) {
            return false;
        }
        try {
            Intrinsics.checkNotNullParameter(text, "text");
            Intrinsics.checkNotNullParameter(rule, "rule");
            return new Regex(rule).k(text);
        } catch (Throwable th2) {
            o4.a.b(th2, c.class);
            return false;
        }
    }
}
