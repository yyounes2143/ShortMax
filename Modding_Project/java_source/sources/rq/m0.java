package rq;

import android.widget.ImageView;
import io.bidmachine.rendering.model.ScaleType;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import org.jetbrains.annotations.Nullable;
@Metadata
/* loaded from: classes8.dex */
public final class m0 {

    @Metadata
    /* loaded from: classes8.dex */
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ScaleType.values().length];
            try {
                iArr[ScaleType.None.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ScaleType.ToFill.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ScaleType.AspectFill.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[ScaleType.AspectFit.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @Nullable
    public static final ImageView.ScaleType a(@Nullable ScaleType scaleType) {
        int i10;
        if (scaleType == null) {
            i10 = -1;
        } else {
            i10 = a.$EnumSwitchMapping$0[scaleType.ordinal()];
        }
        if (i10 != -1 && i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 == 4) {
                        return ImageView.ScaleType.CENTER_INSIDE;
                    }
                    throw new NoWhenBranchMatchedException();
                }
                return ImageView.ScaleType.CENTER_CROP;
            }
            return ImageView.ScaleType.FIT_XY;
        }
        return null;
    }
}
