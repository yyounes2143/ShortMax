package c4;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* compiled from: PlatformDecoderOptions.kt */
@Metadata
/* loaded from: classes3.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f3049a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f3050b;

    public f(boolean z10, boolean z11) {
        this.f3049a = z10;
        this.f3050b = z11;
    }

    public final boolean a() {
        return this.f3049a;
    }

    public final boolean b() {
        return this.f3050b;
    }

    public /* synthetic */ f(boolean z10, boolean z11, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? false : z10, (i10 & 2) != 0 ? false : z11);
    }
}
