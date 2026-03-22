package fk;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.LocaleList;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.utils.DeviceUtil;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: LanguageUtil.kt */
@Metadata
/* loaded from: classes7.dex */
public final class v {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final v f51778a = new v();

    private v() {
    }

    @NotNull
    public final Context a(@NotNull Context context, @NotNull String language) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(language, "language");
        return c(context, language);
    }

    public final boolean b() {
        return Intrinsics.areEqual(DeviceUtil.f48146a.e(), "ar");
    }

    @NotNull
    public final Context c(@NotNull Context context, @NotNull String language) {
        Locale locale;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(language, "language");
        if (id.a.f53392a.c()) {
            Logger logger = Logger.f41511a;
            logger.h("LanguageUtil", "setAppLanguage(" + language + ')');
        }
        if (Intrinsics.areEqual(language, "zh_cn")) {
            locale = new Locale("zh", "CN");
        } else if (Intrinsics.areEqual(language, "zh")) {
            locale = new Locale("zh", "TW");
        } else {
            locale = new Locale(language);
        }
        Locale.setDefault(locale);
        try {
            Resources resources = context.getResources();
            Configuration configuration = resources.getConfiguration();
            configuration.setLocale(locale);
            configuration.setLocales(new LocaleList(locale));
            Context createConfigurationContext = context.createConfigurationContext(configuration);
            resources.updateConfiguration(configuration, resources.getDisplayMetrics());
            Intrinsics.checkNotNull(createConfigurationContext);
            return createConfigurationContext;
        } catch (Exception e10) {
            Logger logger2 = Logger.f41511a;
            logger2.e("LanguageUtil", "updateConfiguration failed -> " + e10.getMessage());
            return context;
        }
    }
}
