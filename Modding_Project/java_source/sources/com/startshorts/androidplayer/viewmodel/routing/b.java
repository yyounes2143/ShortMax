package com.startshorts.androidplayer.viewmodel.routing;

import android.view.ViewGroup;
import com.startshorts.androidplayer.ui.activity.RoutingActivity;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RoutingViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class b {

    /* compiled from: RoutingViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a extends b {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final RoutingActivity f49274a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final ViewGroup f49275b;
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        private final Function0<Boolean> f49276c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f49277d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f49278e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(@NotNull RoutingActivity activity, @NotNull ViewGroup container, @NotNull Function0<Boolean> adEnable, boolean z10, boolean z11) {
            super(null);
            Intrinsics.checkNotNullParameter(activity, "activity");
            Intrinsics.checkNotNullParameter(container, "container");
            Intrinsics.checkNotNullParameter(adEnable, "adEnable");
            this.f49274a = activity;
            this.f49275b = container;
            this.f49276c = adEnable;
            this.f49277d = z10;
            this.f49278e = z11;
        }

        public final boolean a() {
            return this.f49277d;
        }

        @NotNull
        public final RoutingActivity b() {
            return this.f49274a;
        }

        @NotNull
        public final Function0<Boolean> c() {
            return this.f49276c;
        }

        @NotNull
        public final ViewGroup d() {
            return this.f49275b;
        }

        public final boolean e() {
            return this.f49278e;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (Intrinsics.areEqual(this.f49274a, aVar.f49274a) && Intrinsics.areEqual(this.f49275b, aVar.f49275b) && Intrinsics.areEqual(this.f49276c, aVar.f49276c) && this.f49277d == aVar.f49277d && this.f49278e == aVar.f49278e) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (((((((this.f49274a.hashCode() * 31) + this.f49275b.hashCode()) * 31) + this.f49276c.hashCode()) * 31) + Boolean.hashCode(this.f49277d)) * 31) + Boolean.hashCode(this.f49278e);
        }

        @NotNull
        public String toString() {
            return "LoadContent(activity=" + this.f49274a + ", container=" + this.f49275b + ", adEnable=" + this.f49276c + ", actEnable=" + this.f49277d + ", isFirstLaunch=" + this.f49278e + ')';
        }
    }

    public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private b() {
    }
}
