package io.bidmachine.rendering.model;

import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yq.k;
import yq.s;
@Metadata
/* loaded from: classes8.dex */
public enum AnimationDirectionType implements k {
    Left(TtmlNode.LEFT),
    Top("top"),
    Right(TtmlNode.RIGHT),
    Bottom("bottom");
    
    @NotNull
    public static final a Companion = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f58520a;

    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Nullable
        public final AnimationDirectionType a(@Nullable String str) {
            return (AnimationDirectionType) s.k(AnimationDirectionType.values(), str);
        }

        private a() {
        }
    }

    @Metadata
    /* loaded from: classes8.dex */
    public /* synthetic */ class b {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[AnimationDirectionType.values().length];
            try {
                iArr[AnimationDirectionType.Left.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[AnimationDirectionType.Top.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[AnimationDirectionType.Right.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[AnimationDirectionType.Bottom.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    AnimationDirectionType(String str) {
        this.f58520a = str;
    }

    @Nullable
    public static final AnimationDirectionType get(@Nullable String str) {
        return Companion.a(str);
    }

    @Override // yq.k
    @NotNull
    public String getKey() {
        return this.f58520a;
    }

    @NotNull
    public final AnimationDirectionType inverted() {
        int i10 = b.$EnumSwitchMapping$0[ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 == 4) {
                        return Top;
                    }
                    throw new NoWhenBranchMatchedException();
                }
                return Left;
            }
            return Bottom;
        }
        return Right;
    }
}
