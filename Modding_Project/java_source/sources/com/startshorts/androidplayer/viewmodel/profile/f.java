package com.startshorts.androidplayer.viewmodel.profile;

import com.startshorts.androidplayer.bean.profile.ProfileMenu;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ProfileViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class f {

    /* compiled from: ProfileViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a extends f {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final List<ProfileMenu> f48982a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(@NotNull List<ProfileMenu> list) {
            super(null);
            Intrinsics.checkNotNullParameter(list, "list");
            this.f48982a = list;
        }

        @NotNull
        public final List<ProfileMenu> a() {
            return this.f48982a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof a) && Intrinsics.areEqual(this.f48982a, ((a) obj).f48982a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.f48982a.hashCode();
        }

        @NotNull
        public String toString() {
            return "ShowProfileMenus(list=" + this.f48982a + ')';
        }
    }

    /* compiled from: ProfileViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends f {

        /* renamed from: a  reason: collision with root package name */
        private final int f48983a;

        public b(int i10) {
            super(null);
            this.f48983a = i10;
        }

        public final int a() {
            return this.f48983a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof b) && this.f48983a == ((b) obj).f48983a) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return Integer.hashCode(this.f48983a);
        }

        @NotNull
        public String toString() {
            return "ShowTodayBonusTotal(userTodayBonusTotal=" + this.f48983a + ')';
        }
    }

    public /* synthetic */ f(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private f() {
    }
}
