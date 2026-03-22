package androidx.compose.foundation.relocation;

import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.modifier.ModifierLocalProvider;
import androidx.compose.ui.modifier.ProvidableModifierLocal;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.i;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BringIntoViewResponder.kt */
@Metadata
/* loaded from: classes.dex */
public final class BringIntoViewResponderModifier extends BringIntoViewChildModifier implements ModifierLocalProvider<BringIntoViewParent>, BringIntoViewParent {
    @Nullable
    private Pair<Rect, ? extends r> newestDispatchedRequest;
    @Nullable
    private Pair<Rect, ? extends r> newestReceivedRequest;
    public BringIntoViewResponder responder;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BringIntoViewResponderModifier(@NotNull BringIntoViewParent defaultParent) {
        super(defaultParent);
        Intrinsics.checkNotNullParameter(defaultParent, "defaultParent");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object dispatchRequest(Pair<Rect, ? extends r> pair, LayoutCoordinates layoutCoordinates, c<? super Unit> cVar) {
        this.newestDispatchedRequest = pair;
        Rect e10 = pair.e();
        Object f10 = i.f(new BringIntoViewResponderModifier$dispatchRequest$2(this, getResponder().calculateRectForParent(e10), layoutCoordinates, e10, null), cVar);
        if (f10 == a.f()) {
            return f10;
        }
        return Unit.f60915a;
    }

    @Override // androidx.compose.foundation.relocation.BringIntoViewParent
    @Nullable
    public Object bringChildIntoView(@NotNull Rect rect, @NotNull LayoutCoordinates layoutCoordinates, @NotNull c<? super Unit> cVar) {
        Object f10 = i.f(new BringIntoViewResponderModifier$bringChildIntoView$2(this, layoutCoordinates, rect, null), cVar);
        if (f10 == a.f()) {
            return f10;
        }
        return Unit.f60915a;
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalProvider
    @NotNull
    public ProvidableModifierLocal<BringIntoViewParent> getKey() {
        return BringIntoViewKt.getModifierLocalBringIntoViewParent();
    }

    @NotNull
    public final BringIntoViewResponder getResponder() {
        BringIntoViewResponder bringIntoViewResponder = this.responder;
        if (bringIntoViewResponder != null) {
            return bringIntoViewResponder;
        }
        Intrinsics.throwUninitializedPropertyAccessException("responder");
        return null;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.compose.ui.modifier.ModifierLocalProvider
    @NotNull
    public BringIntoViewParent getValue() {
        return this;
    }

    public final void setResponder(@NotNull BringIntoViewResponder bringIntoViewResponder) {
        Intrinsics.checkNotNullParameter(bringIntoViewResponder, "<set-?>");
        this.responder = bringIntoViewResponder;
    }
}
