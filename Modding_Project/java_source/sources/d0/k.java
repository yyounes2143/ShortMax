package d0;

import coil.decode.ExifOrientationPolicy;
import java.util.Set;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.y0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ExifUtils.kt */
@Metadata
/* loaded from: classes2.dex */
public final class k {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private static final Set<String> f49748a = y0.j("image/jpeg", "image/webp", "image/heic", "image/heif");

    /* compiled from: ExifUtils.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ExifOrientationPolicy.values().length];
            iArr[ExifOrientationPolicy.RESPECT_PERFORMANCE.ordinal()] = 1;
            iArr[ExifOrientationPolicy.IGNORE.ordinal()] = 2;
            iArr[ExifOrientationPolicy.RESPECT_ALL.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final boolean a(@NotNull h hVar) {
        if (hVar.a() > 0) {
            return true;
        }
        return false;
    }

    public static final boolean b(@NotNull h hVar) {
        if (hVar.a() != 90 && hVar.a() != 270) {
            return false;
        }
        return true;
    }

    public static final boolean c(@NotNull ExifOrientationPolicy exifOrientationPolicy, @Nullable String str) {
        int i10 = a.$EnumSwitchMapping$0[exifOrientationPolicy.ordinal()];
        if (i10 != 1) {
            if (i10 == 2) {
                return false;
            }
            if (i10 != 3) {
                throw new NoWhenBranchMatchedException();
            }
        } else if (str == null || !f49748a.contains(str)) {
            return false;
        }
        return true;
    }
}
