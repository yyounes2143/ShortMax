package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.companion;

import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.r;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.w;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.x;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.z;
import com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class i {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a f35807a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public List<String> f35808b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public List<String> f35809c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final r f35810d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public final x f35811e;

    public i(@NotNull com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a customUserEventBuilderService, @Nullable List<String> list, @Nullable List<String> list2, @NotNull r buttonTracker, @NotNull x vastTracker) {
        Intrinsics.checkNotNullParameter(customUserEventBuilderService, "customUserEventBuilderService");
        Intrinsics.checkNotNullParameter(buttonTracker, "buttonTracker");
        Intrinsics.checkNotNullParameter(vastTracker, "vastTracker");
        this.f35807a = customUserEventBuilderService;
        this.f35808b = list;
        this.f35809c = list2;
        this.f35810d = buttonTracker;
        this.f35811e = vastTracker;
    }

    public final void a() {
        List<String> list = this.f35809c;
        if (list != null) {
            x.a.a(this.f35811e, list, null, null, null, 14, null);
            this.f35809c = null;
        }
    }

    public final void b(@NotNull a.AbstractC0597a.c.EnumC0599a buttonType) {
        Intrinsics.checkNotNullParameter(buttonType, "buttonType");
        this.f35810d.i(buttonType);
    }

    public final void c(@NotNull a.AbstractC0597a.c button) {
        Intrinsics.checkNotNullParameter(button, "button");
        this.f35810d.h(button);
    }

    public final void d(@NotNull a.AbstractC0597a.f lastClickPosition) {
        Intrinsics.checkNotNullParameter(lastClickPosition, "lastClickPosition");
        List<String> list = this.f35808b;
        if (list != null) {
            x.a.b(this.f35811e, list, null, null, null, this.f35810d.x(), this.f35807a, lastClickPosition, 14, null);
            this.f35808b = null;
        }
    }

    public /* synthetic */ i(com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a aVar, List list, List list2, r rVar, x xVar, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(aVar, list, list2, (i10 & 8) != 0 ? w.a() : rVar, (i10 & 16) != 0 ? z.e() : xVar);
    }
}
