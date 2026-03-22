package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.linear;

import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.x;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.z;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class b {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    public List<String> f36262a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public List<String> f36263b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final x f36264c;

    public b(@Nullable List<String> list, @Nullable List<String> list2, @NotNull x vastTracker) {
        Intrinsics.checkNotNullParameter(vastTracker, "vastTracker");
        this.f36262a = list;
        this.f36263b = list2;
        this.f36264c = vastTracker;
    }

    public final void a(@Nullable Integer num, @Nullable String str) {
        List<String> list = this.f36262a;
        if (list != null) {
            this.f36264c.a(list, null, num, str);
            this.f36262a = null;
        }
    }

    public final void b(@Nullable Integer num, @Nullable String str) {
        List<String> list = this.f36263b;
        if (list != null) {
            this.f36264c.a(list, null, num, str);
            this.f36263b = null;
        }
    }

    public /* synthetic */ b(List list, List list2, x xVar, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, list2, (i10 & 4) != 0 ? z.e() : xVar);
    }
}
