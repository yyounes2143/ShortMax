package com.bytedance.bdtracker;

import com.bytedance.applog.exposure.ViewExposureData;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes3.dex */
public final class r0 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final ViewExposureData f12355a;

    /* renamed from: b  reason: collision with root package name */
    public boolean f12356b;

    public /* synthetic */ r0(ViewExposureData data, boolean z10, int i10) {
        z10 = (i10 & 2) != 0 ? false : z10;
        Intrinsics.checkParameterIsNotNull(data, "data");
        this.f12355a = data;
        this.f12356b = z10;
    }
}
