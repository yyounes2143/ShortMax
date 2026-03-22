package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid;

import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes6.dex */
public final class z {

    /* loaded from: classes6.dex */
    public /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ int[] f34393a;

        static {
            int[] iArr = new int[p.values().length];
            try {
                iArr[p.f34324b.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[p.f34325c.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[p.f34326d.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f34393a = iArr;
        }
    }

    @NotNull
    public static final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.ad.orientation.a a(@NotNull p pVar) {
        Intrinsics.checkNotNullParameter(pVar, "<this>");
        int i10 = a.f34393a[pVar.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 == 3) {
                    return com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.ad.orientation.a.f34533d;
                }
                throw new NoWhenBranchMatchedException();
            }
            return com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.ad.orientation.a.f34532c;
        }
        return com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.ad.orientation.a.f34531b;
    }
}
