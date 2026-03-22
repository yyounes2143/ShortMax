package coil.target;

import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ImageViewTarget.kt */
@Metadata
/* loaded from: classes2.dex */
public class ImageViewTarget extends GenericViewTarget<ImageView> {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final ImageView f4107b;

    @Override // coil.target.GenericViewTarget, q0.d
    @Nullable
    public Drawable a() {
        return getView().getDrawable();
    }

    @Override // coil.target.GenericViewTarget
    public void e(@Nullable Drawable drawable) {
        getView().setImageDrawable(drawable);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof ImageViewTarget) && Intrinsics.areEqual(getView(), ((ImageViewTarget) obj).getView())) {
            return true;
        }
        return false;
    }

    @Override // o0.b
    @NotNull
    /* renamed from: h */
    public ImageView getView() {
        return this.f4107b;
    }

    public int hashCode() {
        return getView().hashCode();
    }
}
