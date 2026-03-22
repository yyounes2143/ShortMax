package coil.util;

import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;
import org.jetbrains.annotations.NotNull;
/* compiled from: Time.kt */
@Metadata
/* loaded from: classes2.dex */
/* synthetic */ class Time$provider$1 extends FunctionReferenceImpl implements Function0<Long> {

    /* renamed from: a  reason: collision with root package name */
    public static final Time$provider$1 f4115a = new Time$provider$1();

    Time$provider$1() {
        super(0, System.class, "currentTimeMillis", "currentTimeMillis()J", 0);
    }

    @Override // kotlin.jvm.functions.Function0
    @NotNull
    /* renamed from: b */
    public final Long invoke() {
        return Long.valueOf(System.currentTimeMillis());
    }
}
