package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 1)
/* loaded from: classes6.dex */
public abstract class j {

    @StabilityInferred(parameters = 1)
    /* loaded from: classes6.dex */
    public static final class a extends j {

        /* renamed from: a  reason: collision with root package name */
        public final int f36230a;

        public a(int i10) {
            super(null);
            this.f36230a = i10;
        }

        public final int a() {
            return this.f36230a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof a) && this.f36230a == ((a) obj).f36230a) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return Integer.hashCode(this.f36230a);
        }

        @NotNull
        public String toString() {
            return "Html(webViewId=" + this.f36230a + ')';
        }
    }

    @StabilityInferred(parameters = 1)
    /* loaded from: classes6.dex */
    public static final class b extends j {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public final String f36231a;

        /* renamed from: b  reason: collision with root package name */
        public final int f36232b;

        /* renamed from: c  reason: collision with root package name */
        public final int f36233c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(@NotNull String imageUrl, int i10, int i11) {
            super(null);
            Intrinsics.checkNotNullParameter(imageUrl, "imageUrl");
            this.f36231a = imageUrl;
            this.f36232b = i10;
            this.f36233c = i11;
        }

        public final int a() {
            return this.f36233c;
        }

        @NotNull
        public final String b() {
            return this.f36231a;
        }

        public final int c() {
            return this.f36232b;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            if (Intrinsics.areEqual(this.f36231a, bVar.f36231a) && this.f36232b == bVar.f36232b && this.f36233c == bVar.f36233c) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (((this.f36231a.hashCode() * 31) + Integer.hashCode(this.f36232b)) * 31) + Integer.hashCode(this.f36233c);
        }

        @NotNull
        public String toString() {
            return "Image(imageUrl=" + this.f36231a + ", w=" + this.f36232b + ", h=" + this.f36233c + ')';
        }
    }

    public /* synthetic */ j(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public j() {
    }
}
