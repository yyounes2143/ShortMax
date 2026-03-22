package coil.util;

import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import org.jetbrains.annotations.NotNull;
/* compiled from: Time.kt */
@Metadata
/* loaded from: classes2.dex */
public final class Time {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final Time f4113a = new Time();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static Function0<Long> f4114b = Time$provider$1.f4115a;

    private Time() {
    }

    public final long a() {
        return f4114b.invoke().longValue();
    }
}
