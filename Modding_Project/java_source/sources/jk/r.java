package jk;

import android.graphics.Rect;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: RectExt.kt */
@Metadata
/* loaded from: classes7.dex */
public final class r {
    public static final void a(@NotNull Rect rect, int i10, int i11, int i12, int i13) {
        Intrinsics.checkNotNullParameter(rect, "<this>");
        if (fk.v.f51778a.b()) {
            rect.set(i12, i11, i10, i13);
        } else {
            rect.set(i10, i11, i12, i13);
        }
    }
}
