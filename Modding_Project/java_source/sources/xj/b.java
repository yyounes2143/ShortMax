package xj;

import android.view.ViewGroup;
import android.view.ViewParent;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: SeekBarCompat.kt */
@Metadata
/* loaded from: classes7.dex */
public final class b {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final b f70501a = new b();

    private b() {
    }

    public final boolean a(@NotNull ViewParent p10) {
        Intrinsics.checkNotNullParameter(p10, "p");
        while (p10 instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) p10;
            if (viewGroup.shouldDelayChildPressedState()) {
                return true;
            }
            p10 = viewGroup.getParent();
        }
        return false;
    }
}
