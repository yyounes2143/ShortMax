package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad;

import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.x;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.z;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
@SourceDebugExtension({"SMAP\nAdVastTracker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdVastTracker.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/AdVastTracker\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,30:1\n1#2:31\n*E\n"})
/* loaded from: classes6.dex */
public final class h {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    public List<String> f35749a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public List<String> f35750b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public final List<String> f35751c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final x f35752d;

    public h(@Nullable List<String> list, @Nullable List<String> list2, @Nullable List<String> list3, @NotNull x vastTracker) {
        Intrinsics.checkNotNullParameter(vastTracker, "vastTracker");
        this.f35749a = list;
        this.f35750b = list2;
        this.f35751c = list3;
        this.f35752d = vastTracker;
    }

    public final void a() {
        List<String> list = this.f35750b;
        if (list != null) {
            x.a.a(this.f35752d, list, null, null, null, 14, null);
            this.f35750b = null;
        }
    }

    public final void b(@Nullable com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.x xVar) {
        List<String> list = this.f35751c;
        if (list != null) {
            x.a.a(this.f35752d, list, xVar, null, null, 12, null);
        }
    }

    public final boolean c() {
        List<String> list = this.f35749a;
        if (list != null) {
            x.a.a(this.f35752d, list, null, null, null, 14, null);
            this.f35749a = null;
            return true;
        }
        return false;
    }

    public /* synthetic */ h(List list, List list2, List list3, x xVar, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, list2, list3, (i10 & 8) != 0 ? z.e() : xVar);
    }
}
