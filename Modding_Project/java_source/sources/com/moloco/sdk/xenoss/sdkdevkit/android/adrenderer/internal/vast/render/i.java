package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 1)
/* loaded from: classes6.dex */
public abstract class i {

    @StabilityInferred(parameters = 1)
    /* loaded from: classes6.dex */
    public static final class a extends i {

        /* renamed from: a  reason: collision with root package name */
        public final long f36225a;

        public a(long j10) {
            super(null);
            this.f36225a = j10;
        }

        public final long a() {
            return this.f36225a;
        }
    }

    @StabilityInferred(parameters = 1)
    /* loaded from: classes6.dex */
    public static final class b extends i {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final b f36226a = new b();

        public b() {
            super(null);
        }
    }

    @StabilityInferred(parameters = 1)
    /* loaded from: classes6.dex */
    public static final class c extends i {

        /* renamed from: a  reason: collision with root package name */
        public final long f36227a;

        /* renamed from: b  reason: collision with root package name */
        public final long f36228b;

        public c(long j10, long j11) {
            super(null);
            this.f36227a = j10;
            this.f36228b = j11;
        }

        public final long a() {
            return this.f36227a;
        }

        public final long b() {
            return this.f36228b;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            if (this.f36227a == cVar.f36227a && this.f36228b == cVar.f36228b) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (Long.hashCode(this.f36227a) * 31) + Long.hashCode(this.f36228b);
        }

        @NotNull
        public String toString() {
            return "Position(currentPositionMillis=" + this.f36227a + ", totalDurationMillis=" + this.f36228b + ')';
        }
    }

    @StabilityInferred(parameters = 1)
    /* loaded from: classes6.dex */
    public static final class d extends i {

        /* renamed from: a  reason: collision with root package name */
        public final long f36229a;

        public d(long j10) {
            super(null);
            this.f36229a = j10;
        }

        public final long a() {
            return this.f36229a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof d) && this.f36229a == ((d) obj).f36229a) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return Long.hashCode(this.f36229a);
        }

        @NotNull
        public String toString() {
            return "Preparing(totalDurationMillis=" + this.f36229a + ')';
        }
    }

    public /* synthetic */ i(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public i() {
    }
}
