package ng;

import com.startshorts.androidplayer.log.Logger;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;
/* compiled from: AppConfigExt.kt */
@Metadata
/* loaded from: classes7.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f62911a;

    public static final void a(@Nullable String str) {
        if (f62911a) {
            Logger logger = Logger.f41511a;
            if (str == null) {
                str = "empty";
            }
            logger.e("AppConfigManager", str);
        }
    }
}
