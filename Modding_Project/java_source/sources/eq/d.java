package eq;

import io.bidmachine.rendering.model.EventType;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import tp.s;
@Metadata
/* loaded from: classes8.dex */
public final class d implements jq.d {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final a f51527c = new a(null);
    @Deprecated
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private static final List<EventType> f51528d = CollectionsKt.e(EventType.OnClick);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final c f51529a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final Function0<Integer> f51530b;

    @Metadata
    /* loaded from: classes8.dex */
    private static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public d(@NotNull c animationController, @Nullable Function0<Integer> function0) {
        Intrinsics.checkNotNullParameter(animationController, "animationController");
        this.f51529a = animationController;
        this.f51530b = function0;
    }

    @Override // jq.d
    public boolean a(@NotNull List<? extends Object> params) {
        Integer num;
        boolean z10;
        Intrinsics.checkNotNullParameter(params, "params");
        Object t02 = CollectionsKt.t0(params, 0);
        if (!(t02 instanceof EventType)) {
            return false;
        }
        boolean z11 = true;
        Object t03 = CollectionsKt.t0(params, 1);
        if (!(t03 instanceof Integer) || !f51528d.contains(t02)) {
            return false;
        }
        Function0<Integer> function0 = this.f51530b;
        Integer num2 = null;
        if (function0 != null) {
            num = function0.invoke();
        } else {
            num = null;
        }
        if (num != null) {
            if (num.intValue() != -1) {
                num2 = num;
            }
            if (num2 != null) {
                z10 = this.f51529a.a(num2.intValue());
                boolean a10 = this.f51529a.a(((Number) t03).intValue());
                if (!z10 && !a10) {
                    z11 = false;
                }
                s.g("AdAnimationEventInterceptor", "Intercept result=" + z11 + "; eventType=" + t02 + "; viewId=" + t03, new Object[0]);
                return z11;
            }
        }
        z10 = false;
        boolean a102 = this.f51529a.a(((Number) t03).intValue());
        if (!z10) {
            z11 = false;
        }
        s.g("AdAnimationEventInterceptor", "Intercept result=" + z11 + "; eventType=" + t02 + "; viewId=" + t03, new Object[0]);
        return z11;
    }
}
