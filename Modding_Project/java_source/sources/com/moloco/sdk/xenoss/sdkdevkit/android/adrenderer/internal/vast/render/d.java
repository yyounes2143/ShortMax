package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* loaded from: classes6.dex */
public interface d {

    @StabilityInferred(parameters = 1)
    /* loaded from: classes6.dex */
    public static abstract class a {

        @StabilityInferred(parameters = 1)
        /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.d$a$a  reason: collision with other inner class name */
        /* loaded from: classes6.dex */
        public static final class C0583a extends a {
            @NotNull

            /* renamed from: a  reason: collision with root package name */
            public static final C0583a f36165a = new C0583a();

            public C0583a() {
                super(null);
            }
        }

        @StabilityInferred(parameters = 1)
        /* loaded from: classes6.dex */
        public static final class b extends a {

            /* renamed from: a  reason: collision with root package name */
            public final int f36166a;

            public /* synthetic */ b(int i10, DefaultConstructorMarker defaultConstructorMarker) {
                this(i10);
            }

            public final int a() {
                return this.f36166a;
            }

            public boolean equals(@Nullable Object obj) {
                if (this == obj) {
                    return true;
                }
                if ((obj instanceof b) && this.f36166a == ((b) obj).f36166a) {
                    return true;
                }
                return false;
            }

            public int hashCode() {
                return ms.n.e(this.f36166a);
            }

            @NotNull
            public String toString() {
                return "Countdown(seconds=" + ((Object) ms.n.f(this.f36166a)) + ')';
            }

            public b(int i10) {
                super(null);
                this.f36166a = i10;
            }
        }

        @StabilityInferred(parameters = 1)
        /* loaded from: classes6.dex */
        public static final class c extends a {
            @NotNull

            /* renamed from: a  reason: collision with root package name */
            public static final c f36167a = new c();

            public c() {
                super(null);
            }
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    @NotNull
    kt.i<a> m();
}
