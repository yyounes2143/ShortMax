package io.bidmachine.rendering.model;

import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yq.k;
import yq.s;
@Metadata
/* loaded from: classes8.dex */
public enum GradientType implements k {
    Linear("linear"),
    Radial("radial");
    
    @NotNull
    public static final a Companion = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f58541a;

    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Nullable
        public final GradientType a(@Nullable String str) {
            return (GradientType) s.k(GradientType.values(), str);
        }

        private a() {
        }
    }

    @Metadata
    /* loaded from: classes8.dex */
    public /* synthetic */ class b {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[GradientType.values().length];
            try {
                iArr[GradientType.Linear.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[GradientType.Radial.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    GradientType(String str) {
        this.f58541a = str;
    }

    @Nullable
    public static final GradientType get(@Nullable String str) {
        return Companion.a(str);
    }

    @Override // yq.k
    @NotNull
    public String getKey() {
        return this.f58541a;
    }

    public final int toDrawableGradientType() {
        int i10 = b.$EnumSwitchMapping$0[ordinal()];
        if (i10 != 1) {
            if (i10 == 2) {
                return 1;
            }
            throw new NoWhenBranchMatchedException();
        }
        return 0;
    }
}
