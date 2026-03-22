package com.facebook.fresco.animation.bitmap.cache;

import android.net.Uri;
import f2.a;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AnimationFrameCacheKey.kt */
@Metadata
/* loaded from: classes3.dex */
public final class AnimationFrameCacheKey implements a {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String URI_PREFIX = "anim://";
    @NotNull
    private final String animationUriString;
    private final boolean deepEquals;

    /* compiled from: AnimationFrameCacheKey.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public AnimationFrameCacheKey(int i10) {
        this(i10, false, 2, null);
    }

    public boolean containsUri(@NotNull Uri uri) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        String uri2 = uri.toString();
        Intrinsics.checkNotNullExpressionValue(uri2, "toString(...)");
        return StringsKt.V(uri2, this.animationUriString, false, 2, null);
    }

    @Override // f2.a
    public boolean equals(@Nullable Object obj) {
        if (!this.deepEquals) {
            return super.equals(obj);
        }
        if (this == obj) {
            return true;
        }
        if (obj != null && Intrinsics.areEqual(AnimationFrameCacheKey.class, obj.getClass())) {
            return Intrinsics.areEqual(this.animationUriString, ((AnimationFrameCacheKey) obj).animationUriString);
        }
        return false;
    }

    @Override // f2.a
    @NotNull
    public String getUriString() {
        return this.animationUriString;
    }

    @Override // f2.a
    public int hashCode() {
        if (!this.deepEquals) {
            return super.hashCode();
        }
        return this.animationUriString.hashCode();
    }

    @Override // f2.a
    public boolean isResourceIdForDebugging() {
        return false;
    }

    public AnimationFrameCacheKey(int i10, boolean z10) {
        this.deepEquals = z10;
        this.animationUriString = URI_PREFIX + i10;
    }

    public /* synthetic */ AnimationFrameCacheKey(int i10, boolean z10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, (i11 & 2) != 0 ? false : z10);
    }
}
