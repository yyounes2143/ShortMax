package androidx.compose.ui.text.platform.extensions;

import android.text.style.LocaleSpan;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import androidx.compose.ui.text.intl.Locale;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.platform.AndroidTextPaint;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: LocaleExtensions.android.kt */
@RequiresApi(24)
@Metadata
/* loaded from: classes.dex */
public final class LocaleListHelperMethods {
    @NotNull
    public static final LocaleListHelperMethods INSTANCE = new LocaleListHelperMethods();

    private LocaleListHelperMethods() {
    }

    @DoNotInline
    @RequiresApi(24)
    @NotNull
    public final Object localeSpan(@NotNull LocaleList localeList) {
        Intrinsics.checkNotNullParameter(localeList, "localeList");
        ArrayList arrayList = new ArrayList(CollectionsKt.z(localeList, 10));
        Iterator<Locale> it = localeList.iterator();
        while (it.hasNext()) {
            arrayList.add(LocaleExtensions_androidKt.toJavaLocale(it.next()));
        }
        Object[] array = arrayList.toArray(new java.util.Locale[0]);
        if (array != null) {
            java.util.Locale[] localeArr = (java.util.Locale[]) array;
            return new LocaleSpan(new android.os.LocaleList((java.util.Locale[]) Arrays.copyOf(localeArr, localeArr.length)));
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
    }

    @DoNotInline
    @RequiresApi(24)
    public final void setTextLocales(@NotNull AndroidTextPaint textPaint, @NotNull LocaleList localeList) {
        Intrinsics.checkNotNullParameter(textPaint, "textPaint");
        Intrinsics.checkNotNullParameter(localeList, "localeList");
        ArrayList arrayList = new ArrayList(CollectionsKt.z(localeList, 10));
        Iterator<Locale> it = localeList.iterator();
        while (it.hasNext()) {
            arrayList.add(LocaleExtensions_androidKt.toJavaLocale(it.next()));
        }
        Object[] array = arrayList.toArray(new java.util.Locale[0]);
        if (array != null) {
            java.util.Locale[] localeArr = (java.util.Locale[]) array;
            textPaint.setTextLocales(new android.os.LocaleList((java.util.Locale[]) Arrays.copyOf(localeArr, localeArr.length)));
            return;
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
    }
}
