package q3;

import b4.d0;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: HoneycombBitmapCreator.kt */
@Metadata
/* loaded from: classes3.dex */
public final class c implements s2.a {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final a f65044c = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final b f65045a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final com.facebook.imagepipeline.memory.c f65046b;

    /* compiled from: HoneycombBitmapCreator.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public c(@NotNull d0 poolFactory) {
        Intrinsics.checkNotNullParameter(poolFactory, "poolFactory");
        this.f65045a = new b(poolFactory.h());
        com.facebook.imagepipeline.memory.c d10 = poolFactory.d();
        Intrinsics.checkNotNullExpressionValue(d10, "getFlexByteArrayPool(...)");
        this.f65046b = d10;
    }
}
