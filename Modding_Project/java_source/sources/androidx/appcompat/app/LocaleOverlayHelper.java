package androidx.appcompat.app;

import android.os.LocaleList;
import androidx.annotation.RequiresApi;
import androidx.core.os.LocaleListCompat;
import java.util.LinkedHashSet;
import java.util.Locale;
@RequiresApi(24)
/* loaded from: classes.dex */
final class LocaleOverlayHelper {
    private LocaleOverlayHelper() {
    }

    private static LocaleListCompat combineLocales(LocaleListCompat localeListCompat, LocaleListCompat localeListCompat2) {
        Locale locale;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (int i10 = 0; i10 < localeListCompat.size() + localeListCompat2.size(); i10++) {
            if (i10 < localeListCompat.size()) {
                locale = localeListCompat.get(i10);
            } else {
                locale = localeListCompat2.get(i10 - localeListCompat.size());
            }
            if (locale != null) {
                linkedHashSet.add(locale);
            }
        }
        return LocaleListCompat.create((Locale[]) linkedHashSet.toArray(new Locale[linkedHashSet.size()]));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static LocaleListCompat combineLocalesIfOverlayExists(LocaleListCompat localeListCompat, LocaleListCompat localeListCompat2) {
        if (localeListCompat != null && !localeListCompat.isEmpty()) {
            return combineLocales(localeListCompat, localeListCompat2);
        }
        return LocaleListCompat.getEmptyLocaleList();
    }

    static LocaleListCompat combineLocalesIfOverlayExists(LocaleList localeList, LocaleList localeList2) {
        if (localeList != null && !localeList.isEmpty()) {
            return combineLocales(LocaleListCompat.wrap(localeList), LocaleListCompat.wrap(localeList2));
        }
        return LocaleListCompat.getEmptyLocaleList();
    }
}
