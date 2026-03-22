package com.moloco.sdk.xenoss.sdkdevkit.android.core.services;

import androidx.compose.runtime.internal.StabilityInferred;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* loaded from: classes6.dex */
public interface a {

    @StabilityInferred(parameters = 1)
    /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a$a  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public static abstract class AbstractC0597a {

        @StabilityInferred(parameters = 1)
        /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes6.dex */
        public static final class C0598a extends AbstractC0597a {
            @NotNull

            /* renamed from: a  reason: collision with root package name */
            public static final C0598a f36596a = new C0598a();

            public C0598a() {
                super(null);
            }
        }

        @StabilityInferred(parameters = 1)
        /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a$a$b */
        /* loaded from: classes6.dex */
        public static final class b extends AbstractC0597a {

            /* renamed from: a  reason: collision with root package name */
            public final long f36597a;

            public b(long j10) {
                super(null);
                this.f36597a = j10;
            }

            public final long a() {
                return this.f36597a;
            }

            public boolean equals(@Nullable Object obj) {
                if (this == obj) {
                    return true;
                }
                if ((obj instanceof b) && this.f36597a == ((b) obj).f36597a) {
                    return true;
                }
                return false;
            }

            public int hashCode() {
                return Long.hashCode(this.f36597a);
            }

            @NotNull
            public String toString() {
                return "AppForeground(lastBgTimestamp=" + this.f36597a + ')';
            }
        }

        @StabilityInferred(parameters = 1)
        /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a$a$c */
        /* loaded from: classes6.dex */
        public static final class c {
            @NotNull

            /* renamed from: a  reason: collision with root package name */
            public final EnumC0599a f36598a;
            @NotNull

            /* renamed from: b  reason: collision with root package name */
            public final f f36599b;
            @NotNull

            /* renamed from: c  reason: collision with root package name */
            public final g f36600c;

            /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
            /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
            /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a$a$c$a  reason: collision with other inner class name */
            /* loaded from: classes6.dex */
            public static final class EnumC0599a {

                /* renamed from: a  reason: collision with root package name */
                public static final EnumC0599a f36601a = new EnumC0599a("NONE", 0);

                /* renamed from: b  reason: collision with root package name */
                public static final EnumC0599a f36602b = new EnumC0599a("CLOSE", 1);

                /* renamed from: c  reason: collision with root package name */
                public static final EnumC0599a f36603c = new EnumC0599a("SKIP", 2);

                /* renamed from: d  reason: collision with root package name */
                public static final EnumC0599a f36604d = new EnumC0599a("SKIP_DEC", 3);

                /* renamed from: e  reason: collision with root package name */
                public static final EnumC0599a f36605e = new EnumC0599a("MUTE", 4);

                /* renamed from: f  reason: collision with root package name */
                public static final EnumC0599a f36606f = new EnumC0599a("UNMUTE", 5);

                /* renamed from: g  reason: collision with root package name */
                public static final EnumC0599a f36607g = new EnumC0599a("CTA", 6);

                /* renamed from: h  reason: collision with root package name */
                public static final EnumC0599a f36608h = new EnumC0599a("REPLAY", 7);

                /* renamed from: i  reason: collision with root package name */
                public static final EnumC0599a f36609i = new EnumC0599a("AD_BADGE", 8);

                /* renamed from: j  reason: collision with root package name */
                public static final /* synthetic */ EnumC0599a[] f36610j;

                /* renamed from: k  reason: collision with root package name */
                public static final /* synthetic */ ss.a f36611k;

                static {
                    EnumC0599a[] a10 = a();
                    f36610j = a10;
                    f36611k = kotlin.enums.a.a(a10);
                }

                public EnumC0599a(String str, int i10) {
                }

                public static final /* synthetic */ EnumC0599a[] a() {
                    return new EnumC0599a[]{f36601a, f36602b, f36603c, f36604d, f36605e, f36606f, f36607g, f36608h, f36609i};
                }

                @NotNull
                public static ss.a<EnumC0599a> b() {
                    return f36611k;
                }

                public static EnumC0599a valueOf(String str) {
                    return (EnumC0599a) Enum.valueOf(EnumC0599a.class, str);
                }

                public static EnumC0599a[] values() {
                    return (EnumC0599a[]) f36610j.clone();
                }
            }

            public c(@NotNull EnumC0599a buttonType, @NotNull f position, @NotNull g size) {
                Intrinsics.checkNotNullParameter(buttonType, "buttonType");
                Intrinsics.checkNotNullParameter(position, "position");
                Intrinsics.checkNotNullParameter(size, "size");
                this.f36598a = buttonType;
                this.f36599b = position;
                this.f36600c = size;
            }

            public static /* synthetic */ c b(c cVar, EnumC0599a enumC0599a, f fVar, g gVar, int i10, Object obj) {
                if ((i10 & 1) != 0) {
                    enumC0599a = cVar.f36598a;
                }
                if ((i10 & 2) != 0) {
                    fVar = cVar.f36599b;
                }
                if ((i10 & 4) != 0) {
                    gVar = cVar.f36600c;
                }
                return cVar.a(enumC0599a, fVar, gVar);
            }

            @NotNull
            public final c a(@NotNull EnumC0599a buttonType, @NotNull f position, @NotNull g size) {
                Intrinsics.checkNotNullParameter(buttonType, "buttonType");
                Intrinsics.checkNotNullParameter(position, "position");
                Intrinsics.checkNotNullParameter(size, "size");
                return new c(buttonType, position, size);
            }

            @NotNull
            public final EnumC0599a c() {
                return this.f36598a;
            }

            @NotNull
            public final f d() {
                return this.f36599b;
            }

            @NotNull
            public final g e() {
                return this.f36600c;
            }

            public boolean equals(@Nullable Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof c)) {
                    return false;
                }
                c cVar = (c) obj;
                if (this.f36598a == cVar.f36598a && Intrinsics.areEqual(this.f36599b, cVar.f36599b) && Intrinsics.areEqual(this.f36600c, cVar.f36600c)) {
                    return true;
                }
                return false;
            }

            public int hashCode() {
                return (((this.f36598a.hashCode() * 31) + this.f36599b.hashCode()) * 31) + this.f36600c.hashCode();
            }

            @NotNull
            public String toString() {
                return "Button(buttonType=" + this.f36598a + ", position=" + this.f36599b + ", size=" + this.f36600c + ')';
            }
        }

        @StabilityInferred(parameters = 1)
        /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a$a$e */
        /* loaded from: classes6.dex */
        public static final class e extends AbstractC0597a {
            @NotNull

            /* renamed from: a  reason: collision with root package name */
            public static final e f36616a = new e();

            public e() {
                super(null);
            }
        }

        @StabilityInferred(parameters = 1)
        /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a$a$f */
        /* loaded from: classes6.dex */
        public static final class f {

            /* renamed from: a  reason: collision with root package name */
            public final float f36617a;

            /* renamed from: b  reason: collision with root package name */
            public final float f36618b;

            public f(float f10, float f11) {
                this.f36617a = f10;
                this.f36618b = f11;
            }

            public final float a() {
                return this.f36617a;
            }

            public final float b() {
                return this.f36618b;
            }

            public boolean equals(@Nullable Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof f)) {
                    return false;
                }
                f fVar = (f) obj;
                if (Float.compare(this.f36617a, fVar.f36617a) == 0 && Float.compare(this.f36618b, fVar.f36618b) == 0) {
                    return true;
                }
                return false;
            }

            public int hashCode() {
                return (Float.hashCode(this.f36617a) * 31) + Float.hashCode(this.f36618b);
            }

            @NotNull
            public String toString() {
                return "Position(topLeftXDp=" + this.f36617a + ", topLeftYDp=" + this.f36618b + ')';
            }
        }

        @StabilityInferred(parameters = 1)
        /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a$a$g */
        /* loaded from: classes6.dex */
        public static final class g {

            /* renamed from: a  reason: collision with root package name */
            public final float f36619a;

            /* renamed from: b  reason: collision with root package name */
            public final float f36620b;

            public g(float f10, float f11) {
                this.f36619a = f10;
                this.f36620b = f11;
            }

            public final float a() {
                return this.f36620b;
            }

            public final float b() {
                return this.f36619a;
            }

            public boolean equals(@Nullable Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof g)) {
                    return false;
                }
                g gVar = (g) obj;
                if (Float.compare(this.f36619a, gVar.f36619a) == 0 && Float.compare(this.f36620b, gVar.f36620b) == 0) {
                    return true;
                }
                return false;
            }

            public int hashCode() {
                return (Float.hashCode(this.f36619a) * 31) + Float.hashCode(this.f36620b);
            }

            @NotNull
            public String toString() {
                return "Size(widthDp=" + this.f36619a + ", heightDp=" + this.f36620b + ')';
            }
        }

        public /* synthetic */ AbstractC0597a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @StabilityInferred(parameters = 0)
        /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a$a$d */
        /* loaded from: classes6.dex */
        public static final class d extends AbstractC0597a {
            @NotNull

            /* renamed from: a  reason: collision with root package name */
            public final f f36612a;
            @Nullable

            /* renamed from: b  reason: collision with root package name */
            public final f f36613b;
            @Nullable

            /* renamed from: c  reason: collision with root package name */
            public final g f36614c;
            @NotNull

            /* renamed from: d  reason: collision with root package name */
            public final List<c> f36615d;

            public /* synthetic */ d(f fVar, f fVar2, g gVar, List list, int i10, DefaultConstructorMarker defaultConstructorMarker) {
                this(fVar, (i10 & 2) != 0 ? null : fVar2, (i10 & 4) != 0 ? null : gVar, (i10 & 8) != 0 ? CollectionsKt.n() : list);
            }

            @NotNull
            public final List<c> a() {
                return this.f36615d;
            }

            @NotNull
            public final f b() {
                return this.f36612a;
            }

            @Nullable
            public final f c() {
                return this.f36613b;
            }

            @Nullable
            public final g d() {
                return this.f36614c;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public d(@NotNull f clickPosition, @Nullable f fVar, @Nullable g gVar, @NotNull List<c> buttonLayout) {
                super(null);
                Intrinsics.checkNotNullParameter(clickPosition, "clickPosition");
                Intrinsics.checkNotNullParameter(buttonLayout, "buttonLayout");
                this.f36612a = clickPosition;
                this.f36613b = fVar;
                this.f36614c = gVar;
                this.f36615d = buttonLayout;
            }
        }

        public AbstractC0597a() {
        }
    }

    @Nullable
    Object a(long j10, @NotNull AbstractC0597a abstractC0597a, @NotNull String str, @NotNull c<? super String> cVar);
}
