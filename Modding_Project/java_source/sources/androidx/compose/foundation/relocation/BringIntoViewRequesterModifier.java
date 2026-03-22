package androidx.compose.foundation.relocation;

import androidx.compose.foundation.ExperimentalFoundationApi;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.unit.IntSizeKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BringIntoViewRequester.kt */
@ExperimentalFoundationApi
@Metadata
/* loaded from: classes.dex */
public final class BringIntoViewRequesterModifier extends BringIntoViewChildModifier {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BringIntoViewRequesterModifier(@NotNull BringIntoViewParent defaultParent) {
        super(defaultParent);
        Intrinsics.checkNotNullParameter(defaultParent, "defaultParent");
    }

    @Nullable
    public final Object bringIntoView(@Nullable Rect rect, @NotNull c<? super Unit> cVar) {
        LayoutCoordinates layoutCoordinates = getLayoutCoordinates();
        if (layoutCoordinates == null) {
            return Unit.f60915a;
        }
        if (rect == null) {
            rect = SizeKt.m1696toRectuvyYCjk(IntSizeKt.m4219toSizeozmzZPI(layoutCoordinates.mo3337getSizeYbymL2g()));
        }
        Object bringChildIntoView = getParent().bringChildIntoView(rect, layoutCoordinates, cVar);
        if (bringChildIntoView == a.f()) {
            return bringChildIntoView;
        }
        return Unit.f60915a;
    }
}
