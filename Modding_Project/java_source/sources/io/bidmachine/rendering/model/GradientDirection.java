package io.bidmachine.rendering.model;

import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import io.bidmachine.rendering.internal.j;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yq.k;
import yq.s;
@Metadata
/* loaded from: classes8.dex */
public enum GradientDirection implements k {
    LeftRight(TtmlNode.RIGHT),
    TopBottom("bottom"),
    RightLeft(TtmlNode.LEFT),
    BottomTop("top");
    
    @NotNull
    public static final a Companion = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f58539a;

    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Nullable
        public final GradientDirection a(@Nullable String str) {
            return (GradientDirection) s.k(GradientDirection.values(), str);
        }

        private a() {
        }
    }

    @Metadata
    /* loaded from: classes8.dex */
    public /* synthetic */ class b {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[GradientDirection.values().length];
            try {
                iArr[GradientDirection.LeftRight.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[GradientDirection.TopBottom.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[GradientDirection.RightLeft.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[GradientDirection.BottomTop.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    GradientDirection(String str) {
        this.f58539a = str;
    }

    @Nullable
    public static final GradientDirection get(@Nullable String str) {
        return Companion.a(str);
    }

    @Override // yq.k
    @NotNull
    public String getKey() {
        return this.f58539a;
    }

    @NotNull
    public final j.c toDrawableGradientOrientation() {
        int i10 = b.$EnumSwitchMapping$0[ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 == 4) {
                        return j.c.BOTTOM_TOP;
                    }
                    throw new NoWhenBranchMatchedException();
                }
                return j.c.RIGHT_LEFT;
            }
            return j.c.TOP_BOTTOM;
        }
        return j.c.LEFT_RIGHT;
    }
}
