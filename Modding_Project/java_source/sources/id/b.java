package id;

import android.content.Context;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.settings.AppLanguage;
import com.unity3d.services.ads.gmascar.utils.ScarConstants;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.p0;
import kotlin.jvm.internal.Intrinsics;
import ms.k;
import org.jetbrains.annotations.NotNull;
/* compiled from: SLanguageList.kt */
@Metadata
/* loaded from: classes6.dex */
public final class b {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final b f53395a = new b();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final List<AppLanguage> f53396b = CollectionsKt.t(new AppLanguage("en", "English", null, 4, null), new AppLanguage("zh", "中文繁體", null, 4, null), new AppLanguage("zh_cn", "中文简体", null, 4, null), new AppLanguage("fil", "Filipino", null, 4, null), new AppLanguage("hi", "हिन्दी", null, 4, null), new AppLanguage(ScarConstants.IN_SIGNAL_KEY, "Bahasa Indonesia", null, 4, null), new AppLanguage("ja", "日本語", null, 4, null), new AppLanguage("ko", "한국어", null, 4, null), new AppLanguage("th", "ภาษาไทย", null, 4, null), new AppLanguage("ar", "عربي", null, 4, null), new AppLanguage("pt", "Português", null, 4, null), new AppLanguage("es", "Español", null, 4, null), new AppLanguage("vi", "Tiếng Việt", null, 4, null), new AppLanguage(DownloadCommon.DOWNLOAD_REPORT_DOWNLOAD_ERROR, "Deutsch", null, 4, null), new AppLanguage("fr", "Français", null, 4, null), new AppLanguage("ms", "Malaysia", null, 4, null), new AppLanguage("ru", "Русский", null, 4, null), new AppLanguage("it", "Italiano", null, 4, null), new AppLanguage("tr", "Türkçe", null, 4, null));

    private b() {
    }

    @NotNull
    public final List<AppLanguage> a() {
        return f53396b;
    }

    @NotNull
    public final Map<String, String> b(@NotNull String code, @NotNull Context context) {
        Intrinsics.checkNotNullParameter(code, "code");
        Intrinsics.checkNotNullParameter(context, "context");
        Map<String, String> o10 = p0.o(k.a("en", context.getString(R$string.language_en)), k.a("zh", context.getString(R$string.language_zh_traditional)), k.a("zh_cn", context.getString(R$string.language_zh_simplified)), k.a("fil", context.getString(R$string.language_fil)), k.a("hi", context.getString(R$string.language_hi)), k.a(ScarConstants.IN_SIGNAL_KEY, context.getString(R$string.language_in)), k.a("ja", context.getString(R$string.language_ja)), k.a("ko", context.getString(R$string.language_ko)), k.a("th", context.getString(R$string.language_th)), k.a("es", context.getString(R$string.language_es)), k.a("pt", context.getString(R$string.language_pt)), k.a("vi", context.getString(R$string.language_vi)), k.a("ar", context.getString(R$string.language_ar)), k.a(DownloadCommon.DOWNLOAD_REPORT_DOWNLOAD_ERROR, context.getString(R$string.language_de)), k.a("fr", context.getString(R$string.language_fr)), k.a("ms", context.getString(R$string.language_ms)), k.a("ru", context.getString(R$string.language_ru)), k.a("it", context.getString(R$string.language_it)), k.a("tr", context.getString(R$string.language_tr)));
        if (o10.get(code) != null) {
            o10.put(code, context.getString(R$string.language_app));
        }
        return o10;
    }
}
