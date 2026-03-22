package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors;

import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes6.dex */
public final class h {

    /* loaded from: classes6.dex */
    public /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ int[] f34010a;

        static {
            int[] iArr = new int[g.values().length];
            try {
                iArr[g.f34004a.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[g.f34005b.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[g.f34006c.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[g.f34007d.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            f34010a = iArr;
        }
    }

    @NotNull
    public static final i a(@NotNull g gVar) {
        Intrinsics.checkNotNullParameter(gVar, "<this>");
        int i10 = a.f34010a[gVar.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 == 4) {
                        return i.f34014d;
                    }
                    throw new NoWhenBranchMatchedException();
                }
                return i.f34013c;
            }
            return i.f34012b;
        }
        return i.f34011a;
    }

    @NotNull
    public static final j b(@NotNull g gVar) {
        Intrinsics.checkNotNullParameter(gVar, "<this>");
        int i10 = a.f34010a[gVar.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 == 4) {
                        return j.f34020d;
                    }
                    throw new NoWhenBranchMatchedException();
                }
                return j.f34019c;
            }
            return j.f34018b;
        }
        return j.f34017a;
    }
}
