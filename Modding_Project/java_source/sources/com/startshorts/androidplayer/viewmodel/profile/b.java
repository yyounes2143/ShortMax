package com.startshorts.androidplayer.viewmodel.profile;

import com.startshorts.androidplayer.bean.settings.AppLanguage;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LanguageViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class b {

    /* compiled from: LanguageViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a extends b {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final List<AppLanguage> f48978a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(@NotNull List<AppLanguage> list) {
            super(null);
            Intrinsics.checkNotNullParameter(list, "list");
            this.f48978a = list;
        }

        @NotNull
        public final List<AppLanguage> a() {
            return this.f48978a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof a) && Intrinsics.areEqual(this.f48978a, ((a) obj).f48978a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.f48978a.hashCode();
        }

        @NotNull
        public String toString() {
            return "ShowAppLanguages(list=" + this.f48978a + ')';
        }
    }

    /* compiled from: LanguageViewModel.kt */
    @Metadata
    /* renamed from: com.startshorts.androidplayer.viewmodel.profile.b$b  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static final class C0674b extends b {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final C0674b f48979a = new C0674b();

        private C0674b() {
            super(null);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj || (obj instanceof C0674b)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return 18750103;
        }

        @NotNull
        public String toString() {
            return "UpdateAppLanguageSuccess";
        }
    }

    public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private b() {
    }
}
