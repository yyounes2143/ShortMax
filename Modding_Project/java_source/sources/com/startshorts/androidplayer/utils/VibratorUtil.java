package com.startshorts.androidplayer.utils;

import android.os.Vibrator;
import kotlin.Metadata;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import qt.d;
/* compiled from: VibratorUtil.kt */
@Metadata
/* loaded from: classes7.dex */
public final class VibratorUtil {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final VibratorUtil f48177a = new VibratorUtil();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final qt.a f48178b = d.b(false, 1, null);
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private static Vibrator f48179c;

    private VibratorUtil() {
    }

    @NotNull
    public final r d() {
        return CoroutineUtil.l(CoroutineUtil.f48072a, "vibrate", false, new VibratorUtil$vibrate$1(null), 2, null);
    }
}
