package androidx.compose.ui.text.intl;

import androidx.annotation.RequiresApi;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: AndroidLocaleDelegate.android.kt */
@RequiresApi(api = 24)
@Metadata
/* loaded from: classes.dex */
public final class AndroidLocaleDelegateAPI24 implements PlatformLocaleDelegate {
    @Override // androidx.compose.ui.text.intl.PlatformLocaleDelegate
    @NotNull
    public List<PlatformLocale> getCurrent() {
        android.os.LocaleList localeList = android.os.LocaleList.getDefault();
        Intrinsics.checkNotNullExpressionValue(localeList, "getDefault()");
        ArrayList arrayList = new ArrayList();
        int size = localeList.size();
        for (int i10 = 0; i10 < size; i10++) {
            java.util.Locale locale = localeList.get(i10);
            Intrinsics.checkNotNullExpressionValue(locale, "localeList[i]");
            arrayList.add(new AndroidLocale(locale));
        }
        return arrayList;
    }

    @Override // androidx.compose.ui.text.intl.PlatformLocaleDelegate
    @NotNull
    public PlatformLocale parseLanguageTag(@NotNull String languageTag) {
        Intrinsics.checkNotNullParameter(languageTag, "languageTag");
        java.util.Locale forLanguageTag = java.util.Locale.forLanguageTag(languageTag);
        Intrinsics.checkNotNullExpressionValue(forLanguageTag, "forLanguageTag(languageTag)");
        return new AndroidLocale(forLanguageTag);
    }
}
