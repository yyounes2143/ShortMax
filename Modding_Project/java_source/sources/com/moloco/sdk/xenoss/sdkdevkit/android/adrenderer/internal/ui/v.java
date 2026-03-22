package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui;

import com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.p0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
@SourceDebugExtension({"SMAP\nButtonTracker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ButtonTracker.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/ButtonTrackerImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,48:1\n1557#2:49\n1628#2,3:50\n*S KotlinDebug\n*F\n+ 1 ButtonTracker.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/ButtonTrackerImpl\n*L\n45#1:49\n45#1:50,3\n*E\n"})
/* loaded from: classes6.dex */
public final class v implements r {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final Map<a.AbstractC0597a.c.EnumC0599a, a.AbstractC0597a.c> f34984a = new LinkedHashMap();

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.q
    public void h(@NotNull a.AbstractC0597a.c button) {
        Intrinsics.checkNotNullParameter(button, "button");
        this.f34984a.put(button.c(), button);
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.q
    public void i(@NotNull a.AbstractC0597a.c.EnumC0599a buttonType) {
        Intrinsics.checkNotNullParameter(buttonType, "buttonType");
        this.f34984a.remove(buttonType);
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.r
    @NotNull
    public List<a.AbstractC0597a.c> x() {
        List<Pair> C = p0.C(this.f34984a);
        ArrayList arrayList = new ArrayList(CollectionsKt.z(C, 10));
        for (Pair pair : C) {
            arrayList.add((a.AbstractC0597a.c) pair.f());
        }
        return arrayList;
    }
}
