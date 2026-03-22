package r0;

import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import androidx.annotation.DrawableRes;
import coil.size.Precision;
import coil.size.ViewSizeResolver;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Requests.kt */
@Metadata
/* loaded from: classes2.dex */
public final class h {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private static final m0.a f65447a = new m0.a(null, null, null, null, null, null, null, false, false, null, null, null, null, null, null, 32767, null);

    /* compiled from: Requests.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Precision.values().length];
            iArr[Precision.EXACT.ordinal()] = 1;
            iArr[Precision.INEXACT.ordinal()] = 2;
            iArr[Precision.AUTOMATIC.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final boolean a(@NotNull m0.f fVar) {
        int i10 = a.$EnumSwitchMapping$0[fVar.H().ordinal()];
        if (i10 == 1) {
            return false;
        }
        if (i10 != 2) {
            if (i10 == 3) {
                if ((fVar.q().m() != null || !(fVar.K() instanceof n0.d)) && (!(fVar.M() instanceof o0.b) || !(fVar.K() instanceof ViewSizeResolver) || !(((o0.b) fVar.M()).getView() instanceof ImageView) || ((o0.b) fVar.M()).getView() != ((ViewSizeResolver) fVar.K()).getView())) {
                    return false;
                }
            } else {
                throw new NoWhenBranchMatchedException();
            }
        }
        return true;
    }

    @NotNull
    public static final m0.a b() {
        return f65447a;
    }

    @Nullable
    public static final Drawable c(@NotNull m0.f fVar, @Nullable Drawable drawable, @DrawableRes @Nullable Integer num, @Nullable Drawable drawable2) {
        if (drawable == null) {
            if (num != null) {
                if (num.intValue() == 0) {
                    return null;
                }
                return d.a(fVar.l(), num.intValue());
            }
            return drawable2;
        }
        return drawable;
    }
}
