package com.startshorts.androidplayer.viewmodel.cps;

import android.content.Context;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CpsViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class a {

    /* compiled from: CpsViewModel.kt */
    @Metadata
    /* renamed from: com.startshorts.androidplayer.viewmodel.cps.a$a  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static final class C0657a extends a {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final Context f48445a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final String f48446b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0657a(@NotNull Context context, @NotNull String keyword) {
            super(null);
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(keyword, "keyword");
            this.f48445a = context;
            this.f48446b = keyword;
        }

        @NotNull
        public final Context a() {
            return this.f48445a;
        }

        @NotNull
        public final String b() {
            return this.f48446b;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C0657a)) {
                return false;
            }
            C0657a c0657a = (C0657a) obj;
            if (Intrinsics.areEqual(this.f48445a, c0657a.f48445a) && Intrinsics.areEqual(this.f48446b, c0657a.f48446b)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (this.f48445a.hashCode() * 31) + this.f48446b.hashCode();
        }

        @NotNull
        public String toString() {
            return "SearchExactly(context=" + this.f48445a + ", keyword=" + this.f48446b + ')';
        }
    }

    public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private a() {
    }
}
