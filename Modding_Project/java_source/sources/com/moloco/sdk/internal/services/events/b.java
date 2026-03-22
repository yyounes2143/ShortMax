package com.moloco.sdk.internal.services.events;

import com.moloco.sdk.UserIntent$UserAdInteractionExt;
import com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes6.dex */
public final class b {

    /* loaded from: classes6.dex */
    public /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ int[] f33379a;

        static {
            int[] iArr = new int[a.AbstractC0597a.c.EnumC0599a.values().length];
            try {
                iArr[a.AbstractC0597a.c.EnumC0599a.f36601a.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[a.AbstractC0597a.c.EnumC0599a.f36602b.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[a.AbstractC0597a.c.EnumC0599a.f36603c.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[a.AbstractC0597a.c.EnumC0599a.f36604d.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[a.AbstractC0597a.c.EnumC0599a.f36605e.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[a.AbstractC0597a.c.EnumC0599a.f36606f.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[a.AbstractC0597a.c.EnumC0599a.f36607g.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[a.AbstractC0597a.c.EnumC0599a.f36608h.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[a.AbstractC0597a.c.EnumC0599a.f36609i.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            f33379a = iArr;
        }
    }

    @NotNull
    public static final UserIntent$UserAdInteractionExt.Button.Type a(@NotNull a.AbstractC0597a.c.EnumC0599a enumC0599a) {
        Intrinsics.checkNotNullParameter(enumC0599a, "<this>");
        switch (a.f33379a[enumC0599a.ordinal()]) {
            case 1:
                return UserIntent$UserAdInteractionExt.Button.Type.NONE;
            case 2:
                return UserIntent$UserAdInteractionExt.Button.Type.CLOSE;
            case 3:
                return UserIntent$UserAdInteractionExt.Button.Type.SKIP;
            case 4:
                return UserIntent$UserAdInteractionExt.Button.Type.DEC_SKIP;
            case 5:
                return UserIntent$UserAdInteractionExt.Button.Type.MUTE;
            case 6:
                return UserIntent$UserAdInteractionExt.Button.Type.UNMUTE;
            case 7:
                return UserIntent$UserAdInteractionExt.Button.Type.CTA;
            case 8:
                return UserIntent$UserAdInteractionExt.Button.Type.REPLAY;
            case 9:
                return UserIntent$UserAdInteractionExt.Button.Type.AD_BADGE;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    @NotNull
    public static final UserIntent$UserAdInteractionExt.Position b(@NotNull a.AbstractC0597a.f fVar) {
        Intrinsics.checkNotNullParameter(fVar, "<this>");
        UserIntent$UserAdInteractionExt.Position.a newBuilder = UserIntent$UserAdInteractionExt.Position.newBuilder();
        newBuilder.a(fVar.a());
        newBuilder.b(fVar.b());
        UserIntent$UserAdInteractionExt.Position build = newBuilder.build();
        Intrinsics.checkNotNullExpressionValue(build, "build(...)");
        return build;
    }

    @NotNull
    public static final UserIntent$UserAdInteractionExt.Size c(@NotNull com.moloco.sdk.internal.services.e eVar) {
        Intrinsics.checkNotNullParameter(eVar, "<this>");
        UserIntent$UserAdInteractionExt.Size.a newBuilder = UserIntent$UserAdInteractionExt.Size.newBuilder();
        newBuilder.b(eVar.e());
        newBuilder.a(eVar.c());
        UserIntent$UserAdInteractionExt.Size build = newBuilder.build();
        Intrinsics.checkNotNullExpressionValue(build, "build(...)");
        return build;
    }

    @NotNull
    public static final UserIntent$UserAdInteractionExt.Size d(@NotNull a.AbstractC0597a.g gVar) {
        Intrinsics.checkNotNullParameter(gVar, "<this>");
        UserIntent$UserAdInteractionExt.Size.a newBuilder = UserIntent$UserAdInteractionExt.Size.newBuilder();
        newBuilder.b(gVar.b());
        newBuilder.a(gVar.a());
        UserIntent$UserAdInteractionExt.Size build = newBuilder.build();
        Intrinsics.checkNotNullExpressionValue(build, "build(...)");
        return build;
    }
}
