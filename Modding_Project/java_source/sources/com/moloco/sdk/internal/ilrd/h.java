package com.moloco.sdk.internal.ilrd;

import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.IlrdRequest$LevelPlayImpression;
import com.moloco.sdk.IlrdRequest$MaxImpression;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* loaded from: classes6.dex */
public interface h {

    /* loaded from: classes6.dex */
    public interface a {

        @StabilityInferred(parameters = 1)
        /* renamed from: com.moloco.sdk.internal.ilrd.h$a$a  reason: collision with other inner class name */
        /* loaded from: classes6.dex */
        public static final class C0471a implements a {
            @NotNull

            /* renamed from: a  reason: collision with root package name */
            public final IlrdRequest$LevelPlayImpression f32273a;

            @NotNull
            public final IlrdRequest$LevelPlayImpression a() {
                return this.f32273a;
            }

            public boolean equals(@Nullable Object obj) {
                if (this == obj) {
                    return true;
                }
                if ((obj instanceof C0471a) && Intrinsics.areEqual(this.f32273a, ((C0471a) obj).f32273a)) {
                    return true;
                }
                return false;
            }

            public int hashCode() {
                return this.f32273a.hashCode();
            }

            @NotNull
            public String toString() {
                return "LevelPlay(impression=" + this.f32273a + ')';
            }
        }

        @StabilityInferred(parameters = 1)
        /* loaded from: classes6.dex */
        public static final class b implements a {
            @NotNull

            /* renamed from: a  reason: collision with root package name */
            public final IlrdRequest$MaxImpression f32274a;

            public b(@NotNull IlrdRequest$MaxImpression impression) {
                Intrinsics.checkNotNullParameter(impression, "impression");
                this.f32274a = impression;
            }

            @NotNull
            public final IlrdRequest$MaxImpression a() {
                return this.f32274a;
            }

            public boolean equals(@Nullable Object obj) {
                if (this == obj) {
                    return true;
                }
                if ((obj instanceof b) && Intrinsics.areEqual(this.f32274a, ((b) obj).f32274a)) {
                    return true;
                }
                return false;
            }

            public int hashCode() {
                return this.f32274a.hashCode();
            }

            @NotNull
            public String toString() {
                return "Max(impression=" + this.f32274a + ')';
            }
        }
    }

    @NotNull
    com.moloco.sdk.internal.ilrd.model.a a();

    @NotNull
    Object b();

    @NotNull
    kt.f<a> c();

    @NotNull
    kt.i<k> getState();
}
