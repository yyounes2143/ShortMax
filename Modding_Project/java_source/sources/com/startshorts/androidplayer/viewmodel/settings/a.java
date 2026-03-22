package com.startshorts.androidplayer.viewmodel.settings;

import android.content.Context;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SettingsViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class a {

    /* compiled from: SettingsViewModel.kt */
    @Metadata
    /* renamed from: com.startshorts.androidplayer.viewmodel.settings.a$a  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static final class C0689a extends a {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final Context f49353a;

        public C0689a(@Nullable Context context) {
            super(null);
            this.f49353a = context;
        }

        @Nullable
        public final Context a() {
            return this.f49353a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof C0689a) && Intrinsics.areEqual(this.f49353a, ((C0689a) obj).f49353a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            Context context = this.f49353a;
            if (context == null) {
                return 0;
            }
            return context.hashCode();
        }

        @NotNull
        public String toString() {
            return "DeleteAccount(context=" + this.f49353a + ')';
        }
    }

    /* compiled from: SettingsViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends a {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final Context f49354a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(@NotNull Context context) {
            super(null);
            Intrinsics.checkNotNullParameter(context, "context");
            this.f49354a = context;
        }

        @NotNull
        public final Context a() {
            return this.f49354a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof b) && Intrinsics.areEqual(this.f49354a, ((b) obj).f49354a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.f49354a.hashCode();
        }

        @NotNull
        public String toString() {
            return "LoadSettings(context=" + this.f49354a + ')';
        }
    }

    /* compiled from: SettingsViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends a {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final Context f49355a;

        public c(@Nullable Context context) {
            super(null);
            this.f49355a = context;
        }

        @Nullable
        public final Context a() {
            return this.f49355a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof c) && Intrinsics.areEqual(this.f49355a, ((c) obj).f49355a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            Context context = this.f49355a;
            if (context == null) {
                return 0;
            }
            return context.hashCode();
        }

        @NotNull
        public String toString() {
            return "Logout(context=" + this.f49355a + ')';
        }
    }

    /* compiled from: SettingsViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d extends a {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final Context f49356a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f49357b;

        public d(@Nullable Context context, boolean z10) {
            super(null);
            this.f49356a = context;
            this.f49357b = z10;
        }

        @Nullable
        public final Context a() {
            return this.f49356a;
        }

        public final boolean b() {
            return this.f49357b;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof d)) {
                return false;
            }
            d dVar = (d) obj;
            if (Intrinsics.areEqual(this.f49356a, dVar.f49356a) && this.f49357b == dVar.f49357b) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            Context context = this.f49356a;
            if (context == null) {
                hashCode = 0;
            } else {
                hashCode = context.hashCode();
            }
            return (hashCode * 31) + Boolean.hashCode(this.f49357b);
        }

        @NotNull
        public String toString() {
            return "UpdateAutoUnlockEpisode(context=" + this.f49356a + ", turnOn=" + this.f49357b + ')';
        }
    }

    /* compiled from: SettingsViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class e extends a {

        /* renamed from: a  reason: collision with root package name */
        private final boolean f49358a;

        public e(boolean z10) {
            super(null);
            this.f49358a = z10;
        }

        public final boolean a() {
            return this.f49358a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof e) && this.f49358a == ((e) obj).f49358a) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return Boolean.hashCode(this.f49358a);
        }

        @NotNull
        public String toString() {
            return "UpdatePipMode(turnOn=" + this.f49358a + ')';
        }
    }

    public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private a() {
    }
}
