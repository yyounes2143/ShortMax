package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.dec;

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
public final class d {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a f36187a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public List<String> f36188b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public List<String> f36189c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public List<String> f36190d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public final r f36191e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public final x f36192f;

    public d(@NotNull com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a customUserEventBuilderService, @Nullable List<String> list, @Nullable List<String> list2, @Nullable List<String> list3, @NotNull r buttonTracker, @NotNull x vastTracker) {
        Intrinsics.checkNotNullParameter(customUserEventBuilderService, "customUserEventBuilderService");
        Intrinsics.checkNotNullParameter(buttonTracker, "buttonTracker");
        Intrinsics.checkNotNullParameter(vastTracker, "vastTracker");
        this.f36187a = customUserEventBuilderService;
        this.f36188b = list;
        this.f36189c = list2;
        this.f36190d = list3;
        this.f36191e = buttonTracker;
        this.f36192f = vastTracker;
    }

    public final void a() {
        List<String> list = this.f36189c;
        if (list != null) {
            x.a.a(this.f36192f, list, null, null, null, 14, null);
            this.f36189c = null;
        }
    }

    public final void b(@NotNull a.AbstractC0597a.c.EnumC0599a buttonType) {
        Intrinsics.checkNotNullParameter(buttonType, "buttonType");
        this.f36191e.i(buttonType);
    }

    public final void c(@NotNull a.AbstractC0597a.c button) {
        Intrinsics.checkNotNullParameter(button, "button");
        this.f36191e.h(button);
    }

    public final void d(@NotNull a.AbstractC0597a.f position) {
        Intrinsics.checkNotNullParameter(position, "position");
        List<String> list = this.f36188b;
        if (list != null) {
            x.a.b(this.f36192f, list, null, null, null, this.f36191e.x(), this.f36187a, position, 14, null);
            this.f36188b = null;
        }
    }

    public final void e() {
        List<String> list = this.f36190d;
        if (list != null) {
            x.a.a(this.f36192f, list, null, null, null, 14, null);
            this.f36190d = null;
        }
    }

    public /* synthetic */ d(com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a aVar, List list, List list2, List list3, r rVar, x xVar, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(aVar, list, list2, list3, (i10 & 16) != 0 ? w.a() : rVar, (i10 & 32) != 0 ? z.e() : xVar);
    }
}
