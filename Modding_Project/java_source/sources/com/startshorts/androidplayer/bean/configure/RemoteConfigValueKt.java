package com.startshorts.androidplayer.bean.configure;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: RemoteConfigValue.kt */
@Metadata
/* loaded from: classes6.dex */
public final class RemoteConfigValueKt {
    @NotNull
    public static final String formatTimestampToDate(long j10) {
        String format = new SimpleDateFormat("MM-dd HH:mm:ss.SSS", Locale.getDefault()).format(new Date(j10));
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        return format;
    }
}
