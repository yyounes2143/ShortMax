package jk;

import com.startshorts.androidplayer.utils.DeviceUtil;
import java.util.Date;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: DateExt.kt */
@Metadata
/* loaded from: classes7.dex */
public final class f {
    @NotNull
    public static final Date a(@NotNull Date date) {
        Intrinsics.checkNotNullParameter(date, "<this>");
        date.setTime(DeviceUtil.f48146a.K());
        return date;
    }
}
