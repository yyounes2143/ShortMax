package pm;

import com.explorestack.protobuf.adcom.NativeAssetPosition;
import io.bidmachine.PositionData;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PositionDataMapper.kt */
@Metadata
/* loaded from: classes7.dex */
public final class b {

    /* compiled from: PositionDataMapper.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[NativeAssetPosition.values().length];
            try {
                iArr[NativeAssetPosition.ASSET_POSITION_TOP_LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[NativeAssetPosition.ASSET_POSITION_TOP_RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[NativeAssetPosition.ASSET_POSITION_BOTTOM_LEFT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[NativeAssetPosition.ASSET_POSITION_BOTTOM_RIGHT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @Nullable
    public final PositionData a(@NotNull NativeAssetPosition data) {
        Intrinsics.checkNotNullParameter(data, "data");
        PositionData positionData = null;
        try {
            int i10 = a.$EnumSwitchMapping$0[data.ordinal()];
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 == 4) {
                            positionData = PositionData.BottomRight;
                        }
                    } else {
                        positionData = PositionData.BottomLeft;
                    }
                } else {
                    positionData = PositionData.TopRight;
                }
            } else {
                positionData = PositionData.TopLeft;
            }
        } catch (Throwable unused) {
        }
        return positionData;
    }
}
