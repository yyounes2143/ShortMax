package com.startshorts.androidplayer.viewmodel.profile;

import android.content.Context;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ProfileViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class e {

    /* compiled from: ProfileViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a extends e {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final Context f48980a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(@NotNull Context context) {
            super(null);
            Intrinsics.checkNotNullParameter(context, "context");
            this.f48980a = context;
        }

        @NotNull
        public final Context a() {
            return this.f48980a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof a) && Intrinsics.areEqual(this.f48980a, ((a) obj).f48980a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.f48980a.hashCode();
        }

        @NotNull
        public String toString() {
            return "LoadProfileMenus(context=" + this.f48980a + ')';
        }
    }

    /* compiled from: ProfileViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends e {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final b f48981a = new b();

        private b() {
            super(null);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj || (obj instanceof b)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return 549246806;
        }

        @NotNull
        public String toString() {
            return "QueryTodayBonusTotal";
        }
    }

    public /* synthetic */ e(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private e() {
    }
}
