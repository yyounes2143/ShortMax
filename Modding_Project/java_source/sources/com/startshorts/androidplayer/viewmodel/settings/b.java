package com.startshorts.androidplayer.viewmodel.settings;

import com.startshorts.androidplayer.bean.settings.AppSettings;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SettingsViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class b {

    /* compiled from: SettingsViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a extends b {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final a f49359a = new a();

        private a() {
            super(null);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj || (obj instanceof a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return -275617502;
        }

        @NotNull
        public String toString() {
            return "DeleteAccountSuccess";
        }
    }

    /* compiled from: SettingsViewModel.kt */
    @Metadata
    /* renamed from: com.startshorts.androidplayer.viewmodel.settings.b$b  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static final class C0690b extends b {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final C0690b f49360a = new C0690b();

        private C0690b() {
            super(null);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj || (obj instanceof C0690b)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return 643966136;
        }

        @NotNull
        public String toString() {
            return "LogoutSuccess";
        }
    }

    /* compiled from: SettingsViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends b {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final List<AppSettings> f49361a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(@NotNull List<AppSettings> list) {
            super(null);
            Intrinsics.checkNotNullParameter(list, "list");
            this.f49361a = list;
        }

        @NotNull
        public final List<AppSettings> a() {
            return this.f49361a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof c) && Intrinsics.areEqual(this.f49361a, ((c) obj).f49361a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.f49361a.hashCode();
        }

        @NotNull
        public String toString() {
            return "ShowSettings(list=" + this.f49361a + ')';
        }
    }

    /* compiled from: SettingsViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d extends b {

        /* renamed from: a  reason: collision with root package name */
        private final boolean f49362a;

        public d(boolean z10) {
            super(null);
            this.f49362a = z10;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof d) && this.f49362a == ((d) obj).f49362a) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return Boolean.hashCode(this.f49362a);
        }

        @NotNull
        public String toString() {
            return "UpdateAutoUnlockEpisodeSuccess(turnOn=" + this.f49362a + ')';
        }
    }

    /* compiled from: SettingsViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class e extends b {

        /* renamed from: a  reason: collision with root package name */
        private final boolean f49363a;

        public e(boolean z10) {
            super(null);
            this.f49363a = z10;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof e) && this.f49363a == ((e) obj).f49363a) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return Boolean.hashCode(this.f49363a);
        }

        @NotNull
        public String toString() {
            return "UpdatePipModeSuccess(turnOn=" + this.f49363a + ')';
        }
    }

    public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private b() {
    }
}
