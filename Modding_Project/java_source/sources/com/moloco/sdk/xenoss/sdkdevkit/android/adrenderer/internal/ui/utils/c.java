package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.utils;

import android.content.res.Resources;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.unit.IntSize;
import com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@StabilityInferred(parameters = 1)
/* loaded from: classes6.dex */
public final class c {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final c f34983a = new c();

    public final float a(int i10) {
        return i10 / Resources.getSystem().getDisplayMetrics().density;
    }

    @NotNull
    public final a.AbstractC0597a.c b(@NotNull LayoutCoordinates layoutCoordinates, @NotNull a.AbstractC0597a.c.EnumC0599a buttonType) {
        Intrinsics.checkNotNullParameter(layoutCoordinates, "<this>");
        Intrinsics.checkNotNullParameter(buttonType, "buttonType");
        return new a.AbstractC0597a.c(buttonType, d(layoutCoordinates), f(layoutCoordinates));
    }

    @NotNull
    public final a.AbstractC0597a.f c(long j10) {
        return new a.AbstractC0597a.f(a((int) Offset.m1606getXimpl(j10)), a((int) Offset.m1607getYimpl(j10)));
    }

    @NotNull
    public final a.AbstractC0597a.f d(@NotNull LayoutCoordinates layoutCoordinates) {
        Intrinsics.checkNotNullParameter(layoutCoordinates, "<this>");
        return new a.AbstractC0597a.f(a((int) Offset.m1606getXimpl(LayoutCoordinatesKt.positionInRoot(layoutCoordinates))), a((int) Offset.m1607getYimpl(LayoutCoordinatesKt.positionInRoot(layoutCoordinates))));
    }

    public final boolean e(@NotNull a.AbstractC0597a.c cVar) {
        Intrinsics.checkNotNullParameter(cVar, "<this>");
        if (cVar.e().a() > 0.0f && cVar.e().b() > 0.0f) {
            return true;
        }
        return false;
    }

    @NotNull
    public final a.AbstractC0597a.g f(@NotNull LayoutCoordinates layoutCoordinates) {
        Intrinsics.checkNotNullParameter(layoutCoordinates, "<this>");
        return new a.AbstractC0597a.g(a(IntSize.m4209getWidthimpl(layoutCoordinates.mo3337getSizeYbymL2g())), a(IntSize.m4208getHeightimpl(layoutCoordinates.mo3337getSizeYbymL2g())));
    }
}
