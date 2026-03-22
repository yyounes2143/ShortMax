package yg;

import android.content.Context;
import com.startshorts.androidplayer.bean.settings.AppLanguage;
import com.startshorts.androidplayer.utils.DeviceUtil;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: LanguageLocalDS.kt */
@Metadata
@SourceDebugExtension({"SMAP\nLanguageLocalDS.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LanguageLocalDS.kt\ncom/startshorts/androidplayer/repo/language/LanguageLocalDS\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,30:1\n1863#2,2:31\n1863#2,2:33\n*S KotlinDebug\n*F\n+ 1 LanguageLocalDS.kt\ncom/startshorts/androidplayer/repo/language/LanguageLocalDS\n*L\n16#1:31,2\n25#1:33,2\n*E\n"})
/* loaded from: classes7.dex */
public final class a {
    @NotNull
    public final List<AppLanguage> a(@NotNull Context context) {
        AppLanguage appLanguage;
        Object obj;
        Intrinsics.checkNotNullParameter(context, "context");
        List<AppLanguage> a10 = id.b.f53395a.a();
        List<AppLanguage> list = a10;
        for (AppLanguage appLanguage2 : list) {
            appLanguage2.setSelected(false);
        }
        Iterator<T> it = list.iterator();
        while (true) {
            appLanguage = null;
            if (it.hasNext()) {
                obj = it.next();
                if (Intrinsics.areEqual(((AppLanguage) obj).getOfficialName(), DeviceUtil.f48146a.e())) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        AppLanguage appLanguage3 = (AppLanguage) obj;
        if (appLanguage3 != null) {
            appLanguage3.setSelected(true);
            appLanguage = appLanguage3;
        }
        Map<String, String> b10 = id.b.f53395a.b((appLanguage == null || (r4 = appLanguage.getOfficialName()) == null) ? "" : "", context);
        for (AppLanguage appLanguage4 : list) {
            String str = b10.get(appLanguage4.getOfficialName());
            if (str == null) {
                str = "";
            }
            appLanguage4.setDescName(str);
        }
        return a10;
    }
}
