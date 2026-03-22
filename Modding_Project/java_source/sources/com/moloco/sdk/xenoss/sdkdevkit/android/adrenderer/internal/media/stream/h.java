package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.stream;

import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.n;
import java.io.File;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 1)
/* loaded from: classes6.dex */
public abstract class h {

    @StabilityInferred(parameters = 0)
    /* loaded from: classes6.dex */
    public static final class a extends h {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public final File f34208a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(@NotNull File file) {
            super(null);
            Intrinsics.checkNotNullParameter(file, "file");
            this.f34208a = file;
        }

        @NotNull
        public final File a() {
            return this.f34208a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof a) && Intrinsics.areEqual(this.f34208a, ((a) obj).f34208a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.f34208a.hashCode();
        }

        @NotNull
        public String toString() {
            return "Complete(file=" + this.f34208a + ')';
        }
    }

    @StabilityInferred(parameters = 1)
    /* loaded from: classes6.dex */
    public static final class b extends h {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public final n.a.AbstractC0509a f34209a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(@NotNull n.a.AbstractC0509a failure) {
            super(null);
            Intrinsics.checkNotNullParameter(failure, "failure");
            this.f34209a = failure;
        }

        @NotNull
        public final n.a.AbstractC0509a a() {
            return this.f34209a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof b) && Intrinsics.areEqual(this.f34209a, ((b) obj).f34209a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.f34209a.hashCode();
        }

        @NotNull
        public String toString() {
            return "Failure(failure=" + this.f34209a + ')';
        }
    }

    @StabilityInferred(parameters = 0)
    /* loaded from: classes6.dex */
    public static final class c extends h {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public final File f34210a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        public final d f34211b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(@NotNull File file, @NotNull d progress) {
            super(null);
            Intrinsics.checkNotNullParameter(file, "file");
            Intrinsics.checkNotNullParameter(progress, "progress");
            this.f34210a = file;
            this.f34211b = progress;
        }

        @NotNull
        public final File a() {
            return this.f34210a;
        }

        @NotNull
        public final d b() {
            return this.f34211b;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            if (Intrinsics.areEqual(this.f34210a, cVar.f34210a) && Intrinsics.areEqual(this.f34211b, cVar.f34211b)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (this.f34210a.hashCode() * 31) + this.f34211b.hashCode();
        }

        @NotNull
        public String toString() {
            return "InProgress(file=" + this.f34210a + ", progress=" + this.f34211b + ')';
        }
    }

    @StabilityInferred(parameters = 1)
    /* loaded from: classes6.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        public final long f34212a;

        /* renamed from: b  reason: collision with root package name */
        public final long f34213b;

        public d(long j10, long j11) {
            this.f34212a = j10;
            this.f34213b = j11;
        }

        public final long a() {
            return this.f34212a;
        }

        public final long b() {
            return this.f34213b;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof d)) {
                return false;
            }
            d dVar = (d) obj;
            if (this.f34212a == dVar.f34212a && this.f34213b == dVar.f34213b) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (Long.hashCode(this.f34212a) * 31) + Long.hashCode(this.f34213b);
        }

        @NotNull
        public String toString() {
            return "Progress(bytesDownloaded=" + this.f34212a + ", totalBytes=" + this.f34213b + ')';
        }
    }

    public /* synthetic */ h(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public h() {
    }
}
