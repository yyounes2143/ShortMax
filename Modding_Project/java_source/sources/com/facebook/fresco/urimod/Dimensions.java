package com.facebook.fresco.urimod;

import com.ss.texturerender.TextureRenderKeys;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Dimensions.kt */
@Metadata
/* loaded from: classes3.dex */
public final class Dimensions {

    /* renamed from: h  reason: collision with root package name */
    private final int f15554h;

    /* renamed from: w  reason: collision with root package name */
    private final int f15555w;

    public Dimensions(int i10, int i11) {
        this.f15555w = i10;
        this.f15554h = i11;
    }

    public static /* synthetic */ Dimensions copy$default(Dimensions dimensions, int i10, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = dimensions.f15555w;
        }
        if ((i12 & 2) != 0) {
            i11 = dimensions.f15554h;
        }
        return dimensions.copy(i10, i11);
    }

    public final int component1() {
        return this.f15555w;
    }

    public final int component2() {
        return this.f15554h;
    }

    @NotNull
    public final Dimensions copy(int i10, int i11) {
        return new Dimensions(i10, i11);
    }

    public boolean equals(@Nullable Object obj) {
        Class<?> cls;
        if (this == obj) {
            return true;
        }
        if (obj != null) {
            cls = obj.getClass();
        } else {
            cls = null;
        }
        if (!Intrinsics.areEqual(Dimensions.class, cls)) {
            return false;
        }
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type com.facebook.fresco.urimod.Dimensions");
        Dimensions dimensions = (Dimensions) obj;
        if (this.f15555w == dimensions.f15555w && this.f15554h == dimensions.f15554h) {
            return true;
        }
        return false;
    }

    public final int getH() {
        return this.f15554h;
    }

    public final int getW() {
        return this.f15555w;
    }

    public int hashCode() {
        return (this.f15555w * 31) + this.f15554h;
    }

    @NotNull
    public String toString() {
        int i10 = this.f15555w;
        int i11 = this.f15554h;
        return i10 + TextureRenderKeys.KEY_IS_X + i11;
    }
}
